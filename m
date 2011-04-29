Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 20C3F4C80ABA
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 01:30:00 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Apr 2011 23:29:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,285,1301900400"; d="scan'208";a="685797326"
Received: from unknown (HELO localhost) ([10.255.13.24])
	by fmsmga002.fm.intel.com with ESMTP; 28 Apr 2011 23:29:59 -0700
Message-Id: <c2969bb531d70f817deeb1197c28f619bc373ebe.1304058397.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1304058397.git.dvhart@linux.intel.com>
References: <cover.1304058397.git.dvhart@linux.intel.com>
Old-Date: Thu, 28 Apr 2011 21:52:50 -0700
Date: Thu, 28 Apr 2011 23:29:58 -0700
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 2/2] logging: delete the oe(note|warn|fatal|debug) functions
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
X-List-Received-Date: Fri, 29 Apr 2011 06:30:00 -0000

From: Darren Hart <dvhart@linux.intel.com>

The new logging.bbclass replaces the oe* logging functions with bb* equivalents.
There are no longer any users of the oe* API within oe-core. Remove the oe*
functions.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/classes/base.bbclass |   27 +--------------------------
 1 files changed, 1 insertions(+), 26 deletions(-)

diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass
index b05ebff..5c7c1bb 100644
--- a/meta/classes/base.bbclass
+++ b/meta/classes/base.bbclass
@@ -37,32 +37,7 @@ python sys_path_eh () {
 addhandler sys_path_eh
 
 die() {
-	oefatal "$*"
-}
-
-oenote() {
-	echo "NOTE:" "$*"
-}
-
-oewarn() {
-	echo "WARNING:" "$*"
-}
-
-oefatal() {
-	echo "FATAL:" "$*"
-	exit 1
-}
-
-oedebug() {
-	if [ $# -lt 2]; then
-		echo "Usage: oedebug level \"message\""
-		exit 1
-	fi
-
-	if [ ${OEDEBUG:-0} -ge $1 ]; then
-		shift
-		echo "DEBUG:" $*
-	fi
+	bbfatal "$*"
 }
 
 oe_runmake() {
-- 
1.7.1


