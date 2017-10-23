Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31AB5E00D17; Mon, 23 Oct 2017 09:34:36 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 786EAE00CF2
	for <poky@yoctoproject.org>; Mon, 23 Oct 2017 09:34:31 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Oct 2017 09:34:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,423,1503385200"; 
   d="scan'208";a="1151386"
Received: from jlock-mobl3.ld.intel.com ([10.103.239.29])
	by orsmga002.jf.intel.com with ESMTP; 23 Oct 2017 09:34:30 -0700
From: Joshua Lock <joshua.g.lock@intel.com>
To: poky@yoctoproject.org
Date: Mon, 23 Oct 2017 17:34:21 +0100
Message-Id: <280e653081d4a225a0527d524436d747c99650ba.1508776260.git.joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.13.6
In-Reply-To: <cover.1508776260.git.joshua.g.lock@intel.com>
References: <cover.1508776260.git.joshua.g.lock@intel.com>
Subject: [PATCH 4/5] yocto-kernel: remove this tool
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
X-List-Received-Date: Mon, 23 Oct 2017 16:34:36 -0000

yocto-kernel is not actively maintained and requires active feature
development to make it a useful and compelling tool.

Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
---
 scripts/yocto-kernel | 399 ---------------------------------------------------
 1 file changed, 399 deletions(-)
 delete mode 100755 scripts/yocto-kernel

