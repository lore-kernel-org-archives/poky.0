Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id BC5B94C800FB
	for <poky@yoctoproject.org>; Fri,  4 Feb 2011 02:54:21 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 04 Feb 2011 00:54:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,425,1291622400"; d="scan'208";a="703976337"
Received: from unknown (HELO localhost) ([10.255.16.164])
	by orsmga001.jf.intel.com with ESMTP; 04 Feb 2011 00:54:20 -0800
Message-Id: <f851c9f0eafd5a665ec67411285106a78bc12001.1296808673.git.josh@linux.intel.com>
In-Reply-To: <cover.1296808673.git.josh@linux.intel.com>
References: <cover.1296808673.git.josh@linux.intel.com>
Old-Date: Wed, 19 Jan 2011 17:20:46 +0000
Date: Fri, 04 Feb 2011  8:54:14 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 09/13] bitbake/crumbs: update documentation header
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
X-List-Received-Date: Fri, 04 Feb 2011 08:54:21 -0000

From: Joshua Lock <josh@linux.intel.com>

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/ui/crumbs/__init__.py |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/ui/crumbs/__init__.py b/bitbake/lib/bb/ui/crumbs/__init__.py
index a4805ed..b7cbe1a 100644
--- a/bitbake/lib/bb/ui/crumbs/__init__.py
+++ b/bitbake/lib/bb/ui/crumbs/__init__.py
@@ -1,5 +1,5 @@
 #
-# BitBake UI Implementation
+# Gtk+ UI pieces for BitBake
 #
 # Copyright (C) 2006-2007 Richard Purdie
 #
-- 
1.7.4


