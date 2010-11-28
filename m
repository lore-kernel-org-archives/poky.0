Return-Path: <richard@tim.rpsys.net>
Received: from smtp.elevenwireless.com (smtp.elevenwireless.com
	[69.48.211.177])
	by mx1.pokylinux.org (Postfix) with ESMTP id E83334C811EB
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 16:16:40 -0600 (CST)
Received: from [216.151.15.131] (helo=rex)
	by smtp.elevenwireless.com with esmtp (Exim 4.63)
	(envelope-from <richard@tim.rpsys.net>) id 1PMpUw-00019i-Ap
	for poky@pokylinux.org; Sun, 28 Nov 2010 14:13:30 -0800
Received: by rex (Postfix, from userid 1000)
	id ECD1F2A1E6; Sun, 28 Nov 2010 14:16:09 -0800 (PST)
Message-Id: <e1ab1e9ae130d178ffa17fb90eb4bb3fe02dd66c.1290982058.git.rpurdie@linux.intel.com>
In-Reply-To: <cover.1290982058.git.rpurdie@linux.intel.com>
References: <cover.1290982058.git.rpurdie@linux.intel.com>
From: Richard Purdie <rpurdie@linux.intel.com>
Date: Sun, 28 Nov 2010 13:11:57 +0000
To: poky@pokylinux.org
Subject: [PATCH 04/16] scripts/poky-env-internal: Further cleanups
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
X-List-Received-Date: Sun, 28 Nov 2010 22:16:41 -0000

Signed-off-by: Richard Purdie <rpurdie@linux.intel.com>
---
 scripts/poky-env-internal |   17 +++++++++--------
 1 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/scripts/poky-env-internal b/scripts/poky-env-internal
index 6bdb8df..5b206ed 100755
--- a/scripts/poky-env-internal
+++ b/scripts/poky-env-internal
@@ -23,11 +23,11 @@ SCRIPTPATH=`readlink -f "$BASH_SOURCE"`
 OEROOT="`dirname $SCRIPTPATH`/../"
 
 if [ "x$BDIR" = "x" ]; then
-	  if [ "x$1" = "x" ]; then
+    if [ "x$1" = "x" ]; then
         BDIR="build"
-	  else
-		    BDIR=`readlink -f "$1"`
-	  fi
+    else
+        BDIR=`readlink -f "$1"`
+    fi
 fi
 if [[ "$BDIR" = /* ]] ; then
     BUILDDIR="$BDIR"
@@ -98,13 +98,15 @@ fi
 # Prevent disturbing a new GIT clone in same console
 unset POKYLOCALCONF
 unset POKYLAYERCONF
+unset BITBAKEDIR
+unset OEROOT
 
+# Used by the poky-qemu script
 export BUILDDIR
-
-# Don't export TARGET_ARCH - it *will* cause build failures
-export PATH LD_LIBRARY_PATH
+export PATH
 # Stop multi byte characters breaking the patcher stuff - This is for Redhat / Fedora people really
 export LANG=C
+export BB_ENV_EXTRAWHITE="MACHINE DISTRO POKYMODE POKYLIBC http_proxy ftp_proxy https_proxy all_proxy ALL_PROXY no_proxy SSH_AGENT_PID SSH_AUTH_SOCK BB_SRCREV_POLICY SDKMACHINE BB_NUMBER_THREADS GIT_PROXY_COMMAND"
 
 cat <<EOM
 
@@ -122,4 +124,3 @@ You can also run generated qemu images with a command like 'poky-qemu qemux86'
 
 EOM
 
-export BB_ENV_EXTRAWHITE="MACHINE DISTRO POKYMODE POKYLIBC http_proxy ftp_proxy https_proxy all_proxy ALL_PROXY no_proxy SSH_AGENT_PID SSH_AUTH_SOCK BB_SRCREV_POLICY SDKMACHINE BB_NUMBER_THREADS GIT_PROXY_COMMAND"
-- 
1.7.0.4


