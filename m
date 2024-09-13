Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A999FC6160
	for <webhook@archiver.kernel.org>; Fri, 13 Sep 2024 16:06:51 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.77289.1726243607718064721
 for <poky@lists.yoctoproject.org>;
 Fri, 13 Sep 2024 09:06:48 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9BD3413D5
	for <poky@lists.yoctoproject.org>; Fri, 13 Sep 2024 09:07:16 -0700 (PDT)
Received: from cesw-amp-gbt-1s-m12830-04.oss.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E0CBF3F64C
	for <poky@lists.yoctoproject.org>; Fri, 13 Sep 2024 09:06:46 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH v2 1/2] linux-yocto: add .bbappend for 6.10
Date: Fri, 13 Sep 2024 17:06:40 +0100
Message-Id: <20240913160641.3502335-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 13 Sep 2024 16:06:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13440

Only the tested machines are uncommented, so that people don't try to use
the untested machines but it's easy to enable them for testing.

KBRANCH is no longer set as all of the machines use standard/base, which
is the default from the linux-yocto recipe.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 .../linux/linux-yocto_6.10.bbappend           | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.10.=
bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.10.bbappen=
d b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.10.bbappend
new file mode 100644
index 00000000000..5d80f9d23b0
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.10.bbappend
@@ -0,0 +1,19 @@
+# COMPATIBLE_MACHINE:beaglebone-yocto =3D "beaglebone-yocto"
+COMPATIBLE_MACHINE:genericarm64 =3D "genericarm64"
+# COMPATIBLE_MACHINE:genericx86 =3D "genericx86"
+# COMPATIBLE_MACHINE:genericx86-64 =3D "genericx86-64"
+
+KMACHINE:beaglebone-yocto ?=3D "beaglebone"
+KMACHINE:genericarm64 ?=3D "genericarm64"
+KMACHINE:genericx86 ?=3D "common-pc"
+KMACHINE:genericx86-64 ?=3D "common-pc-64"
+
+SRCREV_machine:beaglebone-yocto =3D "1025debfd0d40f7f8d0547328bbf50ac543=
bdeba"
+SRCREV_machine:genericarm64 =3D "1025debfd0d40f7f8d0547328bbf50ac543bdeb=
a"
+SRCREV_machine:genericx86 =3D "1025debfd0d40f7f8d0547328bbf50ac543bdeba"
+SRCREV_machine:genericx86-64 =3D "1025debfd0d40f7f8d0547328bbf50ac543bde=
ba"
+
+LINUX_VERSION:beaglebone-yocto =3D "6.10.8"
+LINUX_VERSION:genericarm64 =3D "6.10.8"
+LINUX_VERSION:genericx86 =3D "6.10.8"
+LINUX_VERSION:genericx86-64 =3D "6.10.8"
--=20
2.34.1


