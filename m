Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2ECBC4C81003
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 05:18:01 -0600 (CST)
Received: by wwb31 with SMTP id 31so13161458wwb.11
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 03:18:00 -0800 (PST)
Received: by 10.227.144.7 with SMTP id x7mr9233009wbu.115.1293707878339;
	Thu, 30 Dec 2010 03:17:58 -0800 (PST)
Received: from localhost (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id m13sm10871869wbz.3.2010.12.30.03.17.57
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Thu, 30 Dec 2010 03:17:58 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: poky@yoctoproject.org
Date: Thu, 30 Dec 2010 12:17:54 +0100
Message-Id: <1293707874-13485-1-git-send-email-koen@openembedded.org>
X-Mailer: git-send-email 1.7.0
Subject: [PATCH] factor out shared state settings into a .inc
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
X-List-Received-Date: Thu, 30 Dec 2010 11:18:01 -0000

From: Koen Kooi <koen@dominion.thruhere.net>

This allows other distros to keep up with the latest shared state improvements

Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
---
 meta/conf/distro/include/sstate.inc |    9 +++++++++
 meta/conf/distro/poky.conf          |    9 +++------
 2 files changed, 12 insertions(+), 6 deletions(-)
 create mode 100644 meta/conf/distro/include/sstate.inc

diff --git a/meta/conf/distro/include/sstate.inc b/meta/conf/distro/include/sstate.inc
new file mode 100644
index 0000000..ff11e4f
--- /dev/null
+++ b/meta/conf/distro/include/sstate.inc
@@ -0,0 +1,9 @@
+# Common include file for shared state related matters
+
+INHERIT += "sstate"
+
+# Setup our hash policy
+BB_SIGNATURE_HANDLER = "basic"
+BB_HASHTASK_WHITELIST = "(.*-cross$|.*-native$|.*-cross-initial$|.*-cross-intermediate$|^virtual:native:.*|^virtual:nativesdk:.*)"
+BB_HASHBASE_WHITELIST = "TMPDIR FILE PATH PWD BB_TASKHASH BBPATH DL_DIR SSTATE_DIR THISDIR FILESEXTRAPATHS FILE_DIRNAME HOME LOGNAME SHELL TERM USER"
+patch_do_patch[vardepsexclude] = "DATE SRCDATE
diff --git a/meta/conf/distro/poky.conf b/meta/conf/distro/poky.conf
index fe2d49a..ce6c324 100644
--- a/meta/conf/distro/poky.conf
+++ b/meta/conf/distro/poky.conf
@@ -12,7 +12,7 @@ USER_CLASSES ?= ""
 
 PACKAGE_CLASSES ?= "package_ipk"
 INHERIT_INSANE ?= "insane"
-INHERIT += "${PACKAGE_CLASSES} ${USER_CLASSES} debian devshell ${INHERIT_INSANE} sstate"
+INHERIT += "${PACKAGE_CLASSES} ${USER_CLASSES} debian devshell ${INHERIT_INSANE}"
 # For some reason, this doesn't work
 # TARGET_OS ?= "linux"
 # TARGET_VENDOR ?= "-poky"
@@ -167,8 +167,5 @@ ftp://.*/.*      http://autobuilder.pokylinux.org/sources/ \n \
 http://.*/.*     http://autobuilder.pokylinux.org/sources/ \n \
 https://.*/.*    http://autobuilder.pokylinux.org/sources/ \n"
 
-# Setup our hash policy
-BB_SIGNATURE_HANDLER = "basic"
-BB_HASHTASK_WHITELIST = "(.*-cross$|.*-native$|.*-cross-initial$|.*-cross-intermediate$|^virtual:native:.*|^virtual:nativesdk:.*)"
-BB_HASHBASE_WHITELIST = "TMPDIR FILE PATH PWD BB_TASKHASH BBPATH DL_DIR SSTATE_DIR THISDIR FILESEXTRAPATHS FILE_DIRNAME HOME LOGNAME SHELL TERM USER"
-patch_do_patch[vardepsexclude] = "DATE SRCDATE"
+require conf/distro/include/sstate.inc
+
-- 
1.6.6.1


