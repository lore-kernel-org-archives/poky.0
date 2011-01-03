Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 066ED4C80039
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 11:48:44 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Jan 2011 09:48:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,267,1291622400"; d="scan'208";a="693119214"
Received: from doubt.jf.intel.com (HELO localhost) ([10.7.199.57])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 09:48:44 -0800
Message-Id: <86b97057e4aef110aca45aa06a6b88bb9267f70f.1294076797.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1294076797.git.dvhart@linux.intel.com>
References: <cover.1294076797.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Mon, 3 Jan 2011 09:39:23 -0800
To: poky@yoctoproject.org,sgw@linux.intel.com
Subject: [PATCH 2/4] trace-cmd: license file updates
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
X-List-Received-Date: Mon, 03 Jan 2011 17:48:45 -0000

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/recipes-kernel/trace-cmd/trace-cmd_git.bb |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb b/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb
index a7eca5f..bc03b0c 100644
--- a/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb
+++ b/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb
@@ -1,6 +1,7 @@
 DESCRIPTION = "User interface to Ftrace"
-LICENSE = "GPL"
-LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
+                    file://trace-cmd.c;beginline=6;endline=8;md5=2c22c965a649ddd7973d7913c5634a5e"
 
 PR = r2
 PV = "1.0.4+git${SRCPV}"
-- 
1.7.1


