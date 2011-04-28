Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id F067A4C8024E
	for <poky@yoctoproject.org>; Thu, 28 Apr 2011 12:05:29 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 846481660335; Thu, 28 Apr 2011 11:05:28 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id AD07C166032A;
	Thu, 28 Apr 2011 11:05:26 -0600 (MDT)
Message-ID: <4DB99E56.80209@mlbassoc.com>
Date: Thu, 28 Apr 2011 11:05:26 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: [PATCH] Fix matchbox-panel-2 compile error
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
X-List-Received-Date: Thu, 28 Apr 2011 17:05:30 -0000
X-Groupsio-MsgNum: 5626
Content-Type: multipart/mixed; boundary="------------020307020309040406030906"

--------------020307020309040406030906
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

This patch is needed when building with GCC-4.6.0

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------020307020309040406030906
Content-Type: text/x-patch;
 name="0001-matchbox-panel-fix-compile-error-with-GCC-4.6.0.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-matchbox-panel-fix-compile-error-with-GCC-4.6.0.patch"

From 7337ecd4970f7d94080ad70b912bdb2742d2d7aa Mon Sep 17 00:00:00 2001
From: Gary Thomas <gary@mlbassoc.com>
Date: Thu, 28 Apr 2011 11:03:44 -0600
Subject: [PATCH] matchbox-panel: fix compile error with GCC-4.6.0

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 .../matchbox-panel-2/gcc-4.6.0-compile.patch       |   51 ++++++++++++++++++++
 .../matchbox-panel-2/matchbox-panel-2_git.bb       |    5 +-
 2 files changed, 54 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-sato/matchbox-panel-2/gcc-4.6.0-compile.patch

diff --git a/meta/recipes-sato/matchbox-panel-2/gcc-4.6.0-compile.patch b/meta/recipes-sato/matchbox-panel-2/gcc-4.6.0-compile.patch
new file mode 100644
index 0000000..54ca74d
--- /dev/null
+++ b/meta/recipes-sato/matchbox-panel-2/gcc-4.6.0-compile.patch
@@ -0,0 +1,51 @@
+diff -ur git.ORIG/applets/startup/startup.c git/applets/startup/startup.c
+--- git.ORIG/applets/startup/startup.c	2011-04-28 08:13:25.000000000 -0600
++++ git/applets/startup/startup.c	2011-04-28 09:36:48.521990746 -0600
+@@ -210,9 +210,8 @@
+ {
+         XEvent *xevent;
+         xevent = (XEvent *) gdk_xevent;
+-        gboolean ret;
+ 
+-        ret = sn_display_process_event (applet->sn_display, xevent);
++        sn_display_process_event (applet->sn_display, xevent);	
+ 
+         return GDK_FILTER_CONTINUE;
+ }
+@@ -223,7 +222,6 @@
+ {
+         StartupApplet *applet;
+         Display *xdisplay;
+-        SnMonitorContext *context;
+ 
+         /* Create applet data structure */
+         applet = g_slice_new0 (StartupApplet);
+@@ -248,7 +246,7 @@
+ 
+         applet->sn_display = sn_display_new (xdisplay, NULL, NULL);
+ 
+-        context = sn_monitor_context_new (applet->sn_display,
++        sn_monitor_context_new (applet->sn_display,
+                                           DefaultScreen(xdisplay),
+                                           monitor_event_func,
+                                           (void *) applet,
+diff -ur git.ORIG/applets/startup-notify/startup.c git/applets/startup-notify/startup.c
+--- git.ORIG/applets/startup-notify/startup.c	2011-04-28 08:05:46.000000000 -0600
++++ git/applets/startup-notify/startup.c	2011-04-28 09:42:17.793864786 -0600
+@@ -305,7 +305,6 @@
+   StartupApplet *applet;
+   GtkWidget *widget;
+   Display *xdisplay;
+-  SnMonitorContext *context;
+   
+   applet = g_slice_new0 (StartupApplet);
+ 
+@@ -317,7 +316,7 @@
+     
+     applet->sn_display = sn_display_new (xdisplay, NULL, NULL);
+     
+-    context = sn_monitor_context_new (applet->sn_display,
++    sn_monitor_context_new (applet->sn_display,
+                                       DefaultScreen (xdisplay),
+                                       monitor_event_func,
+                                       applet, NULL);
diff --git a/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_git.bb b/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_git.bb
index 9e1a297..9c1aa01 100644
--- a/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_git.bb
+++ b/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_git.bb
@@ -13,13 +13,14 @@ DEPENDS += " ${@base_contains("MACHINE_FEATURES", "acpi", "libacpi", "",d)}"
 DEPENDS += " ${@base_contains("MACHINE_FEATURES", "apm", "apmd", "",d)}"
 
 PV = "0.0+git${SRCPV}"
-PR = "r0"
+PR = "r1"
 
 RPROVIDES_${PN} = "matchbox-panel"
 RREPLACES_${PN} = "matchbox-panel"
 RCONFLICTS_${PN} = "matchbox-panel"
 
-SRC_URI = "git://git.yoctoproject.org/${BPN};protocol=git \
+SRC_URI = "git://git.yoctoproject.org/${BPN};protocol=git \	
+	   file://gcc-4.6.0-compile.patch \
            file://startup_fix.diff;patch=1"
 
 EXTRA_OECONF = "--enable-startup-notification --enable-dbus"
-- 
1.7.3.4


--------------020307020309040406030906--
