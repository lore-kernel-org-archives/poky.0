Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.22807.1629719982934733777
 for <poky@lists.yoctoproject.org>;
 Mon, 23 Aug 2021 04:59:43 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 02086101E
	for <poky@lists.yoctoproject.org>; Mon, 23 Aug 2021 04:59:41 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A0D563F766
	for <poky@lists.yoctoproject.org>; Mon, 23 Aug 2021 04:59:40 -0700 (PDT)
From: "Ross Burton" <ross@burtonini.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH] local.conf.sample.extended: fix commented-out override syntax
Date: Mon, 23 Aug 2021 12:59:36 +0100
Message-Id: <20210823115936.315342-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 meta-poky/conf/local.conf.sample.extended | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/l=
ocal.conf.sample.extended
index 17e95828d5..8a384540f9 100644
--- a/meta-poky/conf/local.conf.sample.extended
+++ b/meta-poky/conf/local.conf.sample.extended
@@ -135,7 +135,7 @@ DISTRO_FEATURES:remove =3D "x11"
 # Uncomment the following lines to enable multilib builds
 #require conf/multilib.conf
 #MULTILIBS =3D "multilib:lib32"
-#DEFAULTTUNE_virtclass-multilib-lib32 =3D "x86"
+#DEFAULTTUNE:virtclass-multilib-lib32 =3D "x86"
=20
 # Set RPM_PREFER_ELF_ARCH to configure preferred ABI when using rpm pack=
aging
 # backend to generate a rootfs, choices are:
@@ -313,7 +313,7 @@ DISTRO_FEATURES:remove =3D "x11"
 # Note this is not officially supported and is just illustrated here to
 # show an example of how it can be done
 # You'll also need your fortran recipe to depend on libgfortran
-#FORTRAN_forcevariable =3D ",fortran"
+#FORTRAN:forcevariable =3D ",fortran"
=20
 #
 # Kernel image features
--=20
2.32.0

