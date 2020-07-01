Received: from mx.kolabnow.com (mx.kolabnow.com [95.128.36.42])
 by mx.groups.io with SMTP id smtpd.web10.22371.1593611690509219035
 for <poky@lists.yoctoproject.org>;
 Wed, 01 Jul 2020 06:54:51 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@kolabnow.com header.s=dkim20160331 header.b=kNh8f2Nd;
 spf=pass (domain: kolabnow.com, ip: 95.128.36.42, mailfrom: hubert.chaumette@kolabnow.com)
Received: from localhost (unknown [127.0.0.1])
	by ext-mx-out001.mykolab.com (Postfix) with ESMTP id 10DB4B12;
	Wed,  1 Jul 2020 15:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	content-transfer-encoding:mime-version:references:in-reply-to
	:message-id:date:date:subject:subject:from:from:received
	:received:received; s=dkim20160331; t=1593611688; x=1595426089;
	 bh=xpqLNKXN8hJxUpSosc9M00Sa7fMNETzI0+U3Ih+Iur0=; b=kNh8f2Ndudys
	JskUwxWD65MqksVwd7Pc8mPYLUwjWI07l4nkACS880E6EpsuAoTnki1cWcxZKVap
	tWrODZiepirTDcpoAV0VNYm372vROE+ch2Kxu4rfPcsfCU9l6Rs72diwVtykUd8v
	CHVlTW2bBpHjFpfg6VJJvhGa+3Hx9Cs5aXEVG4uAJF91HtWkE6YjFdqODy+kOtTl
	CE09/CsNkkg/s5hR5b0BIKgWbMIREwS4lrREwTSwBI3VV5tJWO/j4RO57UKUSvGX
	gUsJk9teNfIQfA9vStTbHA9Jzlb48G3n4mLWctUCFIL4bC7fYDab47te3+OzVZAR
	Ei9/eRqBy36MGoFFsx8SETlxxz2GgWn7Icvf/RwZlkNmAV32TpD4uwtlS4M+lM9O
	NjAzpIc6KpxLwET8XIhb2J/EmabIoqntGezcLYrquskQfxkFnO0qUnQDVFVPG/Lb
	3KdxbVpWNCwdSpgQTBaab1iNvjjniuUqco+I+g1ztvHpKjVnsyhWzKgjwmHpmaex
	Kna41AZBbzieQyGAB2DOhsZwgQHHqU0kXPyb0Z4Boz34FUdUQjAET5f9rsWco/yf
	wbS8rQE8Ex/XVADISarAGykKZ9SZbSGNcDBZbUNBMQNsJ3D7QyJVus3pt2ac6J89
	Wi6KGl615jntF1fEum5SJzhPb9fXavw=
X-Virus-Scanned: amavisd-new at mykolab.com
X-Spam-Flag: NO
X-Spam-Score: -1.899
X-Spam-Level: 
X-Spam-Status: No, score=-1.899 tagged_above=-10 required=5
	tests=[BAYES_00=-1.9, URIBL_BLOCKED=0.001]
	autolearn=ham autolearn_force=no
