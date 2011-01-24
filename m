Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4C7354C811A5
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 12:11:18 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Jan 2011 10:11:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,371,1291622400"; d="scan'208";a="379195672"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by azsmga001.ch.intel.com with ESMTP; 24 Jan 2011 10:11:17 -0800
Message-Id: <64ac534c8289b299af0a473882300ece12844563.1295892490.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1295892490.git.dexuan.cui@intel.com>
References: <cover.1295892490.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Tue, 25 Jan 2011 02:04:32 +0800
Date: Tue, 25 Jan 2011  2:10:40 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] gnome-doc-utils: add gettext into DEPENDS
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
X-List-Received-Date: Mon, 24 Jan 2011 18:11:18 -0000

This is to fix the following failure:

configure.in:44: warning: AM_NLS is m4_require'd but not m4_defun'd
| aclocal.m4:1826: IT_PROG_INTLTOOL is expanded from...
| configure.in:44: the top level
| configure:3327: error: possibly undefined macro: AM_NLS

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 meta/recipes-gnome/gnome/gnome-doc-utils.inc |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-gnome/gnome/gnome-doc-utils.inc b/meta/recipes-gnome/gnome/gnome-doc-utils.inc
index 7328c59..126c16b 100644
--- a/meta/recipes-gnome/gnome/gnome-doc-utils.inc
+++ b/meta/recipes-gnome/gnome/gnome-doc-utils.inc
@@ -1,6 +1,6 @@
 LICENSE = "GPL LGPL"
-DEPENDS = "libxml2 libxslt libxslt-native gnome-doc-utils-native"
-DEPENDS_virtclass-native = "libxml2-native libxslt-native"
+DEPENDS = "libxml2 libxslt gettext libxslt-native gnome-doc-utils-native"
+DEPENDS_virtclass-native = "libxml2-native libxslt-native gettext-native"
 
 inherit gnome
 
-- 
1.7.2


