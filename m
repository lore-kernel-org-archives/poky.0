Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 479D44C811EE
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 13:38:56 -0600 (CST)
Received: from msp-mhatle-lx2.wrs.com (msp-mhatle-lx2.wrs.com [172.25.34.61])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBDJcmLt002800; 
	Mon, 13 Dec 2010 11:38:54 -0800 (PST)
From: Mark Hatle <mark.hatle@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 13 Dec 2010 13:38:59 -0600
Message-Id: <6a296e4ce44c52493f1f3d00c1a26c88b6bb63cb.1292268594.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.2.3
In-Reply-To: <cover.1292268594.git.mark.hatle@windriver.com>
References: <cover.1292268594.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1292268594.git.mark.hatle@windriver.com>
References: <cover.1292268594.git.mark.hatle@windriver.com>
Cc: poky@yoctoproject.org
Subject: [PATCH 4/7] recipes-gnome: Add Summary and Description information
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
X-List-Received-Date: Mon, 13 Dec 2010 19:38:56 -0000

Add Summary and update description information as necessary.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 .../recipes-gnome/libgsf/libgsf_1.14.5.bb          |    1 +
 meta/recipes-gnome/gtk+/gtk+.inc                   |    1 +
 meta/recipes-gnome/gtk-doc/gtk-doc.bb              |    4 ++++
 meta/recipes-gnome/libffi/libffi_3.0.9.bb          |    7 +++++++
 4 files changed, 13 insertions(+), 0 deletions(-)

diff --git a/meta-demoapps/recipes-gnome/libgsf/libgsf_1.14.5.bb b/meta-demoapps/recipes-gnome/libgsf/libgsf_1.14.5.bb
index 10b6390..760c5c1 100644
--- a/meta-demoapps/recipes-gnome/libgsf/libgsf_1.14.5.bb
+++ b/meta-demoapps/recipes-gnome/libgsf/libgsf_1.14.5.bb
@@ -1,3 +1,4 @@
+DESCRIPTION = "GNOME Structured File Library"
 LICENSE = "GPL"
 SECTION = "libs"
 PR = "r0"
diff --git a/meta/recipes-gnome/gtk+/gtk+.inc b/meta/recipes-gnome/gtk+/gtk+.inc
index f7fa00d..c34283e 100644
--- a/meta/recipes-gnome/gtk+/gtk+.inc
+++ b/meta/recipes-gnome/gtk+/gtk+.inc
@@ -1,3 +1,4 @@
+SUMMARY = "Multi-platform toolkit for creating GUIs"
 DESCRIPTION = "GTK+ is a multi-platform toolkit for creating graphical user interfaces. Offering a complete \
 set of widgets, GTK+ is suitable for projects ranging from small one-off projects to complete application suites."
 HOMEPAGE = "http://www.gtk.org"
diff --git a/meta/recipes-gnome/gtk-doc/gtk-doc.bb b/meta/recipes-gnome/gtk-doc/gtk-doc.bb
index 0e7828c..765304e 100644
--- a/meta/recipes-gnome/gtk-doc/gtk-doc.bb
+++ b/meta/recipes-gnome/gtk-doc/gtk-doc.bb
@@ -1,3 +1,7 @@
+SUMMARY = "API documentation generation tool for GTK+ and GNOME"
+DESCRIPTION = "gtk-doc is a tool for generating API reference documentation. \
+It is used for generating the documentation for GTK+, GLib \
+and GNOME."
 SECTION = "x11/base"
 SRC_URI = "file://gtk-doc.m4"
 LICENSE = "LGPL"
diff --git a/meta/recipes-gnome/libffi/libffi_3.0.9.bb b/meta/recipes-gnome/libffi/libffi_3.0.9.bb
index 8ef90e7..b6c7c13 100644
--- a/meta/recipes-gnome/libffi/libffi_3.0.9.bb
+++ b/meta/recipes-gnome/libffi/libffi_3.0.9.bb
@@ -1,3 +1,10 @@
+SUMMARY = "A portable foreign function interface library"
+DESCRIPTION = "The `libffi' library provides a portable, high level programming interface to various calling \
+conventions.  This allows a programmer to call any function specified by a call interface description at run \
+time. FFI stands for Foreign Function Interface.  A foreign function interface is the popular name for the \
+interface that allows code written in one language to call code written in another language.  The `libffi' \
+library really only provides the lowest, machine dependent layer of a fully featured foreign function interface.  \
+A layer must exist above `libffi' that handles type conversions for values passed between the two languages."
 SRC_URI = "ftp://sourceware.org/pub/libffi/${BPN}-${PV}.tar.gz"
 
 SRC_URI[md5sum] = "1f300a7a7f975d4046f51c3022fa5ff1"
-- 
1.7.2.2


