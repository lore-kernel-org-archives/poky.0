Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id AEA8C4C810C0
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 11:25:17 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 30 Dec 2010 09:25:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,250,1291622400"; d="scan'208";a="368146563"
Received: from mukti.sc.intel.com (HELO localhost) ([143.183.140.52])
	by azsmga001.ch.intel.com with ESMTP; 30 Dec 2010 09:25:09 -0800
Message-Id: <2bb434ec8e39aa4d5d6731b7d934c914ad7875f8.1293729977.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1293729977.git.nitin.a.kamble@intel.com>
References: <cover.1293729977.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Date: Sun, 26 Dec 2010 17:41:57 -0800
To: poky@yoctoproject.org
Subject: [PATCH 2/5] git: upgrade from 1.7.3.2 to 1.7.3.4
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
X-List-Received-Date: Thu, 30 Dec 2010 17:25:17 -0000

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../git/{git_1.7.3.2.bb => git_1.7.3.4.bb}         |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-devtools/git/{git_1.7.3.2.bb => git_1.7.3.4.bb} (59%)

diff --git a/meta/recipes-devtools/git/git_1.7.3.2.bb b/meta/recipes-devtools/git/git_1.7.3.4.bb
similarity index 59%
rename from meta/recipes-devtools/git/git_1.7.3.2.bb
rename to meta/recipes-devtools/git/git_1.7.3.4.bb
index 1f7f937..2765ef7 100644
--- a/meta/recipes-devtools/git/git_1.7.3.2.bb
+++ b/meta/recipes-devtools/git/git_1.7.3.4.bb
@@ -6,5 +6,5 @@ EXTRA_OECONF += "ac_cv_snprintf_returns_bogus=no ac_cv_c_c99_format=yes \
                  ac_cv_fread_reads_directories=${ac_cv_fread_reads_directories=yes} \
                  "
 
-SRC_URI[md5sum] = "902f7f07a789fedc0d2ac03656b85969"
-SRC_URI[sha256sum] = "bc4cf6bc7c116056050ef43b051691828d7101327b23311d424b02eaee553e71"
+SRC_URI[md5sum] = "3a2602016f98c529cda7b9fad1a6e216"
+SRC_URI[sha256sum] = "3e5e2b6547ee4aae82b4c5f589ff084996e9e6e0e2b52c92365e6baa1e4a0171"
-- 
1.7.2.3


