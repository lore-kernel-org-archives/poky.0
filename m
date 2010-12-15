Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id BA9E64C811AF
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 09:46:39 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Dec 2010 07:46:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,349,1288594800"; d="scan'208";a="687417192"
Received: from unknown (HELO localhost) ([10.255.16.78])
	by orsmga001.jf.intel.com with ESMTP; 15 Dec 2010 07:46:38 -0800
Message-Id: <f4847e2a131ab658b8291b73a688dadb87a4579b.1292427843.git.josh@linux.intel.com>
In-Reply-To: <cover.1292427843.git.josh@linux.intel.com>
References: <cover.1292427843.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Wed, 15 Dec 2010 15:40:32 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/2] external-python-tarball: add chrpath to the tarball
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
X-List-Received-Date: Wed, 15 Dec 2010 15:46:39 -0000

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta/recipes-core/meta/external-python-tarball.bb |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-core/meta/external-python-tarball.bb b/meta/recipes-core/meta/external-python-tarball.bb
index 1812ba5..494b21c 100644
--- a/meta/recipes-core/meta/external-python-tarball.bb
+++ b/meta/recipes-core/meta/external-python-tarball.bb
@@ -27,7 +27,9 @@ TOOLCHAIN_HOST_TASK ?= "\
     python-nativesdk-xmlrpc \
     python-nativesdk-netclient \
     python-nativesdk-netserver \
-    python-nativesdk-distutils"
+    python-nativesdk-distutils \
+    chrpath-nativesdk \
+    "
 
 TOOLCHAIN_OUTPUTNAME ?= "python-nativesdk-standalone-${SDKMACHINE}"
 
-- 
1.7.3.3


