Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A618DE002AB
	for <poky@yoctoproject.org>; Tue,  5 Feb 2013 14:51:14 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 05 Feb 2013 14:51:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,610,1355126400"; d="scan'208";a="281408760"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.201.160])
	by orsmga002.jf.intel.com with ESMTP; 05 Feb 2013 14:51:13 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>, openembedded-core@lists.openembedded.org,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Tue,  5 Feb 2013 14:52:45 -0800
Message-Id: <ae9006152f5551b3eb019c8d639625d5f32e1366.1360104547.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1360104547.git.dvhart@linux.intel.com>
References: <cover.1360104547.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1360104547.git.dvhart@linux.intel.com>
References: <cover.1360104547.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>, bitbake-devel@lists.openembedded.org
Subject: [PATCH 3/9] bitbake: fetch2: Remove broken git variables from the environment
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
X-List-Received-Date: Tue, 05 Feb 2013 22:51:14 -0000

The following variables perform no function outside of bitbake:

    GIT_CONFIG
    GIT_PROXY_HOST
    GIT_PROXY_PORT
    GIT_PROXY_IGNORE

GIT_CONFIG only affects the git-config command which is not relevant to
the fetcher. This was previously used with the OE GIT_CORE_CONFIG
variable which would provide a basic git config to use instead of the
user's config. This usage was deprecated by git for over a year now:

http://git.661346.n2.nabble.com/Overriding-gitconfig-using-GIT-CONFIG-td6680977.html

GIT_PROXY_HOST and GIT_PROXY_PORT are not used by git.

GIT_PROXY_IGNORE was an OE construct used to create the custom git
config and had no meaning outside of the OE environment. It is not used
by git.

Remove these variables from the fetcher environment.

Users wishing to configure git to work with a proxy should define the
GIT_PROXY_COMMAND environment variable to use an external script.
NO_PROXY can be used within this script to skip the proxy for certain
hosts.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: bitbake-devel@lists.openembedded.org
---
 bitbake/lib/bb/fetch2/__init__.py |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 7466a38..21f576e 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -458,16 +458,16 @@ def runfetchcmd(cmd, d, quiet = False, cleanup = []):
     # rather than host provided
     # Also include some other variables.
     # FIXME: Should really include all export varaiables?
-    exportvars = ['PATH', 'GIT_PROXY_COMMAND', 'GIT_PROXY_HOST',
-                  'GIT_PROXY_PORT', 'GIT_CONFIG',
+    exportvars = ['HOME', 'PATH',
                   'HTTP_PROXY', 'http_proxy',
                   'HTTPS_PROXY', 'https_proxy',
                   'FTP_PROXY', 'ftp_proxy',
                   'FTPS_PROXY', 'ftps_proxy',
                   'NO_PROXY', 'no_proxy',
                   'ALL_PROXY', 'all_proxy',
-                  'SSH_AUTH_SOCK', 'SSH_AGENT_PID', 'HOME',
-                  'GIT_PROXY_IGNORE', 'SOCKS5_USER', 'SOCKS5_PASSWD']
+                  'GIT_PROXY_COMMAND',
+                  'SSH_AUTH_SOCK', 'SSH_AGENT_PID',
+                  'SOCKS5_USER', 'SOCKS5_PASSWD']
 
     for var in exportvars:
         val = d.getVar(var, True)
-- 
1.7.5.4


