Return-Path: <aalonso00@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6C8EF4C810C0
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 10:31:00 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vws18 with SMTP id 18so641008vws.35
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 08:31:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:received:sender:from:to:cc:subject
	:date:message-id:x-mailer;
	bh=vxNreAu68WYRHUauWS4NDaTnLLv0+b9kCuNs//jxP5k=;
	b=kKh43FRRhWgAUnNB+qwBB3AJMuGvD1x9Psb6lLvMMtdVfIEMU/t5qCSZlmbWzFm9QL
	QEC1lgjSAxGSyurbJNKwRvD5/AzGOEi6TY18id7CRyzOkRYclCP3aV1vsTJoGAYY1bam
	c8R5a3+9ZDqMOzNOUStO8ufo1VLYE6zKeLJm8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer;
	b=io4JEVWACRhcbCaU/sVdzfP3QICuKBdHEGygA0SQw1P/fJ6IT43VN1IRaeR+AXv46/
	k2rJLsfKSIAv6CP5PjP9eEHUh6yE9UCNhLeIEx4baT78CIz8CRNSKSrSrlo+wy1FfWW9
	5skkabNo49rIZz+y50GnBNoHai1TsSW7dQbbk=
Received: by 10.220.186.140 with SMTP id cs12mr88263vcb.187.1290789059503;
	Fri, 26 Nov 2010 08:30:59 -0800 (PST)
Received: from aalonso-pc.lan ([201.153.80.194])
	by mx.google.com with ESMTPS id q3sm263091vcr.27.2010.11.26.08.30.57
	(version=SSLv3 cipher=RC4-MD5); Fri, 26 Nov 2010 08:30:58 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: poky@yoctoproject.org
Date: Fri, 26 Nov 2010 10:35:30 -0600
Message-Id: <1290789330-20906-1-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.2.3
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH] linux-xilinx: update to kernel 2.6.35
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
X-List-Received-Date: Fri, 26 Nov 2010 16:31:00 -0000

* Update to kernel 2.6.35 version
* Add path linux-xilinx-do-not-use-OS-option.patch to
* Fix error: Do not use -Os option if --enable-target-optspace
  is not set.
* Gcc optospace options is disabled for powerpc machines
* Bump PR

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 .../linux-xilinx-do-not-use-OS-option.patch        |   27 ++++++++++++++++++++
 recipes-kernel/linux/linux-xilinx_git.bb           |    8 +++--
 2 files changed, 32 insertions(+), 3 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-xilinx/linux-xilinx-do-not-use-OS-option.patch

diff --git a/recipes-kernel/linux/linux-xilinx/linux-xilinx-do-not-use-OS-option.patch b/recipes-kernel/linux/linux-xilinx/linux-xilinx-do-not-use-OS-option.patch
new file mode 100644
index 0000000..ee06d9e
--- /dev/null
+++ b/recipes-kernel/linux/linux-xilinx/linux-xilinx-do-not-use-OS-option.patch
@@ -0,0 +1,27 @@
+From 19f452770d77ba6bf0382c99e124e134b26cb8f6 Mon Sep 17 00:00:00 2001
+From: Adrian Alonso <aalonso@secretlab.ca>
+Date: Wed, 24 Nov 2010 14:35:26 -0600
+Subject: [PATCH] linux-xilinx: do not use -OS option
+
+* Fix error: Do not use -Os option if --enable-target-optspace
+  is not set.
+* Gcc optospace options is disabled for powerpc machines
+
+Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
+---
+ arch/powerpc/boot/Makefile |    2 +-
+ 1 files changed, 1 insertions(+), 1 deletions(-)
+
+Index: git/arch/powerpc/boot/Makefile
+===================================================================
+--- git.orig/arch/powerpc/boot/Makefile
++++ git/arch/powerpc/boot/Makefile
+@@ -20,7 +20,7 @@
+ all: $(obj)/zImage
+ 
+ BOOTCFLAGS    := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
+-		 -fno-strict-aliasing -Os -msoft-float -pipe \
++		 -fno-strict-aliasing -msoft-float -pipe \
+ 		 -fomit-frame-pointer -fno-builtin -fPIC -nostdinc \
+ 		 -isystem $(shell $(CROSS32CC) -print-file-name=include)
+ BOOTAFLAGS	:= -D__ASSEMBLY__ $(BOOTCFLAGS) -traditional -nostdinc
diff --git a/recipes-kernel/linux/linux-xilinx_git.bb b/recipes-kernel/linux/linux-xilinx_git.bb
index 424bd67..9b44e83 100644
--- a/recipes-kernel/linux/linux-xilinx_git.bb
+++ b/recipes-kernel/linux/linux-xilinx_git.bb
@@ -7,12 +7,14 @@ DEFAULT_PREFERENCE = "-1"
 DEFAULT_PREFERENCE_virtex4 = "1"
 DEFAULT_PREFERENCE_virtex5 = "1"
 
-PV = "2.6.34+git"
-PR = "r1"
+TAG="xilinx_v2.6.35"
+PV = "2.6.35+git"
+PR = "r2"
 
-SRCREV = "17431547113100a3ae0a622b9f76ad17fb76eb56"
+SRCREV = "${TAG}"
 SRC_URI = "git://git.xilinx.com/linux-2.6-xlnx.git;protocol=git \
            file://xilinxfb-update-tft-comp.patch \
+           file://linux-xilinx-do-not-use-OS-option.patch \
 		   file://defconfig"
 
 inherit kernel xilinx-bsp
-- 
1.7.2.3