diff --git a/scripts/yocto-kernel b/scripts/yocto-kernel
deleted file mode 100755
index 5c70d0c..0000000
--- a/scripts/yocto-kernel
+++ /dev/null
@@ -1,399 +0,0 @@
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
-# 'yocto-kernel' is the Yocto BSP Tool that helps users manage kernel
-# config options and patches for a Yocto BSP.  Invoking it without any
-# arguments will display help screens for the 'yocto-kernel' command
-# and list the available 'yocto-kernel' subcommands.  Invoking a
-# subcommand without any arguments will likewise display help screens
-# for the specified subcommand.  Please use that interface for
-# detailed help.
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
-from bsp.kernel import *
-
-
-def yocto_kernel_config_list_subcommand(args, usage_str):
-    """
-    Command-line handling for listing BSP config options.  The
-    real work is done by bsp.kernel.yocto_kernel_config_list().
-    """
-    logging.debug("yocto_kernel_config_list_subcommand")
-
-    parser = optparse.OptionParser(usage = usage_str)
-
-    (options, args) = parser.parse_args(args)
-
-    if len(args) != 1:
-        logging.error("Wrong number of arguments, exiting\n")
-        parser.print_help()
-        sys.exit(1)
-
-    yocto_kernel_config_list(scripts_path, args[0])
-
-
-def yocto_kernel_config_add_subcommand(args, usage_str):
-    """
-    Command-line handling for adding BSP config items.  The real work
-    is done by bsp.kernel.yocto_kernel_config_add().
-    """
-    logging.debug("yocto_kernel_config_add_subcommand")
-
-    parser = optparse.OptionParser(usage = usage_str)
-
-    (options, args) = parser.parse_args(args)
-
-    if len(args) < 2:
-        logging.error("Wrong number of arguments, exiting\n")
-        parser.print_help()
-        sys.exit(1)
-
-    machine = args.pop(0)
-    yocto_kernel_config_add(scripts_path, machine, args)
-
-
-def yocto_kernel_config_rm_subcommand(args, usage_str):
-    """
-    Command-line handling for removing BSP config items.  The real
-    work is done by bsp.kernel.yocto_kernel_config_rm().
-    """
-    logging.debug("yocto_kernel_config_rm_subcommand")
-
-    parser = optparse.OptionParser(usage = usage_str)
-
-    (options, args) = parser.parse_args(args)
-
-    if len(args) != 1:
-        logging.error("Wrong number of arguments, exiting\n")
-        parser.print_help()
-        sys.exit(1)
-
-    yocto_kernel_config_rm(scripts_path, args[0])
-
-
-def yocto_kernel_patch_list_subcommand(args, usage_str):
-    """
-    Command-line handling for listing BSP (SRC_URI patches.  The real
-    work is done by bsp.kernel.yocto_kernel_patch_list().
-    """
-    logging.debug("yocto_kernel_patch_list_subcommand")
-
-    parser = optparse.OptionParser(usage = usage_str)
-
-    (options, args) = parser.parse_args(args)
-
-    if len(args) != 1:
-        logging.error("Wrong number of arguments, exiting\n")
-        parser.print_help()
-        sys.exit(1)
-
-    yocto_kernel_patch_list(scripts_path, args[0])
-
-
-def yocto_kernel_patch_add_subcommand(args, usage_str):
-    """
-    Command-line handling for adding BSP patches.  The real work is
-    done by bsp.kernel.yocto_kernel_patch_add().
-    """
-    logging.debug("yocto_kernel_patch_add_subcommand")
-
-    parser = optparse.OptionParser(usage = usage_str)
-
-    (options, args) = parser.parse_args(args)
-
-    if len(args) < 2:
-        logging.error("Wrong number of arguments, exiting\n")
-        parser.print_help()
-        sys.exit(1)
-
-    machine = args.pop(0)
-    yocto_kernel_patch_add(scripts_path, machine, args)
-
-
-def yocto_kernel_patch_rm_subcommand(args, usage_str):
-    """
-    Command-line handling for removing BSP patches.  The real work is
-    done by bsp.kernel.yocto_kernel_patch_rm().
-    """
-    logging.debug("yocto_kernel_patch_rm_subcommand")
-
-    parser = optparse.OptionParser(usage = usage_str)
-
-    (options, args) = parser.parse_args(args)
-
-    if len(args) != 1:
-        logging.error("Wrong number of arguments, exiting\n")
-        parser.print_help()
-        sys.exit(1)
-
-    yocto_kernel_patch_rm(scripts_path, args[0])
-
-
-def yocto_kernel_feature_list_subcommand(args, usage_str):
-    """
-    Command-line handling for listing the BSP features that are being
-    used by the BSP.  The real work is done by
-    bsp.kernel.yocto_kernel_feature_list().
-    """
-    logging.debug("yocto_kernel_feature_list_subcommand")
-
-    parser = optparse.OptionParser(usage = usage_str)
-
-    (options, args) = parser.parse_args(args)
-
-    if len(args) != 1:
-        logging.error("Wrong number of arguments, exiting\n")
-        parser.print_help()
-        sys.exit(1)
-
-    yocto_kernel_feature_list(scripts_path, args[0])
-
-
-def yocto_kernel_feature_add_subcommand(args, usage_str):
-    """
-    Command-line handling for adding the use of kernel features to a
-    BSP.  The real work is done by bsp.kernel.yocto_kernel_feature_add().
-    """
-    logging.debug("yocto_kernel_feature_add_subcommand")
-
-    parser = optparse.OptionParser(usage = usage_str)
-
-    (options, args) = parser.parse_args(args)
-
-    if len(args) < 2:
-        logging.error("Wrong number of arguments, exiting\n")
-        parser.print_help()
-        sys.exit(1)
-
-    machine = args.pop(0)
-    yocto_kernel_feature_add(scripts_path, machine, args)
-
-
-def yocto_kernel_feature_rm_subcommand(args, usage_str):
-    """
-    Command-line handling for removing the use of kernel features from
-    a BSP.  The real work is done by bsp.kernel.yocto_kernel_feature_rm().
-    """
-    logging.debug("yocto_kernel_feature_rm_subcommand")
-
-    parser = optparse.OptionParser(usage = usage_str)
-
-    (options, args) = parser.parse_args(args)
-
-    if len(args) != 1:
-        logging.error("Wrong number of arguments, exiting\n")
-        parser.print_help()
-        sys.exit(1)
-
-    yocto_kernel_feature_rm(scripts_path, args[0])
-
-
-def yocto_kernel_available_features_list_subcommand(args, usage_str):
-    """
-    Command-line handling for listing all the kernel features
-    available for use in a BSP.  This includes the features present in
-    the meta branch(es) of the pointed-to repo(s) as well as the local
-    features added in recipe-space to the current BSP as well.  The
-    real work is done by bsp.kernel.yocto_kernel_available_features_list().
-    """
-    logging.debug("yocto_kernel_feature_available_features_list_subcommand")
-
-    parser = optparse.OptionParser(usage = usage_str)
-
-    (options, args) = parser.parse_args(args)
-
-    if len(args) != 1:
-        logging.error("Wrong number of arguments, exiting\n")
-        parser.print_help()
-        sys.exit(1)
-
-    yocto_kernel_available_features_list(scripts_path, args[0])
-
-
-def yocto_kernel_feature_describe_subcommand(args, usage_str):
-    """
-    Command-line handling for listing the description of a specific
-    kernel feature available for use in a BSP.  This includes the
-    features present in the meta branch(es) of the pointed-to repo(s)
-    as well as the local features added in recipe-space to the current
-    BSP as well.  The real work is done by
-    bsp.kernel.yocto_kernel_feature_describe().
-    """
-    logging.debug("yocto_kernel_feature_describe_subcommand")
-
-    parser = optparse.OptionParser(usage = usage_str)
-
-    (options, args) = parser.parse_args(args)
-
-    if len(args) != 2:
-        logging.error("Wrong number of arguments, exiting\n")
-        parser.print_help()
-        sys.exit(1)
-
-    yocto_kernel_feature_describe(scripts_path, args[0], args[1])
-
-
-def yocto_kernel_feature_create_subcommand(args, usage_str):
-    """
-    Command-line handling for creating a recipe-space kernel feature
-    in a BSP.  The real work is done by
-    bsp.kernel.yocto_kernel_feature_create().
-    """
-    logging.debug("yocto_kernel_feature_create_subcommand")
-
-    parser = optparse.OptionParser(usage = usage_str)
-
-    (options, args) = parser.parse_args(args)
-
-    if len(args) < 4:
-        logging.error("Wrong number of arguments, exiting\n")
-        parser.print_help()
-        sys.exit(1)
-
-    machine = args.pop(0)
-    yocto_kernel_feature_create(scripts_path, machine, args)
-
-
-def yocto_kernel_feature_destroy_subcommand(args, usage_str):
-    """
-    Command-line handling for removing a recipe-space kernel feature
-    from a BSP.  The real work is done by
-    bsp.kernel.yocto_kernel_feature_destroy().
-    """
-    logging.debug("yocto_kernel_feature_destroy_subcommand")
-
-    parser = optparse.OptionParser(usage = usage_str)
-
-    (options, args) = parser.parse_args(args)
-
-    if len(args) != 2:
-        logging.error("Wrong number of arguments, exiting\n")
-        parser.print_help()
-        sys.exit(1)
-
-    yocto_kernel_feature_destroy(scripts_path, args[0], args[1])
-
-
-subcommands = {
-    "config-list": [yocto_kernel_config_list_subcommand,
-                    yocto_kernel_config_list_usage,
-                    yocto_kernel_config_list_help],
-    "config-add": [yocto_kernel_config_add_subcommand,
-                   yocto_kernel_config_add_usage,
-                   yocto_kernel_config_add_help],
-    "config-rm": [yocto_kernel_config_rm_subcommand,
-                  yocto_kernel_config_rm_usage,
-                  yocto_kernel_config_rm_help],
-    "patch-list": [yocto_kernel_patch_list_subcommand,
-                   yocto_kernel_patch_list_usage,
-                   yocto_kernel_patch_list_help],
-    "patch-add": [yocto_kernel_patch_add_subcommand,
-                  yocto_kernel_patch_add_usage,
-                  yocto_kernel_patch_add_help],
-    "patch-rm": [yocto_kernel_patch_rm_subcommand,
-                 yocto_kernel_patch_rm_usage,
-                 yocto_kernel_patch_rm_help],
-    "feature-list": [yocto_kernel_feature_list_subcommand,
-                   yocto_kernel_feature_list_usage,
-                   yocto_kernel_feature_list_help],
-    "feature-add": [yocto_kernel_feature_add_subcommand,
-                  yocto_kernel_feature_add_usage,
-                  yocto_kernel_feature_add_help],
-    "feature-rm": [yocto_kernel_feature_rm_subcommand,
-                 yocto_kernel_feature_rm_usage,
-                 yocto_kernel_feature_rm_help],
-    "features-list": [yocto_kernel_available_features_list_subcommand,
-                 yocto_kernel_available_features_list_usage,
-                 yocto_kernel_available_features_list_help],
-    "feature-describe": [yocto_kernel_feature_describe_subcommand,
-                 yocto_kernel_feature_describe_usage,
-                 yocto_kernel_feature_describe_help],
-    "feature-create": [yocto_kernel_feature_create_subcommand,
-                 yocto_kernel_feature_create_usage,
-                 yocto_kernel_feature_create_help],
-    "feature-destroy": [yocto_kernel_feature_destroy_subcommand,
-                 yocto_kernel_feature_destroy_usage,
-                 yocto_kernel_feature_destroy_help],
-}
-
-
-def start_logging(loglevel):
-    logging.basicConfig(filename = 'yocto-kernel.log', filemode = 'w', level=loglevel)
-
-
-def main():
-    parser = optparse.OptionParser(version = "yocto-kernel version %s" % __version__,
-                                   usage = yocto_kernel_usage)
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
-            sc = 1
-        else:
-            sc = 0
-
-        if args[sc] == "config" or args[sc] == "patch" or \
-                args[sc] == "feature" or args[sc] == "features":
-            if len(args) < 2 + sc:
-                parser.print_help()
-                sys.exit(1)
-            args[sc] += "-" + args[sc + 1]
-            args.pop(sc + 1)
-
-    invoke_subcommand(args, parser, yocto_kernel_help_usage, subcommands)
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
-- 
2.13.6


