Return-Path: <kevin.tian@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 013EE4C81217
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 21:06:07 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Nov 2010 19:06:07 -0800
Message-Id: <849307$ahq031@azsmga001.ch.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,274,1288594800"; d="scan'208";a="354222183"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.36])
	by azsmga001.ch.intel.com with ESMTP; 28 Nov 2010 19:06:06 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Tue, 23 Nov 2010 14:14:48 +0800
To: poky@pokylinux.org
Subject: [PATCH 5/5] poky.conf: whitelist shell variables which are volatile to build system
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 29 Nov 2010 03:06:08 -0000

Bitbake preserves a list of good shell variables which are required by some
shell based tasks. When scheduling a new shell task, bitbake always appends
all those shell variables which become a trouble for task checksum, because
most of those variables (GNOME_KEYRING_PID, XDG_SESSION_COOKIE, etc.) are
specific to the build system and desktop session.

Previously I came up an approach to explicitly seperate external shell variables
from the ones defined by bitbake, which however ends up to be complex.

So here I simply whitelist all preserved shell variables from current definition.
This should allow wider test on sstate when the better option is under discussion.

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 meta/conf/distro/poky.conf |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/conf/distro/poky.conf b/meta/conf/distro/poky.conf
index a4c5991..ac2ec36 100644
--- a/meta/conf/distro/poky.conf
+++ b/meta/conf/distro/poky.conf
@@ -144,3 +144,4 @@ require conf/distro/include/world-broken.inc
 BB_SIGNATURE_HANDLER = "basic"
 BB_HASHTASK_WHITELIST = "(.*-cross$|.*-native$|.*-cross-initial$|.*-cross-intermediate$|^virtual:native:.*|^virtual:nativesdk:.*)"
 BB_HASHBASE_WHITELIST = "TMPDIR FILE PATH PWD TIME DATE BBPATH DL_DIR SSTATE_DIR THISDIR _ FILESEXTRPATHS"
+BB_HASHBASE_WHITELIST += "PATH PWD COLORTERM DBUS_SESSION_BUS_ADDRESS DESKTOP_SESSION DESKTOP_STARTUP_ID DISPLAY GNOME_KEYRING_PID GNOME_KEYRING_SOCKET GPG_AGENT_INFO GTK_RC_FILES HOME LANG LOGNAME SESSION_MANAGER SHELL SSH_AUTH_SOCK TERM USER USERNAME XAUTHORITY XDG_DATA_DIRS XDG_SESSION_COOKIE http_proxy ftp_proxy https_proxy all_proxy ALL_PROXY no_proxy SSH_AGENT_PID SSH_AUTH_SOCK GIT_PROXY_COMMAND"
-- 
1.6.0.4


