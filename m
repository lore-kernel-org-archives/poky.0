Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0CCAA4C80AB8
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 04:58:47 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Mar 2011 02:58:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,198,1299484800"; d="scan'208";a="404009555"
Received: from unknown (HELO localhost) ([10.255.12.145])
	by azsmga001.ch.intel.com with ESMTP; 17 Mar 2011 02:58:47 -0700
Message-Id: <7ed3b9f4c86f89799c31ce98b5a33c3358444ca2.1300355683.git.sgw@linux.intel.com>
In-Reply-To: <cover.1300355683.git.sgw@linux.intel.com>
References: <cover.1300355683.git.sgw@linux.intel.com>
Old-Date: Thu, 17 Mar 2011 02:52:22 -0700
Date: Thu, 17 Mar 2011  2:58:47 -0700
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 7/7] gnome-vfs: add DEPENDS for acl
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
X-List-Received-Date: Thu, 17 Mar 2011 09:58:48 -0000

From: Saul Wold <sgw@linux.intel.com>

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta/recipes-gnome/gnome/gnome-vfs_2.24.4.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-gnome/gnome/gnome-vfs_2.24.4.bb b/meta/recipes-gnome/gnome/gnome-vfs_2.24.4.bb
index 0c307da..8d4040d 100644
--- a/meta/recipes-gnome/gnome/gnome-vfs_2.24.4.bb
+++ b/meta/recipes-gnome/gnome/gnome-vfs_2.24.4.bb
@@ -9,7 +9,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
                     file://daemon/vfs-daemon.c;endline=21;md5=5f2c61553fb16abb07fc9498ca03fe1f \
                     file://modules/cdda-cddb.h;endline=22;md5=20ed324ca64907c366ecd7f22b8e0c54"
 
-DEPENDS = "libxml2 gconf dbus bzip2 gnome-mime-data zlib"
+DEPENDS = "libxml2 gconf dbus bzip2 gnome-mime-data zlib acl"
 RRECOMMENDS_${PN} = "gnome-vfs-plugin-file shared-mime-info"
 # Some legacy packages will require gnome-mime-data to be installed, but use of
 # it is deprecated.
-- 
1.7.1.1


