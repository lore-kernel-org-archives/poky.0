Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FFC1E00AEB; Wed, 11 Nov 2015 22:24:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62395E00927
	for <poky@yoctoproject.org>; Wed, 11 Nov 2015 22:24:44 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP; 11 Nov 2015 22:24:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,280,1444719600"; d="scan'208";a="598859267"
Received: from rwliu-mobl2.amr.corp.intel.com ([10.254.120.29])
	by FMSMGA003.fm.intel.com with ESMTP; 11 Nov 2015 22:24:43 -0800
Message-ID: <1447309482.13971.0.camel@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
To: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>, 
	poky@yoctoproject.org
Date: Wed, 11 Nov 2015 22:24:42 -0800
In-Reply-To: <b2ddb452fb3e649fca823a51fc67438c8a1da968.1444057729.git.alejandro.hernandez@linux.intel.com>
References: <cover.1444057729.git.alejandro.hernandez@linux.intel.com>
	<b2ddb452fb3e649fca823a51fc67438c8a1da968.1444057729.git.alejandro.hernandez@linux.intel.com>
X-Mailer: Evolution 3.18.1 (3.18.1-1.fc23) 
Mime-Version: 1.0
Subject: Re: [yocto][PATCH 1/1] gma500_gfx: Avoid inserting gma500_gfx module for certain devices
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 12 Nov 2015 06:24:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2015-11-09 at 16:11 +0000, Alejandro Hernandez wrote:
> The gma500_gfx driver will match certain devices on which it causes
> incorrect functionality,
> we want to avoid inserting this module, basicallly blacklist it for
> specific hardware,
> but still allow it to work on other hardware by default; usually when
> we have an already working system,
> using udev rules would do the job, but since we are building it, it
> is impossible to blacklist
> a driver when a certain udev rule matches, since rootfs isn't
> writeable at this point during boot time,
> the solution is to use modprobe install, which runs a certain command
> instead of inserting a matching module,
> this command needs to insert the module manually afterwards and have
> a flag --ignore-install
> so it doesnt create an infinite loop executing itself everytime it
> wants to insert the module,
> busybox's modprobe doesn't provide this functionality, so a small
> hack had to be used to avoid
> the infite loop instead.
> 
> Signed-off-by: Alejandro Hernandez
> <alejandro.hernandez@linux.intel.com>
Acked-by: Saul Wold <sgw@linux.intel.com>

> ---
>  meta-yocto-bsp/conf/machine/genericx86.conf            |  2 ++
>  .../gma500-gfx-check/gma500-gfx-check.conf             |  2 ++
>  .../gma500-gfx-check/gma500-gfx-check.sh               | 11
> +++++++++++
>  .../gma500-gfx-check/gma500-gfx-check_1.0.bb           | 18
> ++++++++++++++++++
>  4 files changed, 33 insertions(+)
>  create mode 100644 meta-yocto-bsp/recipes-bsp/gma500-gfx-
> check/gma500-gfx-check/gma500-gfx-check.conf
>  create mode 100644 meta-yocto-bsp/recipes-bsp/gma500-gfx-
> check/gma500-gfx-check/gma500-gfx-check.sh
>  create mode 100644 meta-yocto-bsp/recipes-bsp/gma500-gfx-
> check/gma500-gfx-check_1.0.bb
> 
> diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-
> yocto-bsp/conf/machine/genericx86.conf
> index 2642cab..798b62ec 100644
> --- a/meta-yocto-bsp/conf/machine/genericx86.conf
> +++ b/meta-yocto-bsp/conf/machine/genericx86.conf
> @@ -6,3 +6,5 @@
>  DEFAULTTUNE ?= "core2-32"
>  require conf/machine/include/tune-core2.inc
>  require conf/machine/include/genericx86-common.inc
> +
> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "gma500-gfx-check"
> diff --git a/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-
> check/gma500-gfx-check.conf b/meta-yocto-bsp/recipes-bsp/gma500-gfx-
> check/gma500-gfx-check/gma500-gfx-check.conf
> new file mode 100644
> index 0000000..69f109e
> --- /dev/null
> +++ b/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-
> check/gma500-gfx-check.conf
> @@ -0,0 +1,2 @@
> +# Mimic modprobe's install funcitonality with busybox's modprobe
> +install gma500_gfx lsmod | grep gma || { gma500_gfx_check.sh ||
> modprobe gma500_gfx; }
> diff --git a/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-
> check/gma500-gfx-check.sh b/meta-yocto-bsp/recipes-bsp/gma500-gfx-
> check/gma500-gfx-check/gma500-gfx-check.sh
> new file mode 100644
> index 0000000..0c7b3aa
> --- /dev/null
> +++ b/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-
> check/gma500-gfx-check.sh
> @@ -0,0 +1,11 @@
> +#!/bin/sh
> +
> +# Check for devices we wish to avoid gma500_gfx for
> +DEVICES="0x8119 0x4108"
> +for DEVICE in $DEVICES; do
> +    if udevadm trigger --subsystem-match=pci --verbose --attr-
> match=device=$DEVICE | grep "pci" >> /dev/null ; then
> +        echo "Found $DEVICE, avoiding gma500_gfx module" >>
> /dev/kmsg;
> +        exit 0
> +    fi
> +done
> +exit 1
> diff --git a/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-
> check_1.0.bb b/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-
> gfx-check_1.0.bb
> new file mode 100644
> index 0000000..00680de
> --- /dev/null
> +++ b/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-
> check_1.0.bb
> @@ -0,0 +1,18 @@
> +SUMMARY = "Intel gma500_gfx fix for certain hardware"
> +DESCRIPTION = "Avoid inserting gma500_gfx module for certain
> hardware devices."
> +LICENSE="GPLv2"
> +LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-
> licenses/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
> +
> +SRC_URI = "file://gma500-gfx-check.conf \
> +	file://gma500-gfx-check.sh "
> +
> +do_install(){
> +    install -d ${D}${sysconfdir}/modprobe.d/
> +    install -m 755 ${WORKDIR}/gma500-gfx-check.sh
> ${D}${sysconfdir}/modprobe.d/gma500-gfx-check.sh
> +    install -m 644 ${WORKDIR}/gma500-gfx-check.conf
> ${D}${sysconfdir}/modprobe.d/gma500-gfx-check.conf
> +}
> +
> +FILES_${PN}="${sysconfdir}/modprobe.d/gma500-gfx-check.conf \
> +             ${sysconfdir}/modprobe.d/gma500-gfx-check.sh"
> +
> +COMPATIBLE_MACHINE = "genericx86"
> -- 
> 1.8.4.5
> 

