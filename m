Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id EF0374C80AA4
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 10:51:35 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Mar 2011 08:51:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,297,1297065600"; d="scan'208";a="611382011"
Received: from unknown (HELO localhost) ([10.255.17.57])
	by orsmga002.jf.intel.com with ESMTP; 10 Mar 2011 08:51:26 -0800
Message-Id: <ec9747092c5946f72d826ae7bfebf862e5b6d941.1299775598.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299775598.git.sgw@linux.intel.com>
References: <cover.1299775598.git.sgw@linux.intel.com>
Old-Date: Thu, 10 Mar 2011 09:15:06 +0800
Date: Thu, 10 Mar 2011  8:51:25 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 3/8] telepathy-python: Fix parallel make issue.
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
X-List-Received-Date: Thu, 10 Mar 2011 16:51:36 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

There is a missing dependency (creation of "src/_generated" directory)
of some tasks. Add it to fix the parallel make issue.

[YOCTO #783]

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../telepathy-python-0.15.19/parallel_make.patch   |   40 ++++++++++++++++++++
 .../telepathy/telepathy-python_0.15.19.bb          |    5 +-
 2 files changed, 43 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-connectivity/telepathy/telepathy-python-0.15.19/parallel_make.patch

diff --git a/meta/recipes-connectivity/telepathy/telepathy-python-0.15.19/parallel_make.patch b/meta/recipes-connectivity/telepathy/telepathy-python-0.15.19/parallel_make.patch
new file mode 100644
index 0000000..145e17b
--- /dev/null
+++ b/meta/recipes-connectivity/telepathy/telepathy-python-0.15.19/parallel_make.patch
@@ -0,0 +1,40 @@
+Add dependency of __init__.py
+
+Tasks must be done after exec of __init__, which creates the
+src/_generated directory that tasks are based on.
+
+Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
+
+diff -ruN telepathy-python-0.15.19-orig/src/Makefile.am telepathy-python-0.15.19/src/Makefile.am
+--- telepathy-python-0.15.19-orig/src/Makefile.am	2011-03-10 08:51:49.000000000 +0800
++++ telepathy-python-0.15.19/src/Makefile.am	2011-03-10 08:54:45.000000000 +0800
+@@ -39,17 +39,17 @@
+ XSLTPROC_OPTS = --nonet --novalid --xinclude
+ tools_dir = $(top_srcdir)/tools
+ 
+-_generated/interfaces.py: $(tools_dir)/python-interfaces-generator.xsl $(wildcard $(spec_dir)/*.xml)
++_generated/interfaces.py: _generated/__init__.py $(tools_dir)/python-interfaces-generator.xsl $(wildcard $(spec_dir)/*.xml)
+ 	$(AM_V_GEN)$(XSLTPROC) $(XSLTPROC_OPTS) -o $@ \
+ 	    $(tools_dir)/python-interfaces-generator.xsl \
+ 	    $(spec_dir)/all.xml
+ 
+-_generated/constants.py: $(tools_dir)/python-constants-generator.xsl $(wildcard $(spec_dir)/*.xml)
++_generated/constants.py: _generated/__init__.py $(tools_dir)/python-constants-generator.xsl $(wildcard $(spec_dir)/*.xml)
+ 	$(AM_V_GEN)$(XSLTPROC) $(XSLTPROC_OPTS) -o $@ \
+ 	    $(tools_dir)/python-constants-generator.xsl \
+ 	    $(spec_dir)/all.xml
+ 
+-_generated/errors.py: $(tools_dir)/python-errors-generator.xsl $(wildcard $(spec_dir)/*.xml)
++_generated/errors.py: _generated/__init__.py $(tools_dir)/python-errors-generator.xsl $(wildcard $(spec_dir)/*.xml)
+ 	$(AM_V_GEN)$(XSLTPROC) $(XSLTPROC_OPTS) -o $@ \
+ 	    $(tools_dir)/python-errors-generator.xsl \
+ 	    $(spec_dir)/all.xml
+@@ -58,7 +58,7 @@
+ 	$(AM_V_GEN)$(mkdir_p) $(dir $@)
+ 	@echo "# Placeholder for package" > $@
+ 
+-_generated/%.py: $(tools_dir)/spec-to-python.xsl $(spec_dir)/%.xml
++_generated/%.py: _generated/__init__.py $(tools_dir)/spec-to-python.xsl $(spec_dir)/%.xml
+ 	$(AM_V_GEN)$(XSLTPROC) $(XSLTPROC_OPTS) -o $@ \
+ 	    $(tools_dir)/spec-to-python.xsl \
+ 	    $(spec_dir)/$*.xml
diff --git a/meta/recipes-connectivity/telepathy/telepathy-python_0.15.19.bb b/meta/recipes-connectivity/telepathy/telepathy-python_0.15.19.bb
index aefde8c..7c83393 100644
--- a/meta/recipes-connectivity/telepathy/telepathy-python_0.15.19.bb
+++ b/meta/recipes-connectivity/telepathy/telepathy-python_0.15.19.bb
@@ -6,9 +6,10 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=2d5025d4aa3495befef8f17206a5b0a1 \
 
 RDEPENDS_${PN} += "python-dbus"
 
-SRC_URI = "http://telepathy.freedesktop.org/releases/${PN}/${P}.tar.gz "
+SRC_URI = "http://telepathy.freedesktop.org/releases/${PN}/${P}.tar.gz \
+           file://parallel_make.patch"
 
-PR = "r0"
+PR = "r1"
 
 inherit autotools
 
-- 
1.7.1.1


