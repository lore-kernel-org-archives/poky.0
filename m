Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5301B4C8127D
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 18:36:47 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 27 Jan 2011 16:36:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="380973738"
Received: from unknown (HELO helios) ([10.255.16.167])
	by azsmga001.ch.intel.com with SMTP; 27 Jan 2011 16:36:45 -0800
Received: by helios (sSMTP sendmail emulation); Fri, 28 Jan 2011 00:36:46 +0000
Message-Id: <62199bfc0c526afd5a591225601ee0507de8604c.1296174472.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1296174472.git.paul.eggleton@linux.intel.com>
References: <cover.1296174472.git.paul.eggleton@linux.intel.com>
Old-Date: Mon, 17 Jan 2011 15:11:15 +0000
Date: Fri, 28 Jan 2011  0:36:46 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 09/11] package.bbclass: add nodeprrecs flag to RRECOMMENDS_pkgname
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
X-List-Received-Date: Fri, 28 Jan 2011 00:36:47 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Setting this flag disables the normal additions to RRECOMMENDS for a package
(useful when splitting dev / dbg packages).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/classes/package.bbclass |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index 1b950bb..3f17049 100644
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


