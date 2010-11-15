Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 85AF64C811DF
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 02:49:40 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Nov 2010 00:49:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,210,1288594800"; d="scan'208";a="627604466"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga002.fm.intel.com with ESMTP; 17 Nov 2010 00:49:39 -0800
Message-Id: <b757443ffdb050a233fc284731ae6113f43a25a1.1289982119.git.ke.yu@intel.com>
In-Reply-To: <cover.1289982119.git.ke.yu@intel.com>
References: <cover.1289982119.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Mon, 15 Nov 2010 20:13:53 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 09/10] cairo: upgrade from 1.8.10 to 1.10.0
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
X-List-Received-Date: Wed, 17 Nov 2010 08:49:40 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../cairo/cairo-1.8.10/hardcoded_libtool.patch     |   17 -----------------
 meta/recipes-graphics/cairo/cairo_1.10.0.bb        |    7 +++++++
 meta/recipes-graphics/cairo/cairo_1.8.10.bb        |    8 --------
 3 files changed, 7 insertions(+), 25 deletions(-)
 delete mode 100644 meta/recipes-graphics/cairo/cairo-1.8.10/hardcoded_libtool.patch
 create mode 100644 meta/recipes-graphics/cairo/cairo_1.10.0.bb
 delete mode 100644 meta/recipes-graphics/cairo/cairo_1.8.10.bb

diff --git a/meta/recipes-graphics/cairo/cairo-1.8.10/hardcoded_libtool.patch b/meta/recipes-graphics/cairo/cairo-1.8.10/hardcoded_libtool.patch
deleted file mode 100644
index afdf2c8..0000000
--- a/meta/recipes-graphics/cairo/cairo-1.8.10/hardcoded_libtool.patch
+++ /dev/null
@@ -1,17 +0,0 @@
-Index: cairo-1.8.2/build/aclocal.dolt.m4
-===================================================================
---- cairo-1.8.2.orig/build/aclocal.dolt.m4
-+++ cairo-1.8.2/build/aclocal.dolt.m4
-@@ -163,7 +163,11 @@ done
- if $modeok && $tagok ; then
-     . ${top_builddir_slash}doltcompile "${args@<:@@@:>@}"
- else
--    exec ${top_builddir_slash}libtool "$[]@"
-+__DOLTLIBTOOL__EOF__
-+
-+echo '    exec ${top_builddir_slash}'${host_alias}-libtool' "$[]@"' >> doltlibtool
-+
-+    cat << '__DOLTLIBTOOL__EOF__' >> doltlibtool
- fi
- __DOLTLIBTOOL__EOF__
- 
diff --git a/meta/recipes-graphics/cairo/cairo_1.10.0.bb b/meta/recipes-graphics/cairo/cairo_1.10.0.bb
new file mode 100644
index 0000000..020e73b
--- /dev/null
+++ b/meta/recipes-graphics/cairo/cairo_1.10.0.bb
@@ -0,0 +1,7 @@
+require cairo.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=7d7cc3410ae869ed913ebd30d7f45941"
+
+PR = "r0"
+
+SRC_URI = "http://cairographics.org/releases/cairo-${PV}.tar.gz"
diff --git a/meta/recipes-graphics/cairo/cairo_1.8.10.bb b/meta/recipes-graphics/cairo/cairo_1.8.10.bb
deleted file mode 100644
index 9e7e7a3..0000000
--- a/meta/recipes-graphics/cairo/cairo_1.8.10.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-require cairo.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=7d7cc3410ae869ed913ebd30d7f45941"
-
-PR = "r0"
-
-SRC_URI = "http://cairographics.org/releases/cairo-${PV}.tar.gz \
-           file://hardcoded_libtool.patch"
-- 
1.7.0.4


