Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E8924C8110C
	for <poky@yoctoproject.org>; Sun, 21 Nov 2010 08:25:12 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 21 Nov 2010 06:25:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,231,1288594800"; d="scan'208";a="628887596"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga002.fm.intel.com with ESMTP; 21 Nov 2010 06:25:11 -0800
Message-Id: <28a5a80ec0207813a0108cd8295595986694141e.1290345671.git.ke.yu@intel.com>
In-Reply-To: <cover.1290345671.git.ke.yu@intel.com>
References: <cover.1290345671.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Sun, 21 Nov 2010 19:54:33 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/3] pango: upgrade from 1.28.0 to 1.28.3
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
X-List-Received-Date: Sun, 21 Nov 2010 14:25:12 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../{pango-1.28.0 => pango-1.28.3}/no-tests.patch  |    0
 meta/recipes-graphics/pango/pango.inc              |    1 +
 .../pango/{pango_1.28.0.bb => pango_1.28.3.bb}     |    0
 3 files changed, 1 insertions(+), 0 deletions(-)
 rename meta/recipes-graphics/pango/{pango-1.28.0 => pango-1.28.3}/no-tests.patch (100%)
 rename meta/recipes-graphics/pango/{pango_1.28.0.bb => pango_1.28.3.bb} (100%)

diff --git a/meta/recipes-graphics/pango/pango-1.28.0/no-tests.patch b/meta/recipes-graphics/pango/pango-1.28.3/no-tests.patch
similarity index 100%
rename from meta/recipes-graphics/pango/pango-1.28.0/no-tests.patch
rename to meta/recipes-graphics/pango/pango-1.28.3/no-tests.patch
diff --git a/meta/recipes-graphics/pango/pango.inc b/meta/recipes-graphics/pango/pango.inc
index fa22fa5..38ca3be 100644
--- a/meta/recipes-graphics/pango/pango.inc
+++ b/meta/recipes-graphics/pango/pango.inc
@@ -1,3 +1,4 @@
+SUMMARY = "Framework for layout and rendering of internationalized text"
 DESCRIPTION = "The goal of the Pango project is to provide an \
 Open Source framework for the layout and rendering of \
 internationalized text."
diff --git a/meta/recipes-graphics/pango/pango_1.28.0.bb b/meta/recipes-graphics/pango/pango_1.28.3.bb
similarity index 100%
rename from meta/recipes-graphics/pango/pango_1.28.0.bb
rename to meta/recipes-graphics/pango/pango_1.28.3.bb
-- 
1.7.0.4


