Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14190E0089B; Wed, 31 Dec 2014 10:31:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1194 seconds by postgrey-1.32 at yocto-www;
	Wed, 31 Dec 2014 10:31:35 PST
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19D1BE00832
	for <poky@yoctoproject.org>; Wed, 31 Dec 2014 10:31:35 -0800 (PST)
Received: from [99.240.204.5] (port=42300 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Y6Nk9-00040m-QH; Wed, 31 Dec 2014 13:11:37 -0500
Date: Wed, 31 Dec 2014 13:11:35 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: poky@yoctoproject.org
Message-ID: <alpine.LFD.2.11.1412311308240.26382@localhost>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: [PATCH][meta-yocto] Aesthetic fixes to BSP help.py script.
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
X-List-Received-Date: Wed, 31 Dec 2014 18:31:47 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


A little, innocuous tidying up of the help.py script:

 * Spelling mistakes.
 * Correct command name from "yocto bsp" to "yocto-bsp"
 * etc

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  i will let tom be the final arbiter of what is worth applying.

diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
index 4cce100..26f54b7 100644
--- a/scripts/lib/bsp/help.py
+++ b/scripts/lib/bsp/help.py
@@ -102,7 +102,7 @@ yocto_bsp_create_usage = """
  Create a new Yocto BSP

  usage: yocto-bsp create <bsp-name> <karch> [-o <DIRNAME> | --outdir <DIRNAME>]
-            [-i <JSON PROPERTY FILE> | --infile <JSON PROPERTY_FILE>]
+            [-i <JSON PROPERTY FILE> | --infile <JSON PROPERTY FILE>]

  This command creates a Yocto BSP based on the specified parameters.
  The new BSP will be a new Yocto BSP layer contained by default within
@@ -113,14 +113,14 @@ yocto_bsp_create_usage = """
  The value of the 'karch' parameter determines the set of files that
  will be generated for the BSP, along with the specific set of
  'properties' that will be used to fill out the BSP-specific portions
- of the BSP.  The possible values for the 'karch' paramter can be
+ of the BSP.  The possible values for the 'karch' parameter can be
  listed via 'yocto-bsp list karch'.

  NOTE: Once created, you should add your new layer to your
  bblayers.conf file in order for it to be subsequently seen and
  modified by the yocto-kernel tool.

- See 'yocto bsp help create' for more detailed instructions.
+ See 'yocto-bsp help create' for more detailed instructions.
 """

 yocto_bsp_create_help = """
@@ -130,7 +130,7 @@ NAME

 SYNOPSIS
     yocto-bsp create <bsp-name> <karch> [-o <DIRNAME> | --outdir <DIRNAME>]
-        [-i <JSON PROPERTY FILE> | --infile <JSON PROPERTY_FILE>]
+        [-i <JSON PROPERTY FILE> | --infile <JSON PROPERTY FILE>]

 DESCRIPTION
     This command creates a Yocto BSP based on the specified
@@ -142,7 +142,7 @@ DESCRIPTION
     The value of the 'karch' parameter determines the set of files
     that will be generated for the BSP, along with the specific set of
     'properties' that will be used to fill out the BSP-specific
-    portions of the BSP.  The possible values for the 'karch' paramter
+    portions of the BSP.  The possible values for the 'karch' parameter
     can be listed via 'yocto-bsp list karch'.

     The BSP-specific properties that define the values that will be
@@ -155,7 +155,7 @@ DESCRIPTION
     be used as values for BSP generation.

     The set of properties available for a given architecture can be
-    listed using the 'yocto-bsp list' command.
+    listed using the 'yocto-bsp list <karch> properties' command.

     Specifying -c causes the Python code generated and executed to
     create the BSP to be dumped to the 'bspgen.out' file in the
@@ -182,24 +182,24 @@ yocto_bsp_list_usage = """

  usage: yocto-bsp list karch
         yocto-bsp list <karch> properties
-                [-o <JSON PROPERTY FILE> | --outfile <JSON PROPERTY_FILE>]
+                [-o <JSON PROPERTY FILE> | --outfile <JSON PROPERTY FILE>]
         yocto-bsp list <karch> property <xxx>
-                [-o <JSON PROPERTY FILE> | --outfile <JSON PROPERTY_FILE>]
+                [-o <JSON PROPERTY FILE> | --outfile <JSON PROPERTY FILE>]

  This command enumerates the complete set of possible values for a
  specified option or property needed by the BSP creation process.

  The first form enumerates all the possible values that exist and can
- be specified for the 'karch' parameter to the 'yocto bsp create'
+ be specified for the 'karch' parameter to the 'yocto-bsp create'
  command.

  The second form enumerates all the possible properties that exist and
- must have values specified for them in the 'yocto bsp create' command
+ must have values specified for them in the 'yocto-bsp create' command
  for the given 'karch'.

  The third form enumerates all the possible values that exist and can
  be specified for any of the enumerable properties of the given
- 'karch' in the 'yocto bsp create' command.
+ 'karch' in the 'yocto-bsp create' command.

  See 'yocto-bsp help list' for more details.
 """
@@ -212,17 +212,17 @@ NAME
 SYNOPSIS
     yocto-bsp list karch
     yocto-bsp list <karch> properties
-            [--o <JSON PROPERTY FILE> | -outfile <JSON PROPERTY_FILE>]
+            [--o <JSON PROPERTY FILE> | -outfile <JSON PROPERTY FILE>]
     yocto-bsp list <karch> property <xxx>
-            [--o <JSON PROPERTY FILE> | -outfile <JSON PROPERTY_FILE>]
+            [--o <JSON PROPERTY FILE> | -outfile <JSON PROPERTY FILE>]

 DESCRIPTION
     This command enumerates the complete set of possible values for a
     specified option or property needed by the BSP creation process.

     The first form enumerates all the possible values that exist and
-    can be specified for the 'karch' parameter to the 'yocto bsp
-    create' command.  Example output for the 'list karch' command:
+    can be specified for the 'karch' parameter to the 'yocto-bsp create'
+    command.  Example output for the 'list karch' subcommand:

     $ yocto-bsp list karch
     Architectures available:
@@ -235,7 +235,7 @@ DESCRIPTION
         qemu

     The second form enumerates all the possible properties that exist
-    and must have values specified for them in the 'yocto bsp create'
+    and must have values specified for them in the 'yocto-bsp create'
     command for the given 'karch'.  This command is mainly meant to
     allow the development user interface alternatives to the default
     text-based prompting interface.  If the -o option is specified,
@@ -301,7 +301,7 @@ DESCRIPTION

     The third form enumerates all the possible values that exist and
     can be specified for any of the enumerable properties of the given
-    'karch' in the 'yocto bsp create' command.  If the -o option is
+    'karch' in the 'yocto-bsp create' command.  If the -o option is
     specified, the list of values for the given property, in addition
     to being displayed, will be written to the specified file as a
     JSON object.  In this case, the object will consist of the set of
@@ -384,7 +384,7 @@ yocto_kernel_config_list_usage = """
  items which are eligible for modification or removal by other
  yocto-kernel commands.

- 'modifiable' config items are the config items contained a BSP's
+ 'modifiable' config items are the config items contained in a BSP's
  user-config.cfg base config.
 """

@@ -432,7 +432,7 @@ DESCRIPTION
     NOTE: It's up to the user to determine whether or not the config
     options being added make sense or not - this command does no
     sanity checking or verification of any kind to ensure that a
-    config option really makes sense and will actually be set in in
+    config option really makes sense and will actually be set in
     the final config.  For example, if a config option depends on
     other config options, it will be turned off by kconfig if the
     other options aren't set correctly.
@@ -820,7 +820,7 @@ yocto_layer_create_usage = """

  usage: yocto-layer create <layer-name> [layer_priority]
             [-o <DIRNAME> | --outdir <DIRNAME>]
-            [-i <JSON PROPERTY FILE> | --infile <JSON PROPERTY_FILE>]
+            [-i <JSON PROPERTY FILE> | --infile <JSON PROPERTY FILE>]

  This command creates a generic Yocto layer based on the specified
  parameters.  The new layer will be a new Yocto layer contained by
@@ -849,7 +849,7 @@ NAME
 SYNOPSIS
     yocto-layer create <layer-name> [layer_priority]
         [-o <DIRNAME> | --outdir <DIRNAME>]
-        [-i <JSON PROPERTY FILE> | --infile <JSON PROPERTY_FILE>]
+        [-i <JSON PROPERTY FILE> | --infile <JSON PROPERTY FILE>]

 DESCRIPTION
     This command creates a generic Yocto layer based on the specified
@@ -900,9 +900,9 @@ DESCRIPTION
 yocto_layer_list_usage = """

  usage: yocto-layer list properties
-                [-o <JSON PROPERTY FILE> | --outfile <JSON PROPERTY_FILE>]
+                [-o <JSON PROPERTY FILE> | --outfile <JSON PROPERTY FILE>]
         yocto-layer list property <xxx>
-                [-o <JSON PROPERTY FILE> | --outfile <JSON PROPERTY_FILE>]
+                [-o <JSON PROPERTY FILE> | --outfile <JSON PROPERTY FILE>]

  This command enumerates the complete set of possible values for a
  specified option or property needed by the layer creation process.
@@ -925,9 +925,9 @@ NAME

 SYNOPSIS
     yocto-layer list properties
-            [--o <JSON PROPERTY FILE> | -outfile <JSON PROPERTY_FILE>]
+            [--o <JSON PROPERTY FILE> | -outfile <JSON PROPERTY FILE>]
     yocto-layer list property <xxx>
-            [--o <JSON PROPERTY FILE> | -outfile <JSON PROPERTY_FILE>]
+            [--o <JSON PROPERTY FILE> | -outfile <JSON PROPERTY FILE>]

 DESCRIPTION
     This command enumerates the complete set of possible values for a

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

