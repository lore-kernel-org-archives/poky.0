Received: from mx.kolabnow.com (mx.kolabnow.com [95.128.36.41])
 by mx.groups.io with SMTP id smtpd.web11.22197.1593611699558216838
 for <poky@lists.yoctoproject.org>;
 Wed, 01 Jul 2020 06:55:00 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@kolabnow.com header.s=dkim20160331 header.b=uBlULsSI;
 spf=pass (domain: kolabnow.com, ip: 95.128.36.41, mailfrom: hubert.chaumette@kolabnow.com)
Received: from localhost (unknown [127.0.0.1])
	by ext-mx-out002.mykolab.com (Postfix) with ESMTP id A37898BE;
	Wed,  1 Jul 2020 15:54:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	content-transfer-encoding:mime-version:references:in-reply-to
	:message-id:date:date:subject:subject:from:from:received
	:received:received; s=dkim20160331; t=1593611695; x=1595426096;
	 bh=UUobLmPQO2cGXAKsMTEZGtmNVv76awYBJTt21CAbMRQ=; b=uBlULsSIG+oh
	JG/4jeqnJPijSKRn8Jy327YsXe1DDjU1+zVd/asNt3o0rb+QeGrJjlFx2DWxobtW
	pWbNGcyD6AUvH35YKY2ZgS8Bx3NwbKqhHAy2zxKygSbkWpSVce1JRQRZQW1bIn7G
	6cj36LZ0RpfUhvsf38nS90oXLzeKEDy9bae55HzUhQm2+F9cnkA0bmfVuf5D24gD
	YmwoAqMoF7xe9sY6Q6xxNzynpJra9M/lmEm6TQrU5ZUvUqXdaE3VBcevn5yraGsy
	JyxmxcZkYPhQzFvTmOFbotmtfLjqf4O0k6hIHd2Iek32j8BccNfddAybrjPJU/pC
	W1wD+fVYL26a9uZomEvpcsg+0LEo+bkir14aLj7AIHfUTzrA8/rD2wOEnI0DEfpv
	vnh1uNIBtuJ1j7fC0S7tJu63FC+NJEQSOCPWwvVOaINjDSxO24L41T3Swv8Y/VTc
	K0v9kVKZ+QP5LL0kO2OE74Aq3MSLxLUOz8hBFfl6LKS0LxyjsMVREOaKhnCshCFk
	rHvolNybp+jL4ClYY4qb3LA0oBqC02fG7kfcpdVz76saXVcEgIn10f/b7ka0PHqC
	RpftOf1AWIBwdwvnnELF+o81a76/2+yBrPyU2MYNhjxPBJgEcnxazLOT0rXX1o98
	FrJiKo1tJuCi1pou07kLi4ANvW4syo4=
X-Virus-Scanned: amavisd-new at mykolab.com
X-Spam-Flag: NO
X-Spam-Score: -1.899
X-Spam-Level: 
X-Spam-Status: No, score=-1.899 tagged_above=-10 required=5
	tests=[BAYES_00=-1.9, URIBL_BLOCKED=0.001]
	autolearn=ham autolearn_force=no
