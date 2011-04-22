Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3973E4C80AB0
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 19:53:39 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 21 Apr 2011 17:53:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,252,1301900400"; d="scan'208";a="423613709"
Received: from nbuild1.sc.intel.com (HELO localhost) ([172.25.110.36])
	by azsmga001.ch.intel.com with ESMTP; 21 Apr 2011 17:53:38 -0700
Message-Id: <ed52523a20031b3836b01525ac6ba0f0dd7bfe34.1303433480.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1303433480.git.nitin.a.kamble@intel.com>
References: <cover.1303433480.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 7 Apr 2011 10:47:16 -0700
Date: Thu, 21 Apr 2011 17:53:12 -0700
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 2/8] python-gst: upgrade from 0.10.19 to 0.10.21
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
X-List-Received-Date: Fri, 22 Apr 2011 00:53:39 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../python/python-gst/python-path.patch            |    2 ++
 ...python-gst_0.10.19.bb => python-gst_0.10.21.bb} |    6 +++---
 2 files changed, 5 insertions(+), 3 deletions(-)
 rename meta/recipes-devtools/python/{python-gst_0.10.19.bb => python-gst_0.10.21.bb} (82%)

diff --git a/meta/recipes-devtools/python/python-gst/python-path.patch b/meta/recipes-devtools/python/python-gst/python-path.patch
index 00bab2c..21b5bbf 100644
--- a/meta/recipes-devtools/python/python-gst/python-path.patch
+++ b/meta/recipes-devtools/python/python-gst/python-path.patch
@@ -1,3 +1,5 @@
+Upstream-Status:Pending
+
 Index: gst-python-0.10.19/acinclude.m4
 ===================================================================
 --- gst-python-0.10.19.orig/acinclude.m4	2010-04-21 15:23:44.000000000 -0700
diff --git a/meta/recipes-devtools/python/python-gst_0.10.19.bb b/meta/recipes-devtools/python/python-gst_0.10.21.bb
similarity index 82%
rename from meta/recipes-devtools/python/python-gst_0.10.19.bb
rename to meta/recipes-devtools/python/python-gst_0.10.21.bb
index 22d6339..dd1ad5f 100644
--- a/meta/recipes-devtools/python/python-gst_0.10.19.bb
+++ b/meta/recipes-devtools/python/python-gst_0.10.21.bb
@@ -3,13 +3,13 @@ SECTION = "devel/python"
 LICENSE = "LGPLv2.1"
 DEPENDS = "gstreamer gst-plugins-base python-pygobject"
 RDEPENDS_${PN} += "python-pygtk"
-PR = "r1"
+PR = "r0"
 
 SRC_URI = "http://gstreamer.freedesktop.org/src/gst-python/gst-python-${PV}.tar.bz2 \
            file://python-path.patch"
 
-SRC_URI[md5sum] = "ddcef7d00bd88b0591cd6d910c36ec4b"
-SRC_URI[sha256sum] = "956f81a8c15daa3f17e688a0dc5a5d18a3118141066952d3b201a6ac0c52b415"
+SRC_URI[md5sum] = "31340ae3e877797a10d088a226d74b16"
+SRC_URI[sha256sum] = "d5962132c84b88b54d0f63832b8dfcc383a7805827da5abc2d1d215ba86a6f92"
 S = "${WORKDIR}/gst-python-${PV}"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=39ff67e932b7bdfa9b78bad67151690b"
-- 
1.7.2.2


