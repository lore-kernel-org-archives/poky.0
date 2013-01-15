Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA15AE011ED
	for <poky@yoctoproject.org>; Tue, 15 Jan 2013 15:00:09 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 15 Jan 2013 15:00:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,475,1355126400"; d="scan'208";a="277325326"
Received: from unknown (HELO localhost) ([10.255.14.217])
	by fmsmga002.fm.intel.com with ESMTP; 15 Jan 2013 14:59:58 -0800
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Tue, 15 Jan 2013 16:59:57 -0600
Message-Id: <16a53f7c9f170789cff83e8585e50e307d98aa30.1358290189.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1358290189.git.tom.zanussi@intel.com>
References: <cover.1358290189.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] yocto-bsp: add basic git connectivity check
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
X-List-Received-Date: Tue, 15 Jan 2013 23:00:09 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

yocto-bsp create does a 'git ls-remote
git://git.yoctoproject.org/linux-yocto-3.4.git *heads*' to get the set
of existing branches from the kernel repo.

If the user isn't connected to the network, or if git isn't configured
sanely, yocto-bsp fails with an ugly Python backtrace.

We should try to avoid this by doing a basic sanity check for those
things before actually running the command.

The sanity check can be avoided by specifying -s on the yocto-bsp
command-line:

 $ yocto-bsp create -s test qemu

Fixes [YOCTO #3279]

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/tags.py |  2 +-
 scripts/yocto-bsp       | 13 +++++++++++++
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/scripts/lib/bsp/tags.py b/scripts/lib/bsp/tags.py
index 256b25c..6d5feb0 100644
--- a/scripts/lib/bsp/tags.py
+++ b/scripts/lib/bsp/tags.py
@@ -41,7 +41,7 @@ INPUT_TYPE_PROPERTY = "type"
 
 SRC_URI_FILE = "file://"
 
-
+GIT_CHECK_URI = "git://git.yoctoproject.org/linux-yocto-dev.git"
 
 
 
diff --git a/scripts/yocto-bsp b/scripts/yocto-bsp
index 126fc8d..d269861 100755
--- a/scripts/yocto-bsp
+++ b/scripts/yocto-bsp
@@ -58,6 +58,8 @@ def yocto_bsp_create_subcommand(args, usage_str):
                       help = "name of file containing the values for BSP properties as a JSON file")
     parser.add_option("-c", "--codedump", dest = "codedump", action = "store_true",
                       default = False, help = "dump the generated code to bspgen.out")
+    parser.add_option("-s", "--skip-git-check", dest = "git_check", action = "store_false",
+                      default = True, help = "skip the git connectivity check")
     (options, args) = parser.parse_args(args)
 
     if len(args) != 2:
@@ -73,6 +75,17 @@ def yocto_bsp_create_subcommand(args, usage_str):
     else:
         bsp_output_dir = "meta-" + machine
 
+    if options.git_check and not options.properties_file:
+        print "Checking basic git connectivity..."
+        if not verify_git_repo(GIT_CHECK_URI):
+            print "Couldn't verify git connectivity, exiting\n"
+            print "Details: couldn't access %s" % GIT_CHECK_URI
+            print "         (this most likely indicates a network connectivity problem or"
+            print "         a misconfigured git intallation)"
+            sys.exit(1)
+        else:
+            print "Done.\n"
+
     yocto_bsp_create(machine, karch, scripts_path, bsp_output_dir, options.codedump, options.properties_file)
 
 
-- 
1.7.11.4


