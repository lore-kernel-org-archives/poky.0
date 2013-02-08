Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A364E0034C
	for <poky@yoctoproject.org>; Fri,  8 Feb 2013 14:26:02 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 08 Feb 2013 14:26:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,632,1355126400"; d="scan'208";a="259980213"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.201.160])
	by orsmga001.jf.intel.com with ESMTP; 08 Feb 2013 14:26:01 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>, openembedded-core@lists.openembedded.org,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Fri,  8 Feb 2013 14:27:20 -0800
Message-Id: <f880362772dd8a8b8e612375648ed4e9841ca404.1360362264.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1360362264.git.dvhart@linux.intel.com>
References: <cover.1360362264.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1360362264.git.dvhart@linux.intel.com>
References: <cover.1360362264.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 2/7] oe-buildenv-internal: Add upper and lower case proxy vars to BB_ENV_EXTRAWHITE
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

Applications are inconsistent in their use of upper and lower case proxy
variables. Curl, for example, specifies NO_PROXY (not no_proxy) in the
man page (changed in 2009 [1]). Avoid proxy issues by ensuring both the
upper and lower case versions of each proxy variable are available in
the environment for the fetcher commands.

Add FTPS_PROXY and ftps_proxy to the list as well.

1. http://curl.haxx.se/mail/tracker-2009-04/0012.html

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 scripts/oe-buildenv-internal |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/scripts/oe-buildenv-internal b/scripts/oe-buildenv-internal
index 044b6f9..7783574 100755
--- a/scripts/oe-buildenv-internal
+++ b/scripts/oe-buildenv-internal
@@ -80,4 +80,4 @@ unset BITBAKEDIR
 # Used by the runqemu script
 export BUILDDIR
 export PATH
-export BB_ENV_EXTRAWHITE="MACHINE DISTRO TCMODE TCLIBC http_proxy ftp_proxy https_proxy all_proxy ALL_PROXY no_proxy NO_PROXY SSH_AGENT_PID SSH_AUTH_SOCK BB_SRCREV_POLICY SDKMACHINE BB_NUMBER_THREADS BB_NO_NETWORK PARALLEL_MAKE GIT_PROXY_COMMAND SOCKS5_PASSWD SOCKS5_USER SCREENDIR"
+export BB_ENV_EXTRAWHITE="MACHINE DISTRO TCMODE TCLIBC HTTP_PROXY http_proxy HTTPS_PROXY https_proxy FTP_PROXY ftp_proxy FTPS_PROXY ftps_proxy ALL_PROXY all_proxy NO_PROXY no_proxy SSH_AGENT_PID SSH_AUTH_SOCK BB_SRCREV_POLICY SDKMACHINE BB_NUMBER_THREADS BB_NO_NETWORK PARALLEL_MAKE GIT_PROXY_COMMAND SOCKS5_PASSWD SOCKS5_USER SCREENDIR"
-- 
1.7.5.4


