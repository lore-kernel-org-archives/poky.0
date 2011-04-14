Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B7FE64C80AE6
	for <poky@yoctoproject.org>; Wed, 13 Apr 2011 19:16:06 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 Apr 2011 17:16:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,207,1301900400"; d="scan'208";a="678771140"
Received: from yocto-build8.sh.intel.com (HELO localhost) ([10.239.48.1])
	by fmsmga002.fm.intel.com with ESMTP; 13 Apr 2011 17:16:01 -0700
Message-Id: <9f56ebac19e7f7f58f125bcb0435cdca57e5bc1b.1302739788.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1302739788.git.edwin.zhai@intel.com>
References: <cover.1302739788.git.edwin.zhai@intel.com>
Old-Date: Wed, 13 Apr 2011 13:29:53 +0800
Date: Thu, 14 Apr 2011  8:13:28 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 8/9] polkit-gnome: Upgrade to 0.101 (from 0.99)
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
X-List-Received-Date: Thu, 14 Apr 2011 00:16:06 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 ...{polkit-gnome_0.99.bb => polkit-gnome_0.101.bb} |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-extended/polkit/{polkit-gnome_0.99.bb => polkit-gnome_0.101.bb} (86%)

diff --git a/meta/recipes-extended/polkit/polkit-gnome_0.99.bb b/meta/recipes-extended/polkit/polkit-gnome_0.101.bb
similarity index 86%
rename from meta/recipes-extended/polkit/polkit-gnome_0.99.bb
rename to meta/recipes-extended/polkit/polkit-gnome_0.101.bb
index f4fb337..e619090 100644
--- a/meta/recipes-extended/polkit/polkit-gnome_0.99.bb
+++ b/meta/recipes-extended/polkit/polkit-gnome_0.101.bb
@@ -23,5 +23,5 @@ inherit autotools pkgconfig
 FILES_${PN} += " ${datadir}/dbus-1 \
                  ${datadir}/PolicyKit \
                "
-SRC_URI[md5sum] = "f1a2565083266bc8c05c60aa7d8a0f6a"
-SRC_URI[sha256sum] = "73c4d04aa89d9a9687f3650327c0ec1cba704e9d5b7fc193958fa81d621208ba"
+SRC_URI[md5sum] = "da6aaff473ed80f8958fd6f67a59defe"
+SRC_URI[sha256sum] = "f1452e37b6681a0ade2c0cbb3734e6f78c421b958ab4d4eb6a2cd3b9f50db8d0"
-- 
1.7.1


