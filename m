Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CCA6E00A25; Tue, 21 Jul 2015 08:24:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EFC7E0096A
	for <poky@yoctoproject.org>; Tue, 21 Jul 2015 08:24:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.1/8.15.1) with ESMTPS id t6LFOQWv001347
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 21 Jul 2015 08:24:26 -0700 (PDT)
Received: from yow-bashfiel-d4.wrs.com (128.224.56.94) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.235.1; Tue, 21 Jul 2015 08:24:19 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 21 Jul 2015 11:24:24 -0400
Message-ID: <3b0db15618afc5bbf6caf2ae6ee9ca2bf4fe9e57.1437492124.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <cover.1437492124.git.bruce.ashfield@windriver.com>
References: <cover.1437492124.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 2/2] qemu: change default version to 4.1
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
X-List-Received-Date: Tue, 21 Jul 2015 15:24:28 -0000
Content-Type: text/plain

The 4.1 LTSI kernel is now availble, so we update the qemu reference
platforms to have it as the default.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto/conf/distro/poky.conf | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index e3d3c783c5d5..014a944f081b 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -18,13 +18,13 @@ POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
 DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
-PREFERRED_VERSION_linux-yocto ?= "3.19%"
-PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.19%"
-PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "3.19%"
-PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.19%"
-PREFERRED_VERSION_linux-yocto_qemumips ?= "3.19%"
-PREFERRED_VERSION_linux-yocto_qemumips64 ?= "3.19%"
-PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.19%"
+PREFERRED_VERSION_linux-yocto ?= "4.1%"
+PREFERRED_VERSION_linux-yocto_qemux86 ?= "4.1%"
+PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "4.1%"
+PREFERRED_VERSION_linux-yocto_qemuarm ?= "4.1%"
+PREFERRED_VERSION_linux-yocto_qemumips ?= "4.1%"
+PREFERRED_VERSION_linux-yocto_qemumips64 ?= "4.1%"
+PREFERRED_VERSION_linux-yocto_qemuppc ?= "4.1%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${IMAGE_BASENAME}-${TUNE_PKGARCH}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
-- 
2.1.0


