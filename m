Return-Path: <constantinx.musca@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11B21E013F7
	for <poky@yoctoproject.org>; Mon, 10 Dec 2012 01:07:31 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Dec 2012 01:07:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,250,1355126400"; d="scan'208";a="229269859"
Received: from costin-desktop (HELO localhost.localdomain) ([10.237.105.152])
	by azsmga001.ch.intel.com with ESMTP; 10 Dec 2012 01:07:29 -0800
From: Constantin Musca <constantinx.musca@intel.com>
To: poky@yoctoproject.org
Date: Mon, 10 Dec 2012 11:07:59 +0200
Message-Id: <1355130479-17774-1-git-send-email-constantinx.musca@intel.com>
X-Mailer: git-send-email 1.7.11.7
Cc: Constantin Musca <constantinx.musca@intel.com>
Subject: [PATCH v2] poky-tiny.conf: blacklist inappropriate image options
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
X-List-Received-Date: Mon, 10 Dec 2012 09:07:31 -0000

Blacklist all images that fail when using poky-tiny

poky-tiny image tests:
1. build-appliance-image
    * ERROR: Nothing RPROVIDES libx11-dev
2. core-image-minimal-*
    * ok
3. core-image-base
    * libcap fails at do_compile
4. core-image-basic
    * libcap fails at do_compile
5. core-image-clutter
    * ERROR: Nothing PROVIDES virtual/libx11
6. core-image-gtk-directfb
    * ERROR: Nothing RPROVIDES libxt
7. core-image-lsb, core-image-lsb-dev, core-image-lsb-sdk
    * ERROR: Nothing RPROVIDES libxt
8. core-image-rt
    * ERROR: Multiple .bb files are due to be built which each provide virtual/kernel
        (/home/dev/yocto/poky/meta/recipes-kernel/linux/linux-yocto-rt_3.4.bb
            /home/dev/yocto/poky/meta/recipes-kernel/linux/linux-yocto-tiny_3.4.bb).
9. core-image-rt-sdk
    * ERROR: Nothing PROVIDES xext
10. core-image-sato, core-image-sato-dev, core-image-sato-sdk
    * ERROR: Nothing PROVIDES libxft
11. core-image-x11
    * ERROR: Nothing PROVIDES virtual/libx11
12. q4te-demo-image
    * libcap fails at do_compile

[YOCTO #2565]

Signed-off-by: Constantin Musca <constantinx.musca@intel.com>
---
 meta-yocto/conf/distro/poky-tiny.conf | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index d40748e..9197a7c 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -120,3 +120,20 @@ MACHINE_ESSENTIAL_EXTRA_RDEPENDS = ""
 # will build perl in case this package is installed. Since we don't care about
 # this script for the purposes of tiny, remove the dependency from here.
 RDEPENDS_${PN}-mtrace_pn-eglibc = ""
+
+INHERIT += "blacklist"
+PNBLACKLIST[build-appliance-image] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-base] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-basic] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-clutter] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-gtk-directfb] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-lsb] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-lsb-dev] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-lsb-sdk] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-rt] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-rt-sdk] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-sato] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-sato-dev] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-sato-sdk] = "not buildable with poky-tiny"
+PNBLACKLIST[core-image-x11] = "not buildable with poky-tiny"
+PNBLACKLIST[qt4e-demo-image] = "not buildable with poky-tiny"
-- 
1.7.11.7


