Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A0A8E4C8008C
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 21:34:27 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 31 Jan 2011 19:34:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,407,1291622400"; d="scan'208";a="653109160"
Received: from unknown (HELO localhost) ([10.255.14.127])
	by fmsmga002.fm.intel.com with ESMTP; 31 Jan 2011 19:34:27 -0800
Message-Id: <d9dbcd9566cabc3788de965f725de71205742859.1296531081.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1296531081.git.tom.zanussi@intel.com>
References: <cover.1296531081.git.tom.zanussi@intel.com>
Old-Date: Mon, 31 Jan 2011 20:40:15 -0600
Date: Mon, 31 Jan 2011 21:34:25 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/1] site/x86_x64: add entry to fix x86_64 compile errors
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
X-List-Received-Date: Tue, 01 Feb 2011 03:34:27 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add entries for va_copy and __va_copy to fix rpm 5.4.0 compile errors
on x86_64.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/site/x86_64-linux |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/site/x86_64-linux b/meta/site/x86_64-linux
index fd7dcfa..9c9e0f8 100644
--- a/meta/site/x86_64-linux
+++ b/meta/site/x86_64-linux
@@ -118,3 +118,7 @@ nfsd_cv_bsd_signals=${nfsd_cv_bsd_signals=yes}
 #apr
 apr_cv_tcp_nodelay_with_cork=${apr_cv_tcp_nodelay_with_cork=yes}
 
+# rpm
+rpm_ac_cv_va_copy=${ac_cv_va_copy=yes}
+rpm_ac_cv___va_copy=${ac_cv___va_copy=yes}
+
-- 
1.7.0.4


