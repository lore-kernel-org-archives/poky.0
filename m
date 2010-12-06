Return-Path: <qing.he@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 99EDA4C80A74
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 02:10:55 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 06 Dec 2010 00:10:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,305,1288594800"; d="scan'208";a="864881834"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by fmsmga001.fm.intel.com with ESMTP; 06 Dec 2010 00:10:54 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PPW4x-0007Qa-Tt; Mon, 06 Dec 2010 16:05:47 +0800
Message-Id: <8aea95012c9ad30c652104f7dda4a5733c764596.1291622614.git.qing.he@intel.com>
In-Reply-To: <cover.1291622614.git.qing.he@intel.com>
References: <cover.1291622614.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Mon, 6 Dec 2010 15:50:39 +0800
To: poky@yoctoproject.org
Subject: [PATCH] libnl: fix typo in the Makefile fix
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
X-List-Received-Date: Mon, 06 Dec 2010 08:10:55 -0000

change .$(OBJEXT) to .lo in the rule to reflect libtool setup

Signed-off-by: Qing He <qing.he@intel.com>
---

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: qhe/fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix

 .../libnl/libnl-2.0/fix-makefile.patch             |   10 +++++++++-
 meta/recipes-support/libnl/libnl_2.0.bb            |    2 +-
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-support/libnl/libnl-2.0/fix-makefile.patch b/meta/recipes-support/libnl/libnl-2.0/fix-makefile.patch
index d9f00be..214b0db 100644
--- a/meta/recipes-support/libnl/libnl-2.0/fix-makefile.patch
+++ b/meta/recipes-support/libnl/libnl-2.0/fix-makefile.patch
@@ -5,6 +5,14 @@ otherwise the build of lib/route/pktloc.c may fail in a parallel
 environment.
 
 Signed-off-by: Qing He <qing.he@intel.com>
+
+12/06/2010
+
+the dependency rule should really read pktloc.lo instead of
+pktloc.$(OBJEXT), since it's in a libtool setup.
+
+Signed-off-by: Qing He <qing.he@intel.com>
+
 diff --git a/lib/Makefile.am b/lib/Makefile.am
 index 92a916e..e8b8ef3 100644
 --- a/lib/Makefile.am
@@ -13,7 +21,7 @@ index 92a916e..e8b8ef3 100644
  route/pktloc_syntax.c: route/pktloc_syntax.y
  	$(YACC) -d $(YFLAGS) -o $@ $^
  
-+route/pktloc.$(OBJEXT): route/pktloc_syntax.h route/pktloc_grammar.h
++route/pktloc.lo: route/pktloc_syntax.h route/pktloc_grammar.h
 +route/pktloc_syntax.h: route/pktloc_syntax.c
 +route/pktloc_grammar.h: route/pktloc_grammar.c
 +
diff --git a/meta/recipes-support/libnl/libnl_2.0.bb b/meta/recipes-support/libnl/libnl_2.0.bb
index e275670..eb89f0d 100644
--- a/meta/recipes-support/libnl/libnl_2.0.bb
+++ b/meta/recipes-support/libnl/libnl_2.0.bb
@@ -7,7 +7,7 @@ LICENSE = "LGPLv2.1"
 LIC_FILES_CHKSUM = "file://COPYING;md5=2b41e13261a330ee784153ecbb6a82bc"
 
 DEPENDS = "flex-native bison-native"
-PR = "r1"
+PR = "r2"
 
 SRC_URI= "http://www.infradead.org/~tgr/libnl/files/${PN}-${PV}.tar.gz \
           file://fix-makefile.patch \
-- 
1.7.0


