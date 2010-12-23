Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id F15374C81204
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:27:13 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 23 Dec 2010 06:27:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="586663196"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by orsmga002.jf.intel.com with ESMTP; 23 Dec 2010 06:27:13 -0800
Message-Id: <a0a973fd1fb33512ca6752f4c97147e7a1a9a7fe.1293114004.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293114003.git.sgw@linux.intel.com>
References: <cover.1293114003.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Old-Date: Wed, 22 Dec 2010 16:40:19 -0800
Date: Thu, 23 Dec 2010  6:27:12 -0800
To: poky@yoctoproject.org
Subject: [PATCH 14/28] xf86-input-vmmouse: add COMPATIBLE_HOST set to x86*
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
X-List-Received-Date: Thu, 23 Dec 2010 14:27:14 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../xorg-driver/xf86-input-vmmouse_12.6.10.bb      |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/xorg-driver/xf86-input-vmmouse_12.6.10.bb b/meta/recipes-graphics/xorg-driver/xf86-input-vmmouse_12.6.10.bb
index 15aeb58..6288507 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-input-vmmouse_12.6.10.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-input-vmmouse_12.6.10.bb
@@ -9,3 +9,5 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=622841c068a9d7625fbfe7acffb1a8fc"
 
 SRC_URI[md5sum] = "49c6e77851e9f7bc5cb7d85f061992f8"
 SRC_URI[sha256sum] = "a6369d5a860627f2a38842d5563045b263a459e534f6ae08df48f330f9a40910"
+
+COMPATIBLE_HOST = '(i.86|x86_64).*-linux'
-- 
1.7.2.3


