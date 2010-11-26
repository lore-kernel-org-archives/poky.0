Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 370024C8110E
	for <poky@pokylinux.org>; Thu, 25 Nov 2010 20:40:12 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 Nov 2010 18:40:11 -0800
Message-Id: <c6d829$plie0r@fmsmga001.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,258,1288594800"; d="scan'208";a="861485087"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.116])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2010 18:40:11 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Fri, 26 Nov 2010 10:14:23 +0800
To: poky@pokylinux.org
Subject: [PATCH 1/1] utility-tasks.bbclass: show do_listtasks's output to console
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
X-List-Received-Date: Fri, 26 Nov 2010 02:40:12 -0000

Use bb.msg.note to have output to console directly, or else it will be recorded
in the WORKDIR logfile instead. Previously it worked because we didn't log
python tasks

Fix [BUGID #548], [BUGID #361]

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 meta/classes/utility-tasks.bbclass |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/classes/utility-tasks.bbclass b/meta/classes/utility-tasks.bbclass
index 205a206..b922a7f 100644
--- a/meta/classes/utility-tasks.bbclass
+++ b/meta/classes/utility-tasks.bbclass
@@ -5,9 +5,11 @@ python do_listtasks() {
 	# emit variables and shell functions
 	#bb.data.emit_env(sys.__stdout__, d)
 	# emit the metadata which isnt valid shell
+        msg = ""
 	for e in d.keys():
 		if bb.data.getVarFlag(e, 'task', d):
-			sys.__stdout__.write("%s\n" % e)
+			msg += "%s\n" % e
+        bb.msg.note(1, bb.msg.domain.Cache, "available task list:\n%s" % msg)
 }
 
 CLEANFUNCS ?= ""
-- 
1.6.0.4


