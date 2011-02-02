Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3CE964C8008C
	for <poky@yoctoproject.org>; Wed,  2 Feb 2011 06:58:49 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 Feb 2011 04:58:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,413,1291622400"; d="scan'208";a="653665872"
Received: from unknown (HELO localhost) ([10.255.16.159])
	by fmsmga002.fm.intel.com with ESMTP; 02 Feb 2011 04:58:43 -0800
Message-Id: <bb7a07ffe72759ec884af239aafd948675591c75.1296651445.git.josh@linux.intel.com>
In-Reply-To: <cover.1296651445.git.josh@linux.intel.com>
References: <cover.1296651445.git.josh@linux.intel.com>
Old-Date: Wed, 2 Feb 2011 12:56:24 +0000
Date: Wed, 02 Feb 2011 12:58:37 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 1/1] gobject-introspection: fix DEPENDS
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
X-List-Received-Date: Wed, 02 Feb 2011 12:58:49 -0000

From: Joshua Lock <josh@linux.intel.com>

We need flex and bison to build gobject-introspection

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 .../gnome/gobject-introspection_git.bb             |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-gnome/gnome/gobject-introspection_git.bb b/meta/recipes-gnome/gnome/gobject-introspection_git.bb
index 49c0ed8..17a42a9 100644
--- a/meta/recipes-gnome/gnome/gobject-introspection_git.bb
+++ b/meta/recipes-gnome/gnome/gobject-introspection_git.bb
@@ -14,7 +14,7 @@ PR = "r3"
 S = "${WORKDIR}/git"
 
 DEPENDS = "libffi python-native gobject-introspection-native"
-DEPENDS_virtclass-native = "libffi-native python-native"
+DEPENDS_virtclass-native = "libffi-native python-native bison-native flex-native"
 
 inherit autotools
 
-- 
1.7.3.5


