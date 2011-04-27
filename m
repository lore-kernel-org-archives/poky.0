Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1623B4C80AAD
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 11:49:18 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Apr 2011 09:49:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,275,1301900400"; d="scan'208";a="684820678"
Received: from unknown (HELO helios) ([10.255.13.83])
	by fmsmga002.fm.intel.com with SMTP; 27 Apr 2011 09:49:08 -0700
Received: by helios (sSMTP sendmail emulation); Wed, 27 Apr 2011 17:49:11 +0100
Message-Id: <318c3139745e74177a23f323881dbd76ddc42006.1303922644.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1303922644.git.paul.eggleton@linux.intel.com>
References: <cover.1303922644.git.paul.eggleton@linux.intel.com>
Old-Date: Wed, 27 Apr 2011 17:34:17 +0100
Date: Wed, 27 Apr 2011 17:49:11 +0100
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 1/1] initscripts: remove -i from halt/reboot arguments and allow override
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
X-List-Received-Date: Wed, 27 Apr 2011 16:49:19 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Introduces a variable HALTARGS which specifies the arguments sent to
halt and reboot, and sets the default value to "-d -f", dropping the
previous -i (shut down all network interfaces before halt/reboot, which
causes a freeze with NFS root.)

Fixes [YOCTO #997].

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/recipes-core/initscripts/initscripts-1.0/halt |    2 +-
 .../initscripts/initscripts-1.0/reboot             |    2 +-
 meta/recipes-core/initscripts/initscripts_1.0.bb   |    9 ++++++++-
 3 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-core/initscripts/initscripts-1.0/halt b/meta/recipes-core/initscripts/initscripts-1.0/halt
index 609b793..021d9be 100755
--- a/meta/recipes-core/initscripts/initscripts-1.0/halt
+++ b/meta/recipes-core/initscripts/initscripts-1.0/halt
@@ -24,6 +24,6 @@ then
 	hddown=""
 fi
 
-halt -d -f -i -p $hddown
+halt SED_HALTARGS -p $hddown
 
 : exit 0
diff --git a/meta/recipes-core/initscripts/initscripts-1.0/reboot b/meta/recipes-core/initscripts/initscripts-1.0/reboot
index 4c55885..cf32e95 100755
--- a/meta/recipes-core/initscripts/initscripts-1.0/reboot
+++ b/meta/recipes-core/initscripts/initscripts-1.0/reboot
@@ -12,4 +12,4 @@
 PATH=/sbin:/bin:/usr/sbin:/usr/bin
 
 echo -n "Rebooting... "
-reboot -d -f -i
+reboot SED_HALTARGS
diff --git a/meta/recipes-core/initscripts/initscripts_1.0.bb b/meta/recipes-core/initscripts/initscripts_1.0.bb
index d990925..720c252 100644
--- a/meta/recipes-core/initscripts/initscripts_1.0.bb
+++ b/meta/recipes-core/initscripts/initscripts_1.0.bb
@@ -6,7 +6,7 @@ DEPENDS = "makedevs"
 RDEPENDS_${PN} = "makedevs"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
-PR = "r124"
+PR = "r125"
 
 SRC_URI = "file://functions \
            file://halt \
@@ -38,6 +38,13 @@ SRC_URI_append_arm = " file://alignment.sh"
 
 KERNEL_VERSION = ""
 
+HALTARGS ?= "-d -f"
+
+do_configure() {
+	sed -i -e "s:SED_HALTARGS:${HALTARGS}:g" ${WORKDIR}/halt
+	sed -i -e "s:SED_HALTARGS:${HALTARGS}:g" ${WORKDIR}/reboot
+}
+
 do_install () {
 #
 # Create directories and install device independent scripts
-- 
1.7.1


