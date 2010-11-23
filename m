Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 189274C811D7
	for <poky@pokylinux.org>; Tue, 23 Nov 2010 01:13:20 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Nov 2010 23:13:19 -0800
Message-Id: <0d30dc$k8jjru@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="680120196"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.116])
	by orsmga001.jf.intel.com with ESMTP; 22 Nov 2010 23:13:19 -0800
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
X-List-Received-Date: Tue, 23 Nov 2010 07:13:20 -0000

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
 meta/conf/distro/poky.conf |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/poky.conf b/meta/conf/distro/poky.conf
index ae13d9a..dd29d9d 100644
--- a/meta/conf/distro/poky.conf
+++ b/meta/conf/distro/poky.conf
@@ -144,4 +144,5 @@ require conf/distro/include/distro_tracking_fields.inc
 # Setup our hash policy
 BB_SIGNATURE_HANDLER = "basic"
 BB_HASHTASK_WHITELIST = "(.*-cross$|.*-native$|.*-cross-initial$|.*-cross-intermediate$|^virtual:native:.*|^virtual:nativesdk:.*)"
-BB_HASHBASE_WHITELIST = "TMPDIR FILE PATH PWD TIME DATE BBPATH OEROOT DL_DIR SSTATE_DIR THISDIR _"
+BB_HASHBASE_WHITELIST = "TMPDIR FILE TIME DATE BBPATH OEROOT DL_DIR SSTATE_DIR THISDIR _"
+BB_HASHBASE_WHITELIST += "PATH PWD COLORTERM DBUS_SESSION_BUS_ADDRESS DESKTOP_SESSION DESKTOP_STARTUP_ID DISPLAY GNOME_KEYRING_PID GNOME_KEYRING_SOCKET GPG_AGENT_INFO GTK_RC_FILES HOME LANG LOGNAME SESSION_MANAGER SHELL SSH_AUTH_SOCK TERM USER USERNAME XAUTHORITY XDG_DATA_DIRS XDG_SESSION_COOKIE http_proxy ftp_proxy https_proxy all_proxy ALL_PROXY no_proxy SSH_AGENT_PID SSH_AUTH_SOCK GIT_PROXY_COMMAND"
-- 
1.6.0.4


