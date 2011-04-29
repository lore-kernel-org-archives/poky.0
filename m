Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id F0E684C80FA5
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 04:25:54 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3T9Pskf017692
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 02:25:54 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 29 Apr 2011 02:25:53 -0700
Message-ID: <4b53bfac8628829d7cf9582e2855e6b12f12d594.1304067821.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1304067821.git.xiaofeng.yan@windriver.com>
References: <cover.1304067821.git.xiaofeng.yan@windriver.com>
Old-Date: Fri, 29 Apr 2011 16:55:16 +0800
Date: Fri, 29 Apr 2011 17:25:23 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 2/2] libxmu: Add native function
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
X-List-Received-Date: Fri, 29 Apr 2011 09:25:55 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Add native function to libxmu_1.1.0.bb file because qt3 native depends on its native.

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta/recipes-graphics/xorg-lib/libxmu_1.1.0.bb |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/xorg-lib/libxmu_1.1.0.bb b/meta/recipes-graphics/xorg-lib/libxmu_1.1.0.bb
index 59f2c28..4195306 100644
--- a/meta/recipes-graphics/xorg-lib/libxmu_1.1.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libxmu_1.1.0.bb
@@ -28,5 +28,7 @@ PACKAGES =+ "libxmuu libxmuu-dev"
 FILES_libxmuu = "${libdir}/libXmuu.so.*"
 FILES_libxmuu-dev = "${libdir}/libXmuu.so"
 
+BBCLASSEXTEND = "native"
+
 SRC_URI[md5sum] = "6836883a0120e8346cf7f58dc42e465a"
 SRC_URI[sha256sum] = "0fa91f303b70decc1ef6201c88c8a5f0b4ecd68c6c88bdcc891ecd1a689d36ad"
-- 
1.7.0.4


