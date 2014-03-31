Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F40F2E00C1D
	for <poky@yoctoproject.org>; Mon, 31 Mar 2014 11:02:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s2VI277w018268
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 31 Mar 2014 11:02:07 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.56.46) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Mon, 31 Mar 2014 11:02:06 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Mon, 31 Mar 2014 14:01:54 -0400
Message-ID: <36e13d1f3c7cd2dc3644fb8e43f95930dafa52a3.1396288654.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1396288654.git.bruce.ashfield@windriver.com>
References: <cover.1396288654.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 1/7] poky: set qemu BSPs preferred version to 3.14
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
X-List-Received-Date: Mon, 31 Mar 2014 18:02:12 -0000
Content-Type: text/plain

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto/conf/distro/poky.conf | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index a68a6a1416b8..c5767250d324 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -19,13 +19,13 @@ POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
 DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
-PREFERRED_VERSION_linux-yocto ?= "3.10%"
-PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.10%"
-PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "3.10%"
-PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.10%"
-PREFERRED_VERSION_linux-yocto_qemumips ?= "3.10%"
-PREFERRED_VERSION_linux-yocto_qemumips64 ?= "3.10%"
-PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.10%"
+PREFERRED_VERSION_linux-yocto ?= "3.14%"
+PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.14%"
+PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "3.14%"
+PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.14%"
+PREFERRED_VERSION_linux-yocto_qemumips ?= "3.14%"
+PREFERRED_VERSION_linux-yocto_qemumips64 ?= "3.14%"
+PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.14%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${IMAGE_BASENAME}-${TUNE_PKGARCH}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
-- 
1.8.1.2


