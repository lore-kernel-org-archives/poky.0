Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC876E00CDF; Wed,  1 May 2019 08:51:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03401E00798
	for <poky@yoctoproject.org>; Wed,  1 May 2019 08:51:02 -0700 (PDT)
Received: by mail-wr1-f65.google.com with SMTP id c5so25017632wrs.11
	for <poky@yoctoproject.org>; Wed, 01 May 2019 08:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=bGVbkzO9VC64Um/0fPyYE3PFI/dwdV3YCkC/AuIrtpA=;
	b=CIIiq8ww33Z9YVwIADeHmgHpbp19wwWeUZZRZN5+jefibvjiAe74ng5joL01l1+BuR
	eAWkjZ6e8rOH2uphVtCSah4BUGAhTWAPuhu+Rj74El2pWNvq2UIwrKbRLpHjpBHaGivu
	BD8ugeqAuxbS4hjcf9cJb6y5rILt7rl49NUvq5iobYhGh8PgXkUV9YbCvwWbcYHg7Kq8
	W89dpHre+kzXxGGbFXHACRRXJ813SRhyUtXUcP3gVwtdUdoW+srCip4SiVYET3Ys72ms
	T66/9Ap7LxCezPD1+9h87hHEpE2kYwZGZ8q/rm+OBvExJer9XcQrwf7bxih7FzuENDBC
	DsHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=bGVbkzO9VC64Um/0fPyYE3PFI/dwdV3YCkC/AuIrtpA=;
	b=qKsg3k+UZTF/4nGISeua5dkwiazsQ/hXvu+dGg0V8lhAyPYS7J+O7kD3OdjTex7GG1
	8ZSVaMpbWRTbuUXfUTkXLTtQnf4THMOXUWddElHDtY8vfYc1+0+awDJeyG1aFgiQN47o
	jubR64evNCYggDUvHQQM1NY2iRDidcx5ZWjC7I9nvKcx76kCQgw+3LwNPvzS1o3Ygpb7
	7xySwf6WHV9IwO4jzdk78yx9vz0cmttejPj/2zvf4CEPVva6455gWFuna4UXXwSL3L+X
	HTVsQ6F/WyZMLXcvbdpEW2pgPsnYox6I+7iFwjdxY+Mx2V5yIxq5R/k4lMh30L3ZIOjL
	zVTw==
X-Gm-Message-State: APjAAAWLjRaHgfCVV/DoJjZ9xsmtNPWmoMvBZzjV1yPghSweQ/SXVrQe
	K7roHuV7QyNn5vlvOS7eTz+dZbO/AwQ=
X-Google-Smtp-Source: APXvYqzjq5OZ/lXhhCjHtB9/ByYcuzxNlHbZ3QoK7jb6JPuc272XjK2PXDCZyUgZlJZcW8kf33lmyg==
X-Received: by 2002:adf:9cc7:: with SMTP id h7mr26322918wre.259.1556725861918; 
	Wed, 01 May 2019 08:51:01 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	c131sm5886570wma.31.2019.05.01.08.51.00 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 01 May 2019 08:51:01 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Wed,  1 May 2019 16:50:55 +0100
Message-Id: <20190501155055.14254-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [PATCH] meta-poky: remove obsolete DISTRO_FEATURES_LIBC
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
X-List-Received-Date: Wed, 01 May 2019 15:51:03 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-poky/conf/distro/poky-tiny.conf      |  4 ++--
 meta-poky/conf/distro/poky.conf           |  2 +-
 meta-poky/conf/local.conf.sample.extended | 20 ++++----------------
 3 files changed, 7 insertions(+), 19 deletions(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index 243d492918d..a82d043e481 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -78,8 +78,8 @@ DISTRO_FEATURES = "${DISTRO_FEATURES_TINY} \
 DISTRO_FEATURES_append_libc-uclibc = " largefile"
 DISTRO_FEATURES_append_libc-musl = " largefile"
 
-DISTRO_FEATURES_class-native = "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC} ${POKY_DEFAULT_DISTRO_FEATURES}"
-DISTRO_FEATURES_class-nativesdk = "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC} ${POKY_DEFAULT_DISTRO_FEATURES}"
+DISTRO_FEATURES_class-native = "${DISTRO_FEATURES_DEFAULT} ${POKY_DEFAULT_DISTRO_FEATURES}"
+DISTRO_FEATURES_class-nativesdk = "${DISTRO_FEATURES_DEFAULT} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
 # enable mdev/busybox for init
 VIRTUAL-RUNTIME_dev_manager = "busybox-mdev"
diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index b5207f535d8..78621e6dbfc 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -19,7 +19,7 @@ POKY_DEFAULT_DISTRO_FEATURES = "largefile opengl ptest multiarch wayland vulkan"
 POKY_DEFAULT_EXTRA_RDEPENDS = "packagegroup-core-boot"
 POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
-DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC} ${POKY_DEFAULT_DISTRO_FEATURES}"
+DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
 PREFERRED_VERSION_linux-yocto ?= "5.0%"
 
diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
index 87d211db308..26603debe62 100644
--- a/meta-poky/conf/local.conf.sample.extended
+++ b/meta-poky/conf/local.conf.sample.extended
@@ -24,22 +24,10 @@
 # For a quad-core machine, BB_NUMBER_THREADS = "4", PARALLEL_MAKE = "-j 4" would
 # be appropriate for example.
 
-
-# glibc configurability is used to reduce minimal image's size.
-# the all supported glibc options are listed in DISTRO_FEATURES_LIBC
-# and disabled by default. Uncomment and copy the DISTRO_FEATURES_LIBC
-# and DISTRO_FEATURES definitions to local.conf to enable the options.
-#DISTRO_FEATURES_LIBC = "ipv6 libc-backtrace libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt \
-#               libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse \
-#               libc-getlogin libc-idn libc-inet libc-inet-anl libc-libm libc-locales libc-locale-code \
-#               libc-memusage libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn libc-streams \
-#               libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp libc-posix-regexp-glibc \
-#               libc-posix-wchar-io"
-
-#DISTRO_FEATURES = "alsa bluetooth ext2 irda pcmcia usbgadget usbhost wifi nfs zeroconf pci ${DISTRO_FEATURES_LIBC}"
-
-# If you want to get an image based on directfb without x11, Please copy this variable to build/conf/local.conf
-#DISTRO_FEATURES = "alsa argp bluetooth ext2 irda largefile pcmcia usbgadget usbhost wifi xattr nfs zeroconf pci 3g directfb ${DISTRO_FEATURES_LIBC}"
+# If you want to get an image based on directfb without x11 alter
+# DISTRO_FEATURES:
+DISTRO_FEATURES_append = " directfb"
+DISTRO_FEATURES_remove = "x11"
 
 # ENABLE_BINARY_LOCALE_GENERATION controls the generation of binary locale
 # packages at build time using qemu-native. Disabling it (by setting it to 0)
-- 
2.11.0


