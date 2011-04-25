Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 38D0A4C80A1D
	for <poky@yoctoproject.org>; Mon, 25 Apr 2011 16:13:27 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Apr 2011 14:13:26 -0700
Message-Id: <0d30dc$m01ree@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,266,1301900400"; d="scan'208";a="738258386"
Received: from unknown (HELO localhost) ([10.255.12.226])
	by orsmga001.jf.intel.com with ESMTP; 25 Apr 2011 14:13:26 -0700
Old-Date: Mon, 25 Apr 2011 14:33:01 -0500
Date: Mon, 25 Apr 2011 16:13:25 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/2] meta-emenlow: add hw blurb to README
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
X-List-Received-Date: Mon, 25 Apr 2011 21:13:27 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a small description of the eMenlow platform, for release notes.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-emenlow/README |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta-emenlow/README b/meta-emenlow/README
index db9f475..e724b13 100644
--- a/meta-emenlow/README
+++ b/meta-emenlow/README
@@ -2,6 +2,9 @@ This README file contains information on building the meta-emenlow
 BSP layer using any of the supported machine configurations, and
 booting the images contained in the /binary directory.
 
+The 'eMenlow' platform consists of the Intel Atom Z5xx processor,
+plus the Intel US15W System Controller Hub.
+
 If you're only interested in booting the images in the /binary
 directory of a BSP tarball you've downloaded, there's nothing special
 to do - the appropriate images are already in the /binary directory
-- 
1.7.0.4


