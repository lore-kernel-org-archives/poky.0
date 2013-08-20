Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C76CE015BC
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:40:17 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Aug 2013 01:40:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="390032345"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 20 Aug 2013 01:40:15 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id DC1ED6A4093;
	Tue, 20 Aug 2013 01:40:12 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:44:55 +0200
Message-Id: <8429370887c3a166ff1f3f531107ac07381e6d50.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 013/186] ed: upgrade to 1.9
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 20 Aug 2013 08:40:17 -0000

From: Cristiana Voicu <cristiana.voicu@intel.com>

LIC_FILES_CHKSUM changed because some lines were
in addition in main.c file. Those lines are related to exit
status.

(From OE-Core rev: bbd59e73f576a7e89bea6480c81116cee7d8d2e8)

Signed-off-by: Cristiana Voicu <cristiana.voicu@intel.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/recipes-extended/ed/{ed_1.8.bb => ed_1.9.bb} |    7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)
 rename meta/recipes-extended/ed/{ed_1.8.bb => ed_1.9.bb} (68%)

diff --git a/meta/recipes-extended/ed/ed_1.8.bb b/meta/recipes-extended/ed/ed_1.9.bb
similarity index 68%
rename from meta/recipes-extended/ed/ed_1.8.bb
rename to meta/recipes-extended/ed/ed_1.9.bb
index c6b5075..bd00c52 100644
--- a/meta/recipes-extended/ed/ed_1.8.bb
+++ b/meta/recipes-extended/ed/ed_1.9.bb
@@ -5,18 +5,17 @@ BUGTRACKER = ""
 LICENSE = "GPLv3+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=f27defe1e96c2e1ecd4e0c9be8967949 \
                     file://ed.h;endline=20;md5=375a20cc2545ac1115eeb7b323c60ae3 \
-                    file://main.c;endline=24;md5=1b31246da5e3864d7b30094ff76bf7ed"
+                    file://main.c;endline=17;md5=14dbb325c1f2d4daf50e0aa5c5038e96"
 
 SECTION = "base"
-PR = "r0"
 
 # LSB states that ed should be in /bin/
 bindir = "${base_bindir}"
 
 SRC_URI = "${GNU_MIRROR}/ed/ed-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "2268d2344b3c52d23730acb2e3c942fe"
-SRC_URI[sha256sum] = "64c138d33b1ea4b9daa88e045da0619e2a43cb99a9d378417d20163f410a7273"
+SRC_URI[md5sum] = "565b6d1d5a9a8816b9b304fc4ed9405d"
+SRC_URI[sha256sum] = "d5b372cfadf073001823772272fceac2cfa87552c5cd5a8efc1c8aae61f45a88"
 
 do_configure() {
 	${S}/configure
-- 
1.7.9.5


