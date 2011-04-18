Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 95CA54C80AC1
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 08:13:07 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 18 Apr 2011 06:13:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,232,1301900400"; d="scan'208";a="680570597"
Received: from yocto-build8.sh.intel.com (HELO localhost) ([10.239.48.1])
	by fmsmga002.fm.intel.com with ESMTP; 18 Apr 2011 06:13:06 -0700
Message-Id: <7903e19b3174f3a6b7df59615062fc0cb2866666.1303131764.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1303131764.git.edwin.zhai@intel.com>
References: <cover.1303131764.git.edwin.zhai@intel.com>
Old-Date: Wed, 13 Apr 2011 10:46:02 +0800
Date: Mon, 18 Apr 2011 21:10:04 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 2/5] avahi: Upgrade to 0.6.30 (from 0.6.28)
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
X-List-Received-Date: Mon, 18 Apr 2011 13:13:07 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

This upgrade fix the one security issue:
http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2011-1002
[YOCTO #975] fixed.

This should be included in the Bernard point-release.

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 meta/recipes-connectivity/avahi/avahi.inc          |    2 +-
 .../avahi/{avahi_0.6.28.bb => avahi_0.6.30.bb}     |    6 +++---
 .../avahi/files/initscript.patch                   |    2 ++
 3 files changed, 6 insertions(+), 4 deletions(-)
 rename meta/recipes-connectivity/avahi/{avahi_0.6.28.bb => avahi_0.6.30.bb} (82%)

diff --git a/meta/recipes-connectivity/avahi/avahi.inc b/meta/recipes-connectivity/avahi/avahi.inc
index 6d4b830..b2fa8ca 100644
--- a/meta/recipes-connectivity/avahi/avahi.inc
+++ b/meta/recipes-connectivity/avahi/avahi.inc
@@ -24,7 +24,7 @@ RRECOMMENDS_${PN}_append_libc-glibc = "libnss-mdns"
 SRC_URI = "http://avahi.org/download/avahi-${PV}.tar.gz \
         file://00avahi-autoipd \
         file://99avahi-autoipd \
-        file://initscript.patch;patch=1"
+        file://initscript.patch"
 
 inherit autotools pkgconfig update-rc.d gettext
 
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
diff --git a/meta/recipes-connectivity/avahi/files/initscript.patch b/meta/recipes-connectivity/avahi/files/initscript.patch
index f76a965..193889e 100644
--- a/meta/recipes-connectivity/avahi/files/initscript.patch
+++ b/meta/recipes-connectivity/avahi/files/initscript.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 diff --git a/initscript/debian/avahi-daemon.in b/initscript/debian/avahi-daemon.in
 index 30a2c2f..b5848a8 100755
 --- a/initscript/debian/avahi-daemon.in
-- 
1.7.1


