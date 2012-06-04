Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED9B1E01443
	for <poky@yoctoproject.org>; Mon,  4 Jun 2012 14:00:38 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id EB59130463
	for <poky@yoctoproject.org>; Mon,  4 Jun 2012 17:00:32 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon,  4 Jun 2012 14:00:23 -0700
Message-Id: <aaea7284bfb3e3115e4f0a2647ace9a919d7ca79.1338843506.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1338843506.git.scott.a.garman@intel.com>
References: <cover.1338843506.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1338843506.git.scott.a.garman@intel.com>
References: <cover.1338843506.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: EB59130463.791BC
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 6/7] Hob: add original url show function with the tooltip hyperlink for user
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
X-List-Received-Date: Mon, 04 Jun 2012 21:00:39 -0000

From: Liming An <limingx.l.an@intel.com>

When case about No browser, such as running in 'Build Appliance', user can't open
the hyper link, so add this work around for user. (Checking the browser is avaiable
or not is hard by different system and browser type)

[YOCTO #2340]

(Bitbake rev: 02cc701869bceb2d0e11fe3cf51fb0582cda01b0)

Signed-off-by: Liming An <limingx.l.an@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/ui/crumbs/persistenttooltip.py |   19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/bitbake/lib/bb/ui/crumbs/persistenttooltip.py b/bitbake/lib/bb/ui/crumbs/persistenttooltip.py
index b43d297..927c194 100644
--- a/bitbake/lib/bb/ui/crumbs/persistenttooltip.py
+++ b/bitbake/lib/bb/ui/crumbs/persistenttooltip.py
@@ -125,11 +125,17 @@ class PersistentTooltip(gtk.Window):
                 style.fg[gtk.STATE_NORMAL] = gtk.gdk.color_parse(val)
                 self.label.set_style(style)
                 break # we only care for the tooltip_fg_color
+
         self.label.set_markup(markup)
         self.label.show()
         bin.add(self.label)
         hbox.pack_end(bin, True, True, 6)
 
+        # add the original URL display for user reference
+        if 'a href' in markup:
+            hbox.set_tooltip_text(self.get_markup_url(markup))
+        hbox.show()
+
         self.connect("key-press-event", self._catch_esc_cb)
 
     """
@@ -165,3 +171,16 @@ class PersistentTooltip(gtk.Window):
     def hide(self):
         self.shown = False
         gtk.Window.hide(self)
+
+    """
+    Called to get the hyperlink URL from markup text.
+    """
+    def get_markup_url(self, markup):
+        url = "http:"
+        if markup and type(markup) == str:
+            s = markup
+            if 'http:' in s:
+                import re
+                url = re.search('(http:[^,\\ "]+)', s).group(0)
+
+        return url
-- 
1.7.9.5


