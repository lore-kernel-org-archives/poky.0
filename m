Return-Path: <richard@tim.rpsys.net>
Received: from smtp.elevenwireless.com (smtp.elevenwireless.com
	[69.48.211.177])
	by mx1.pokylinux.org (Postfix) with ESMTP id BBF0C4C811EB
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 16:16:42 -0600 (CST)
Received: from [216.151.15.131] (helo=rex)
	by smtp.elevenwireless.com with esmtp (Exim 4.63)
	(envelope-from <richard@tim.rpsys.net>) id 1PMpUx-00019h-5P
	for poky@pokylinux.org; Sun, 28 Nov 2010 14:13:31 -0800
Received: by rex (Postfix, from userid 1000)
	id DEF2027C0B; Sun, 28 Nov 2010 14:16:09 -0800 (PST)
Message-Id: <f5e142abd65f838c6c29ad5575ed771f9a71ea14.1290982058.git.rpurdie@linux.intel.com>
In-Reply-To: <cover.1290982058.git.rpurdie@linux.intel.com>
References: <cover.1290982058.git.rpurdie@linux.intel.com>
From: Richard Purdie <rpurdie@linux.intel.com>
Date: Sun, 28 Nov 2010 12:57:27 +0000
To: poky@pokylinux.org
Subject: [PATCH 03/16] scripts/poky-env-internal: Remove unset variables
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
X-List-Received-Date: Sun, 28 Nov 2010 22:16:42 -0000

These variables are not on any bitbake environment whitelist so will never make it into
the environment. This is legacy code which is not required any more so remove it.

Signed-off-by: Richard Purdie <rpurdie@linux.intel.com>
---
 scripts/poky-env-internal |   10 ----------
 1 files changed, 0 insertions(+), 10 deletions(-)

diff --git a/scripts/poky-env-internal b/scripts/poky-env-internal
index 756d18c..6bdb8df 100755
--- a/scripts/poky-env-internal
+++ b/scripts/poky-env-internal
@@ -101,20 +101,10 @@ unset POKYLAYERCONF
 
 export BUILDDIR
 
-# Kill off the TERMINFO variable, as glibc will grab its contents in its 'make
-# install' if set
-unset TERMINFO
-# kill this so we don't link non-arm libraries
-unset LD_LIBRARY_PATH
 # Don't export TARGET_ARCH - it *will* cause build failures
 export PATH LD_LIBRARY_PATH
 # Stop multi byte characters breaking the patcher stuff - This is for Redhat / Fedora people really
 export LANG=C
-# Kill PYTHONPATH as otherwise the Python specified there will conflict with
-# python-native.
-unset PYTHONPATH
-# Don't allow custom GConf schema paths to get into the system
-unset GCONF_SCHEMA_INSTALL_SOURCE
 
 cat <<EOM
 
-- 
1.7.0.4


