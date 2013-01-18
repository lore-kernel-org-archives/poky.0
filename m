Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2B2EE006C3
	for <poky@yoctoproject.org>; Fri, 18 Jan 2013 10:27:17 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 18 Jan 2013 10:27:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,494,1355126400"; d="scan'208";a="192720195"
Received: from unknown (HELO localhost) ([10.255.14.191])
	by AZSMGA002.ch.intel.com with ESMTP; 18 Jan 2013 10:27:16 -0800
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Fri, 18 Jan 2013 12:27:08 -0600
Message-Id: <8d79bfce08ce1b0f94cbfd79907cb1208ed35850.1357935675.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <1d1bf17bacd100d0ad849607863157e017617754.1357935675.git.tom.zanussi@intel.com>
References: <1d1bf17bacd100d0ad849607863157e017617754.1357935675.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1357935675.git.tom.zanussi@intel.com>
References: <cover.1357935675.git.tom.zanussi@intel.com>
Subject: [PATCH 2/7] yocto-layer: new script
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
X-List-Received-Date: Fri, 18 Jan 2013 18:27:17 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Implementation of the 'yocto-layer' command-line tool, for creating
generic layers and listing their input properties.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/yocto-layer | 142 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 142 insertions(+)
 create mode 100755 scripts/yocto-layer

diff --git a/scripts/yocto-layer b/scripts/yocto-layer
new file mode 100755
index 0000000..f759275
--- /dev/null
+++ b/scripts/yocto-layer
@@ -0,0 +1,142 @@
+#!/usr/bin/env python
+# ex:ts=4:sw=4:sts=4:et
+# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
+#
+# Copyright (c) 2012, Intel Corporation.
+# All rights reserved.
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+#
+# DESCRIPTION
+# 'yocto-layer' is the Yocto Tool that helps users create a new Yocto
+# layer.  Invoking it without any arguments will display help screens
+# for the 'yocto-layer' command and list the available 'yocto-layer'
+# subcommands.  Invoking a subcommand without any arguments will
+# likewise display help screens for the specified subcommand.  Please
+# use that interface for detailed help.
+#
+# AUTHORS
+# Tom Zanussi <tom.zanussi (at] intel.com>
+#
+
+__version__ = "0.1.0"
+
+import os
+import sys
+import optparse
+import logging
+
+scripts_path = os.path.abspath(os.path.dirname(os.path.abspath(sys.argv[0])))
+lib_path = scripts_path + '/lib'
+sys.path = sys.path + [lib_path]
+
+from bsp.help import *
+from bsp.engine import *
+
+
+def yocto_layer_create_subcommand(args, usage_str):
+    """
+    Command-line handling for layer creation.  The real work is done by
+    bsp.engine.yocto_layer_create()
+    """
+    parser = optparse.OptionParser(usage = usage_str)
+
+    parser.add_option("-o", "--outdir", dest = "outdir", action = "store",
+                      help = "name of layer dir to create")
+    parser.add_option("-i", "--infile", dest = "properties_file", action = "store",
+                      help = "name of file containing the values for layer input properties as a JSON file")
+    parser.add_option("-c", "--codedump", dest = "codedump", action = "store_true",
+                      default = False, help = "dump the generated code to layergen.out")
+    (options, args) = parser.parse_args(args)
+
+    if len(args) != 1:
+        logging.error("Wrong number of arguments, exiting\n")
+        parser.print_help()
+        sys.exit(1)
+
+    layer_name = args[0]
+
+    if options.outdir:
+        layer_output_dir = options.outdir
+    else:
+        layer_output_dir = "meta-" + layer_name
+
+    yocto_layer_create(layer_name, scripts_path, layer_output_dir, options.codedump, options.properties_file)
+
+
+def yocto_layer_list_subcommand(args, usage_str):
+    """
+    Command-line handling for listing available layer properties and
+    values.  The real work is done by bsp.engine.yocto_layer_list()
+    """
+    parser = optparse.OptionParser(usage = usage_str)
+
+    parser.add_option("-o", "--outfile", action = "store", dest = "properties_file",
+                      help = "dump the possible values for layer properties to a JSON file")
+
+    (options, args) = parser.parse_args(args)
+
+    if not yocto_layer_list(args, scripts_path, options.properties_file):
+        logging.error("Bad list arguments, exiting\n")
+        parser.print_help()
+        sys.exit(1)
+
+
+subcommands = {
+    "create": [yocto_layer_create_subcommand,
+               yocto_layer_create_usage,
+               yocto_layer_create_help],
+    "list":   [yocto_layer_list_subcommand,
+               yocto_layer_list_usage,
+               yocto_layer_list_help],
+}
+
+
+def start_logging(loglevel):
+    logging.basicConfig(filname = 'yocto-layer.log', filemode = 'w', level=loglevel)
+
+
+def main():
+    parser = optparse.OptionParser(version = "yocto-layer version %s" % __version__,
+                                   usage = yocto_layer_usage)
+
+    parser.disable_interspersed_args()
+    parser.add_option("-D", "--debug", dest = "debug", action = "store_true",
+                      default = False, help = "output debug information")
+
+    (options, args) = parser.parse_args()
+
+    loglevel = logging.INFO
+    if options.debug:
+        loglevel = logging.DEBUG
+    start_logging(loglevel)
+
+    if len(args):
+        if args[0] == "help":
+            if len(args) == 1:
+                parser.print_help()
+                sys.exit(1)
+
+    invoke_subcommand(args, parser, yocto_layer_help_usage, subcommands)
+
+
+if __name__ == "__main__":
+    try:
+        ret = main()
+    except Exception:
+        ret = 1
+        import traceback
+        traceback.print_exc(5)
+    sys.exit(ret)
+
-- 
1.7.11.4


