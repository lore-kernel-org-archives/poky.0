Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id BF5F64C80AA8
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 02:22:16 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 15 Mar 2011 00:22:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,321,1297065600"; d="scan'208";a="667338946"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.124])
	by fmsmga002.fm.intel.com with ESMTP; 15 Mar 2011 00:22:15 -0700
Message-Id: <57d76b93d53e6313bdf5eae857d5c5c514f66524.1300173515.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1300173515.git.dongxiao.xu@intel.com>
References: <cover.1300173515.git.dongxiao.xu@intel.com>
Old-Date: Tue, 15 Mar 2011 15:16:34 +0800
Date: Tue, 15 Mar 2011 15:21:50 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 1/1] xserver-nodm-init: add xuser to group audio
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
X-List-Received-Date: Tue, 15 Mar 2011 07:22:16 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

add rootless X user to group audio to access /dev/snd/*

Fixes [YOCTO #799]

CC: Ke Yu <ke.yu@intel.com>
Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../x11-common/xserver-nodm-init.bb                |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-graphics/x11-common/xserver-nodm-init.bb b/meta/recipes-graphics/x11-common/xserver-nodm-init.bb
index a93acc9..abc25db 100644
--- a/meta/recipes-graphics/x11-common/xserver-nodm-init.bb
+++ b/meta/recipes-graphics/x11-common/xserver-nodm-init.bb
@@ -3,7 +3,7 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
 SECTION = "x11"
 PRIORITY = "optional"
-PR = "r24"
+PR = "r25"
 RDEPENDS_${PN} = "dbus-wait sudo"
 
 SRC_URI = "file://xserver-nodm \
@@ -30,12 +30,13 @@ pkg_postinst_${PN} () {
     fi
 
     if [ -f /etc/X11/Xusername ]; then
-        # create the rootless X user, and add user to group tty, video
+        # create the rootless X user, and add user to group tty, video, audio
         username=`cat /etc/X11/Xusername`
         adduser --disabled-password $username
         # FIXME: use addgroup if busybox addgroup is ready
         sed -i -e "s/^video:.*/&${username}/g" /etc/group
         sed -i -e "s/^tty:.*/&${username}/g" /etc/group
+        sed -i -e "s/^audio:.*/&${username}/g" /etc/group
     fi
 }
 
-- 
1.7.1


