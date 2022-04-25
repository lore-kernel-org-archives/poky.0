Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web12.32090.1650904433253673256
 for <poky@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 09:33:53 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1715D1FB
	for <poky@lists.yoctoproject.org>; Mon, 25 Apr 2022 09:33:52 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B8B593F774
	for <poky@lists.yoctoproject.org>; Mon, 25 Apr 2022 09:33:51 -0700 (PDT)
From: "Ross Burton" <ross.burton@arm.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky.conf: set PACKAGE_CLASSES explicitly to package_rpm
Date: Mon, 25 Apr 2022 17:33:47 +0100
Message-Id: <20220425163347.1517336-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Currently, defaultsetup.conf defaults PACKAGE_CLASSES to ipkg, and Poky's
local.conf.template defaults it to rpm.  So in theory Poky uses RPM, but
only if you actually use the local.conf.template: use Poky but write
your own minimal local.conf and you get ipkg being used.

Resolve this by explicitly setting PACKAGE_CLASSES in poky.conf, and
commentting out the assignment in local.conf.sample.  Users with
existing local.conf files won't notice a change of behaviour, and users
who write their own minimal local.conf will get the behaviour that is
expected, that is RPMs.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 meta-poky/conf/distro/poky.conf  | 2 ++
 meta-poky/conf/local.conf.sample | 4 ++--
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky=
.conf
index a42e1d4ebb..b4c64c495f 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -30,6 +30,8 @@ DISTRO_EXTRA_RRECOMMENDS +=3D "${POKY_DEFAULT_EXTRA_RRE=
COMMENDS}"
=20
 TCLIBCAPPEND =3D ""
=20
+PACKAGE_CLASSES ?=3D "package_rpm"
+
 SANITY_TESTED_DISTROS ?=3D " \
             poky-3.3 \n \
             poky-3.4 \n \
diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf=
.sample
index d92aa0ef87..4d2fa516fe 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -104,8 +104,8 @@ DISTRO ?=3D "poky"
 #  - 'package_ipk' for ipk files are used by opkg (a debian style embedd=
ed package manager)
 #  - 'package_rpm' for rpm style packages
 # E.g.: PACKAGE_CLASSES ?=3D "package_rpm package_deb package_ipk"
-# We default to rpm:
-PACKAGE_CLASSES ?=3D "package_rpm"
+# OE-Core defaults to ipkg, whilst Poky defaults to rpm:
+# PACKAGE_CLASSES ?=3D "package_rpm"
=20
 #
 # SDK target architecture
--=20
2.25.1

