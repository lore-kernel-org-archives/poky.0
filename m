Return-Path: <praveen.v@phytec.in>
Received: from root.phytec.de (mail.phytec.eu [217.6.246.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F17CDE0044A
	for <poky@yoctoproject.org>; Mon, 23 Dec 2013 02:55:28 -0800 (PST)
Received: from tumirnix.phytec.de (tumirnix.phytec.de [172.16.0.38])
	by root.phytec.de (Postfix) with ESMTP id D4157BF0F5;
	Mon, 23 Dec 2013 10:56:30 +0100 (CET)
Received: from localhost.localdomain ([202.83.16.227])
	by tumirnix.phytec.de (Lotus Domino Release 8.5.3FP3)
	with ESMTP id 2013122311541721-12020 ;
	Mon, 23 Dec 2013 11:54:17 +0100 
From: Praveen kumar Vattipalli <praveen.v@phytec.in>
To: poky@yoctoproject.org
Date: Mon, 23 Dec 2013 16:25:18 +0530
Message-Id: <1387796118-5493-1-git-send-email-praveen.v@phytec.in>
X-Mailer: git-send-email 1.7.9.5
X-MIMETrack: Itemize by SMTP Server on Tumirnix/Phytec(Release
	8.5.3FP3|November 15, 2012) at 23.12.2013 11:54:17,
	Serialize by Router on Tumirnix/Phytec(Release 8.5.3FP3|November 15,
	2012) at 23.12.2013 11:54:17,
	Serialize complete at 23.12.2013 11:54:17
Cc: Praveen Kumar Vattipalli <praveen.v@phytec.in>
Subject: [PATCH] Added meta-phytec layer for phytec boards
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 23 Dec 2013 10:55:29 -0000

From: Praveen Kumar Vattipalli <praveen.v@phytec.in>

Signed-off-by: Praveen Kumar Vattipalli <praveen.v@phytec.in>
---
 meta-phytec/COPYING.MIT     |   17 +++++++
 meta-phytec/README          |  118 +++++++++++++++++++++++++++++++++++++++++++
 meta-phytec/conf/layer.conf |   10 ++++
 3 files changed, 145 insertions(+)
 create mode 100644 meta-phytec/COPYING.MIT
 create mode 100644 meta-phytec/README
 create mode 100644 meta-phytec/conf/layer.conf

diff --git a/meta-phytec/COPYING.MIT b/meta-phytec/COPYING.MIT
new file mode 100644
index 0000000..89de354
--- /dev/null
+++ b/meta-phytec/COPYING.MIT
@@ -0,0 +1,17 @@
+Permission is hereby granted, free of charge, to any person obtaining a copy
+of this software and associated documentation files (the "Software"), to deal
+in the Software without restriction, including without limitation the rights
+to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
+copies of the Software, and to permit persons to whom the Software is
+furnished to do so, subject to the following conditions:
+
+The above copyright notice and this permission notice shall be included in
+all copies or substantial portions of the Software.
+
+THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
+AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
+OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
+THE SOFTWARE.
diff --git a/meta-phytec/README b/meta-phytec/README
new file mode 100644
index 0000000..c44167d
--- /dev/null
+++ b/meta-phytec/README
@@ -0,0 +1,118 @@
+This README file contains information on building the meta-phytec
+BSP layer, and booting the images contained in the /binary directory.
+Please see the corresponding sections below for details.
+
+
+Dependencies
+============
+
+This layer depends on:
+
+  URI: git://git.openembedded.org/bitbake
+  branch: master
+
+  URI: git://git.openembedded.org/openembedded-core
+  layers: meta
+  branch: master
+
+  URI: git://git.yoctoproject.org/xxxx
+  layers: xxxx
+  branch: master
+
+
+Patches
+=======
+
+Please submit any patches against this BSP to the Yocto mailing list
+(yocto@yoctoproject.org) and cc: the maintainer:
+
+Maintainer: XXX YYYYYY <xxx.yyyyyy@zzzzz.com>
+
+Please see the meta-xxxx/MAINTAINERS file for more details.
+
+
+Table of Contents
+=================
+
+  I. Building the meta-phytec BSP layer
+ II. Booting the images in /binary
+
+
+I. Building the meta-phytec BSP layer
+========================================
+
+--- replace with specific instructions for your layer ---
+
+In order to build an image with BSP support for a given release, you
+need to download the corresponding BSP tarball from the 'Board Support
+Package (BSP) Downloads' page of the Yocto Project website.
+
+Having done that, and assuming you extracted the BSP tarball contents
+at the top-level of your yocto build tree, you can build a
+phytec image by adding the location of the meta-phytec
+layer to bblayers.conf, along with any other layers needed (to access
+common metadata shared between BSPs) e.g.:
+
+  yocto/meta-xxxx \
+  yocto/meta-xxxx/meta-phytec \
+
+To enable the phytec layer, add the phytec MACHINE to local.conf:
+
+  MACHINE ?= "phytec"
+
+You should then be able to build a phytec image as such:
+
+  $ source oe-init-build-env
+  $ bitbake core-image-sato
+
+At the end of a successful build, you should have a live image that
+you can boot from a USB flash drive (see instructions on how to do
+that below, in the section 'Booting the images from /binary').
+
+As an alternative to downloading the BSP tarball, you can also work
+directly from the meta-xxxx git repository.  For each BSP in the
+'meta-xxxx' repository, there are multiple branches, one corresponding
+to each major release starting with 'laverne' (0.90), in addition to
+the latest code which tracks the current master (note that not all
+BSPs are present in every release).  Instead of extracting a BSP
+tarball at the top level of your yocto build tree, you can
+equivalently check out the appropriate branch from the meta-xxxx
+repository at the same location.
+
+
+II. Booting the images in /binary
+=================================
+
+--- replace with specific instructions for your platform ---
+
+This BSP contains bootable live images, which can be used to directly
+boot Yocto off of a USB flash drive.
+
+Under Linux, insert a USB flash drive.  Assuming the USB flash drive
+takes device /dev/sdf, use dd to copy the live image to it.  For
+example:
+
+# dd if=core-image-sato-phytec-20101207053738.hddimg of=/dev/sdf
+# sync
+# eject /dev/sdf
+
+This should give you a bootable USB flash device.  Insert the device
+into a bootable USB socket on the target, and power on.  This should
+result in a system booted to the Sato graphical desktop.
+
+If you want a terminal, use the arrows at the top of the UI to move to
+different pages of available applications, one of which is named
+'Terminal'.  Clicking that should give you a root terminal.
+
+If you want to ssh into the system, you can use the root terminal to
+ifconfig the IP address and use that to ssh in.  The root password is
+empty, so to log in type 'root' for the user name and hit 'Enter' at
+the Password prompt: and you should be in.
+
+----
+
+If you find you're getting corrupt images on the USB (it doesn't show
+the syslinux boot: prompt, or the boot: prompt contains strange
+characters), try doing this first:
+
+# dd if=/dev/zero of=/dev/sdf bs=1M count=512
diff --git a/meta-phytec/conf/layer.conf b/meta-phytec/conf/layer.conf
new file mode 100644
index 0000000..fcc0055
--- /dev/null
+++ b/meta-phytec/conf/layer.conf
@@ -0,0 +1,10 @@
+# We have a conf and classes directory, add to BBPATH
+BBPATH .= ":${LAYERDIR}"
+
+# We have a recipes-* directories, add to BBFILES
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
+	${LAYERDIR}/recipes-*/*/*.bbappend"
+
+BBFILE_COLLECTIONS += "phytec"
+BBFILE_PATTERN_phytec = "^${LAYERDIR}/"
+BBFILE_PRIORITY_phytec = "6"
-- 
1.7.9.5