Received: from mx.kolabnow.com ([127.0.0.1])
	by localhost (ext-mx-out001.mykolab.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AeNkGy4O17NK; Wed,  1 Jul 2020 15:54:48 +0200 (CEST)
Received: from int-mx003.mykolab.com (unknown [10.9.13.3])
	by ext-mx-out001.mykolab.com (Postfix) with ESMTPS id F075A5CB;
	Wed,  1 Jul 2020 15:54:47 +0200 (CEST)
Received: from ext-subm003.mykolab.com (unknown [10.9.6.3])
	by int-mx003.mykolab.com (Postfix) with ESMTPS id AA3E4A6C;
	Wed,  1 Jul 2020 15:54:47 +0200 (CEST)
From: "Hubert CHAUMETTE" <hubert.chaumette@kolabnow.com>
To: poky@lists.yoctoproject.org,
	bruce.ashfield@gmail.com
Cc: Hubert CHAUMETTE <hubert.chaumette@kolabnow.com>
Subject: [RFC PATCH 1/2] Example for ext kernel modules dependency, master module
Date: Wed,  1 Jul 2020 15:54:36 +0200
Message-Id: <8ff9ce22aa0e05096d23efc8d6c1b9258b2f69f3.1593601520.git.hubert.chaumette@kolabnow.com>
In-Reply-To: <cover.1593601516.git.hubert.chaumette@kolabnow.com>
References: <cover.1593601516.git.hubert.chaumette@kolabnow.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Add /dev/master char device and export a notifier for R/W events.
Shared headers are installed to ${D}${includedir}/${BPN}.

Signed-off-by: Hubert CHAUMETTE <hubert.chaumette@kolabnow.com>
---
 .../kernel-module-master/files/COPYING        |  15 ++
 .../kernel-module-master/files/Makefile       |  14 ++
 .../files/include/master.h                    |  25 +++
 .../kernel-module-master/files/master.c       | 154 ++++++++++++++++++
 .../kernel-module-master.bb                   |  20 +++
 5 files changed, 228 insertions(+)
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/fil=
es/COPYING
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/fil=
es/Makefile
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/fil=
es/include/master.h
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/fil=
es/master.c
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/ker=
nel-module-master.bb

diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/files/COPY=
ING b/meta-skeleton/recipes-kernel/kernel-module-master/files/COPYING
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
+Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  U=
SA
diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/files/Make=
file b/meta-skeleton/recipes-kernel/kernel-module-master/files/Makefile
new file mode 100644
index 0000000000..664e966a86
--- /dev/null
+++ b/meta-skeleton/recipes-kernel/kernel-module-master/files/Makefile
@@ -0,0 +1,14 @@
+obj-m :=3D master.o
+
+SRC :=3D $(PWD)
+
+all:
+	$(MAKE) -C $(KERNEL_SRC) M=3D$(SRC)
+
+modules_install:
+	$(MAKE) -C $(KERNEL_SRC) M=3D$(SRC) modules_install
+
+clean:
+	rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
+	rm -f Module.markers Module.symvers modules.order
+	rm -rf .tmp_versions Modules.symvers
diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/files/incl=
ude/master.h b/meta-skeleton/recipes-kernel/kernel-module-master/files/in=
clude/master.h
new file mode 100644
index 0000000000..b7b61b109a
--- /dev/null
+++ b/meta-skeleton/recipes-kernel/kernel-module-master/files/include/mas=
ter.h
@@ -0,0 +1,25 @@
+/*
+ * External kernel module dependency exemple - master module
+ *
+ * Copyright (C) 2020 Hubert CHAUMETTE
+ */
+
+#ifndef MASTER_H
+#define MASTER_H
+
+#include <linux/notifier.h>
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
diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/files/mast=
er.c b/meta-skeleton/recipes-kernel/kernel-module-master/files/master.c
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
+#include <linux/cdev.h>
+#include <linux/fs.h>
+#include <linux/uaccess.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/types.h>
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
+static char master_buf[MASTER_BUF_SZ] =3D { 0 };
+static int master_count =3D 0;
+static struct device *master_device;
+
+int master_notifier_register(struct notifier_block *nb)
+{
+	return blocking_notifier_chain_register(&master_chain_head, nb);
+}
+EXPORT_SYMBOL(master_notifier_register);
+
+int master_notifier_unregister(struct notifier_block *nb)
+{
+	return blocking_notifier_chain_unregister(&master_chain_head, nb);
+}
+EXPORT_SYMBOL(master_notifier_unregister);
+
+static ssize_t master_read(struct file *fp, char __user *buf,
+			   size_t count, loff_t *offset)
+{
+	(void)fp;
+
+	ssize_t ret;
+	size_t read_count =3D min(master_count - *offset, count);
+	struct master_evt_data data =3D {
+		.buf =3D buf,
+		.count =3D read_count,
+	};
+
+	if (*offset >=3D master_count - 1)
+		return 0;
+
+	mutex_lock(&master_lock);
+
+	if (copy_to_user(buf, master_buf + *offset, read_count)) {
+		ret =3D -EFAULT;
+		goto unlock;
+	}
+	*offset +=3D read_count;
+	ret =3D read_count;
+
+	blocking_notifier_call_chain(&master_chain_head, MASTER_EVT_READ, &data=
);
+
+unlock:
+	mutex_unlock(&master_lock);
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
+	struct master_evt_data data =3D {
+		.buf =3D buf,
+		.count =3D count,
+	};
+
+	if (count > MASTER_BUF_SZ)
+		return -EFBIG;
+
+	mutex_lock(&master_lock);
+
+	if (copy_from_user(master_buf, buf, count)) {
+		ret =3D -EFAULT;
+		goto unlock;
+	}
+	ret =3D count;
+	master_count =3D count;
+
+	blocking_notifier_call_chain(&master_chain_head, MASTER_EVT_WRITE, &dat=
a);
+
+unlock:
+	mutex_unlock(&master_lock);
+
+	return ret;
+}
+
+static const struct file_operations master_fops =3D {
+	.owner =3D	THIS_MODULE,
+	.write =3D	master_write,
+	.read =3D		master_read,
+	.llseek =3D	no_llseek,
+};
+
+static int __init master_init(void)
+{
+	int ret =3D 0;
+
+	master_major =3D register_chrdev(0, MASTER_NAME, &master_fops);
+	if (master_major < 0) {
+		ret =3D master_major;
+		goto err;
+	}
+
+	master_class =3D class_create(THIS_MODULE, MASTER_NAME);
+	if (IS_ERR(master_class)) {
+		ret =3D PTR_ERR(master_class);
+		goto err_class;
+	}
+
+	master_device =3D device_create(master_class, NULL, MKDEV(master_major,=
 0),
+				      NULL, MASTER_NAME);
+	if (IS_ERR(master_device)) {
+		ret =3D PTR_ERR(master_device);
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
+MODULE_DESCRIPTION("External kernel module dependency exemple - master m=
odule");
+MODULE_LICENSE("GPL");
diff --git a/meta-skeleton/recipes-kernel/kernel-module-master/kernel-mod=
ule-master.bb b/meta-skeleton/recipes-kernel/kernel-module-master/kernel-=
module-master.bb
new file mode 100644
index 0000000000..d20f163334
--- /dev/null
+++ b/meta-skeleton/recipes-kernel/kernel-module-master/kernel-module-mas=
ter.bb
@@ -0,0 +1,20 @@
+SUMMARY =3D "External kernel module dependency exemple - master module"
+LICENSE =3D "GPLv2"
+LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D1c5a04927650c42822bb4b1de4641=
658"
+
+inherit module
+
+PN =3D "kernel-module-master"
+PV =3D "0.1"
+
+SRC_URI =3D "file://Makefile \
+           file://master.c \
+           file://include/master.h \
+           file://COPYING \
+          "
+
+S =3D "${WORKDIR}"
+
+do_install_append() {
+    install -Dm0644 ${S}/include/master.h ${D}${includedir}/${BPN}/
+}
--=20
2.27.0

