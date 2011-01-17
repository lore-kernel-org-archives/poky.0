Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 911754C81209
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 10:54:31 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 17 Jan 2011 08:54:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,333,1291622400"; d="scan'208";a="878175370"
Received: from unknown (HELO helios) ([10.255.16.105])
	by fmsmga001.fm.intel.com with SMTP; 17 Jan 2011 08:54:30 -0800
Received: by helios (sSMTP sendmail emulation); Mon, 17 Jan 2011 16:54:23 +0000
Message-Id: <8b78438e44489569574422b0d78e1146fb880821.1295282922.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1295282922.git.paul.eggleton@linux.intel.com>
References: <cover.1295282922.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Old-Date: Mon, 17 Jan 2011 15:11:15 +0000
Date: Mon, 17 Jan 2011 16:54:23 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 6/8] package.bbclass: add nodeprrecs flag to RRECOMMENDS_pkgname
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
X-List-Received-Date: Mon, 17 Jan 2011 16:54:31 -0000

Setting this flag disables the normal additions to RRECOMMENDS for a package
(useful when splitting dev / dbg packages).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/classes/package.bbclass |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index d39c694..868c8ae 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -1038,6 +1038,8 @@ python package_depchains() {
 
 	for suffix in pkgs:
 		for pkg in pkgs[suffix]:
+			if bb.data.getVarFlag('RRECOMMENDS_' + pkg, 'nodeprrecs', d):
+				continue
 			(base, func) = pkgs[suffix][pkg]
 			if suffix == "-dev":
 				pkg_adddeprrecs(pkg, base, suffix, func, depends, d)
-- 
1.7.1


