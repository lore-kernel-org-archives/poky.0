Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 31B4E4C81146
	for <poky@yoctoproject.org>; Mon, 15 Nov 2010 18:56:03 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 15 Nov 2010 16:56:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,203,1288594800"; d="scan'208";a="574095671"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.22])
	by orsmga002.jf.intel.com with ESMTP; 15 Nov 2010 16:55:59 -0800
Message-Id: <674de86cbbb8e4ab79f7cf8734141d94682d3489.1289868964.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1289868964.git.dongxiao.xu@intel.com>
References: <cover.1289868964.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Mon, 15 Nov 2010 21:32:05 +0800
To: poky@yoctoproject.org
Subject: [PATCH 3/8] libmusicbrainz: Upgraded to version 3.0.3
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
X-List-Received-Date: Tue, 16 Nov 2010 00:56:03 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../fix_build_issue_for_gcc_4.5.0.patch            |    0
 ...usicbrainz_3.0.2.bb => libmusicbrainz_3.0.3.bb} |    2 +-
 2 files changed, 1 insertions(+), 1 deletions(-)
 rename meta/recipes-multimedia/musicbrainz/{libmusicbrainz => libmusicbrainz-3.0.3}/fix_build_issue_for_gcc_4.5.0.patch (100%)
 rename meta/recipes-multimedia/musicbrainz/{libmusicbrainz_3.0.2.bb => libmusicbrainz_3.0.3.bb} (98%)

diff --git a/meta/recipes-multimedia/musicbrainz/libmusicbrainz/fix_build_issue_for_gcc_4.5.0.patch b/meta/recipes-multimedia/musicbrainz/libmusicbrainz-3.0.3/fix_build_issue_for_gcc_4.5.0.patch
similarity index 100%
rename from meta/recipes-multimedia/musicbrainz/libmusicbrainz/fix_build_issue_for_gcc_4.5.0.patch
rename to meta/recipes-multimedia/musicbrainz/libmusicbrainz-3.0.3/fix_build_issue_for_gcc_4.5.0.patch
diff --git a/meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.2.bb b/meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.3.bb
similarity index 98%
rename from meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.2.bb
rename to meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.3.bb
index 5dfda12..8baab08 100644
--- a/meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.2.bb
+++ b/meta/recipes-multimedia/musicbrainz/libmusicbrainz_3.0.3.bb
@@ -5,7 +5,7 @@ LIC_FILES_CHKSUM = "file://COPYING.txt;md5=fbc093901857fcd118f065f900982c24 \
                     file://include/musicbrainz3/includes.h;beginline=1;endline=21;md5=e7d3b3e6d8bb7ee278dc4040d380ebd5"
 DEPENDS = "expat neon"
 
-PR = "r1"
+PR = "r0"
 
 SRC_URI = "http://ftp.musicbrainz.org/pub/musicbrainz/${PN}-${PV}.tar.gz \
            file://fix_build_issue_for_gcc_4.5.0.patch"
-- 
1.6.3.3


