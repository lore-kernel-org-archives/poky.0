Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3157EE01485
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 13:44:59 -0800 (PST)
Received: from localhost (c-50-137-42-92.hsd1.or.comcast.net [50.137.42.92])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 5685B2FEF2
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 16:44:52 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Fri, 28 Dec 2012 13:44:12 -0800
Message-Id: <37e0863db3c613bc9d74f435551072afb500f9c4.1356731004.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 5685B2FEF2.DC2BE
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 06/23] sysklogd: removed tabs from syslog.conf
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
X-List-Received-Date: Fri, 28 Dec 2012 21:44:59 -0000

From: Mihai Lindner <mihaix.lindner@linux.intel.com>

Yocto #2926: syslog.conf should not have tabs within the selector field.
Removed tabs from the selector field of syslog rules. Tabs or spaces
should be used, in syslog.conf, only when separating selectors from
actions.

(From OE-Core rev: 1316be4e597332a629842b3f5a7dde8e45dd057d)

Signed-off-by: Mihai Lindner <mihaix.lindner@linux.intel.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Resolved merge conflicts with denzil branch.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-extended/sysklogd/files/syslog.conf |   23 +++++++++++-----------
 meta/recipes-extended/sysklogd/sysklogd_1.5.bb   |    2 +-
 2 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/meta/recipes-extended/sysklogd/files/syslog.conf b/meta/recipes-extended/sysklogd/files/syslog.conf
index 7d1858c..0849de1 100644
--- a/meta/recipes-extended/sysklogd/files/syslog.conf
+++ b/meta/recipes-extended/sysklogd/files/syslog.conf
@@ -34,12 +34,13 @@ news.notice			-/var/log/news.notice
 # Some `catch-all' logfiles.
 #
 *.=debug;\
-	auth,authpriv.none;\
-	news.none;mail.none	-/var/log/debug
+auth,authpriv.none;\
+news.none;mail.none	-/var/log/debug
+
 *.=info;*.=notice;*.=warn;\
-	auth,authpriv.none;\
-	cron,daemon.none;\
-	mail,news.none		-/var/log/messages
+auth,authpriv.none;\
+cron,daemon.none;\
+mail,news.none		-/var/log/messages
 
 #
 # Emergencies are sent to everybody logged in.
@@ -51,9 +52,9 @@ news.notice			-/var/log/news.notice
 # console I usually leave idle.
 #
 #daemon,mail.*;\
-#	news.=crit;news.=err;news.=notice;\
-#	*.=debug;*.=info;\
-#	*.=notice;*.=warn	/dev/tty8
+#news.=crit;news.=err;news.=notice;\
+#*.=debug;*.=info;\
+#*.=notice;*.=warn	/dev/tty8
 
 # The named pipe /dev/xconsole is for the `xconsole' utility.  To use it,
 # you must invoke `xconsole' with the `-file' option:
@@ -64,7 +65,7 @@ news.notice			-/var/log/news.notice
 #      busy site..
 #
 daemon.*;mail.*;\
-	news.err;\
-	*.=debug;*.=info;\
-	*.=notice;*.=warn	|/dev/xconsole
+news.err;\
+*.=debug;*.=info;\
+*.=notice;*.=warn	|/dev/xconsole
 
diff --git a/meta/recipes-extended/sysklogd/sysklogd_1.5.bb b/meta/recipes-extended/sysklogd/sysklogd_1.5.bb
index b58094e..471c8c8 100644
--- a/meta/recipes-extended/sysklogd/sysklogd_1.5.bb
+++ b/meta/recipes-extended/sysklogd/sysklogd_1.5.bb
@@ -1,5 +1,5 @@
 require sysklogd.inc
-PR = "r5"
+PR = "r6"
 
 SRC_URI[md5sum] = "e053094e8103165f98ddafe828f6ae4b"
 SRC_URI[sha256sum] = "6169b8e91d29288e90404f01462b69e7f2afb1161aa419826fe4736c7f9eb773"
-- 
1.7.9.5


