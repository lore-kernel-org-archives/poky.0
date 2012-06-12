Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B12E8E01437
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 13:42:19 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 1D08C2FF40
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 16:42:14 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Jun 2012 13:41:16 -0700
Message-Id: <73b2944492003ab6821d940d9daa3b18116c5c1a.1339533508.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 1D08C2FF40.3819F
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 26/31] shared-mime-info: fix build race condition
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
X-List-Received-Date: Tue, 12 Jun 2012 20:42:19 -0000

From: Joe Slater <jslater@windriver.com>

The definition of install-data-hook in Makefile.am leads
to multiple, overlapping, executions of the install-binPROGRAMS
target.  We modify the definition to avoid that.

Signed-off-by: Joe Slater <jslater@windriver.com>
Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../shared-mime-info/install-data-hook.patch       |   21 ++++++++++++++++++++
 .../shared-mime-info/shared-mime-info_0.91.bb      |    5 +++--
 2 files changed, 24 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-support/shared-mime-info/shared-mime-info/install-data-hook.patch

diff --git a/meta/recipes-support/shared-mime-info/shared-mime-info/install-data-hook.patch b/meta/recipes-support/shared-mime-info/shared-mime-info/install-data-hook.patch
new file mode 100644
index 0000000..4c075f2
--- /dev/null
+++ b/meta/recipes-support/shared-mime-info/shared-mime-info/install-data-hook.patch
@@ -0,0 +1,21 @@
+fix shared-mime-info build race condition
+
+The definition of install-data-hook in Makefile.am leads
+to multiple, overlapping, executions of install-binPROGRAMS
+target.  We modify the definition to avoid that.
+
+Signed-off-by: Joe Slater <jslater@windriver.com>
+
+--- a/Makefile.am
++++ b/Makefile.am
+@@ -44,7 +44,9 @@ $(pkgconfig_DATA): config.status
+ @INTLTOOL_XML_RULE@
+ @INTLTOOL_DESKTOP_RULE@
+ 
+-install-data-hook: install-binPROGRAMS
++# do NOT make this dependent on anything!
++#
++install-data-hook:
+ if ENABLE_UPDATE_MIMEDB
+ 	$(DESTDIR)"$(bindir)/update-mime-database" -V "$(DESTDIR)$(datadir)/mime"
+ endif
diff --git a/meta/recipes-support/shared-mime-info/shared-mime-info_0.91.bb b/meta/recipes-support/shared-mime-info/shared-mime-info_0.91.bb
index 7ae6e10..910cb7f 100644
--- a/meta/recipes-support/shared-mime-info/shared-mime-info_0.91.bb
+++ b/meta/recipes-support/shared-mime-info/shared-mime-info_0.91.bb
@@ -1,7 +1,8 @@
 require shared-mime-info.inc
-PR = "r3"
+PR = "r4"
 
 SRC_URI[md5sum] = "982a211560ba4c47dc791ccff34e8fbc"
 SRC_URI[sha256sum] = "98cfebe1d809afb24934e634373821e2a1dfa86fc6462cab230589a1c80988bd"
 
-SRC_URI =+ "file://parallelmake.patch"
+SRC_URI =+ "file://parallelmake.patch \
+	    file://install-data-hook.patch"
-- 
1.7.9.5


