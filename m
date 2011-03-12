Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id DC30E4C80050
	for <poky@yoctoproject.org>; Fri, 11 Mar 2011 19:15:29 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 Mar 2011 17:15:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,306,1297065600"; d="scan'208";a="719311020"
Received: from unknown (HELO localhost) ([10.255.12.195])
	by orsmga001.jf.intel.com with ESMTP; 11 Mar 2011 17:15:29 -0800
Message-Id: <950d36603b0b0cbb3ca58f2cb3abe0a3bd6e2bb4.1299891748.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299891748.git.sgw@linux.intel.com>
References: <cover.1299891748.git.sgw@linux.intel.com>
Old-Date: Fri, 11 Mar 2011 17:00:38 -0800
Date: Fri, 11 Mar 2011 17:15:28 -0800
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 1/1] gnu-config: Ensure that we use perl-native to avoid version mis-matches
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
X-List-Received-Date: Sat, 12 Mar 2011 01:15:30 -0000

From: Saul Wold <sgw@linux.intel.com>

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../gnu-config/gnu-config_20080123.bb              |    4 +---
 1 files changed, 1 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb b/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb
index 2629ecb..af34cee 100644
--- a/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb
+++ b/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb
@@ -26,9 +26,7 @@ do_install () {
 		sed -e 's,@gnu-configdir@,${datadir}/gnu-config,g' \
 		    -e 's,@autom4te_perllibdir@,${datadir}/autoconf,g' > ${D}${bindir}/gnu-configize
 	# In the native case we want the system perl as perl-native can't have built yet
-	if [ "${BUILD_ARCH}" != "${TARGET_ARCH}" ]; then
-		sed -i -e 's,/usr/bin/perl,${bindir}/perl,g' ${D}${bindir}/gnu-configize
-	fi
+	sed -i -e 's,/usr/bin/perl,${bindir}/perl,g' ${D}${bindir}/gnu-configize
 	chmod 755 ${D}${bindir}/gnu-configize
 	install -m 0644 config.guess config.sub ${D}${datadir}/gnu-config/
 }
-- 
1.7.1


