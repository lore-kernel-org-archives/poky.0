Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB3C2E0145B
	for <poky@yoctoproject.org>; Thu, 11 Oct 2012 11:43:56 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 Oct 2012 11:43:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,573,1344236400"; d="scan'208";a="204473768"
Received: from duke.jf.intel.com (HELO localhost) ([10.7.199.52])
	by orsmga001.jf.intel.com with ESMTP; 11 Oct 2012 11:43:55 -0700
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Thu, 11 Oct 2012 11:43:53 -0700
Message-Id: <9ccd4738df982f884490e4b0797a5c404b0fb83d.1349980878.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349980878.git.scott.a.garman@intel.com>
References: <cover.1349980878.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1349980878.git.scott.a.garman@intel.com>
References: <cover.1349980878.git.scott.a.garman@intel.com>
Subject: [PATCH 5/8] gnutls: Update SRC_URI to use GNU_MIRROR
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
X-List-Received-Date: Thu, 11 Oct 2012 18:43:56 -0000

From: Darren Hart <dvhart@linux.intel.com>

The current SRC_URI fails. Update it with the GNU_MIRROR SRC_URI from
upstream commit 753b22012f10c393c191d3116b9d38ee4be6d112.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: John Howard <john.howard@intel.com>
CC: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-support/gnutls/gnutls.inc |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-support/gnutls/gnutls.inc b/meta/recipes-support/gnutls/gnutls.inc
index 157612e..e818f07 100644
--- a/meta/recipes-support/gnutls/gnutls.inc
+++ b/meta/recipes-support/gnutls/gnutls.inc
@@ -3,7 +3,7 @@ HOMEPAGE = "http://www.gnu.org/software/gnutls/"
 BUGTRACKER = "https://savannah.gnu.org/support/?group=gnutls"
 DEPENDS = "zlib lzo libtasn1 libgcrypt (>= 1.4.2) libcap readline"
 
-INC_PR = "r6"
+INC_PR = "r7"
 
 LICENSE = "GPLv3+ & LGPLv2.1+"
 LICENSE_${PN} = "LGPLv2.1+"
@@ -15,7 +15,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504 \
                     file://lib/COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343 \
                     file://libextra/COPYING;md5=d32239bcb673463ab874e80d47fae504"
 
-SRC_URI = "ftp://ftp.gnutls.org/pub/gnutls/gnutls-${PV}.tar.bz2"
+SRC_URI = "${GNU_MIRROR}/gnutls/gnutls-${PV}.tar.bz2"
 
 inherit autotools binconfig pkgconfig gettext
 
-- 
1.7.9.5


