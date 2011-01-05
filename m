Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1C3A34C811EB
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 15:44:52 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 5C19330533
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 16:44:46 -0500 (EST)
Message-Id: <60b51a72258321094816af7f02bc65968d6525f6.1294250102.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1294250102.git.scott.a.garman@intel.com>
References: <cover.1294250102.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Tue, 4 Jan 2011 14:12:08 -0800
Date: Wed, 05 Jan 2011 13:44:43 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 5C19330533.18809
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 4/8] blktool: minor formatting changes
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
X-List-Received-Date: Wed, 05 Jan 2011 21:44:52 -0000

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-extended/blktool/blktool_4-6.bb |    9 ++++++---
 1 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-extended/blktool/blktool_4-6.bb b/meta/recipes-extended/blktool/blktool_4-6.bb
index 1e4ca9d..86d2d0d 100644
--- a/meta/recipes-extended/blktool/blktool_4-6.bb
+++ b/meta/recipes-extended/blktool/blktool_4-6.bb
@@ -1,10 +1,14 @@
-SUMMARY = "tune low-level block device parameters"
-DESCRIPTION = "blktool is used for querying and/or changing settings of a block device. It is like hdparm but a more general tool, as it works on SCSI, IDE and SATA devices"
+SUMMARY = "Tune low-level block device parameters"
+DESCRIPTION = "blktool is used for querying and/or changing settings \
+of a block device. It is like hdparm but a more general tool, as it \
+works on SCSI, IDE and SATA devices."
 HOMEPAGE = "http://packages.debian.org/unstable/admin/blktool"
 LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
                     file://blktool.c;beginline=7;endline=8;md5=a5e798ea98fd50972088968a15e5f373"
+
 DEPENDS = "glib-2.0"
+PR = "r0"
 
 SRC_URI = "${DEBIAN_MIRROR}/main/b/blktool/blktool_4.orig.tar.gz;name=tarball \
            ${DEBIAN_MIRROR}/main/b/blktool/blktool_4-6.diff.gz;apply=yes;name=patch"
@@ -15,7 +19,6 @@ SRC_URI[tarball.sha256sum] = "b1e6d5912546d2a4b704ec65c2b9664aa3b4663e7d800e0680
 SRC_URI[patch.md5sum] = "2d1bc2f2c38b65d47e27da7c7508d17f"
 SRC_URI[patch.sha256sum] = "999f2062203e389327d997724621be37bea9c98fa226238f9f4eb4a6ea25bd4b"
 
-PR = "r0"
 S = "${WORKDIR}/${PN}-4.orig"
 
 inherit autotools
-- 
1.7.1


