Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F243E00C2A; Thu, 11 Feb 2016 07:15:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8E78E00C1F
	for <poky@yoctoproject.org>; Thu, 11 Feb 2016 07:15:06 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u1BFF5og016878
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 11 Feb 2016 07:15:05 -0800 (PST)
Received: from yow-bashfiel-d4.wrs.com (128.224.56.94) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.248.2; Thu, 11 Feb 2016 07:15:05 -0800
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Thu, 11 Feb 2016 10:15:02 -0500
Message-ID: <2e6d2b75837731be983d888eaa82a9cfcf660e85.1455203562.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <cover.1455203562.git.bruce.ashfield@windriver.com>
References: <cover.1455203562.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 1/1] poky: update qemu* to prefer 4.4 kernel
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
X-List-Received-Date: Thu, 11 Feb 2016 15:15:07 -0000
Content-Type: text/plain

4.4 is out and has had enough mileage to be the default for the
qemu machines. Tested with sato, minimal and kernel dev image
types.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto/conf/distro/poky.conf | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index dec364498553..ede728dde1fd 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -18,13 +18,13 @@ POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
 DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
-PREFERRED_VERSION_linux-yocto ?= "4.1%"
-PREFERRED_VERSION_linux-yocto_qemux86 ?= "4.1%"
-PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "4.1%"
-PREFERRED_VERSION_linux-yocto_qemuarm ?= "4.1%"
-PREFERRED_VERSION_linux-yocto_qemumips ?= "4.1%"
-PREFERRED_VERSION_linux-yocto_qemumips64 ?= "4.1%"
-PREFERRED_VERSION_linux-yocto_qemuppc ?= "4.1%"
+PREFERRED_VERSION_linux-yocto ?= "4.4%"
+PREFERRED_VERSION_linux-yocto_qemux86 ?= "4.4%"
+PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "4.4%"
+PREFERRED_VERSION_linux-yocto_qemuarm ?= "4.4%"
+PREFERRED_VERSION_linux-yocto_qemumips ?= "4.4%"
+PREFERRED_VERSION_linux-yocto_qemumips64 ?= "4.4%"
+PREFERRED_VERSION_linux-yocto_qemuppc ?= "4.4%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${IMAGE_BASENAME}-${TUNE_PKGARCH}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
-- 
2.1.0


