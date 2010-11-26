Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3D5A34C811CD
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 11:01:24 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 Nov 2010 09:01:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,262,1288594800"; d="scan'208";a="353602821"
Received: from unknown (HELO localhost) ([10.255.20.94])
	by azsmga001.ch.intel.com with ESMTP; 26 Nov 2010 09:01:20 -0800
Message-Id: <f52ae409d776a1ef10b693014467073bba3ed815.1290790131.git.josh@linux.intel.com>
In-Reply-To: <cover.1290790131.git.josh@linux.intel.com>
References: <cover.1290790131.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Fri, 26 Nov 2010 16:43:05 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/2] sanity.bbclass: Warn people when TERMCMD is set to a non-installed program
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
X-List-Received-Date: Fri, 26 Nov 2010 17:01:24 -0000

We default to gnome-terminal for TERMCMD (and TERMRUNCMD) so should check that
this program actually exists during sanity checking.

As a corollary document how to change these variables in the local.conf

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta/classes/sanity.bbclass |    6 ++++++
 meta/conf/local.conf.sample |    7 +++++++
 2 files changed, 13 insertions(+), 0 deletions(-)

diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
index 7f1f800..e98ca89 100644
--- a/meta/classes/sanity.bbclass
+++ b/meta/classes/sanity.bbclass
@@ -139,6 +139,12 @@ def check_sanity(e):
 		missing = missing.rstrip(',')
 		messages = messages + "Please install following missing utilities: %s\n" % missing
 
+	# Ensure we have the binary for TERMCMD, as when patch application fails the error is fairly intimidating
+	termcmd = data.getVar("TERMCMD", e.data, True)
+	term = termcmd.split()[0]
+	if not check_app_exists(term, e.data):
+	   messages = messages + "The console for use in patch error resolution is not available, please install %s or set TERMCMD and TERMCMDRUN (as documented in local.conf).\n" % term
+
 	if os.path.basename(os.readlink('/bin/sh')) == 'dash':
 		messages = messages + "Using dash as /bin/sh causes various subtle build problems, please use bash instead (e.g. 'dpkg-reconfigure dash' on an Ubuntu system.\n"
 
diff --git a/meta/conf/local.conf.sample b/meta/conf/local.conf.sample
index 4ba250d..f1421ec 100644
--- a/meta/conf/local.conf.sample
+++ b/meta/conf/local.conf.sample
@@ -170,3 +170,10 @@ ENABLE_BINARY_LOCALE_GENERATION = "1"
 # out if that is desired
 NO32LIBS = "1"
 
+# If you do not use (or have installed) gnome-terminal you will need to
+# uncomment these variables and set them to the terminal you wish to use
+# when resolving patches which cannot be applied
+# Supported shell prefixes for *_TERMCMD and *_TERMCMDRUN ARE:
+# GNOME, SCREEN, XTERM and KONSOLE
+#TERMCMD = "${KONSOLE_TERMCMD}"
+#TERMCMDRUN = "${KONSOLE_TERMCMDRUN}"
-- 
1.7.3.2


