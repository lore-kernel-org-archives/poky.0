Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2639C4C811F7
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 19:45:41 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Jan 2011 17:45:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,394,1291622400"; d="scan'208";a="597538632"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga002.jf.intel.com with ESMTP; 28 Jan 2011 17:45:39 -0800
Message-Id: <4a95a291207783fecfe03db28abb830c4901ed86.1296265268.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1296265268.git.scott.a.garman@intel.com>
References: <cover.1296265268.git.scott.a.garman@intel.com>
Old-Date: Wed, 26 Jan 2011 13:49:26 -0800
Date: Fri, 28 Jan 2011 17:46:32 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 7/9] docbook-utils: new recipe v0.6.14
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
X-List-Received-Date: Sat, 29 Jan 2011 01:45:41 -0000

From: Scott Garman <scott.a.garman@intel.com>

Recipe derived from OpenEmbedded. Converted to use BBCLASSEXTEND.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../docbook-utils/docbook-utils_0.6.14.bb          |   20 ++++++++++++++++++++
 1 files changed, 20 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-devtools/docbook-utils/docbook-utils_0.6.14.bb

diff --git a/meta/recipes-devtools/docbook-utils/docbook-utils_0.6.14.bb b/meta/recipes-devtools/docbook-utils/docbook-utils_0.6.14.bb
new file mode 100644
index 0000000..4b053b1
--- /dev/null
+++ b/meta/recipes-devtools/docbook-utils/docbook-utils_0.6.14.bb
@@ -0,0 +1,20 @@
+SUMMARY = "Utilities for formatting and manipulating DocBook documents"
+DESCRIPTION = "A collection of all the free software tools you need to \
+work on and format DocBook documents."
+HOMEPAGE = "http://sources.redhat.com/docbook-tools/"
+SECTION = "console/utils"
+PRIORITY = "required"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+DEPENDS = "openjade-native sgmlspl-native docbook-dsssl-stylesheets-native docbook-sgml-dtd-3.1-native"
+
+PR = "r0"
+
+SRC_URI = "ftp://sources.redhat.com/pub/docbook-tools/new-trials/SOURCES/docbook-utils-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "6b41b18c365c01f225bc417cf632d81c"
+SRC_URI[sha256sum] = "48faab8ee8a7605c9342fb7b906e0815e3cee84a489182af38e8f7c0df2e92e9"
+
+inherit autotools
+
+BBCLASSEXTEND = "native"
-- 
1.7.3.5


