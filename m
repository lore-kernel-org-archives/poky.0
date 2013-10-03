Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5218BE0161B
	for <poky@yoctoproject.org>; Thu,  3 Oct 2013 06:40:01 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 Oct 2013 06:40:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1026,1371106800"; d="scan'208";a="369276596"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.15.228])
	by azsmga001.ch.intel.com with ESMTP; 03 Oct 2013 06:40:00 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  3 Oct 2013 06:40:00 -0700
Message-Id: <1380807600-5336-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [PATCH] distro_alias: Fix missing =
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
X-List-Received-Date: Thu, 03 Oct 2013 13:40:05 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index 99fa48c..731380f 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -147,7 +147,7 @@ DISTRO_PN_ALIAS_pn-gst-plugins-good = "Meego=gst-plugins-good Fedora=gstreamer-p
 DISTRO_PN_ALIAS_pn-gst-plugins-ugly = "OpenSuSE=gstreamer-plugins-ugly Mandriva=gstreamer0.10-plugins-ugly Debian=gst-plugins-ugly0.10"
 DISTRO_PN_ALIAS_pn-gstreamer1.0 = "Debian=gstreamer1.0 Ubuntu=gstreamer1.0"
 DISTRO_PN_ALIAS_pn-gstreamer1.0-plugins-bad = "Debian=gstreamer1.0-plugins-bad Ubuntu=gstreamer1.0-plugins-bad"
-DISTRO_PN_ALIAS_pn-gstreamer1.0-plugins-base "Debian=gstreamer1.0-plugins-base Ubuntu=gstreamer1.0-plugins-base"
+DISTRO_PN_ALIAS_pn-gstreamer1.0-plugins-base = "Debian=gstreamer1.0-plugins-base Ubuntu=gstreamer1.0-plugins-base"
 DISTRO_PN_ALIAS_pn-gstreamer1.0-plugins-good = "Debian=gstreamer1.0-plugins-good Ubuntu=gstreamer1.0-plugins-bad"
 DISTRO_PN_ALIAS_pn-gtk+3 = "Ubuntu=gtk+3.0 Debian=gtk+3.0 Fedora=gtk3"
 DISTRO_PN_ALIAS_pn-gtk-doc-stub = "Fedora=gtk-doc Ubuntu=gtk-doc"
-- 
1.8.3.1


