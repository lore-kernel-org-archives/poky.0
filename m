Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A75A14C8121C
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:54 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="693216404"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
Message-Id: <e28051a23b1bb510cf2a078a7d05d35126af07b1.1294099430.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Liping Ke <liping.ke@intel.com>
Date: Sat, 25 Dec 2010 05:12:16 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 48/59] Removde Debug options from installer script
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
X-List-Received-Date: Mon, 03 Jan 2011 23:47:54 -0000

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 .../installer/adt-installer/yocto_installer        |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/installer/adt-installer/yocto_installer b/meta/recipes-devtools/installer/adt-installer/yocto_installer
index fc08245..d15d2f7 100755
--- a/meta/recipes-devtools/installer/adt-installer/yocto_installer
+++ b/meta/recipes-devtools/installer/adt-installer/yocto_installer
@@ -1,4 +1,4 @@
-#!/bin/bash -x
+#!/bin/bash
 # Yocto ADT Installer
 #
 # Copyright (C) 2010 Intel Corp.
-- 
1.7.0.4


