Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id E91BF4C80523
	for <poky@yoctoproject.org>; Tue, 10 May 2011 16:16:12 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 May 2011 14:16:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,347,1301900400"; 
   d="scan'208";a="562815"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga001.fm.intel.com with ESMTP; 10 May 2011 14:16:12 -0700
Message-Id: <d678d6bd4690e71fccb9489af86932d00bc69d75.1305062028.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305062026.git.nitin.a.kamble@intel.com>
References: <cover.1305062026.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 10 May 2011 13:07:54 -0700
Date: Tue, 10 May 2011 14:16:12 -0700
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 07/16] libpcre: fix the Upstream-Status format
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
X-List-Received-Date: Tue, 10 May 2011 21:16:13 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../libpcre/files/fix-pcre-name-collision.patch    |    2 +-
 .../recipes-support/libpcre/files/pcre-cross.patch |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-support/libpcre/files/fix-pcre-name-collision.patch b/meta/recipes-support/libpcre/files/fix-pcre-name-collision.patch
index 4b21ffa..89b44f6 100644
--- a/meta/recipes-support/libpcre/files/fix-pcre-name-collision.patch
+++ b/meta/recipes-support/libpcre/files/fix-pcre-name-collision.patch
@@ -1,4 +1,4 @@
-Upstream-Status="Inappropriate [debian patch]"
+Upstream-Status: Inappropriate [debian patch]
 
 This patch address a namespace collision with libc.
 
diff --git a/meta/recipes-support/libpcre/files/pcre-cross.patch b/meta/recipes-support/libpcre/files/pcre-cross.patch
index 1867395..2ae05a1 100644
--- a/meta/recipes-support/libpcre/files/pcre-cross.patch
+++ b/meta/recipes-support/libpcre/files/pcre-cross.patch
@@ -1,4 +1,4 @@
-Upstream-Status="Inappropriate [configuration]"
+Upstream-Status: Inappropriate [configuration]
 
 To be upstreamable, this patch requires check for *_FOR_BUILD, otherwise
 it needs to pass special variables.
-- 
1.7.3.4


