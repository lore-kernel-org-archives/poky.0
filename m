Return-Path: <qing.he@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3372B4C80FD4
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 02:47:05 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 17 Nov 2010 00:47:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,210,1288594800"; d="scan'208";a="858463527"
Received: from qhe2-db.sh.intel.com ([10.239.13.109])
	by fmsmga001.fm.intel.com with ESMTP; 17 Nov 2010 00:46:46 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>) id 1PIdah-0007ku-Ue
	for poky@yoctoproject.org; Wed, 17 Nov 2010 16:42:07 +0800
Message-Id: <ba3f27d18b7def37d2f54a2f4b7b7d8ad9dbedae.1289983189.git.qing.he@intel.com>
In-Reply-To: <cover.1289983189.git.qing.he@intel.com>
References: <cover.1289983189.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Tue, 16 Nov 2010 09:27:13 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/9] libtasn1: upgrade to version 2.8
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
X-List-Received-Date: Wed, 17 Nov 2010 08:47:05 -0000

from 2.7

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../gnutls/{libtasn1_2.7.bb => libtasn1_2.8.bb}    |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)
 rename meta/recipes-support/gnutls/{libtasn1_2.7.bb => libtasn1_2.8.bb} (98%)

diff --git a/meta/recipes-support/gnutls/libtasn1_2.7.bb b/meta/recipes-support/gnutls/libtasn1_2.8.bb
similarity index 98%
rename from meta/recipes-support/gnutls/libtasn1_2.7.bb
rename to meta/recipes-support/gnutls/libtasn1_2.8.bb
index 8dc6265..791f914 100644
--- a/meta/recipes-support/gnutls/libtasn1_2.7.bb
+++ b/meta/recipes-support/gnutls/libtasn1_2.8.bb
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504 \
 
 #RREPLACES_${PN}-bin = "libtasn1 (<< 2.7)"
 
-PR = "r1"
+PR = "r0"
 
 SRC_URI = "ftp://ftp.gnutls.org/pub/gnutls/libtasn1/libtasn1-${PV}.tar.gz"
 
-- 
1.7.0


