Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C7F864C811D2
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 07:42:54 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Nov 2010 05:42:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,206,1288594800"; d="scan'208";a="627284289"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.22])
	by fmsmga002.fm.intel.com with ESMTP; 16 Nov 2010 05:42:53 -0800
Message-Id: <e195f4c43f35b5b54683904b2c3f9c11dd356b99.1289914983.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1289914982.git.dongxiao.xu@intel.com>
References: <cover.1289914982.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 16 Nov 2010 14:41:16 +0800
To: poky@yoctoproject.org
Subject: [PATCH 13/14] libmusicbrainz: Upgraded to version 3.0.3
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
X-List-Received-Date: Tue, 16 Nov 2010 13:42:54 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../fix_build_issue_for_gcc_4.5.0.patch            |    0
 ...usicbrainz_3.0.2.bb => libmusicbrainz_3.0.3.bb} |    4 ++--
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-multimedia/musicbrainz/{libmusicbrainz => libmusicbrainz-3.0.3}/fix_build_issue_for_gcc_4.5.0.patch (100%)
 rename meta/recipes-multimedia/musicbrainz/{libmusicbrainz_3.0.2.bb => libmusicbrainz_3.0.3.bb} (89%)

diff --git a/meta/recipes-multimedia/musicbrainz/libmusicbrainz/fix_build_issue_for_gcc_4.5.0.patch b/meta/recipes-multimedia/musicbrainz/libmusicbrainz-3.0.3/fix_build_issue_for_gcc_4.5.0.patch
similarity index 100%
rename from meta/recipes-multimedia/musicbrainz/libmusicbrainz/fix_build_issue_for_gcc_4.5.0.patch
rename to meta/recipes-multimedia/musicbrainz/libmusicbrainz-3.0.3/fix_build_issue_for_gcc_4.5.0.patch
diff --git a/meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.2.bb b/meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.3.bb
similarity index 89%
rename from meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.2.bb
rename to meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.3.bb
index 5dfda12..4ef88f6 100644
--- a/meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.2.bb
+++ b/meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.3.bb
@@ -2,10 +2,10 @@ DESCRIPTION = "The MusicBrainz client is a library which can be built into other
 HOMEPAGE = "http://musicbrainz.org"
 LICENSE = "LGPLv2.1+"
 LIC_FILES_CHKSUM = "file://COPYING.txt;md5=fbc093901857fcd118f065f900982c24 \
-                    file://include/musicbrainz3/includes.h;beginline=1;endline=21;md5=e7d3b3e6d8bb7ee278dc4040d380ebd5"
+                    file://include/musicbrainz3/includes.h;beginline=1;endline=21;md5=9ab2846573f560cea7561da472803a72"
 DEPENDS = "expat neon"
 
-PR = "r1"
+PR = "r0"
 
 SRC_URI = "http://ftp.musicbrainz.org/pub/musicbrainz/${PN}-${PV}.tar.gz \
            file://fix_build_issue_for_gcc_4.5.0.patch"
-- 
1.6.3.3


