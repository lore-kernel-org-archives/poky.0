Return-Path: <richard@tim.rpsys.net>
Received: from smtp.elevenwireless.com (smtp.elevenwireless.com
	[69.48.211.177])
	by mx1.pokylinux.org (Postfix) with ESMTP id DCA2A4C811E1
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 16:16:40 -0600 (CST)
Received: from [216.151.15.131] (helo=rex)
	by smtp.elevenwireless.com with esmtp (Exim 4.63)
	(envelope-from <richard@tim.rpsys.net>) id 1PMpUx-00019f-51
	for poky@pokylinux.org; Sun, 28 Nov 2010 14:13:31 -0800
Received: by rex (Postfix, from userid 1000)
	id C480B25447; Sun, 28 Nov 2010 14:16:09 -0800 (PST)
Message-Id: <bfa66493eb92ae3b738c2564155c78daa047999d.1290982058.git.rpurdie@linux.intel.com>
In-Reply-To: <cover.1290982058.git.rpurdie@linux.intel.com>
References: <cover.1290982058.git.rpurdie@linux.intel.com>
From: Richard Purdie <rpurdie@linux.intel.com>
Date: Sun, 28 Nov 2010 12:41:09 +0000
To: poky@pokylinux.org
Subject: [PATCH 02/16] scripts/poky-env-internal/image-swab.bbclass: Remove OEROOT references
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

OEROOT isn't used outside the init script so stop exporting it into the environment
where it can "corrupt" sstate packages.

Signed-off-by: Richard Purdie <rpurdie@linux.intel.com>
---
 meta/classes/image-swab.bbclass |    2 +-
 scripts/poky-env-internal       |    6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta/classes/image-swab.bbclass b/meta/classes/image-swab.bbclass
index 93918bf..554867b 100644
--- a/meta/classes/image-swab.bbclass
+++ b/meta/classes/image-swab.bbclass
@@ -74,7 +74,7 @@ do_generate_swabber_report () {
 
   if [ "$(ls -A ${HOST_DATA})" ]; then
     echo "Generating swabber report"
-    swabber -d ${HOST_DATA} -l ${SWABBER_LOGS} -o ${SWABBER_REPORT}/report-${REPORTSTAMP}.txt -r ${SWABBER_REPORT}/extra_report-${REPORTSTAMP}.txt -c all -p ${TOPDIR} ${OEROOT} /tmp /dev /proc /usr/lib/python2.6 /usr/local/lib/python2.6 /usr/lib/pymodules /etc/ld.so.cache
+    swabber -d ${HOST_DATA} -l ${SWABBER_LOGS} -o ${SWABBER_REPORT}/report-${REPORTSTAMP}.txt -r ${SWABBER_REPORT}/extra_report-${REPORTSTAMP}.txt -c all -p ${TOPDIR} ${POKYBASE} /tmp /dev /proc /usr/lib/python2.6 /usr/local/lib/python2.6 /usr/lib/pymodules /etc/ld.so.cache
   else
     echo "No host data, cannot generate swabber report."
   fi
diff --git a/scripts/poky-env-internal b/scripts/poky-env-internal
index ae26cab..756d18c 100755
--- a/scripts/poky-env-internal
+++ b/scripts/poky-env-internal
@@ -99,7 +99,7 @@ fi
 unset POKYLOCALCONF
 unset POKYLAYERCONF
 
-export OEROOT BUILDDIR
+export BUILDDIR
 
 # Kill off the TERMINFO variable, as glibc will grab its contents in its 'make
 # install' if set
@@ -107,7 +107,7 @@ unset TERMINFO
 # kill this so we don't link non-arm libraries
 unset LD_LIBRARY_PATH
 # Don't export TARGET_ARCH - it *will* cause build failures
-export PATH LD_LIBRARY_PATH OEROOT
+export PATH LD_LIBRARY_PATH
 # Stop multi byte characters breaking the patcher stuff - This is for Redhat / Fedora people really
 export LANG=C
 # Kill PYTHONPATH as otherwise the Python specified there will conflict with
@@ -132,4 +132,4 @@ You can also run generated qemu images with a command like 'poky-qemu qemux86'
 
 EOM
 
-export BB_ENV_EXTRAWHITE="MACHINE DISTRO POKYMODE POKYLIBC OEROOT http_proxy ftp_proxy https_proxy all_proxy ALL_PROXY no_proxy SSH_AGENT_PID SSH_AUTH_SOCK BB_SRCREV_POLICY SDKMACHINE BB_NUMBER_THREADS GIT_PROXY_COMMAND"
+export BB_ENV_EXTRAWHITE="MACHINE DISTRO POKYMODE POKYLIBC http_proxy ftp_proxy https_proxy all_proxy ALL_PROXY no_proxy SSH_AGENT_PID SSH_AUTH_SOCK BB_SRCREV_POLICY SDKMACHINE BB_NUMBER_THREADS GIT_PROXY_COMMAND"
-- 
1.7.0.4


