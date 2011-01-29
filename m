Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9FCBC4C8120D
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 20:30:25 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 28 Jan 2011 18:30:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,395,1291622400"; d="scan'208";a="701850110"
Received: from unknown (HELO helios) ([10.255.16.169])
	by orsmga001.jf.intel.com with SMTP; 28 Jan 2011 18:30:23 -0800
Received: by helios (sSMTP sendmail emulation); Sat, 29 Jan 2011 02:30:23 +0000
Message-Id: <22e57eec0b59ea1bf1be0bb923ea221045f455d8.1296267951.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1296267951.git.paul.eggleton@linux.intel.com>
References: <cover.1296267951.git.paul.eggleton@linux.intel.com>
Old-Date: Mon, 17 Jan 2011 15:11:15 +0000
Date: Sat, 29 Jan 2011  2:30:23 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 09/12] package.bbclass: add nodeprrecs flag to RRECOMMENDS_pkgname
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
X-List-Received-Date: Sat, 29 Jan 2011 02:30:25 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Setting this flag disables the normal additions to RRECOMMENDS for a package
(useful when splitting dev / dbg packages).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/classes/package.bbclass |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index 7e1f3f0..a22569d 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -1041,6 +1041,8 @@ python package_depchains() {
 
 	for suffix in pkgs:
 		for pkg in pkgs[suffix]:
+			if bb.data.getVarFlag('RRECOMMENDS_' + pkg, 'nodeprrecs', d):
+				continue
 			(base, func) = pkgs[suffix][pkg]
 			if suffix == "-dev":
 				pkg_adddeprrecs(pkg, base, suffix, func, depends, d)
-- 
1.7.1


