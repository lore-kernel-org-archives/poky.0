Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 788364C80A7D
	for <poky@yoctoproject.org>; Sat,  5 Mar 2011 00:21:12 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 04 Mar 2011 22:21:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,268,1297065600"; d="scan'208";a="609340705"
Received: from unknown (HELO localhost) ([10.255.12.181])
	by orsmga002.jf.intel.com with ESMTP; 04 Mar 2011 22:20:53 -0800
Message-Id: <a8bc2ad482e858f41bde9701f0f983486bea9a3b.1299305989.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299305989.git.sgw@linux.intel.com>
References: <cover.1299305989.git.sgw@linux.intel.com>
Old-Date: Fri, 4 Mar 2011 17:45:11 -0800
Date: Fri, 04 Mar 2011 22:20:53 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 3/3] linuxdoc-tools-native: Fix build error with txt documentation
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
X-List-Received-Date: Sat, 05 Mar 2011 06:21:12 -0000

From: Scott Garman <scott.a.garman@intel.com>

Disable building txt documentation. This is a temporary workaround,
as I have found an Ubuntu 10.10 system which throws errors during
building this that I'd like to ultimately fix. The error manifests
itself from the end of LinuxDocTools.pm with the following messages
during do_install:

| - Building txt docs
| Processing file ./guide
| troff: fatal error: can't find macro file s
|  fmt_txt::postASP: Empty output file, error when calling groff. Aborting...

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../linuxdoc-tools-native/disable_txt_doc.patch    |   32 ++++++++++++++++++++
 .../linuxdoc-tools/linuxdoc-tools-native_0.9.66.bb |    3 +-
 2 files changed, 34 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_txt_doc.patch

diff --git a/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_txt_doc.patch b/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_txt_doc.patch
new file mode 100644
index 0000000..17c7670
--- /dev/null
+++ b/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_txt_doc.patch
@@ -0,0 +1,32 @@
+Disable building txt documentation. This is a temporary workaround,
+as I have found an Ubuntu 10.10 system which throws errors during
+building this that I'd like to ultimately fix. The error manifests
+itself from the end of LinuxDocTools.pm with the following messages
+during do_install:
+
+| - Building txt docs
+| Processing file ./guide
+| troff: fatal error: can't find macro file s
+|  fmt_txt::postASP: Empty output file, error when calling groff. Aborting...
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+diff -urN linuxdoc-tools-0.9.66.orig//doc/Makedoc.sh linuxdoc-tools-0.9.66/doc/Makedoc.sh
+--- linuxdoc-tools-0.9.66.orig//doc/Makedoc.sh	2009-11-09 11:58:25.000000000 -0800
++++ linuxdoc-tools-0.9.66/doc/Makedoc.sh	2011-03-04 17:37:24.788923998 -0800
+@@ -40,11 +40,11 @@
+ 
+ chmod u+x $TMPDIR/linuxdoc
+ 
+-if [ -n "`which groff`" ]; then
+-	ln -s $TMPDIR/linuxdoc $TMPDIR/sgml2txt
+-	echo "- Building txt docs" >&2
+-	$TMPDIR/sgml2txt -b 1 ./guide
+-fi
++#if [ -n "`which groff`" ]; then
++#	ln -s $TMPDIR/linuxdoc $TMPDIR/sgml2txt
++#	echo "- Building txt docs" >&2
++#	$TMPDIR/sgml2txt -b 1 ./guide
++#fi
+ 
+ if [ -n "`which latex`" ]; then
+ 	ln -s $TMPDIR/linuxdoc $TMPDIR/sgml2latex
diff --git a/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native_0.9.66.bb b/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native_0.9.66.bb
index ed45ad9..fbe9219 100644
--- a/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native_0.9.66.bb
+++ b/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native_0.9.66.bb
@@ -6,10 +6,11 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=5fbccc46cff2379505ca4e09c7d6ccfe"
 
 DEPENDS = "openjade-native"
 
-PR = "r1"
+PR = "r2"
 
 SRC_URI = "${DEBIAN_MIRROR}/main/l/linuxdoc-tools/linuxdoc-tools_${PV}.tar.gz \
            file://disable_sgml2rtf.patch \
+           file://disable_txt_doc.patch \
            file://disable_tex_doc.patch \
            file://disable_dvips_doc.patch"
 
-- 
1.7.1.1


