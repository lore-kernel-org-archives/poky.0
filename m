Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4DA0A4C80A7C
	for <poky@yoctoproject.org>; Mon, 25 Apr 2011 14:36:54 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Apr 2011 12:36:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,266,1301900400"; d="scan'208";a="738223839"
Received: from doubt.jf.intel.com (HELO localhost) ([10.7.199.56])
	by orsmga001.jf.intel.com with ESMTP; 25 Apr 2011 12:36:48 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 25 Apr 2011 12:36:42 -0700
Message-Id: <e94f1c19336bce10ad36f5022c6b4f84c2d175fd.1303760083.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1303760083.git.dvhart@linux.intel.com>
References: <cover.1303760083.git.dvhart@linux.intel.com>
Cc: Chris Larson <clarson@kergoth.com>, Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/3] logging: fix oedebug loglevel test
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
X-List-Received-Date: Mon, 25 Apr 2011 19:36:54 -0000

When the existing test for loglevel fails, the syntax used results in the recipe
exiting with a silent failure. Performing any bash command after the test block
resolves the problem, such as "shift" or "echo ''". Rewriting with 'if []; then'
blocks provides a cleaner syntax and also resolves the failure.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/classes/base.bbclass |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass
index 2157fe9..374ca04 100644
--- a/meta/classes/base.bbclass
+++ b/meta/classes/base.bbclass
@@ -53,15 +53,15 @@ oefatal() {
 }
 
 oedebug() {
-	test $# -ge 2 || {
+	if [ $# -lt 2]; then
 		echo "Usage: oedebug level \"message\""
 		exit 1
-	}
+	fi
 
-	test ${OEDEBUG:-0} -ge $1 && {
+	if [ ${OEDEBUG:-0} -ge $1 ]; then
 		shift
 		echo "DEBUG:" $*
-	}
+	fi
 }
 
 oe_runmake() {
-- 
1.7.1


