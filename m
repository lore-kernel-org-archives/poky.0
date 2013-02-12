Return-Path: <cristiana.voicu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89778E006C9
	for <poky@yoctoproject.org>; Tue, 12 Feb 2013 02:07:02 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Feb 2013 02:07:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,648,1355126400"; d="scan'208";a="255826440"
Received: from cvoicu-vostro-460 (HELO localhost.localdomain)
	([10.237.105.151])
	by azsmga001.ch.intel.com with ESMTP; 12 Feb 2013 02:06:56 -0800
From: Cristiana Voicu <cristiana.voicu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Feb 2013 12:10:55 +0200
Message-Id: <1360663856-9506-1-git-send-email-cristiana.voicu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] sanity.bbclass: when bblayers.conf is updated, it invokes a reparse
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
X-List-Received-Date: Tue, 12 Feb 2013 10:07:02 -0000

When bblayers.conf is updated(when sanity check is running), it should
tell to bitbake to reparse configuration files. I will send a patch to
bitbake-devel, with the actions needed in bitbake and hob.

[YOCTO #3213]
Signed-off-by: Cristiana Voicu <cristiana.voicu@intel.com>
---
 meta/classes/sanity.bbclass |   18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
index e1888ba..ead93a2 100644
--- a/meta/classes/sanity.bbclass
+++ b/meta/classes/sanity.bbclass
@@ -344,6 +344,7 @@ def check_sanity_validmachine(sanity_data):
 def check_sanity(sanity_data):
     import subprocess
 
+    reparse = False
     try:
         from distutils.version import LooseVersion
     except ImportError:
@@ -384,7 +385,7 @@ def check_sanity(sanity_data):
         messages = messages + 'Please set a MACHINE in your local.conf or environment\n'
         machinevalid = False
 
-    # Check we are using a valid lacal.conf
+    # Check we are using a valid local.conf
     current_conf  = sanity_data.getVar('CONF_VERSION', True)
     conf_version =  sanity_data.getVar('LOCALCONF_VERSION', True)
 
@@ -397,12 +398,8 @@ def check_sanity(sanity_data):
     if current_lconf != lconf_version:
         try:
             bb.build.exec_func("check_bblayers_conf", sanity_data)
-            if sanity_data.getVar("SANITY_USE_EVENTS", True) == "1":
-                bb.event.fire(bb.event.SanityCheckFailed("Your conf/bblayers.conf has been automatically updated. Please close and re-run."), sanity_data)
-                return
-            else:
-                bb.note("Your conf/bblayers.conf has been automatically updated. Please re-run %s." % os.path.basename(sys.argv[0]))
-                sys.exit(0)
+            bb.note("Your conf/bblayers.conf has been automatically updated.")
+            reparse = True
         except Exception:
             messages = messages + "Your version of bblayers.conf was generated from an older version of bblayers.conf.sample and there have been updates made to this file. Please compare the two files and merge any changes before continuing.\nMatching the version numbers will remove this message.\n\"meld conf/bblayers.conf ${COREBASE}/meta*/conf/bblayers.conf.sample\" is a good way to visualise the changes.\n"
 
@@ -630,6 +627,7 @@ def check_sanity(sanity_data):
 
     if messages != "":
         raise_sanity_error(sanity_data.expand(messages), sanity_data, network_error)
+    return reparse
 
 # Create a copy of the datastore and finalise it to ensure appends and 
 # overrides are set - the datastore has yet to be finalised at ConfigParsed
@@ -642,11 +640,13 @@ addhandler check_sanity_eventhandler
 python check_sanity_eventhandler() {
     if bb.event.getName(e) == "ConfigParsed" and e.data.getVar("BB_WORKERCONTEXT", True) != "1" and e.data.getVar("DISABLE_SANITY_CHECKS", True) != "1":
         sanity_data = copy_data(e)
-        check_sanity(sanity_data)
+        reparse = check_sanity(sanity_data)
+        e.data.setVar("REPARSE_NEEDED", reparse)
     elif bb.event.getName(e) == "SanityCheck":
         sanity_data = copy_data(e)
         sanity_data.setVar("SANITY_USE_EVENTS", "1")
-        check_sanity(sanity_data)
+        reparse = check_sanity(sanity_data)
+        e.data.setVar("REPARSE_NEEDED", reparse)
         bb.event.fire(bb.event.SanityCheckPassed(), e.data)
     elif bb.event.getName(e) == "NetworkTest":
         sanity_data = copy_data(e)
-- 
1.7.9.5


