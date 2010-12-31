Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 20AFA4C80FBE
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 21:21:46 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 30 Dec 2010 19:21:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,253,1291622400"; d="scan'208";a="692158957"
Received: from qhe2-db.sh.intel.com ([10.239.13.38])
	by orsmga001.jf.intel.com with ESMTP; 30 Dec 2010 19:21:45 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PYVTQ-0001gW-Eb; Fri, 31 Dec 2010 11:16:12 +0800
Message-Id: <fca444e9b141ce9ce45ed48318ca03d8ebc904af.1293765141.git.qing.he@intel.com>
In-Reply-To: <cover.1293765141.git.qing.he@intel.com>
References: <cover.1293765141.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Old-Date: Thu, 30 Dec 2010 14:25:43 +0800
Date: Fri, 31 Dec 2010 11:16:12 +0800
To: poky@yoctoproject.org
Subject: [PATCH 2/6] libtasn1: upgrade to version 2.9
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
X-List-Received-Date: Fri, 31 Dec 2010 03:21:46 -0000

from 2.8

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../gnutls/{libtasn1_2.8.bb => libtasn1_2.9.bb}    |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-support/gnutls/{libtasn1_2.8.bb => libtasn1_2.9.bb} (81%)

diff --git a/meta/recipes-support/gnutls/libtasn1_2.8.bb b/meta/recipes-support/gnutls/libtasn1_2.9.bb
similarity index 81%
rename from meta/recipes-support/gnutls/libtasn1_2.8.bb
rename to meta/recipes-support/gnutls/libtasn1_2.9.bb
index a10d2ac..63bb3c8 100644
--- a/meta/recipes-support/gnutls/libtasn1_2.8.bb
+++ b/meta/recipes-support/gnutls/libtasn1_2.9.bb
@@ -14,8 +14,8 @@ PR = "r0"
 
 SRC_URI = "ftp://ftp.gnutls.org/pub/gnutls/libtasn1/libtasn1-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "53fd164f8670e55a9964666990fb358f"
-SRC_URI[sha256sum] = "2b7d74f4b10b18ae2f0291fcafabe30e42c9ededdea41add8c622302132d545a"
+SRC_URI[md5sum] = "f4f4035b84550100ffeb8ad4b261dea9"
+SRC_URI[sha256sum] = "fac46855fac8b08cf6f5a1b60cebad8e090bac1f06c335a044e84110d0b412c4"
 
 inherit autotools binconfig lib_package
 
-- 
1.7.0


