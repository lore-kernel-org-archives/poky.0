Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7A7484C811ED
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 15:44:44 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 0202930530
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 16:44:39 -0500 (EST)
Message-Id: <b0ccbe53e1541dd93b1e9241f04f0c0ebbb35e47.1294250102.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1294250102.git.scott.a.garman@intel.com>
References: <cover.1294250102.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Wed, 5 Jan 2011 09:52:59 -0800
Date: Wed, 05 Jan 2011 13:44:37 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 0202930530.B9018
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 2/8] apmd: delete unused patch
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
X-List-Received-Date: Wed, 05 Jan 2011 21:44:44 -0000

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../apmd/apmd-3.2.2-14/workaround.patch            |   59 --------------------
 1 files changed, 0 insertions(+), 59 deletions(-)
 delete mode 100644 meta/recipes-bsp/apmd/apmd-3.2.2-14/workaround.patch

diff --git a/meta/recipes-bsp/apmd/apmd-3.2.2-14/workaround.patch b/meta/recipes-bsp/apmd/apmd-3.2.2-14/workaround.patch
deleted file mode 100644
index d373803..0000000
--- a/meta/recipes-bsp/apmd/apmd-3.2.2-14/workaround.patch
+++ /dev/null
@@ -1,59 +0,0 @@
-# this workaround is there in OE since 2003. It looks to provide a workaround
-# allowing others sending SIGUSR1 to cause an apm suspend event. Disable it for
-# now.
-#
-# comment added by Kevin Tian <kevin.tian@intel.com>, 2010-07-13
-#
-# Patch managed by http://www.holgerschurig.de/patcher.html
-#
-
---- apmd-3.2.2.orig/apmd.c~workaround.patch
-+++ apmd-3.2.2.orig/apmd.c
-@@ -158,6 +158,7 @@
- static int quiet_bios_batlow; /* = 0 */
- static int verbosity = DEFAULT_VERBOSITY;
- static int warn_level = 10;
-+static int sleep_now = 0;	/* ntp */
- 
- static uid_t apmd_uid = 0;
- static int apmd_fd = -1;
-@@ -942,6 +943,12 @@
- 	exit(0);
- }
- 
-+/* ntp */
-+static void sig_usr1(int sig)
-+{
-+  sleep_now = 1;
-+}
-+
- int main(int argc, char **argv)
- {
- 	int c;
-@@ -1151,6 +1158,8 @@
- 	openlog("apmd", (verbosity>=LOG_DEBUG)?LOG_PERROR:0 | LOG_PID | LOG_CONS, LOG_DAEMON);
- 
- 	/* Set up signal handler */
-+ 	if (signal(SIGUSR1, SIG_IGN) != SIG_IGN)
-+ 		signal(SIGUSR1, sig_usr1);	/* ntp */
- 	if (signal(SIGINT, SIG_IGN) != SIG_IGN)
- 		signal(SIGINT, sig_handler);
- 	if (signal(SIGQUIT, SIG_IGN) != SIG_IGN)
-@@ -1230,9 +1239,16 @@
- 
- 	for (;;)
- 	{
--		int num_events = apm_get_events(apmd_fd, check_interval, events, MAX_EVENTS);
-+		int num_events;
- 		int e, a;
- 
-+		/* ntp */
-+		if (sleep_now) {
-+			sleep_now = 0;
-+			handle_event(APM_USER_SUSPEND, &apminfo);
-+		}
-+
-+		num_events = apm_get_events(apmd_fd, check_interval, events, MAX_EVENTS);
- 		apm_read(&apminfo);
- 
- 		if (num_events == 0) {
-- 
1.7.1


