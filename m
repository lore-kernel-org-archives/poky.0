Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6291DE0146C
	for <poky@yoctoproject.org>; Tue,  5 Feb 2013 02:30:31 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Feb 2013 02:29:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,602,1355126400"; d="scan'208";a="257891623"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.201.160])
	by orsmga001.jf.intel.com with ESMTP; 05 Feb 2013 02:30:08 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>, openembedded-core@lists.openembedded.org,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Tue,  5 Feb 2013 02:31:40 -0800
Message-Id: <ea4d867404bd2ef31b08d9f1fe0e4c4b0b0045d6.1360059615.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1360059615.git.dvhart@linux.intel.com>
References: <cover.1360059615.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1360059615.git.dvhart@linux.intel.com>
References: <cover.1360059615.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 4/8] oe-buildenv-internal: Remove GIT variables from BB_ENV_EXTRAWHITE
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

The following variables perform no function outside of bitbake:

    GIT_CONFIG
    GIT_PROXY_HOST
    GIT_PROXY_PORT
    GIT_PROXY_IGNORE

GIT_CONFIG only affects the git-config command which is not relevant to
the fetcher. This was previously used with the OE GIT_CORE_CONFIG
variable which would provide a basic git config to use instead of the
user's config. This usage was deprecated by git for over a year now:

http://git.661346.n2.nabble.com/Overriding-gitconfig-using-GIT-CONFIG-td6680977

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
---
 scripts/oe-buildenv-internal |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/scripts/oe-buildenv-internal b/scripts/oe-buildenv-internal
index c3a30fb..044b6f9 100755
--- a/scripts/oe-buildenv-internal
+++ b/scripts/oe-buildenv-internal
@@ -80,4 +80,4 @@ unset BITBAKEDIR
 # Used by the runqemu script
 export BUILDDIR
 export PATH
-export BB_ENV_EXTRAWHITE="MACHINE DISTRO TCMODE TCLIBC http_proxy ftp_proxy https_proxy all_proxy ALL_PROXY no_proxy SSH_AGENT_PID SSH_AUTH_SOCK BB_SRCREV_POLICY SDKMACHINE BB_NUMBER_THREADS BB_NO_NETWORK PARALLEL_MAKE GIT_PROXY_COMMAND GIT_PROXY_IGNORE SOCKS5_PASSWD SOCKS5_USER SCREENDIR"
+export BB_ENV_EXTRAWHITE="MACHINE DISTRO TCMODE TCLIBC http_proxy ftp_proxy https_proxy all_proxy ALL_PROXY no_proxy NO_PROXY SSH_AGENT_PID SSH_AUTH_SOCK BB_SRCREV_POLICY SDKMACHINE BB_NUMBER_THREADS BB_NO_NETWORK PARALLEL_MAKE GIT_PROXY_COMMAND SOCKS5_PASSWD SOCKS5_USER SCREENDIR"
-- 
1.7.5.4


