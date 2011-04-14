Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5EE5C4C80A70
	for <poky@yoctoproject.org>; Wed, 13 Apr 2011 19:15:53 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Apr 2011 17:15:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,207,1301900400"; d="scan'208";a="733052280"
Received: from yocto-build8.sh.intel.com (HELO localhost) ([10.239.48.1])
	by orsmga001.jf.intel.com with ESMTP; 13 Apr 2011 17:15:52 -0700
Message-Id: <9a095ca0a1518dd6dfad39bab6135cbc19458780.1302739788.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1302739788.git.edwin.zhai@intel.com>
References: <cover.1302739788.git.edwin.zhai@intel.com>
Old-Date: Tue, 12 Apr 2011 15:51:49 +0800
Date: Thu, 14 Apr 2011  8:13:19 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 1/9] libsoup-2.4: Upgrade to 2.32.2 (from 2.32.1)
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
X-List-Received-Date: Thu, 14 Apr 2011 00:15:53 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 ...libsoup-2.4_2.32.1.bb => libsoup-2.4_2.32.2.bb} |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-support/libsoup/{libsoup-2.4_2.32.1.bb => libsoup-2.4_2.32.2.bb} (76%)

diff --git a/meta/recipes-support/libsoup/libsoup-2.4_2.32.1.bb b/meta/recipes-support/libsoup/libsoup-2.4_2.32.2.bb
similarity index 76%
rename from meta/recipes-support/libsoup/libsoup-2.4_2.32.1.bb
rename to meta/recipes-support/libsoup/libsoup-2.4_2.32.2.bb
index 72d7852..59b9150 100644
--- a/meta/recipes-support/libsoup/libsoup-2.4_2.32.1.bb
+++ b/meta/recipes-support/libsoup/libsoup-2.4_2.32.2.bb
@@ -12,8 +12,8 @@ DEPENDS = "glib-2.0 gnutls libxml2 libproxy sqlite3 libgnome-keyring"
 
 SRC_URI = "${GNOME_MIRROR}/libsoup/2.32/libsoup-${PV}.tar.bz2"
 
-SRC_URI[md5sum] = "894ca0077ec2d923286a69766d0b0b74"
-SRC_URI[sha256sum] = "8779da1b4d85f443f04ea8301f52c4a1943c10e4dc8d20dbcdb3652921de6b8e"
+SRC_URI[md5sum] = "03f37350a2a31046ebabb8470e75abcc"
+SRC_URI[sha256sum] = "96e6973c8b7459523c0f44e7aec69528ff2fbd388e8ddc415f91bcc42f50777f"
 S = "${WORKDIR}/libsoup-${PV}"
 
 inherit autotools pkgconfig
-- 
1.7.1


