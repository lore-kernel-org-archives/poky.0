Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F8F04C800B6
	for <poky@yoctoproject.org>; Mon, 28 Mar 2011 09:28:39 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Mar 2011 07:28:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,255,1299484800"; d="scan'208";a="409739254"
Received: from unknown (HELO localhost) ([10.255.16.125])
	by azsmga001.ch.intel.com with ESMTP; 28 Mar 2011 07:28:36 -0700
Message-Id: <6a32f7a731859fb5273587380402926560401cfd.1301322225.git.josh@linux.intel.com>
In-Reply-To: <cover.1301322225.git.josh@linux.intel.com>
References: <cover.1301322225.git.josh@linux.intel.com>
Old-Date: Mon, 28 Mar 2011 13:18:51 +0100
Date: Mon, 28 Mar 2011 15:28:30 +0100
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 1/4] clutter: add 1.6.8
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
X-List-Received-Date: Mon, 28 Mar 2011 14:28:39 -0000

From: Joshua Lock <josh@linux.intel.com>

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta/recipes-graphics/clutter/clutter-1.6_1.6.8.bb |   25 ++++++++++++++++++++
 1 files changed, 25 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-graphics/clutter/clutter-1.6_1.6.8.bb

diff --git a/meta/recipes-graphics/clutter/clutter-1.6_1.6.8.bb b/meta/recipes-graphics/clutter/clutter-1.6_1.6.8.bb
new file mode 100644
index 0000000..7ead5f9
--- /dev/null
+++ b/meta/recipes-graphics/clutter/clutter-1.6_1.6.8.bb
@@ -0,0 +1,25 @@
+require recipes-graphics/clutter/clutter.inc
+
+PR = "r0"
+
+PACKAGES =+ "${PN}-examples"
+FILES_${PN}-examples = "${bindir}/test-* ${pkgdatadir}/redhand.png"
+
+SRC_URI = "http://source.clutter-project.org/sources/clutter/1.6/clutter-${PV}.tar.bz2 \
+           file://enable_tests-1.4.patch \
+           file://test-conformance-fix.patch"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=7fbc338309ac38fefcd64b04bb903e34"
+S = "${WORKDIR}/clutter-1.6.8"
+
+BASE_CONF += "--disable-introspection"
+
+EXTRA_OECONF += "--with-json=check"
+
+do_configure_prepend () {
+	# Disable DOLT
+	sed -i -e 's/^DOLT//' ${S}/configure.ac
+}
+
+SRC_URI[md5sum] = "5a3c6d8414d4e286aba0a936f344c9b1""
+SRC_URI[sha256sum] = "cc147b8e7e62ed4b9b8a83df3db9788cf37db0c83970ba876228433f32bda442"
-- 
1.7.4


