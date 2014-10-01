Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C65E7E00876; Tue, 30 Sep 2014 21:53:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE53AE0087C
	for <poky@yoctoproject.org>; Tue, 30 Sep 2014 21:53:33 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id s914rWo1008030
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 30 Sep 2014 21:53:32 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.56.46) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.174.1; Tue, 30 Sep 2014 21:53:32 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Wed, 1 Oct 2014 00:53:23 -0400
Message-ID: <e36510e657c298aa76af071d9f538783e23a2970.1412138833.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1412138833.git.bruce.ashfield@windriver.com>
References: <cover.1412138833.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 2/2] meta-yocto: make 3.17 the preferred qemu kernel version
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
X-List-Received-Date: Wed, 01 Oct 2014 04:53:34 -0000
Content-Type: text/plain

3.17 is ready and stable to be used as the default for the qemu* BSPs,
so we update their preferred version to reflect this.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto/conf/distro/poky.conf | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index eaf06d3092cf..b94469146bbd 100644
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
+PREFERRED_VERSION_linux-yocto ?= "3.17%"
+PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.17%"
+PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "3.17%"
+PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.17%"
+PREFERRED_VERSION_linux-yocto_qemumips ?= "3.17%"
+PREFERRED_VERSION_linux-yocto_qemumips64 ?= "3.17%"
+PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.17%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${IMAGE_BASENAME}-${TUNE_PKGARCH}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
-- 
1.8.1.2


