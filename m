Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF680E00B43; Thu,  1 Oct 2015 11:02:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B641EE00747
	for <poky@yoctoproject.org>; Thu,  1 Oct 2015 11:02:52 -0700 (PDT)
Received: by wicfx3 with SMTP id fx3so773740wic.0
	for <poky@yoctoproject.org>; Thu, 01 Oct 2015 11:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=FCXCUnjHrVf5j1rl+0ko7MX1dzf5IOGujVLxvCJElFo=;
	b=wz7kQFB0MBXrd5WdCMgw2GPsJbdQb519sNnF+wQzSob0nnNpWb1iiiqsm8pI/6qnP0
	G0xSSTr0mLEZIiYZy23vzgtO5BO/SjdAgcihgK9duGv7wbxbVOW6HtzM9kjMhE2bTT9E
	kscpYY/wimx3Gk8Y7MBLSQ/qvCJMqLskREd0JjGmZprg016X0qkIt2Ty8NYtOpWQs5vF
	8vTk2SvmWSlhjP6zH5deFtu7nyDzJXXy8F6LeUkZqVJjWrenUcsuPjNPlMdLkwA6I0s3
	+nUzkHg9oYWE5uxEkiZt2uQUAtMqLaon2lbbbQtvgUYFKf/qjmDcvI9pfQfxG9NKSuzK
	TxAw==
X-Received: by 10.180.104.40 with SMTP id gb8mr122997wib.17.1443722571775;
	Thu, 01 Oct 2015 11:02:51 -0700 (PDT)
Received: from ernie.rdm.local (rademacherexchange.de. [46.245.221.222])
	by smtp.gmail.com with ESMTPSA id
	fs9sm4322947wic.24.2015.10.01.11.02.51 for <poky@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 01 Oct 2015 11:02:51 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <4E5D3FD5-E7B9-4D25-8653-46762B804075@gmail.com>
Date: Thu, 1 Oct 2015 20:02:51 +0200
To: poky@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [PATCH 3/9] Add patch for ARM5 preventing unaligned 64-bit access
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
X-List-Received-Date: Thu, 01 Oct 2015 18:02:56 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Take patch from =
https://github.com/archlinuxarm/PKGBUILDs/blob/master/core/gcc/0001-ARMv5-=
disable-LDRD-STRD.patch to fix failing Java.
See http://icedtea.classpath.org/bugzilla/show_bug.cgi?id=3D2153 for =
details and background.

Signed-off-by: Jens Rehsack <sno@netbsd.org>
---
 meta/recipes-devtools/gcc/gcc-4.9.inc              |  1 +
 .../gcc/gcc-4.9/0065-ARMv5-disable-LDRD-STRD.patch | 24 =
++++++++++++++++++++++
 meta/recipes-devtools/gcc/gcc-5.2.inc              |  1 +
 .../gcc/gcc-5.2/0042-ARMv5-disable-LDRD-STRD.patch | 24 =
++++++++++++++++++++++
 4 files changed, 50 insertions(+)
 create mode 100644 =
meta/recipes-devtools/gcc/gcc-4.9/0065-ARMv5-disable-LDRD-STRD.patch
 create mode 100644 =
meta/recipes-devtools/gcc/gcc-5.2/0042-ARMv5-disable-LDRD-STRD.patch

diff --git a/meta/recipes-devtools/gcc/gcc-4.9.inc =
b/meta/recipes-devtools/gcc/gcc-4.9.inc
index 691ba5f..9a1b44e 100644
--- a/meta/recipes-devtools/gcc/gcc-4.9.inc
+++ b/meta/recipes-devtools/gcc/gcc-4.9.inc
@@ -80,6 +80,7 @@ SRC_URI =3D "\
     =
file://0062-Use-SYSTEMLIBS_DIR-replacement-instead-of-hardcoding.patch \
     file://0063-nativesdk-gcc-support.patch \
     file://0064-handle-target-sysroot-multilib.patch \
+    file://0065-ARMv5-disable-LDRD-STRD.patch \
 "
 SRC_URI[md5sum] =3D "6f831b4d251872736e8e9cc09746f327"
 SRC_URI[sha256sum] =3D =
