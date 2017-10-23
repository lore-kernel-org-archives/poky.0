Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E57EFE00D04; Mon, 23 Oct 2017 09:34:28 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36CE5E00CF2
	for <poky@yoctoproject.org>; Mon, 23 Oct 2017 09:34:28 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Oct 2017 09:34:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,423,1503385200"; 
   d="scan'208";a="1151349"
Received: from jlock-mobl3.ld.intel.com ([10.103.239.29])
	by orsmga002.jf.intel.com with ESMTP; 23 Oct 2017 09:34:27 -0700
From: Joshua Lock <joshua.g.lock@intel.com>
To: poky@yoctoproject.org
Date: Mon, 23 Oct 2017 17:34:18 +0100
Message-Id: <0cec54cc32720916cf365acb106ee6f66ecd3635.1508776260.git.joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.13.6
In-Reply-To: <cover.1508776260.git.joshua.g.lock@intel.com>
References: <cover.1508776260.git.joshua.g.lock@intel.com>
Subject: [PATCH 1/5] yocto-bsp: remove this tool
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
X-List-Received-Date: Mon, 23 Oct 2017 16:34:28 -0000

The yocto-bsp tool is not actively maintained and requires active
feature development to make it a useful and compelling tool.

Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
---
 scripts/yocto-bsp | 163 ------------------------------------------------------
 1 file changed, 163 deletions(-)
 delete mode 100755 scripts/yocto-bsp

diff --git a/scripts/yocto-bsp b/scripts/yocto-bsp
deleted file mode 100755
index 6fb1f41..0000000
--- a/scripts/yocto-bsp
+++ /dev/null
@@ -1,163 +0,0 @@
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
-# 'yocto-bsp' is the Yocto BSP Tool that helps users create a new
-# Yocto BSP.  Invoking it without any arguments will display help
-# screens for the 'yocto-bsp' command and list the available
-# 'yocto-bsp' subcommands.  Invoking a subcommand without any
-# arguments will likewise display help screens for the specified
-# subcommand.  Please use that interface for detailed help.
-#
-# AUTHORS
-# Tom Zanussi <tom.zanussi (at] intel.com>
-#
-
-import os
-import sys
-import argparse
-import logging
-
-scripts_path = os.path.dirname(os.path.realpath(__file__))
-sys.path.insert(0, scripts_path + '/lib')
-import argparse_oe
-
-from bsp.help import *
-from bsp.engine import *
-
-
-def do_create_bsp(args):
-    """
-    Command-line handling for BSP creation.  The real work is done by
-    bsp.engine.yocto_bsp_create()
-    """
-    if args.outdir:
-        bsp_output_dir = args.outdir
-    else:
-        bsp_output_dir = "meta-" + args.bspname
-
-    if args.git_check and not args.properties_file:
-        print("Checking basic git connectivity...")
-        if not verify_git_repo(GIT_CHECK_URI):
-            print("Couldn't verify git connectivity, exiting\n")
-            print("Details: couldn't access %s" % GIT_CHECK_URI)
-            print("         (this most likely indicates a network connectivity problem or")
-            print("         a misconfigured git intallation)")
-            sys.exit(1)
-        else:
-            print("Done.\n")
-
-    yocto_bsp_create(args.bspname, args.karch, scripts_path, bsp_output_dir, args.codedump, args.properties_file)
-
-
-def do_list_bsp(args):
-    """
-    Command-line handling for listing available BSP properties and
-    values.  The real work is done by bsp.engine.yocto_bsp_list()
-    """
-    yocto_bsp_list(args, scripts_path)
-
-def do_help_bsp(args):
-    """
-    Command-line help tool
-    """
-    help_text = command_help.get(args.subcommand)
-    pager = subprocess.Popen('less', stdin=subprocess.PIPE)
-    pager.communicate(bytes(help_text,'UTF-8'))
-
-command_help = {
-    "create": yocto_bsp_create_help,
-    "list":  yocto_bsp_list_help
-}
-
-
-def start_logging(loglevel):
-    logging.basicConfig(filename = 'yocto-bsp.log', filemode = 'w', level=loglevel)
-
-
-def main():
-    parser = argparse_oe.ArgumentParser(description='Create a customized Yocto BSP layer.',
-                      epilog="See '%(prog)s help <subcommand>' for more information on a specific command.")
-
-    parser.add_argument("-D", "--debug", action = "store_true",
-                      default = False, help = "output debug information")
-    subparsers = parser.add_subparsers(title='subcommands', metavar='<subcommand>')
-    subparsers.required = True
-
-    create_parser = subparsers.add_parser('create', help='Create a new Yocto BSP',
-                                          description='Create a new Yocto BSP')
-    create_parser.add_argument('bspname', metavar='bsp-name', help='name for the new BSP')
-    create_parser.add_argument('karch', help='kernel architecture')
-    create_parser.add_argument("-o", "--outdir", help = "name of BSP dir to create")
-    create_parser.add_argument("-i", "--infile", dest = "properties_file",
-                      help = "name of file containing the values for BSP properties as a JSON file")
-    create_parser.add_argument("-c", "--codedump", action = "store_true", default = False,
-                      help = "dump the generated code to bspgen.out")
-    create_parser.add_argument("-s", "--skip-git-check", dest = "git_check", action = "store_false",
-                      default = True, help = "skip the git connectivity check")
-    create_parser.set_defaults(func=do_create_bsp)
-
-
-    list_parser = subparsers.add_parser('list', help='List available values for options and BSP properties')
-    list_parser.add_argument('karch', help='kernel architecture')
-    prop_group = list_parser.add_mutually_exclusive_group()
-    prop_group.add_argument("--properties", action = "store_true", default = False,
-                      help = "list all properties for the kernel architecture")
-    prop_group.add_argument("--property", help = "list available values for the property")
-    list_parser.add_argument("-o", "--outfile", dest = "properties_file",
-                      help = "dump the possible values for BSP properties to a JSON file")
-
-    list_parser.set_defaults(func=do_list_bsp)
-
-    help_parser = subparsers.add_parser('help',
-                      description='This command displays detailed help for the specified subcommand.')
-    help_parser.add_argument('subcommand', nargs='?')
-    help_parser.set_defaults(func=do_help_bsp)
-
-    args = parser.parse_args()
-
-    loglevel = logging.INFO
-    if args.debug:
-        loglevel = logging.DEBUG
-    start_logging(loglevel)
-
-    if args._subparser_name == "list":
-        if not args.karch == "karch" and not args.properties and not args.property:
-            print ("yocto-bsp list: error: one of the arguments --properties --property is required")
-            list_parser.print_help()
-
-    if args._subparser_name == "help":
-        if not args.subcommand:
-            parser.print_help()
-            return 0
-        elif not command_help.get(args.subcommand):
-            print ("yocto-bsp help: No manual entry for %s" % args.subcommand)
-            return 1
-
-    return args.func(args)
-
-if __name__ == "__main__":
-    try:
-        ret = main()
-    except Exception:
-        ret = 1
-        import traceback
-        traceback.print_exc()
-    sys.exit(ret)
-- 
2.13.6


