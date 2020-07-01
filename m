Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web12.22911.1593613995970184322
 for <poky@lists.yoctoproject.org>;
 Wed, 01 Jul 2020 07:33:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WkXNE1/6;
 spf=pass (domain: gmail.com, ip: 209.85.215.176, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id t6so11826319pgq.1
        for <poky@lists.yoctoproject.org>; Wed, 01 Jul 2020 07:33:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=R8sj6FkvMXZWKlCQfbaLBxhUAkraZivzsLeRbsk3z9A=;
        b=WkXNE1/6I/icULqf5+aocqJBgny0m5D17JdVxjY9gYOYP4iEKnx9GmeWXhPzoFWZmQ
         B641BjgPArx037u8Sg5MlxelJU+l8e63OTwNb0Cf8m3VbpVzURHWH+Bp8nPkjmaYRBuQ
         lpGSyOHBprNkmJdbJDcxK/CvLSfYz6oPQcI/Wb4Tjye65NxOfc+ghjOzpv4AvYnSo3Le
         qvV4w/WzJK3ZggSTuuYfn8CWnxf3juPLYDO2fpAAALuW2nG7DfPTcjRHJRohjDeNJaCs
         i3TlDhx/u0DbXjsJ0cyokQElAgen5RcMT4JFJzJl1b8A8LZA7IqImzqIq97SUfnU45d7
         VogQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=R8sj6FkvMXZWKlCQfbaLBxhUAkraZivzsLeRbsk3z9A=;
        b=DvjLLAKF+g+WFZzxsljFOd7I6MP2Qgjm7MJKMzm9l3ktdu/kGDO47qvz13gz/zafQV
         OS0qCZg3492FSBOT+gC0/tcfBkC7dEzw2MqnIR9I26kIbcVsC+TtFLfaL0AKPGAuG/Vn
         KTvA/8NMfU1qfN0UHlBGQ052wb6n8GCGypgsaVAQD2wzMHeeG+Pk/sXR10USepnOKzMM
         CZt0/jHl4arwbV8MDRMhd53Yo6/lIOIfAnTak+f2X0wZmej5XLEz2QqsD3k2GbhoYoIm
         r5tLz88KnW92xRfGom8rFXq+szpaoTAX6NjmlDepEwNoCdTdzldMXe1uJdcZAWgJzXJ8
         2zXw==
X-Gm-Message-State: AOAM530zeGpCchoI1MP7tHebvH2XwI8MgB+ho3zNogtBjDFnkR54wx9j
	gOStZhCeR5AgGFcyLhn1GxU=
X-Google-Smtp-Source: ABdhPJxS8tV3PaOp1rHN5iEIjvjz8CIHWWc48jkwcEcYpFCv8QzgqaRujYUw0Jpj3JHIxi8IjL/bHw==
X-Received: by 2002:a62:7a07:: with SMTP id v7mr19310722pfc.76.1593613995405;
        Wed, 01 Jul 2020 07:33:15 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:c85d:3ce:5443:9164? ([2601:202:4180:a5c0:c85d:3ce:5443:9164])
        by smtp.gmail.com with ESMTPSA id p8sm6098197pgs.29.2020.07.01.07.33.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2020 07:33:14 -0700 (PDT)
Subject: Re: [poky] [RFC PATCH 1/2] Example for ext kernel modules dependency, master module
To: hubert.chaumette@kolabnow.com, poky@lists.yoctoproject.org,
 bruce.ashfield@gmail.com
References: <cover.1593601516.git.hubert.chaumette@kolabnow.com>
 <8ff9ce22aa0e05096d23efc8d6c1b9258b2f69f3.1593601520.git.hubert.chaumette@kolabnow.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <cebb0f5e-3899-9a28-7112-9f12fb8d2d0d@gmail.com>
Date: Wed, 1 Jul 2020 07:33:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <8ff9ce22aa0e05096d23efc8d6c1b9258b2f69f3.1593601520.git.hubert.chaumette@kolabnow.com>
Content-Type: multipart/alternative;
 boundary="------------CA0E18C7228CC5F746259794"
Content-Language: en-US

--------------CA0E18C7228CC5F746259794
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 7/1/20 6:54 AM, Hubert CHAUMETTE via lists.yoctoproject.org wrote:
> Add /dev/master char device and export a notifier for R/W events.
> Shared headers are installed to ${D}${includedir}/${BPN}.
>
> Signed-off-by: Hubert CHAUMETTE <hubert.chaumette@kolabnow.com>
> ---
>  .../kernel-module-master/files/COPYING        |  15 ++
>  .../kernel-module-master/files/Makefile       |  14 ++
>  .../files/include/master.h                    |  25 +++
>  .../kernel-module-master/files/master.c       | 154 ++++++++++++++++++
>  .../kernel-module-master.bb                   |  20 +++
>  5 files changed, 228 insertions(+)
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/files/COPYING
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/files/Makefile
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/files/include/master.h
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/files/master.c
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/kernel-module-master.bb
>
> diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/files/COPYING b/meta-skeleton/recipes-kernel/kernel-module-master/files/COPYING
> new file mode 100644
> index 0000000000..286d9e8890
> --- /dev/null
> +++ b/meta-skeleton/recipes-kernel/kernel-module-master/files/COPYING
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

Can you us the SPDX header here?
> diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/files/Makefile b/meta-skeleton/recipes-kernel/kernel-module-master/files/Makefile
> new file mode 100644
> index 0000000000..664e966a86
> --- /dev/null
> +++ b/meta-skeleton/recipes-kernel/kernel-module-master/files/Makefile
> @@ -0,0 +1,14 @@
> +obj-m := master.o
> +
> +SRC := $(PWD)
> +
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
> diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/files/include/master.h b/meta-skeleton/recipes-kernel/kernel-module-master/files/include/master.h
> new file mode 100644
> index 0000000000..b7b61b109a
> --- /dev/null
> +++ b/meta-skeleton/recipes-kernel/kernel-module-master/files/include/master.h
> @@ -0,0 +1,25 @@
> +/*
> + * External kernel module dependency exemple - master module
> + *
> + * Copyright (C) 2020 Hubert CHAUMETTE

Can you us the SPDX header here?
> + */
> +
> +#ifndef MASTER_H
> +#define MASTER_H
> +
> +#include <linux/notifier.h>
> +
> +enum master_evt_type {
> +	MASTER_EVT_READ,
> +	MASTER_EVT_WRITE,
> +};
> +
> +struct master_evt_data {
> +	char __user *buf;
> +	size_t count;
> +};
> +
> +int master_notifier_register(struct notifier_block *nb);
> +int master_notifier_unregister(struct notifier_block *nb);
> +
> +#endif /* MASTER_H */
> diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/files/master.c b/meta-skeleton/recipes-kernel/kernel-module-master/files/master.c
> new file mode 100644
> index 0000000000..c94c468abf
> --- /dev/null
> +++ b/meta-skeleton/recipes-kernel/kernel-module-master/files/master.c
> @@ -0,0 +1,154 @@
> +/*
> + * External kernel module dependency exemple - master module
> + *
> + * Copyright (C) 2020 Hubert CHAUMETTE
> + */
> +
> +#include <linux/cdev.h>
> +#include <linux/fs.h>
> +#include <linux/uaccess.h>
> +#include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/types.h>
> +
> +#include "include/master.h"
> +
> +#define MASTER_NAME	"master"
> +#define MASTER_BUF_SZ	128
> +
> +static DEFINE_MUTEX(master_lock);
> +static BLOCKING_NOTIFIER_HEAD(master_chain_head);
> +static int master_major;
> +static struct class *master_class;
> +static char master_buf[MASTER_BUF_SZ] = { 0 };
> +static int master_count = 0;
> +static struct device *master_device;
> +
> +int master_notifier_register(struct notifier_block *nb)
> +{
> +	return blocking_notifier_chain_register(&master_chain_head, nb);
> +}
> +EXPORT_SYMBOL(master_notifier_register);
> +
> +int master_notifier_unregister(struct notifier_block *nb)
> +{
> +	return blocking_notifier_chain_unregister(&master_chain_head, nb);
> +}
> +EXPORT_SYMBOL(master_notifier_unregister);
> +
> +static ssize_t master_read(struct file *fp, char __user *buf,
> +			   size_t count, loff_t *offset)
> +{
> +	(void)fp;
> +
> +	ssize_t ret;
> +	size_t read_count = min(master_count - *offset, count);
> +	struct master_evt_data data = {
> +		.buf = buf,
> +		.count = read_count,
> +	};
> +
> +	if (*offset >= master_count - 1)
> +		return 0;
> +
> +	mutex_lock(&master_lock);
> +
> +	if (copy_to_user(buf, master_buf + *offset, read_count)) {
> +		ret = -EFAULT;
> +		goto unlock;
> +	}
> +	*offset += read_count;
> +	ret = read_count;
> +
> +	blocking_notifier_call_chain(&master_chain_head, MASTER_EVT_READ, &data);
> +
> +unlock:
> +	mutex_unlock(&master_lock);
> +
> +	return ret;
> +}
> +
> +static ssize_t master_write(struct file *fp, const char __user *buf,
> +			    size_t count, loff_t *offset)
> +{
> +	(void)offset;
> +	(void)fp;
> +
> +	ssize_t ret;
> +	struct master_evt_data data = {
> +		.buf = buf,
> +		.count = count,
> +	};
> +
> +	if (count > MASTER_BUF_SZ)
> +		return -EFBIG;
> +
> +	mutex_lock(&master_lock);
> +
> +	if (copy_from_user(master_buf, buf, count)) {
> +		ret = -EFAULT;
> +		goto unlock;
> +	}
> +	ret = count;
> +	master_count = count;
> +
> +	blocking_notifier_call_chain(&master_chain_head, MASTER_EVT_WRITE, &data);
> +
> +unlock:
> +	mutex_unlock(&master_lock);
> +
> +	return ret;
> +}
> +
> +static const struct file_operations master_fops = {
> +	.owner =	THIS_MODULE,
> +	.write =	master_write,
> +	.read =		master_read,
> +	.llseek =	no_llseek,
> +};
> +
> +static int __init master_init(void)
> +{
> +	int ret = 0;
> +
> +	master_major = register_chrdev(0, MASTER_NAME, &master_fops);
> +	if (master_major < 0) {
> +		ret = master_major;
> +		goto err;
> +	}
> +
> +	master_class = class_create(THIS_MODULE, MASTER_NAME);
> +	if (IS_ERR(master_class)) {
> +		ret = PTR_ERR(master_class);
> +		goto err_class;
> +	}
> +
> +	master_device = device_create(master_class, NULL, MKDEV(master_major, 0),
> +				      NULL, MASTER_NAME);
> +	if (IS_ERR(master_device)) {
> +		ret = PTR_ERR(master_device);
> +		goto err_device;
> +	}
> +
> +	return ret;
> +
> +err_device:
> +	class_destroy(master_class);
> +err_class:
> +	unregister_chrdev(master_major, MASTER_NAME);
> +err:
> +	return ret;
> +}
> +module_init(master_init);
> +
> +static void __exit master_exit(void)
> +{
> +	device_destroy(master_class, MKDEV(master_major, 0));
> +	class_destroy(master_class);
> +	unregister_chrdev(master_major, MASTER_NAME);
> +}
> +module_exit(master_exit);
> +
> +MODULE_AUTHOR("Hubert CHAUMETTE");
> +MODULE_DESCRIPTION("External kernel module dependency exemple - master module");
> +MODULE_LICENSE("GPL");
> diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/kernel-module-master.bb b/meta-skeleton/recipes-kernel/kernel-module-master/kernel-module-master.bb
> new file mode 100644
> index 0000000000..d20f163334
> --- /dev/null
> +++ b/meta-skeleton/recipes-kernel/kernel-module-master/kernel-module-master.bb
> @@ -0,0 +1,20 @@
> +SUMMARY = "External kernel module dependency exemple - master module"
> +LICENSE = "GPLv2"
> +LIC_FILES_CHKSUM = "file://COPYING;md5=1c5a04927650c42822bb4b1de4641658"
> +
> +inherit module
> +
> +PN = "kernel-module-master"
> +PV = "0.1"
> +
> +SRC_URI = "file://Makefile \
> +           file://master.c \
> +           file://include/master.h \
> +           file://COPYING \
> +          "
> +
> +S = "${WORKDIR}"
> +
> +do_install_append() {
> +    install -Dm0644 ${S}/include/master.h ${D}${includedir}/${BPN}/
> +}
>
> 


--------------CA0E18C7228CC5F746259794
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 7/1/20 6:54 AM, Hubert CHAUMETTE via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:8ff9ce22aa0e05096d23efc8d6c1b9258b2f69f3.1593601520.git.hubert.chaumette@kolabnow.com">
      <pre class="moz-quote-pre" wrap="">Add /dev/master char device and export a notifier for R/W events.
Shared headers are installed to ${D}${includedir}/${BPN}.

Signed-off-by: Hubert CHAUMETTE <a class="moz-txt-link-rfc2396E" href="mailto:hubert.chaumette@kolabnow.com">&lt;hubert.chaumette@kolabnow.com&gt;</a>
---
 .../kernel-module-master/files/COPYING        |  15 ++
 .../kernel-module-master/files/Makefile       |  14 ++
 .../files/include/master.h                    |  25 +++
 .../kernel-module-master/files/master.c       | 154 ++++++++++++++++++
 .../kernel-module-master.bb                   |  20 +++
 5 files changed, 228 insertions(+)
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/files/COPYING
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/files/Makefile
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/files/include/master.h
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/files/master.c
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/kernel-module-master.bb

diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/files/COPYING b/meta-skeleton/recipes-kernel/kernel-module-master/files/COPYING
new file mode 100644
index 0000000000..286d9e8890
--- /dev/null
+++ b/meta-skeleton/recipes-kernel/kernel-module-master/files/COPYING
@@ -0,0 +1,15 @@
+Copyright (C) 2020 Hubert CHAUMETTE
+
+This program is free software; you can redistribute it and/or modify
+it under the terms of the GNU General Public License as published by
+the Free Software Foundation; either version 2 of the License, or
+(at your option) any later version.
+
+This program is distributed in the hope that it will be useful,
+but WITHOUT ANY WARRANTY; without even the implied warranty of
+MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+GNU General Public License for more details.
+
+You should have received a copy of the GNU General Public License
+along with this program; if not, write to the Free Software
+Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA</pre>
    </blockquote>
    <br>
    Can you us the SPDX header here?
    <blockquote type="cite"
cite="mid:8ff9ce22aa0e05096d23efc8d6c1b9258b2f69f3.1593601520.git.hubert.chaumette@kolabnow.com">
      <pre class="moz-quote-pre" wrap="">
diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/files/Makefile b/meta-skeleton/recipes-kernel/kernel-module-master/files/Makefile
new file mode 100644
index 0000000000..664e966a86
--- /dev/null
+++ b/meta-skeleton/recipes-kernel/kernel-module-master/files/Makefile
@@ -0,0 +1,14 @@
+obj-m := master.o
+
+SRC := $(PWD)
+
+all:
+	$(MAKE) -C $(KERNEL_SRC) M=$(SRC)
+
+modules_install:
+	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install
+
+clean:
+	rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
+	rm -f Module.markers Module.symvers modules.order
+	rm -rf .tmp_versions Modules.symvers
diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/files/include/master.h b/meta-skeleton/recipes-kernel/kernel-module-master/files/include/master.h
new file mode 100644
index 0000000000..b7b61b109a
--- /dev/null
+++ b/meta-skeleton/recipes-kernel/kernel-module-master/files/include/master.h
@@ -0,0 +1,25 @@
+/*
+ * External kernel module dependency exemple - master module
+ *
+ * Copyright (C) 2020 Hubert CHAUMETTE</pre>
    </blockquote>
    <br>
    Can you us the SPDX header here?
    <blockquote type="cite"
cite="mid:8ff9ce22aa0e05096d23efc8d6c1b9258b2f69f3.1593601520.git.hubert.chaumette@kolabnow.com">
      <pre class="moz-quote-pre" wrap="">
+ */
+
+#ifndef MASTER_H
+#define MASTER_H
+
+#include &lt;linux/notifier.h&gt;
+
+enum master_evt_type {
+	MASTER_EVT_READ,
+	MASTER_EVT_WRITE,
+};
+
+struct master_evt_data {
+	char __user *buf;
+	size_t count;
+};
+
+int master_notifier_register(struct notifier_block *nb);
+int master_notifier_unregister(struct notifier_block *nb);
+
+#endif /* MASTER_H */
diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/files/master.c b/meta-skeleton/recipes-kernel/kernel-module-master/files/master.c
new file mode 100644
index 0000000000..c94c468abf
--- /dev/null
+++ b/meta-skeleton/recipes-kernel/kernel-module-master/files/master.c
@@ -0,0 +1,154 @@
+/*
+ * External kernel module dependency exemple - master module
+ *
+ * Copyright (C) 2020 Hubert CHAUMETTE
+ */
+
+#include &lt;linux/cdev.h&gt;
+#include &lt;linux/fs.h&gt;
+#include &lt;linux/uaccess.h&gt;
+#include &lt;linux/module.h&gt;
+#include &lt;linux/mutex.h&gt;
+#include &lt;linux/types.h&gt;
+
+#include "include/master.h"
+
+#define MASTER_NAME	"master"
+#define MASTER_BUF_SZ	128
+
+static DEFINE_MUTEX(master_lock);
+static BLOCKING_NOTIFIER_HEAD(master_chain_head);
+static int master_major;
+static struct class *master_class;
+static char master_buf[MASTER_BUF_SZ] = { 0 };
+static int master_count = 0;
+static struct device *master_device;
+
+int master_notifier_register(struct notifier_block *nb)
+{
+	return blocking_notifier_chain_register(&amp;master_chain_head, nb);
+}
+EXPORT_SYMBOL(master_notifier_register);
+
+int master_notifier_unregister(struct notifier_block *nb)
+{
+	return blocking_notifier_chain_unregister(&amp;master_chain_head, nb);
+}
+EXPORT_SYMBOL(master_notifier_unregister);
+
+static ssize_t master_read(struct file *fp, char __user *buf,
+			   size_t count, loff_t *offset)
+{
+	(void)fp;
+
+	ssize_t ret;
+	size_t read_count = min(master_count - *offset, count);
+	struct master_evt_data data = {
+		.buf = buf,
+		.count = read_count,
+	};
+
+	if (*offset &gt;= master_count - 1)
+		return 0;
+
+	mutex_lock(&amp;master_lock);
+
+	if (copy_to_user(buf, master_buf + *offset, read_count)) {
+		ret = -EFAULT;
+		goto unlock;
+	}
+	*offset += read_count;
+	ret = read_count;
+
+	blocking_notifier_call_chain(&amp;master_chain_head, MASTER_EVT_READ, &amp;data);
+
+unlock:
+	mutex_unlock(&amp;master_lock);
+
+	return ret;
+}
+
+static ssize_t master_write(struct file *fp, const char __user *buf,
+			    size_t count, loff_t *offset)
+{
+	(void)offset;
+	(void)fp;
+
+	ssize_t ret;
+	struct master_evt_data data = {
+		.buf = buf,
+		.count = count,
+	};
+
+	if (count &gt; MASTER_BUF_SZ)
+		return -EFBIG;
+
+	mutex_lock(&amp;master_lock);
+
+	if (copy_from_user(master_buf, buf, count)) {
+		ret = -EFAULT;
+		goto unlock;
+	}
+	ret = count;
+	master_count = count;
+
+	blocking_notifier_call_chain(&amp;master_chain_head, MASTER_EVT_WRITE, &amp;data);
+
+unlock:
+	mutex_unlock(&amp;master_lock);
+
+	return ret;
+}
+
+static const struct file_operations master_fops = {
+	.owner =	THIS_MODULE,
+	.write =	master_write,
+	.read =		master_read,
+	.llseek =	no_llseek,
+};
+
+static int __init master_init(void)
+{
+	int ret = 0;
+
+	master_major = register_chrdev(0, MASTER_NAME, &amp;master_fops);
+	if (master_major &lt; 0) {
+		ret = master_major;
+		goto err;
+	}
+
+	master_class = class_create(THIS_MODULE, MASTER_NAME);
+	if (IS_ERR(master_class)) {
+		ret = PTR_ERR(master_class);
+		goto err_class;
+	}
+
+	master_device = device_create(master_class, NULL, MKDEV(master_major, 0),
+				      NULL, MASTER_NAME);
+	if (IS_ERR(master_device)) {
+		ret = PTR_ERR(master_device);
+		goto err_device;
+	}
+
+	return ret;
+
+err_device:
+	class_destroy(master_class);
+err_class:
+	unregister_chrdev(master_major, MASTER_NAME);
+err:
+	return ret;
+}
+module_init(master_init);
+
+static void __exit master_exit(void)
+{
+	device_destroy(master_class, MKDEV(master_major, 0));
+	class_destroy(master_class);
+	unregister_chrdev(master_major, MASTER_NAME);
+}
+module_exit(master_exit);
+
+MODULE_AUTHOR("Hubert CHAUMETTE");
+MODULE_DESCRIPTION("External kernel module dependency exemple - master module");
+MODULE_LICENSE("GPL");
diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/kernel-module-master.bb b/meta-skeleton/recipes-kernel/kernel-module-master/kernel-module-master.bb
new file mode 100644
index 0000000000..d20f163334
--- /dev/null
+++ b/meta-skeleton/recipes-kernel/kernel-module-master/kernel-module-master.bb
@@ -0,0 +1,20 @@
+SUMMARY = "External kernel module dependency exemple - master module"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = <a class="moz-txt-link-rfc2396E" href="file://COPYING;md5=1c5a04927650c42822bb4b1de4641658">"file://COPYING;md5=1c5a04927650c42822bb4b1de4641658"</a>
+
+inherit module
+
+PN = "kernel-module-master"
+PV = "0.1"
+
+SRC_URI = <a class="moz-txt-link-rfc2396E" href="file://Makefile\+file://master.c\+file://include/master.h\+file://COPYING\+">"file://Makefile \
+           file://master.c \
+           file://include/master.h \
+           file://COPYING \
+          "</a>
+
+S = "${WORKDIR}"
+
+do_install_append() {
+    install -Dm0644 ${S}/include/master.h ${D}${includedir}/${BPN}/
+}
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------CA0E18C7228CC5F746259794--
