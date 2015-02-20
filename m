Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 238D0E00873; Fri, 20 Feb 2015 10:44:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C29CE002AC
	for <poky@yoctoproject.org>; Fri, 20 Feb 2015 10:44:33 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t1KIiUOA015827
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 20 Feb 2015 10:44:30 -0800 (PST)
Received: from yow-bashfiel-d4.wrs.com (128.224.56.94) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.174.1; Fri, 20 Feb 2015 10:44:30 -0800
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Fri, 20 Feb 2015 13:44:27 -0500
Message-ID: <2f8daac3d61dde9a4cb72ad2c2c411f5cea31b6b.1424457539.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <cover.1424457539.git.bruce.ashfield@windriver.com>
References: <cover.1424457539.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 1/2] meta-yocto: update qemu default kernel version to 3.19
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
X-List-Received-Date: Fri, 20 Feb 2015 18:44:36 -0000
Content-Type: text/plain

The 3.19 kernel has been tested against core-image-minimal and sato, so
we make it our new default kernel version.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto/conf/distro/poky.conf | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 479182f56cbb..d5bdbac6cd31 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -19,13 +19,13 @@ POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
 DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
-PREFERRED_VERSION_linux-yocto ?= "3.14%"
-PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.14%"
-PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "3.14%"
-PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.14%"
-PREFERRED_VERSION_linux-yocto_qemumips ?= "3.14%"
-PREFERRED_VERSION_linux-yocto_qemumips64 ?= "3.14%"
-PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.14%"
+PREFERRED_VERSION_linux-yocto ?= "3.19%"
+PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.19%"
+PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "3.19%"
+PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.19%"
+PREFERRED_VERSION_linux-yocto_qemumips ?= "3.19%"
+PREFERRED_VERSION_linux-yocto_qemumips64 ?= "3.19%"
+PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.19%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${IMAGE_BASENAME}-${TUNE_PKGARCH}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
-- 
2.1.0


