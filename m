Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7D8094C80B70
	for <poky@pokylinux.org>; Wed, 24 Nov 2010 06:18:35 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 24 Nov 2010 04:18:35 -0800
Message-Id: <c6d829$pl1sek@fmsmga001.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,247,1288594800"; d="scan'208";a="860942806"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.116])
	by fmsmga001.fm.intel.com with ESMTP; 24 Nov 2010 04:18:34 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Wed, 24 Nov 2010 19:58:31 +0800
To: poky@pokylinux.org
Subject: [PATCH 1/1] poky.conf: add FILESEXTRPATHS to basehash whitelist
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
X-List-Received-Date: Wed, 24 Nov 2010 12:18:35 -0000

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 meta/conf/distro/poky.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/poky.conf b/meta/conf/distro/poky.conf
index dd29d9d..1273423 100644
--- a/meta/conf/distro/poky.conf
+++ b/meta/conf/distro/poky.conf
@@ -144,5 +144,5 @@ require conf/distro/include/distro_tracking_fields.inc
 # Setup our hash policy
 BB_SIGNATURE_HANDLER = "basic"
 BB_HASHTASK_WHITELIST = "(.*-cross$|.*-native$|.*-cross-initial$|.*-cross-intermediate$|^virtual:native:.*|^virtual:nativesdk:.*)"
-BB_HASHBASE_WHITELIST = "TMPDIR FILE TIME DATE BBPATH OEROOT DL_DIR SSTATE_DIR THISDIR _"
+BB_HASHBASE_WHITELIST = "TMPDIR FILE TIME DATE BBPATH OEROOT DL_DIR SSTATE_DIR THISDIR _ FILESEXTRAPATHS"
 BB_HASHBASE_WHITELIST += "PATH PWD COLORTERM DBUS_SESSION_BUS_ADDRESS DESKTOP_SESSION DESKTOP_STARTUP_ID DISPLAY GNOME_KEYRING_PID GNOME_KEYRING_SOCKET GPG_AGENT_INFO GTK_RC_FILES HOME LANG LOGNAME SESSION_MANAGER SHELL SSH_AUTH_SOCK TERM USER USERNAME XAUTHORITY XDG_DATA_DIRS XDG_SESSION_COOKIE http_proxy ftp_proxy https_proxy all_proxy ALL_PROXY no_proxy SSH_AGENT_PID SSH_AUTH_SOCK GIT_PROXY_COMMAND"
-- 
1.6.0.4


