Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B8E4E00D0B; Mon, 23 Oct 2017 09:34:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70F72E00CF2
	for <poky@yoctoproject.org>; Mon, 23 Oct 2017 09:34:30 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Oct 2017 09:34:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,423,1503385200"; 
   d="scan'208";a="1151378"
Received: from jlock-mobl3.ld.intel.com ([10.103.239.29])
	by orsmga002.jf.intel.com with ESMTP; 23 Oct 2017 09:34:29 -0700
From: Joshua Lock <joshua.g.lock@intel.com>
To: poky@yoctoproject.org
Date: Mon, 23 Oct 2017 17:34:20 +0100
Message-Id: <f24cd3d6c05d1e7876b043d87038e86a288ea77c.1508776260.git.joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.13.6
In-Reply-To: <cover.1508776260.git.joshua.g.lock@intel.com>
References: <cover.1508776260.git.joshua.g.lock@intel.com>
Subject: [PATCH 3/5] yocto-layer: remove this tool
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
X-List-Received-Date: Mon, 23 Oct 2017 16:34:31 -0000

The bitake-layers tool in bitbake is much more featurful, widely used and
better maintained.

Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
---
 scripts/yocto-layer | 151 ----------------------------------------------------
 1 file changed, 151 deletions(-)
 delete mode 100755 scripts/yocto-layer

diff --git a/scripts/yocto-layer b/scripts/yocto-layer
deleted file mode 100755
index d58faca..0000000
--- a/scripts/yocto-layer
+++ /dev/null
@@ -1,151 +0,0 @@
-#!/usr/bin/env python3
-# ex:ts=4:sw=4:sts=4:et
-# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
-#
-# Copyright (c) 2012, Intel Corporation.
-# All rights reserved.
-#
-# This program is free software; you can redistribute it and/or modify
-# it under the terms of the GNU General Public License version 2 as
-# published by the Free Software Foundation.
-#
-# This program is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
-#
-# You should have received a copy of the GNU General Public License along
-# with this program; if not, write to the Free Software Foundation, Inc.,
-# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
-#
-# DESCRIPTION
-# 'yocto-layer' is the Yocto Tool that helps users create a new Yocto
-# layer.  Invoking it without any arguments will display help screens
-# for the 'yocto-layer' command and list the available 'yocto-layer'
-# subcommands.  Invoking a subcommand without any arguments will
-# likewise display help screens for the specified subcommand.  Please
-# use that interface for detailed help.
-#
-# AUTHORS
-# Tom Zanussi <tom.zanussi (at] intel.com>
-#
-
-__version__ = "0.1.0"
-
-import os
-import sys
-import optparse
-import logging
-
-scripts_path = os.path.abspath(os.path.dirname(os.path.abspath(sys.argv[0])))
-lib_path = scripts_path + '/lib'
-sys.path = sys.path + [lib_path]
-
-from bsp.help import *
-from bsp.engine import *
-
-
-def yocto_layer_create_subcommand(args, usage_str):
-    """
-    Command-line handling for layer creation.  The real work is done by
-    bsp.engine.yocto_layer_create()
-    """
-    parser = optparse.OptionParser(usage = usage_str)
-
-    parser.add_option("-o", "--outdir", dest = "outdir", action = "store",
-                      help = "name of layer dir to create")
-    parser.add_option("-i", "--infile", dest = "properties_file", action = "store",
-                      help = "name of file containing the values for layer input properties as a JSON file")
-    parser.add_option("-c", "--codedump", dest = "codedump", action = "store_true",
-                      default = False, help = "dump the generated code to layergen.out")
-    (options, args) = parser.parse_args(args)
-
-    if len(args) < 1 or len(args) > 2:
-        logging.error("Wrong number of arguments, exiting\n")
-        parser.print_help()
-        sys.exit(1)
-
-    layer_name = args[0]
-    properties = ""
-
-    if len(args) == 2:
-        layer_priority = args[1]
-        properties = '{"layer_priority":"' + layer_priority + '"}'
-
-    if options.outdir:
-        layer_output_dir = options.outdir
-    else:
-        prefix="meta-"
-        if not layer_name.startswith(prefix):
-            layer_output_dir="%s%s"%(prefix,layer_name)
-        else:
-            layer_output_dir=layer_name
-
-    yocto_layer_create(layer_name, scripts_path, layer_output_dir, options.codedump, options.properties_file, properties)
-
-
-def yocto_layer_list_subcommand(args, usage_str):
-    """
-    Command-line handling for listing available layer properties and
-    values.  The real work is done by bsp.engine.yocto_layer_list()
-    """
-    parser = optparse.OptionParser(usage = usage_str)
-
-    parser.add_option("-o", "--outfile", action = "store", dest = "properties_file",
-                      help = "dump the possible values for layer properties to a JSON file")
-
-    (options, args) = parser.parse_args(args)
-
-    if not yocto_layer_list(args, scripts_path, options.properties_file):
-        logging.error("Bad list arguments, exiting\n")
-        parser.print_help()
-        sys.exit(1)
-
-
-subcommands = {
-    "create": [yocto_layer_create_subcommand,
-               yocto_layer_create_usage,
-               yocto_layer_create_help],
-    "list":   [yocto_layer_list_subcommand,
-               yocto_layer_list_usage,
-               yocto_layer_list_help],
-}
-
-
-def start_logging(loglevel):
-    logging.basicConfig(filename = 'yocto-layer.log', filemode = 'w', level=loglevel)
-
-
-def main():
-    parser = optparse.OptionParser(version = "yocto-layer version %s" % __version__,
-                                   usage = yocto_layer_usage)
-
-    parser.disable_interspersed_args()
-    parser.add_option("-D", "--debug", dest = "debug", action = "store_true",
-                      default = False, help = "output debug information")
-
-    (options, args) = parser.parse_args()
-
-    loglevel = logging.INFO
-    if options.debug:
-        loglevel = logging.DEBUG
-    start_logging(loglevel)
-
-    if len(args):
-        if args[0] == "help":
-            if len(args) == 1:
-                parser.print_help()
-                sys.exit(1)
-
-    invoke_subcommand(args, parser, yocto_layer_help_usage, subcommands)
-
-
-if __name__ == "__main__":
-    try:
-        ret = main()
-    except Exception:
-        ret = 1
-        import traceback
-        traceback.print_exc()
-    sys.exit(ret)
-
-- 
2.13.6


