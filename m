Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3E3C14C80B70
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 09:02:51 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 20 Dec 2010 07:02:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,202,1291622400"; d="scan'208";a="870084078"
Received: from unknown (HELO localhost) ([10.255.16.58])
	by fmsmga001.fm.intel.com with ESMTP; 20 Dec 2010 07:02:50 -0800
Message-Id: <0042c8f1d2feaaecaba08da2b80ec71bf5f1e4d4.1292856365.git.josh@linux.intel.com>
In-Reply-To: <cover.1292856365.git.josh@linux.intel.com>
References: <cover.1292856365.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Fri, 17 Dec 2010 14:09:09 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/3] gnome-common: add native variant via BBCLASSEXTEND
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
X-List-Received-Date: Mon, 20 Dec 2010 15:02:51 -0000

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta/recipes-gnome/gnome/gnome-common_2.28.0.bb |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-gnome/gnome/gnome-common_2.28.0.bb b/meta/recipes-gnome/gnome/gnome-common_2.28.0.bb
index b4adfe4..c2e1c82 100644
--- a/meta/recipes-gnome/gnome/gnome-common_2.28.0.bb
+++ b/meta/recipes-gnome/gnome/gnome-common_2.28.0.bb
@@ -25,3 +25,5 @@ DEPENDS = ""
 
 FILES_${PN} += "${datadir}/aclocal"
 FILES_${PN}-dev = ""
+
+BBCLASSEXTEND = "native"
-- 
1.7.3.3


