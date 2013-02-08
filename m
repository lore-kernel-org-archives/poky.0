Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 541ECE00736
	for <poky@yoctoproject.org>; Fri,  8 Feb 2013 14:26:02 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 08 Feb 2013 14:26:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,632,1355126400"; d="scan'208";a="259980218"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.201.160])
	by orsmga001.jf.intel.com with ESMTP; 08 Feb 2013 14:26:01 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>, openembedded-core@lists.openembedded.org,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Fri,  8 Feb 2013 14:27:23 -0800
Message-Id: <400bb9ad32ccbe2a85424a199d5a6dfe62e84f8f.1360362264.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1360362264.git.dvhart@linux.intel.com>
References: <cover.1360362264.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1360362264.git.dvhart@linux.intel.com>
References: <cover.1360362264.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 5/7] meta-yocto: Document new oe-git-proxy in site.conf.sample
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
X-List-Received-Date: Fri, 08 Feb 2013 22:26:02 -0000

The new oe-git-proxy.sh should address all git proxying needs. Document
its usage in meta-yocto/conf/site.conf.sample and remove references to
the old mechanisms.

V2: Separate out the meta-yocto changes from the oe-core changes

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-yocto/conf/site.conf.sample |   35 +++++++++--------------------------
 1 files changed, 9 insertions(+), 26 deletions(-)

diff --git a/meta-yocto/conf/site.conf.sample b/meta-yocto/conf/site.conf.sample
index 68d1da9..b2d01d0 100644
--- a/meta-yocto/conf/site.conf.sample
+++ b/meta-yocto/conf/site.conf.sample
@@ -16,32 +16,15 @@ SCONF_VERSION = "1"
 #http-proxy-port = 81
 #
 
-# Uncomment to cause git to use the proxy host specificed 
-# although this only works for http
-#GIT_PROXY_HOST = "proxy.example.com"
-#GIT_PROXY_PORT = "81"
-#export GIT_PROXY_COMMAND = "${COREBASE}/scripts/oe-git-proxy-command"
-
-# Set to yes to have a gitconfig generated for handling proxies; you
-# might not want this if you have all that set in your global git
-# configuration. If you don't enable it, the rest of the entries
-# (_PROXY_IGNORE, etc) don't really work that well
-#GIT_CORE_CONFIG = "Yes"
-
-# Space separate list of hosts to ignore for GIT proxy
-#GIT_PROXY_IGNORE = "host.server.com another.server.com"
-
-# If SOCKS is available run the following command to comple a simple transport
-# gcc scripts/oe-git-proxy-socks.c -o oe-git-proxy-socks
-# and then share that binary somewhere in PATH, then use the following settings
-#GIT_PROXY_HOST = "proxy.example.com"
-#GIT_PROXY_PORT = "81"
-
-# GIT_PROXY_COMMAND is used by git to override all proxy settings from
-# configuration files, so we prefix OE_ to avoid breaking havoc on the
-# generated (or local) gitconfig's.
-#OE_GIT_PROXY_COMMAND = "${COREBASE}/scripts/oe-git-proxy-socks-command"
-
+# To use git with a proxy, you must use an external git proxy command, such as
+# the one provided by scripts/oe-git-proxy.sh. To use this script, copy it to
+# your PATH and uncomment the following:
+#GIT_PROXY_COMMAND="oe-git-proxy"
+#ALL_PROXY="socks://socks.example.com:1080"
+#or
+#ALL_PROXY="https://proxy.example.com:8080"
+# If you wish to use certain hosts without the proxy, specify them in NO_PROXY.
+# See the script for details on syntax.
 
 # Uncomment this to use a shared download directory
 #DL_DIR = "/some/shared/download/directory/"
-- 
1.7.5.4


