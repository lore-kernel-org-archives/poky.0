Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 03FB14C811F1
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:27:10 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 23 Dec 2010 06:27:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="639786526"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by fmsmga002.fm.intel.com with ESMTP; 23 Dec 2010 06:27:10 -0800
Message-Id: <e23882d0a955d97c1c372fbd7b253d66094b39b9.1293114004.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293114003.git.sgw@linux.intel.com>
References: <cover.1293114003.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Old-Date: Wed, 22 Dec 2010 15:50:43 -0800
Date: Thu, 23 Dec 2010  6:27:10 -0800
To: poky@yoctoproject.org
Subject: [PATCH 11/28] apr: add configure for NODELAY to mips-common
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
X-List-Received-Date: Thu, 23 Dec 2010 14:27:11 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta/site/mips-common |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/site/mips-common b/meta/site/mips-common
index 85e4696..6408baa 100644
--- a/meta/site/mips-common
+++ b/meta/site/mips-common
@@ -29,3 +29,6 @@ ac_cv_alignof_CORBA_struct=1
 # dpkg
 dpkg_cv_va_copy=${ac_cv_va_copy=yes}
 dpkg_cv___va_copy=${ac_cv___va_copy=yes}
+
+# apr
+apr_cv_tcp_nodelay_with_cork=${apr_cv_tcp_nodelay_with_cork=yes}
-- 
1.7.2.3


