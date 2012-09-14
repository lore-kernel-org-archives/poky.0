Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D648E01438
	for <poky@yoctoproject.org>; Fri, 14 Sep 2012 05:51:37 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 Sep 2012 05:51:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,422,1344236400"; d="scan'208";a="222040691"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.221])
	by fmsmga002.fm.intel.com with ESMTP; 14 Sep 2012 05:51:13 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Garman <scott.a.garman@intel.com>,
	poky@yoctoproject.org
Date: Fri, 14 Sep 2012 13:51:01 +0100
Message-Id: <735aa6f886816f5d0ea08597e3d7f4ffd6ca065c.1347620476.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1347620476.git.paul.eggleton@linux.intel.com>
References: <cover.1347620476.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1347620476.git.paul.eggleton@linux.intel.com>
References: <cover.1347620476.git.paul.eggleton@linux.intel.com>
Subject: [denzil][PATCH 1/2] bitbake: hob: ensure error message text is properly escaped
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
X-List-Received-Date: Fri, 14 Sep 2012 12:51:37 -0000

Our lack of markup escaping was causing invalid markup, leading to the
error dialog being blank. Use the glib markup escaping function provided
by PyGTK+ to do this properly and avoid the blank error dialogs.

Partial fix for [YOCTO #2983].

(Bitbake rev: 563ea5233a5ab1629c51e802d04280692f96c596)

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/ui/crumbs/builder.py |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/ui/crumbs/builder.py b/bitbake/lib/bb/ui/crumbs/builder.py
index df85326..870831a 100755
--- a/bitbake/lib/bb/ui/crumbs/builder.py
+++ b/bitbake/lib/bb/ui/crumbs/builder.py
@@ -21,6 +21,7 @@
 # with this program; if not, write to the Free Software Foundation, Inc.,
 # 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 
+import glib
 import gtk
 import copy
 import os
@@ -644,7 +645,7 @@ class Builder(gtk.Window):
 
     def show_error_dialog(self, msg):
         lbl = "<b>Error</b>\n"
-        lbl = lbl + "%s\n\n" % msg
+        lbl = lbl + "%s\n\n" % glib.markup_escape_text(msg)
         dialog = CrumbsMessageDialog(self, lbl, gtk.STOCK_DIALOG_ERROR)
         button = dialog.add_button("Close", gtk.RESPONSE_OK)
         HobButton.style_button(button)
@@ -816,7 +817,7 @@ class Builder(gtk.Window):
         self.build_failed()
 
     def handler_no_provider_cb(self, running_build, msg):
-        dialog = CrumbsMessageDialog(self, msg, gtk.STOCK_DIALOG_INFO)
+        dialog = CrumbsMessageDialog(self, glib.markup_escape_text(msg), gtk.STOCK_DIALOG_INFO)
         button = dialog.add_button("Close", gtk.RESPONSE_OK)
         HobButton.style_button(button)
         dialog.run()
-- 
1.7.9.5


