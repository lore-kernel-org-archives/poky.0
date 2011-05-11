Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9F9C44C80A7C
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:29:24 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 May 2011 23:29:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,350,1301900400"; 
   d="scan'208";a="157874"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by fmsmga002.fm.intel.com with ESMTP; 10 May 2011 23:29:23 -0700
Message-Id: <c8db468e55f54dc9751d7349164f27740ed0faac.1305094351.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1305094351.git.dexuan.cui@intel.com>
References: <cover.1305094351.git.dexuan.cui@intel.com>
Old-Date: Wed, 11 May 2011 11:26:34 +0800
Date: Wed, 11 May 2011 14:26:47 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 02/24] screen: update its patch's Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 06:29:24 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../screen/screen-4.0.3/configure.patch            |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-extended/screen/screen-4.0.3/configure.patch b/meta/recipes-extended/screen/screen-4.0.3/configure.patch
index 1061a56..b29071d 100644
--- a/meta/recipes-extended/screen/screen-4.0.3/configure.patch
+++ b/meta/recipes-extended/screen/screen-4.0.3/configure.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 # The patch is borrowed from OE:
 # http://cgit.openembedded.org/cgit.cgi/openembedded/commit/?id=4ee790cc6974bdfe1c9b06c0567b1c56f56d6615
 # and was rebased to screen-4.0.3's configure.in
-- 
1.7.2