"2332b2a5a321b57508b9031354a8503af6fdfb868b8c1748d33028d100a8b67e"
diff --git =
a/meta/recipes-devtools/gcc/gcc-4.9/0065-ARMv5-disable-LDRD-STRD.patch =
b/meta/recipes-devtools/gcc/gcc-4.9/0065-ARMv5-disable-LDRD-STRD.patch
new file mode 100644
index 0000000..68fe3b9
--- /dev/null
+++ =
b/meta/recipes-devtools/gcc/gcc-4.9/0065-ARMv5-disable-LDRD-STRD.patch
@@ -0,0 +1,24 @@
+=46rom b1884b6d1950422a32f9ced0be6d5492e4315547 Mon Sep 17 00:00:00 =
2001
+From: Kevin Mihelich <kevin@archlinuxarm.org>
+Date: Wed, 7 Jan 2015 18:43:57 -0700
+Subject: [PATCH] ARMv5: disable LDRD/STRD
+
+---
+ gcc/config/arm/arm.h | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/gcc/config/arm/arm.h b/gcc/config/arm/arm.h
+index c60d9a4..65c60b9 100644
+--- a/gcc/config/arm/arm.h
++++ b/gcc/config/arm/arm.h
+@@ -282,7 +282,7 @@ extern void =
(*arm_lang_output_object_attributes_hook)(void);
+ /* Thumb-1 only.  */
+ #define TARGET_THUMB1_ONLY		(TARGET_THUMB1 && =
!arm_arch_notm)
+=20
+-#define TARGET_LDRD			(arm_arch5e && =
ARM_DOUBLEWORD_ALIGN \
++#define TARGET_LDRD			(arm_arch6 && =
ARM_DOUBLEWORD_ALIGN \
+                                          && !TARGET_THUMB1)
+=20
+ #define TARGET_CRC32			(arm_arch_crc)
+--=20
+2.2.1
diff --git a/meta/recipes-devtools/gcc/gcc-5.2.inc =
b/meta/recipes-devtools/gcc/gcc-5.2.inc
index f6673e6..044e8ae 100644
--- a/meta/recipes-devtools/gcc/gcc-5.2.inc
+++ b/meta/recipes-devtools/gcc/gcc-5.2.inc
@@ -73,6 +73,7 @@ SRC_URI =3D "\
            file://0039-libcc1-fix-libcc1-s-install-path-and-rpath.patch =
\
            file://0040-nativesdk-gcc-support.patch \
            file://0041-handle-target-sysroot-multilib.patch \
+	   file://0042-ARMv5-disable-LDRD-STRD.patch \
           "
=20
 BACKPORTS =3D ""
diff --git =
a/meta/recipes-devtools/gcc/gcc-5.2/0042-ARMv5-disable-LDRD-STRD.patch =
b/meta/recipes-devtools/gcc/gcc-5.2/0042-ARMv5-disable-LDRD-STRD.patch
new file mode 100644
index 0000000..68fe3b9
--- /dev/null
+++ =
b/meta/recipes-devtools/gcc/gcc-5.2/0042-ARMv5-disable-LDRD-STRD.patch
@@ -0,0 +1,24 @@
+=46rom b1884b6d1950422a32f9ced0be6d5492e4315547 Mon Sep 17 00:00:00 =
2001
+From: Kevin Mihelich <kevin@archlinuxarm.org>
+Date: Wed, 7 Jan 2015 18:43:57 -0700
+Subject: [PATCH] ARMv5: disable LDRD/STRD
+
+---
+ gcc/config/arm/arm.h | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/gcc/config/arm/arm.h b/gcc/config/arm/arm.h
+index c60d9a4..65c60b9 100644
+--- a/gcc/config/arm/arm.h
++++ b/gcc/config/arm/arm.h
+@@ -282,7 +282,7 @@ extern void =
(*arm_lang_output_object_attributes_hook)(void);
+ /* Thumb-1 only.  */
+ #define TARGET_THUMB1_ONLY		(TARGET_THUMB1 && =
!arm_arch_notm)
+=20
+-#define TARGET_LDRD			(arm_arch5e && =
ARM_DOUBLEWORD_ALIGN \
++#define TARGET_LDRD			(arm_arch6 && =
ARM_DOUBLEWORD_ALIGN \
+                                          && !TARGET_THUMB1)
+=20
+ #define TARGET_CRC32			(arm_arch_crc)
+--=20
+2.2.1
--=20
1.9.1


--=20
Jens Rehsack - rehsack@gmail.com


