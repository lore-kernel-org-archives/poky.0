Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3B03E006C7
	for <poky@yoctoproject.org>; Thu, 19 Apr 2012 15:03:40 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3JM3cPP019085;
	Thu, 19 Apr 2012 23:03:38 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 17050-08; Thu, 19 Apr 2012 23:03:34 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3JM3Tbq019078
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 19 Apr 2012 23:03:29 +0100
Message-ID: <1334873012.3028.3.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky <poky@yoctoproject.org>
Date: Thu, 19 Apr 2012 23:03:32 +0100
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "Hart, Darren" <darren.hart@intel.com>
Subject: [PATCH] poky-tiny: Drop now unneeded DISTRO_FEATURES_LIBC_TOOLCHAIN (after gettext fix)
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 19 Apr 2012 22:03:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index 327cc1e..8aa8383 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -64,16 +64,6 @@ ASSUME_PROVIDED += "pkgconfig$"
 # Comment out any of the lines below to disable them in the build
 DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt"
 
-# Building meta-toolchain currently imposes some additional requirements:
-# If you do not plan to build meta-toolchain, you can save ~461KB by
-# commenting out the DISTRO_FEATURES_LIBC_TOOLCHAIN assignment
-# gettext needs wchar, m4 needs spawn and locale, elfutils needs ftraverse
-DISTRO_FEATURES_LIBC_TOOLCHAIN = "libc-posix-clang-wchar \
-                                  libc-spawn libc-locale-code \
-                                  libc-ftraverse libc-libm-big \
-                                  libc-posix-regexp-glibc \
-                                 "
-
 # Required for "who"
 DISTRO_FEATURES_LIBC_MINIMAL = "libc-utmp libc-getlogin"
 DISTRO_FEATURES_LIBC_REGEX = "libc-posix-regexp"
@@ -83,7 +73,6 @@ DISTRO_FEATURES_LIBC = "${DISTRO_FEATURES_LIBC_TINY} \
                         ${DISTRO_FEATURES_LIBC_MINIMAL} \
                         ${DISTRO_FEATURES_LIBC_REGEX} \
                         ${DISTRO_FEATURES_LIBC_NET} \
-                        ${DISTRO_FEATURES_LIBC_TOOLCHAIN} \
                        "
 
 # Comment out any of the lines below to disable them in the build



