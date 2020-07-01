Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web10.23841.1593615521280823904
 for <poky@lists.yoctoproject.org>;
 Wed, 01 Jul 2020 07:58:41 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 49xkrG3K3zz5tlD;
	Wed,  1 Jul 2020 16:58:38 +0200 (CEST)
Date: Wed, 1 Jul 2020 16:58:37 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: hubert.chaumette@kolabnow.com
Cc: poky@lists.yoctoproject.org, bruce.ashfield@gmail.com
Subject: Re: [poky] [RFC PATCH 2/2] Example for ext kernel module dependency, slave module
Message-ID: <20200701145837.7stpc5ngqg7sn27d@qschulz>
References: <cover.1593601516.git.hubert.chaumette@kolabnow.com>
 <91719a84eeb95599fbf1e9f4cb693efca5527a9f.1593601521.git.hubert.chaumette@kolabnow.com>
MIME-Version: 1.0
In-Reply-To: <91719a84eeb95599fbf1e9f4cb693efca5527a9f.1593601521.git.hubert.chaumette@kolabnow.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Hubert,

On Wed, Jul 01, 2020 at 03:54:37PM +0200, Hubert CHAUMETTE via lists.yoctoproject.org wrote:
> Registers to the master notifier and displays the string received on R/W.
> 
> Signed-off-by: Hubert CHAUMETTE <hubert.chaumette@kolabnow.com>
> ---
>  .../kernel-module-slave/files/COPYING         | 15 ++++++
>  .../kernel-module-slave/files/Makefile        | 16 ++++++
>  .../kernel-module-slave/files/slave.c         | 52 +++++++++++++++++++
>  .../kernel-module-slave.bb                    | 17 ++++++
>  4 files changed, 100 insertions(+)
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/files/COPYING
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/files/Makefile
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/files/slave.c
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/kernel-module-slave.bb
> 
> diff --git a/meta-skeleton/recipes-kernel/kernel-module-slave/files/COPYING b/meta-skeleton/recipes-kernel/kernel-module-slave/files/COPYING
> new file mode 100644
> index 0000000000..286d9e8890
> --- /dev/null
> +++ b/meta-skeleton/recipes-kernel/kernel-module-slave/files/COPYING
> @@ -0,0 +1,15 @@
> +Copyright (C) 2020 Hubert CHAUMETTE
> +
> +This program is free software; you can redistribute it and/or modify
> +it under the terms of the GNU General Public License as published by
> +the Free Software Foundation; either version 2 of the License, or
> +(at your option) any later version.
> +
> +This program is distributed in the hope that it will be useful,
> +but WITHOUT ANY WARRANTY; without even the implied warranty of
> +MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> +GNU General Public License for more details.
> +
> +You should have received a copy of the GNU General Public License
> +along with this program; if not, write to the Free Software
> +Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
> diff --git a/meta-skeleton/recipes-kernel/kernel-module-slave/files/Makefile b/meta-skeleton/recipes-kernel/kernel-module-slave/files/Makefile
> new file mode 100644
> index 0000000000..edf12b7f31
> --- /dev/null
> +++ b/meta-skeleton/recipes-kernel/kernel-module-slave/files/Makefile
> @@ -0,0 +1,16 @@
> +SRC := $(shell pwd)
> +
> +obj-m := slave.o
> +# $src is a Kbuild variable. Using $SRC doesn't work.
> +ccflags-y := -I$(src)/recipe-sysroot/usr/include/kernel-module-master/
> +

This makes your Makefile (hence kernel-module) bound to Yocto which is
probably not a real life example (and it is highly suggested to never
hardcode CFLAGS, CXXFLAGS, LDFLAGS, CC, etc... in
Makefile/CMakeLists/you name it because it is a source of problems we
could have avoided in the first place).

Better have a TARGET_CFLAGS += "-I${STAGING_INCDIR}/kernel-module-master"

Also technically, if your "master" is always installing the header in
<includedir>/kernel-module-master, maybe it'd actually be better to fix
the original code and use #include <kernel-module-master/master.h> ?

Overall, I'm not sure to understand what this has to do with
kernel modules and if this is really an example worthy to be in
meta-skeleton?

It's basically an example for using DEPENDS and an include file, from
this recipe, which is at the "wrong" (read not directly in /usr/include)
location from another recipe.

> +all:
> +	$(MAKE) -C $(KERNEL_SRC) M=$(SRC)
> +
> +modules_install:
> +	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install
> +
> +clean:
> +	rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
> +	rm -f Module.markers Module.symvers modules.order
> +	rm -rf .tmp_versions Modules.symvers
> diff --git a/meta-skeleton/recipes-kernel/kernel-module-slave/files/slave.c b/meta-skeleton/recipes-kernel/kernel-module-slave/files/slave.c
> new file mode 100644
> index 0000000000..b1d9b92cc6
> --- /dev/null
> +++ b/meta-skeleton/recipes-kernel/kernel-module-slave/files/slave.c
> @@ -0,0 +1,52 @@
> +/*
> + * External kernel module dependency exemple - slave module
> + *
> + * Copyright (C) 2020 Hubert CHAUMETTE
> + */
> +
> +#include <linux/module.h>
> +#include <master.h>
> +
> +static int slave_notify(struct notifier_block *self,
> +			unsigned long action, void *data);
> +
> +static struct notifier_block slave_nb = {
> +	.notifier_call = slave_notify,
> +};
> +
> +static int slave_notify(struct notifier_block *self,
> +			unsigned long action, void *data)
> +{
> +	struct master_evt_data *d = (struct master_evt_data *)data;
> +
> +	BUG_ON(data == NULL);
> +
> +	switch (action) {
> +	case MASTER_EVT_READ:
> +		pr_info("slave: \"%.*s\" read from master\n", d->count, d->buf);
> +		break;
> +	case MASTER_EVT_WRITE:
> +		pr_info("slave: \"%.*s\" written to master\n", d->count, d->buf);
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	return NOTIFY_DONE;
> +}
> +
> +static int __init slave_init(void)
> +{
> +	return master_notifier_register(&slave_nb);
> +}
> +module_init(slave_init);
> +
> +static void __exit slave_exit(void)
> +{
> +	master_notifier_unregister(&slave_nb);
> +}
> +module_exit(slave_exit);
> +
> +MODULE_AUTHOR("Hubert CHAUMETTE");
> +MODULE_DESCRIPTION("External kernel module dependency exemple - slave module");
> +MODULE_LICENSE("GPL");

GPL or GPLv2?

Also, do those examples **really** need to be named slave/master? I mean
they're just exchanging data whose format has been defined into one
kernel module.

> diff --git a/meta-skeleton/recipes-kernel/kernel-module-slave/kernel-module-slave.bb b/meta-skeleton/recipes-kernel/kernel-module-slave/kernel-module-slave.bb
> new file mode 100644
> index 0000000000..280fa815f3
> --- /dev/null
> +++ b/meta-skeleton/recipes-kernel/kernel-module-slave/kernel-module-slave.bb
> @@ -0,0 +1,17 @@
> +SUMMARY = "External kernel module dependency exemple - slave module"
> +LICENSE = "GPLv2"
> +LIC_FILES_CHKSUM = "file://COPYING;md5=1c5a04927650c42822bb4b1de4641658"

Technically, you could use COMMON_LIC_DIR instead of providing a COPYING
file.

Quentin
