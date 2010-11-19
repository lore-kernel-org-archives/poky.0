Return-Path: <edwin.zhai@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C206E4C811CE
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 05:21:35 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Nov 2010 03:21:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,222,1288594800"; d="scan'208";a="628377129"
Received: from gzhai-nhm.sh.intel.com (HELO localhost) ([10.239.36.111])
	by fmsmga002.fm.intel.com with ESMTP; 19 Nov 2010 03:21:35 -0800
Message-Id: <cd0dd445546516ef929f06ac1e222ad576160d3a.1290165996.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290165996.git.edwin.zhai@intel.com>
References: <cover.1290165996.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 19 Nov 2010 08:00:37 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 10/17] libsoup-2.4: Update to 2.32.1
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
X-List-Received-Date: Fri, 19 Nov 2010 11:21:35 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 ...libsoup-2.4_2.31.2.bb => libsoup-2.4_2.32.1.bb} |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)
 rename meta/recipes-support/libsoup/{libsoup-2.4_2.31.2.bb => libsoup-2.4_2.32.1.bb} (86%)

diff --git a/meta/recipes-support/libsoup/libsoup-2.4_2.31.2.bb b/meta/recipes-support/libsoup/libsoup-2.4_2.32.1.bb
similarity index 86%
rename from meta/recipes-support/libsoup/libsoup-2.4_2.31.2.bb
rename to meta/recipes-support/libsoup/libsoup-2.4_2.32.1.bb
index 9a00e07..92493c8 100644
--- a/meta/recipes-support/libsoup/libsoup-2.4_2.31.2.bb
+++ b/meta/recipes-support/libsoup/libsoup-2.4_2.32.1.bb
@@ -10,7 +10,7 @@ PR = "r0"
 
 DEPENDS = "glib-2.0 gnutls libxml2 libproxy sqlite3 libgnome-keyring"
 
-SRC_URI = "http://ftp.gnome.org/pub/GNOME/sources/libsoup/2.31/libsoup-${PV}.tar.bz2"
+SRC_URI = "http://ftp.gnome.org/pub/GNOME/sources/libsoup/2.32/libsoup-${PV}.tar.bz2"
 S = "${WORKDIR}/libsoup-${PV}"
 
 inherit autotools pkgconfig
-- 
1.6.3.3


