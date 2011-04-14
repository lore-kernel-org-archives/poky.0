Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id E06D94C80852
	for <poky@yoctoproject.org>; Wed, 13 Apr 2011 19:15:55 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 13 Apr 2011 17:15:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,207,1301900400"; d="scan'208";a="909258319"
Received: from yocto-build8.sh.intel.com (HELO localhost) ([10.239.48.1])
	by fmsmga001.fm.intel.com with ESMTP; 13 Apr 2011 17:15:55 -0700
Message-Id: <34aa0bc63962a57f4b819156fa824673252a559d.1302739788.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1302739788.git.edwin.zhai@intel.com>
References: <cover.1302739788.git.edwin.zhai@intel.com>
Old-Date: Wed, 13 Apr 2011 10:46:02 +0800
Date: Thu, 14 Apr 2011  8:13:22 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 3/9] avahi: Upgrade to 0.6.30 (from 0.6.28)
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
X-List-Received-Date: Thu, 14 Apr 2011 00:15:56 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

This upgrade fix the one security issue:
http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2011-1002
[YOCTO #975] fixed.

This should be included in the Bernard point-release.

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../avahi/{avahi_0.6.28.bb => avahi_0.6.30.bb}     |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-connectivity/avahi/{avahi_0.6.28.bb => avahi_0.6.30.bb} (82%)

diff --git a/meta/recipes-connectivity/avahi/avahi_0.6.28.bb b/meta/recipes-connectivity/avahi/avahi_0.6.30.bb
similarity index 82%
rename from meta/recipes-connectivity/avahi/avahi_0.6.28.bb
rename to meta/recipes-connectivity/avahi/avahi_0.6.30.bb
index 6e034b0..1084c04 100644
--- a/meta/recipes-connectivity/avahi/avahi_0.6.28.bb
+++ b/meta/recipes-connectivity/avahi/avahi_0.6.30.bb
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=2d5025d4aa3495befef8f17206a5b0a1 \
                     file://avahi-client/client.h;endline=23;md5=f4ac741a25c4f434039ba3e18c8674cf"
 
 RDEPENDS_avahi-daemon = "sysvinit-pidof"
-PR = "r2"
+PR = "r0"
 
 EXTRA_OECONF += "--disable-gtk3"
 
@@ -15,5 +15,5 @@ FILES_avahi-autoipd = "${sbindir}/avahi-autoipd \
                        ${sysconfdir}/avahi/avahi-autoipd.action \
 		       ${sysconfdir}/dhcp3/*/avahi-autoipd"
 
-SRC_URI[md5sum] = "d0143a5aa3265019072e53ab497818d0"
-SRC_URI[sha256sum] = "a0d80aac88212b9f9d5331c248091d3c9c9209f0e41985421636ebd14230fc91"
+SRC_URI[md5sum] = "e4db89a2a403ff4c47d66ac66fad1f43"
+SRC_URI[sha256sum] = "f9e4316c2339d0020726edd846d01bee0c39980906db0c247479e5807457ff1f"
-- 
1.7.1


