Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.20528.1599156660121812425
 for <poky@lists.yoctoproject.org>;
 Thu, 03 Sep 2020 11:11:00 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 68DB8101E
	for <poky@lists.yoctoproject.org>; Thu,  3 Sep 2020 11:10:59 -0700 (PDT)
Received: from rossb-vm.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0A1A83F68F
	for <poky@lists.yoctoproject.org>; Thu,  3 Sep 2020 11:10:58 -0700 (PDT)
From: "Ross Burton" <ross@burtonini.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH] local.conf.sample.extended: remove help2man reference
Date: Thu,  3 Sep 2020 19:10:55 +0100
Message-Id: <20200903181055.1299273-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

help2man isn't part of the early build anymore, so there's no point in
referring to it here.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 meta-poky/conf/local.conf.sample.extended | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/l=
ocal.conf.sample.extended
index dc92a16f6c..44a01690e3 100644
--- a/meta-poky/conf/local.conf.sample.extended
+++ b/meta-poky/conf/local.conf.sample.extended
@@ -124,9 +124,6 @@ DISTRO_FEATURES_remove =3D "x11"
 #This enable mklibs library size optimization will be for all the images=
.
 #MKLIBS_OPTIMIZED_IMAGES ?=3D "all"
=20
-# Uncomment this if your host distribution provides the help2man tool.
-#ASSUME_PROVIDED +=3D "help2man-native"
-
 # This value is currently used by pseudo to determine if the recipe shou=
ld
 # build both the 32-bit and 64-bit wrapper libraries on a 64-bit build s=
ystem.
 #
--=20
2.28.0

