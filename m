Return-Path: <aalonso00@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 55FBC4C811F8
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:23:40 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-yw0-f48.google.com with SMTP id 7so2084365ywo.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:23:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=rg2TyZy3+I5AuFWtRns5gVCdHtbXlSzGVv4ya0i9z6g=;
	b=ej0ObA15Bf3HSzKmIlTEvYf2JMDN6kaIMUO6+7gyCH48lRrrwfXYhHVrPskflY3aXv
	TLh9XAx2sq7TWU3U5xuM4IOJ4YaE5h3ir75kYfkULupH+fg1J2smyVIvHRFtX7dc90aw
	qBJOtaIQzFjvn5Ln/N98zYpLpbjaTWhFwHuCQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=Uz58lVmXgOpL7kC2w723yjdiH78jKCa7qF7X+jEuJWwaLCC9sFOf35uo++BVxBhNh0
	zD2ePxuU+O0kfsI6a4JvKrbyJTcVfM5LD/3BlcVLIN3aGm7JQmTasMlmcMc8bQTJ3eBT
	NFMvEW1BdOKTRzmwS5QW90IR+YDyUCai61CSI=
Received: by 10.100.248.13 with SMTP id v13mr2847671anh.56.1295295820150;
	Mon, 17 Jan 2011 12:23:40 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.23.37
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:23:39 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:18 -0600
Message-Id: <1295296178-18590-5-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 05/25] u-boot: disable -Os option not supported by gcc
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
X-List-Received-Date: Mon, 17 Jan 2011 20:23:40 -0000

* Disable -Os optspace option not supported by gcc use insted
  -O2
* Bump PR

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 .../uboot/files/uboot-do-not-use-Os-option.patch   |   30 ++++++++++++++++++++
 recipes-bsp/uboot/u-boot-xilinx_git.bb             |    8 ++++-
 2 files changed, 36 insertions(+), 2 deletions(-)
 create mode 100644 recipes-bsp/uboot/files/uboot-do-not-use-Os-option.patch

diff --git a/recipes-bsp/uboot/files/uboot-do-not-use-Os-option.patch b/recipes-bsp/uboot/files/uboot-do-not-use-Os-option.patch
new file mode 100644
index 0000000..c4153e4
--- /dev/null
+++ b/recipes-bsp/uboot/files/uboot-do-not-use-Os-option.patch
@@ -0,0 +1,30 @@
+From 8a4e1e92becc3994907f18919e9ee8b51b0f377a Mon Sep 17 00:00:00 2001
+From: Adrian Alonso <aalonso@secretlab.ca>
+Date: Mon, 6 Dec 2010 22:59:20 -0600
+Subject: [PATCH 1/2] uboot: do not use Os option
+
+* Fix error: Do not use -Os option if --enable-target-optspace
+  is not set.
+* Gcc optospace options is disabled for powerpc machines
+* Use -O2 optimization level instead
+
+Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
+---
+ config.mk |    2 +-
+ 1 files changed, 1 insertions(+), 1 deletions(-)
+
+diff --git a/config.mk b/config.mk
+index a63e9cd..ba629d1 100644
+--- a/config.mk
++++ b/config.mk
+@@ -138,7 +138,7 @@ ARFLAGS = crv
+ endif
+ RELFLAGS= $(PLATFORM_RELFLAGS)
+ DBGFLAGS= -g # -DDEBUG
+-OPTFLAGS= -Os #-fomit-frame-pointer
++OPTFLAGS= -O2 #-fomit-frame-pointer
+ ifndef LDSCRIPT
+ #LDSCRIPT := $(TOPDIR)/board/$(BOARDDIR)/u-boot.lds.debug
+ ifeq ($(CONFIG_NAND_U_BOOT),y)
+--
+1.7.2.3
diff --git a/recipes-bsp/uboot/u-boot-xilinx_git.bb b/recipes-bsp/uboot/u-boot-xilinx_git.bb
index 50d99e3..3b35ae5 100644
--- a/recipes-bsp/uboot/u-boot-xilinx_git.bb
+++ b/recipes-bsp/uboot/u-boot-xilinx_git.bb
@@ -1,9 +1,13 @@
 require ../meta/recipes-bsp/uboot/u-boot.inc
-PR = "r2"
+PR = "r3"
+THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
+FILESPATH =. "${@base_set_filespath(["${THISDIR}/files"], d)}:"
 
 BRANCH="master"
 TAG="e094f2479ea339d7f48b6826f06f0be4984d9a98"
-SRC_URI = "git://git.xilinx.com/u-boot-xlnx.git;branch=${BRANCH};protocol=git"
+SRC_URI = "git://git.xilinx.com/u-boot-xlnx.git;branch=${BRANCH};protocol=git \
+           file://uboot-do-not-use-Os-option.patch \
+          "
 SRCREV = "${TAG}"
 
 inherit xilinx-boot
-- 
1.7.3.4


