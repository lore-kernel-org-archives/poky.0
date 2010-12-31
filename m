Return-Path: <qing.he@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6CFE64C80FBE
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 21:21:46 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 30 Dec 2010 19:21:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,253,1291622400"; d="scan'208";a="873204926"
Received: from qhe2-db.sh.intel.com ([10.239.13.38])
	by fmsmga001.fm.intel.com with ESMTP; 30 Dec 2010 19:21:45 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PYVTQ-0001gd-F2; Fri, 31 Dec 2010 11:16:12 +0800
Message-Id: <4c015b6f5ed662f2cf942142aeb9f6256d1eccfa.1293765141.git.qing.he@intel.com>
In-Reply-To: <cover.1293765141.git.qing.he@intel.com>
References: <cover.1293765141.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Old-Date: Thu, 30 Dec 2010 14:48:31 +0800
Date: Fri, 31 Dec 2010 11:16:12 +0800
To: poky@yoctoproject.org
Subject: [PATCH 3/6] gnutls: upgrade to version 2.10.4
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

from 2.8.6

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../configure-fix.patch                            |    0
 .../gnutls-openssl.patch                           |    0
 .../gnutls-texinfo-euro.patch                      |    0
 .../gnutls/{gnutls_2.8.6.bb => gnutls_2.10.4.bb}   |    4 ++--
 4 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-support/gnutls/{gnutls-2.8.6 => gnutls-2.10.4}/configure-fix.patch (100%)
 rename meta/recipes-support/gnutls/{gnutls-2.8.6 => gnutls-2.10.4}/gnutls-openssl.patch (100%)
 rename meta/recipes-support/gnutls/{gnutls-2.8.6 => gnutls-2.10.4}/gnutls-texinfo-euro.patch (100%)
 rename meta/recipes-support/gnutls/{gnutls_2.8.6.bb => gnutls_2.10.4.bb} (53%)

diff --git a/meta/recipes-support/gnutls/gnutls-2.8.6/configure-fix.patch b/meta/recipes-support/gnutls/gnutls-2.10.4/configure-fix.patch
similarity index 100%
rename from meta/recipes-support/gnutls/gnutls-2.8.6/configure-fix.patch
rename to meta/recipes-support/gnutls/gnutls-2.10.4/configure-fix.patch
diff --git a/meta/recipes-support/gnutls/gnutls-2.8.6/gnutls-openssl.patch b/meta/recipes-support/gnutls/gnutls-2.10.4/gnutls-openssl.patch
similarity index 100%
rename from meta/recipes-support/gnutls/gnutls-2.8.6/gnutls-openssl.patch
rename to meta/recipes-support/gnutls/gnutls-2.10.4/gnutls-openssl.patch
diff --git a/meta/recipes-support/gnutls/gnutls-2.8.6/gnutls-texinfo-euro.patch b/meta/recipes-support/gnutls/gnutls-2.10.4/gnutls-texinfo-euro.patch
similarity index 100%
rename from meta/recipes-support/gnutls/gnutls-2.8.6/gnutls-texinfo-euro.patch
rename to meta/recipes-support/gnutls/gnutls-2.10.4/gnutls-texinfo-euro.patch
diff --git a/meta/recipes-support/gnutls/gnutls_2.8.6.bb b/meta/recipes-support/gnutls/gnutls_2.10.4.bb
similarity index 53%
rename from meta/recipes-support/gnutls/gnutls_2.8.6.bb
rename to meta/recipes-support/gnutls/gnutls_2.10.4.bb
index 59fc226..3924ecd 100644
--- a/meta/recipes-support/gnutls/gnutls_2.8.6.bb
+++ b/meta/recipes-support/gnutls/gnutls_2.10.4.bb
@@ -6,5 +6,5 @@ SRC_URI += "file://gnutls-openssl.patch \
             file://gnutls-texinfo-euro.patch \
             file://configure-fix.patch"
 
-SRC_URI[md5sum] = "eb0a6d7d3cb9ac684d971c14f9f6d3ba"
-SRC_URI[sha256sum] = "d6f846a7064af3ee2c9aebd65dcee76953b767170cbcd719e990ed6b9688a356"
+SRC_URI[md5sum] = "4e1517084018a8b1fdc96daabea40528"
+SRC_URI[sha256sum] = "b8bfe36450fe671e99db5ff1e44e6b65fda8a79cacd9e77d550eff7da3745fc8"
-- 
1.7.0


