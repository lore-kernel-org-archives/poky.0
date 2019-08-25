Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66556E009E6; Sun, 25 Aug 2019 09:57:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADE7CE008A4
	for <poky@yoctoproject.org>; Sun, 25 Aug 2019 09:57:00 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 46GhBL39dyz29
	for <poky@yoctoproject.org>; Sun, 25 Aug 2019 18:56:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1566752218;
	bh=N4TcuTRJMtEGkIZcZC/EPlQaLgoxH8SJy6NVEnLX1rU=;
	h=From:To:Subject:Date:From;
	b=NXCImXRvps8oFA051IcduzyDG18mtkofwNgDcLfUeHti88q3FrsLn0ZxFKo610zPf
	BGMZxBcWwZeGkPS/dBgRtf6TuCaTcm86U0xhqV41ERFrGG+PH4Sz3p2vrO3ONjgjo8
	bAIhDr1fKqMOb2gYaVxT4HvzjDzxuqKDutA1jBFKU4gAB2LnzzorGkw/BYOtUoDPek
	xzH3fYosQIhYcaSiy3Nu4PLQGgNA9hou916DtTnfWyNbMTVN0QhGZo0YlXV0Imdefv
	LwApOHTBJ7GRBhfB9DRyRSUMHtMSbmrQvGo/9+SWLYYk3XpxjIuloemYY68SPf7629
	EtaMvlOHVuB9HlExqSdoszS3K3KZn/hcmOHLRpSF5GjGUIUeKwJDxuE1qytcnYxhjm
	nYJEzNzPEv7zqT/rYuQJ0gB++ul7Kg/CTxQi0qtmaTdncwGfPONJKcKJkwq7/mIVEE
	i25tWsUsE7pnN+29zJZ3+ErnWjci0T8Is1ir+Tlsh81mJMs8L1yhGsqVUu01+dxjma
	+KSezP36JgLXOHc0r49XaReTQRoj1DEnzzI2AEjl7409FEtVdZRwhGPvW00tbEEKSy
	SAAYym0S9PPrqodNvmp7EdSX0HJxiCWHBhv8wSBDpuONxg1envGU46mZCPDCi2RLQu
	ftK8JiJYskKNK7g4zeEajsk0=
From: Adrian Bunk <bunk@stusta.de>
To: poky@yoctoproject.org
Date: Sun, 25 Aug 2019 19:56:57 +0300
Message-Id: <20190825165657.22767-1-bunk@stusta.de>
X-Mailer: git-send-email 2.17.1
Subject: [PATCH] Remove LSB support bits
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
X-List-Received-Date: Sun, 25 Aug 2019 16:57:02 -0000

Signed-off-by: Adrian Bunk <bunk@stusta.de>
---
 .../distro/include/poky-distro-alt-test-config.inc  |  2 +-
 meta-poky/conf/distro/poky-lsb.conf                 | 13 -------------
 meta-poky/conf/distro/poky-tiny.conf                |  3 ---
 meta-poky/conf/local.conf.sample.extended           |  2 +-
 4 files changed, 2 insertions(+), 18 deletions(-)
 delete mode 100644 meta-poky/conf/distro/poky-lsb.conf

diff --git a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
index 081584f397..dff5804530 100644
--- a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
+++ b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
@@ -1,2 +1,2 @@
 DISTRO_FEATURES_append = " pam"
-PREFERRED_VERSION_linux-yocto_linuxstdbase ?= "4.19%"
+PREFERRED_VERSION_linux-yocto ?= "4.19%"
diff --git a/meta-poky/conf/distro/poky-lsb.conf b/meta-poky/conf/distro/poky-lsb.conf
deleted file mode 100644
index 9b36c87c48..0000000000
--- a/meta-poky/conf/distro/poky-lsb.conf
+++ /dev/null
@@ -1,13 +0,0 @@
-
-require conf/distro/poky.conf
-
-DISTRO = "poky-lsb"
-DISTROOVERRIDES = "poky:linuxstdbase"
-
-DISTRO_FEATURES_append = " pam"
-
-# Ensure the kernel nfs server is enabled
-KERNEL_FEATURES_append_pn-linux-yocto = " features/nfsd/nfsd-enable.scc"
-
-# Use the LTSI Kernel for LSB Testing
-PREFERRED_VERSION_linux-yocto_linuxstdbase ?= "4.19%"
diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index 1f8b6e8ff3..8236b6f273 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -117,9 +117,6 @@ PNBLACKLIST[build-appliance-image] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-base] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-clutter] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-full-cmdline] = "not buildable with poky-tiny"
-PNBLACKLIST[core-image-lsb] = "not buildable with poky-tiny"
-PNBLACKLIST[core-image-lsb-dev] = "not buildable with poky-tiny"
-PNBLACKLIST[core-image-lsb-sdk] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-rt] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-rt-sdk] = "not buildable with poky-tiny"
 PNBLACKLIST[core-image-sato] = "not buildable with poky-tiny"
diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
index 77e8be26fa..dc92a16f6c 100644
--- a/meta-poky/conf/local.conf.sample.extended
+++ b/meta-poky/conf/local.conf.sample.extended
@@ -270,7 +270,7 @@ DISTRO_FEATURES_remove = "x11"
 #
 # By including the security_flags include file you enable flags
 # to the compiler and linker that cause them to generate more secure
-# code, this is enabled by default in the poky-lsb distro.
+# code.
 # This does affect compile speed slightly.
 #
 # Use the following line to enable the security compiler and linker flags to your build
-- 
2.17.1


