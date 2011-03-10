Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4B5CB4C8090B
	for <poky@yoctoproject.org>; Wed,  9 Mar 2011 19:20:35 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 Mar 2011 17:20:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,293,1297065600"; d="scan'208";a="400345802"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.64])
	by azsmga001.ch.intel.com with ESMTP; 09 Mar 2011 17:20:08 -0800
Message-Id: <452a0d2629a7c92ccc518f75cfa20be358fbbb7a.1299719736.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1299719736.git.dongxiao.xu@intel.com>
References: <cover.1299719736.git.dongxiao.xu@intel.com>
Old-Date: Thu, 10 Mar 2011 09:15:06 +0800
Date: Thu, 10 Mar 2011  9:19:50 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 1/1] telepathy-python: Fix parallel make issue.
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
X-List-Received-Date: Thu, 10 Mar 2011 01:20:35 -0000

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
1.7.1


