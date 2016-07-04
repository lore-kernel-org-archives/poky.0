Return-Path: <humberto.ibarra.lopez@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E960FE00D7C; Mon,  4 Jul 2016 13:31:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31D0EE00D7A
	for <poky@yoctoproject.org>; Mon,  4 Jul 2016 13:31:45 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 04 Jul 2016 13:31:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,576,1459839600"; d="scan'208";a="1000866438"
Received: from jhibarra-mobl1.zpn.intel.com ([10.219.16.231])
	by fmsmga001.fm.intel.com with ESMTP; 04 Jul 2016 13:31:44 -0700
From: Humberto Ibarra <humberto.ibarra.lopez@intel.com>
To: poky@yoctoproject.org
Date: Mon,  4 Jul 2016 15:33:34 -0500
Message-Id: <1467664414-8042-4-git-send-email-humberto.ibarra.lopez@intel.com>
X-Mailer: git-send-email 2.4.11
In-Reply-To: <1467664414-8042-1-git-send-email-humberto.ibarra.lopez@intel.com>
References: <1467664414-8042-1-git-send-email-humberto.ibarra.lopez@intel.com>
Subject: [PATCH 3/3] scripts/lib/bsp/help.py: Changed help of yocto-bsp to match latest syntax
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
X-List-Received-Date: Mon, 04 Jul 2016 20:31:47 -0000

With the changes to migrate from optparse to argparse there was a syntax change that needs an update in the help. This is basically just the change of 'properties' and 'property' from positional arguments to options. This patch makes the required changes.

[YOCTO #8321]

Signed-off-by: Humberto Ibarra <humberto.ibarra.lopez@intel.com>
---
 scripts/lib/bsp/help.py | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
index 85a09dd..36d09db 100644
--- a/scripts/lib/bsp/help.py
+++ b/scripts/lib/bsp/help.py
@@ -183,9 +183,9 @@ DESCRIPTION
 yocto_bsp_list_usage = """
 
  usage: yocto-bsp list karch
-        yocto-bsp list <karch> properties
+        yocto-bsp list <karch> --properties
                 [-o <JSON PROPERTY FILE> | --outfile <JSON PROPERTY_FILE>]
-        yocto-bsp list <karch> property <xxx>
+        yocto-bsp list <karch> --property <xxx>
                 [-o <JSON PROPERTY FILE> | --outfile <JSON PROPERTY_FILE>]
 
  This command enumerates the complete set of possible values for a
@@ -213,9 +213,9 @@ NAME
 
 SYNOPSIS
     yocto-bsp list karch
-    yocto-bsp list <karch> properties
+    yocto-bsp list <karch> --properties
             [--o <JSON PROPERTY FILE> | -outfile <JSON PROPERTY_FILE>]
-    yocto-bsp list <karch> property <xxx>
+    yocto-bsp list <karch> --property <xxx>
             [--o <JSON PROPERTY FILE> | -outfile <JSON PROPERTY_FILE>]
 
 DESCRIPTION
@@ -246,9 +246,9 @@ DESCRIPTION
     object will consist of the set of name:value pairs corresponding
     to the (possibly nested) dictionary of properties defined by the
     input statements used by the BSP.  Some example output for the
-    'list properties' command:
+    'list --properties' command:
 
-    $ yocto-bsp list arm properties
+    $ yocto-bsp list arm --properties
     "touchscreen" : {
         "msg" : Does your BSP have a touchscreen? (y/N)
         "default" : n
@@ -310,11 +310,11 @@ DESCRIPTION
     name:value pairs corresponding to the array of property values
     associated with the property.
 
-    $ yocto-bsp list i386 property xserver_choice
+    $ yocto-bsp list i386 --property xserver_choice
         ["xserver_vesa", "VESA xserver support"]
         ["xserver_i915", "i915 xserver support"]
 
-    $ yocto-bsp list arm property base_kbranch_linux_yocto_3_0
+    $ yocto-bsp list arm --property base_kbranch_linux_yocto_3_0
         Getting branches from remote repo git://git.yoctoproject.org/linux-yocto-3.0...
         ["yocto/base", "yocto/base"]
         ["yocto/eg20t", "yocto/eg20t"]
-- 
2.4.11


