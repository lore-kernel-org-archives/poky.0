Return-Path: <lianhao.lu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 213FF4C803D6
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 21:16:12 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 15 Mar 2011 19:15:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,191,1299484800"; d="scan'208";a="613485224"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.87])
	by orsmga002.jf.intel.com with ESMTP; 15 Mar 2011 19:15:50 -0700
Message-Id: <355dc789e14c84f642ca54b083d5c1eddf2406d3.1300241596.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1300241596.git.lianhao.lu@intel.com>
References: <cover.1300241596.git.lianhao.lu@intel.com>
Old-Date: Wed, 16 Mar 2011 10:09:22 +0800
Date: Wed, 16 Mar 2011 10:14:59 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 1/1] oprofileui: upgrade to latest git version.
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
X-List-Received-Date: Wed, 16 Mar 2011 02:16:12 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

[YOCTO #880] Upgrade to latest git version.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 meta/recipes-kernel/oprofile/oprofileui_git.bb     |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index c08545c..4b657e5 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -146,7 +146,7 @@ SRCREV_pn-opkg-nogpg-native ??= "${OPKGSRCREV}"
 SRCREV_pn-opkg-nogpg-nativesdk ??= "${OPKGSRCREV}"
 SRCREV_pn-opkg-utils-native ??= "4747"
 SRCREV_pn-opkg-utils ??= "4747"
-SRCREV_pn-oprofileui ??= "e2d998d8a55dc1e49d1588841f83eff8e6809753"
+SRCREV_pn-oprofileui ??= "2387488fb520725ca9cff888bc1ed25788276b13"
 SRCREV_pn-tcf-agent ??= "1078"
 SRCREV_pn-osc-native ??= "9096"
 SRCREV_pn-owl-video ??= "394"
diff --git a/meta/recipes-kernel/oprofile/oprofileui_git.bb b/meta/recipes-kernel/oprofile/oprofileui_git.bb
index b4a573b..c83d43c 100644
--- a/meta/recipes-kernel/oprofile/oprofileui_git.bb
+++ b/meta/recipes-kernel/oprofile/oprofileui_git.bb
@@ -1,7 +1,7 @@
 require oprofileui.inc
 
 PV = "0.0+git${SRCPV}"
-PR = "r2"
+PR = "r3"
 
 S = "${WORKDIR}/git"
 
-- 
1.7.0.4