Received: from mx.kolabnow.com ([127.0.0.1])
	by localhost (ext-mx-out002.mykolab.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id prv4AAJwJVej; Wed,  1 Jul 2020 15:54:55 +0200 (CEST)
Received: from int-mx001.mykolab.com (unknown [10.9.13.1])
	by ext-mx-out002.mykolab.com (Postfix) with ESMTPS id EA9726A7;
	Wed,  1 Jul 2020 15:54:54 +0200 (CEST)
Received: from ext-subm003.mykolab.com (unknown [10.9.6.3])
	by int-mx001.mykolab.com (Postfix) with ESMTPS id 9EDD41E0;
	Wed,  1 Jul 2020 15:54:54 +0200 (CEST)
From: "Hubert CHAUMETTE" <hubert.chaumette@kolabnow.com>
To: poky@lists.yoctoproject.org,
	bruce.ashfield@gmail.com
Cc: Hubert CHAUMETTE <hubert.chaumette@kolabnow.com>
Subject: [RFC PATCH 2/2] Example for ext kernel module dependency, slave module
Date: Wed,  1 Jul 2020 15:54:37 +0200
Message-Id: <91719a84eeb95599fbf1e9f4cb693efca5527a9f.1593601521.git.hubert.chaumette@kolabnow.com>
In-Reply-To: <cover.1593601516.git.hubert.chaumette@kolabnow.com>
References: <cover.1593601516.git.hubert.chaumette@kolabnow.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Registers to the master notifier and displays the string received on R/W.

Signed-off-by: Hubert CHAUMETTE <hubert.chaumette@kolabnow.com>
---
 .../kernel-module-slave/files/COPYING         | 15 ++++++
 .../kernel-module-slave/files/Makefile        | 16 ++++++
 .../kernel-module-slave/files/slave.c         | 52 +++++++++++++++++++
 .../kernel-module-slave.bb                    | 17 ++++++
 4 files changed, 100 insertions(+)
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/file=
s/COPYING
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/file=
s/Makefile
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/file=
s/slave.c
 create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/kern=
el-module-slave.bb

diff --git a/meta-skeleton/recipes-kernel/kernel-module-slave/files/COPYI=
NG b/meta-skeleton/recipes-kernel/kernel-module-slave/files/COPYING
new file mode 100644
index 0000000000..286d9e8890
--- /dev/null
+++ b/meta-skeleton/recipes-kernel/kernel-module-slave/files/COPYING
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
diff --git a/meta-skeleton/recipes-kernel/kernel-module-slave/files/Makef=
ile b/meta-skeleton/recipes-kernel/kernel-module-slave/files/Makefile
new file mode 100644
index 0000000000..edf12b7f31
--- /dev/null
+++ b/meta-skeleton/recipes-kernel/kernel-module-slave/files/Makefile
@@ -0,0 +1,16 @@
+SRC :=3D $(shell pwd)
+
+obj-m :=3D slave.o
+# $src is a Kbuild variable. Using $SRC doesn't work.
+ccflags-y :=3D -I$(src)/recipe-sysroot/usr/include/kernel-module-master/
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
diff --git a/meta-skeleton/recipes-kernel/kernel-module-slave/files/slave=
.c b/meta-skeleton/recipes-kernel/kernel-module-slave/files/slave.c
new file mode 100644
index 0000000000..b1d9b92cc6
--- /dev/null
+++ b/meta-skeleton/recipes-kernel/kernel-module-slave/files/slave.c
@@ -0,0 +1,52 @@
+/*
+ * External kernel module dependency exemple - slave module
+ *
+ * Copyright (C) 2020 Hubert CHAUMETTE
+ */
+
+#include <linux/module.h>
+#include <master.h>
+
+static int slave_notify(struct notifier_block *self,
+			unsigned long action, void *data);
+
+static struct notifier_block slave_nb =3D {
+	.notifier_call =3D slave_notify,
+};
+
+static int slave_notify(struct notifier_block *self,
+			unsigned long action, void *data)
+{
+	struct master_evt_data *d =3D (struct master_evt_data *)data;
+
+	BUG_ON(data =3D=3D NULL);
+
+	switch (action) {
+	case MASTER_EVT_READ:
+		pr_info("slave: \"%.*s\" read from master\n", d->count, d->buf);
+		break;
+	case MASTER_EVT_WRITE:
+		pr_info("slave: \"%.*s\" written to master\n", d->count, d->buf);
+		break;
+	default:
+		break;
+	}
+
+	return NOTIFY_DONE;
+}
+
+static int __init slave_init(void)
+{
+	return master_notifier_register(&slave_nb);
+}
+module_init(slave_init);
+
+static void __exit slave_exit(void)
+{
+	master_notifier_unregister(&slave_nb);
+}
+module_exit(slave_exit);
+
+MODULE_AUTHOR("Hubert CHAUMETTE");
+MODULE_DESCRIPTION("External kernel module dependency exemple - slave mo=
dule");
+MODULE_LICENSE("GPL");
diff --git a/meta-skeleton/recipes-kernel/kernel-module-slave/kernel-modu=
le-slave.bb b/meta-skeleton/recipes-kernel/kernel-module-slave/kernel-mod=
ule-slave.bb
new file mode 100644
index 0000000000..280fa815f3
--- /dev/null
+++ b/meta-skeleton/recipes-kernel/kernel-module-slave/kernel-module-slav=
e.bb
@@ -0,0 +1,17 @@
+SUMMARY =3D "External kernel module dependency exemple - slave module"
+LICENSE =3D "GPLv2"
+LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D1c5a04927650c42822bb4b1de4641=
658"
+
+inherit module
+
+PN =3D "kernel-module-slave"
+PV =3D "0.1"
+
+DEPENDS =3D "kernel-module-master"
+
+SRC_URI =3D "file://Makefile \
+           file://slave.c \
+           file://COPYING \
+          "
+
+S =3D "${WORKDIR}"
--=20
2.27.0

