Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FFE3E0146C
	for <poky@yoctoproject.org>; Tue,  5 Feb 2013 02:30:31 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Feb 2013 02:29:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,602,1355126400"; d="scan'208";a="257891626"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.201.160])
	by orsmga001.jf.intel.com with ESMTP; 05 Feb 2013 02:30:08 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>, openembedded-core@lists.openembedded.org,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Tue,  5 Feb 2013 02:31:42 -0800
Message-Id: <9f9ad79974b3f855ca1375292ea3de964e5c9471.1360059615.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1360059615.git.dvhart@linux.intel.com>
References: <cover.1360059615.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1360059615.git.dvhart@linux.intel.com>
References: <cover.1360059615.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 6/8] base.bbclass: Remove generate_git_config()
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
X-List-Received-Date: Tue, 05 Feb 2013 10:30:31 -0000

git no longer supports the use of GIT_CONFIG which defeats the purpose of
GIT_CORE_CONFIG and the generate_git_config() function. Remove it.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/classes/base.bbclass |   21 ---------------------
 1 files changed, 0 insertions(+), 21 deletions(-)

diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass
index 4662d3b..83de10f 100644
--- a/meta/classes/base.bbclass
+++ b/meta/classes/base.bbclass
@@ -133,26 +133,6 @@ python base_do_unpack() {
         raise bb.build.FuncFailed(e)
 }
 
-GIT_CONFIG_PATH = "${STAGING_DIR_NATIVE}/etc"
-GIT_CONFIG = "${GIT_CONFIG_PATH}/gitconfig"
-
-def generate_git_config(e):
-    if e.data.getVar('GIT_CORE_CONFIG', True):
-        gitconfig_path = e.data.getVar('GIT_CONFIG', True)
-        proxy_command = "    gitProxy = %s\n" % e.data.getVar('OE_GIT_PROXY_COMMAND', True)
-
-        bb.mkdirhier(e.data.expand("${GIT_CONFIG_PATH}"))
-        if (os.path.exists(gitconfig_path)):
-            os.remove(gitconfig_path)
-
-        f = open(gitconfig_path, 'w')
-        f.write("[core]\n")
-        ignore_hosts = e.data.getVar('GIT_PROXY_IGNORE', True).split()
-        for ignore_host in ignore_hosts:
-            f.write("    gitProxy = none for %s\n" % ignore_host)
-        f.write(proxy_command)
-        f.close
-
 def pkgarch_mapping(d):
     # Compatibility mappings of TUNE_PKGARCH (opt in)
     if d.getVar("PKGARCHCOMPAT_ARMV7A", True):
@@ -311,7 +291,6 @@ addhandler base_eventhandler
 python base_eventhandler() {
     if isinstance(e, bb.event.ConfigParsed):
         e.data.setVar('BB_VERSION', bb.__version__)
-        generate_git_config(e)
         pkgarch_mapping(e.data)
         preferred_ml_updates(e.data)
         e.data.appendVar('DISTRO_FEATURES', oe.utils.features_backfill("DISTRO_FEATURES", e.data))
-- 
1.7.5.4


