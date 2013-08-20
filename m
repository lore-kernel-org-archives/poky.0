Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7A83E00441
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:39:39 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 20 Aug 2013 01:36:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="383551692"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2013 01:39:37 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id 68ABE6A4007;
	Tue, 20 Aug 2013 01:39:35 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:44:43 +0200
Message-Id: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 001/186] bitbake: hob: Add missing file from previous commit
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
X-List-Received-Date: Tue, 20 Aug 2013 08:39:39 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

This should have been part of 'hob: implement the "retrieve image dialog" +
changes to image combo box' but got lost in the merge process. This adds
the missing file.

(Bitbake rev: 0eadcc073f270c0b323955cf7719b77195cf4890)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../lib/bb/ui/crumbs/hig/retrieveimagedialog.py    |   49 ++++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 bitbake/lib/bb/ui/crumbs/hig/retrieveimagedialog.py

diff --git a/bitbake/lib/bb/ui/crumbs/hig/retrieveimagedialog.py b/bitbake/lib/bb/ui/crumbs/hig/retrieveimagedialog.py
new file mode 100644
index 0000000..060b4fd
--- /dev/null
+++ b/bitbake/lib/bb/ui/crumbs/hig/retrieveimagedialog.py
@@ -0,0 +1,49 @@
+#
+# BitBake Graphical GTK User Interface
+#
+# Copyright (C) 2013   Intel Corporation
+#
+# Authored by Cristiana Voicu <cristiana.voicu@intel.com>
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+
+import gtk
+
+class RetrieveImageDialog (gtk.FileChooserDialog):
+    """
+    This class is used to create a dialog that permits to retrieve
+    a custom image saved previously from Hob.
+    """
+    def __init__(self, directory,title, parent, flags, buttons=None):
+        super(RetrieveImageDialog, self).__init__(title, None, gtk.FILE_CHOOSER_ACTION_OPEN,
+            (gtk.STOCK_CANCEL, gtk.RESPONSE_CANCEL,gtk.STOCK_OPEN, gtk.RESPONSE_OK))
+        self.directory = directory
+
+        # create visual elements on the dialog
+        self.create_visual_elements()
+
+    def create_visual_elements(self):
+        self.set_show_hidden(True)
+        self.set_default_response(gtk.RESPONSE_OK)
+        self.set_current_folder(self.directory)
+
+        vbox = self.get_children()[0].get_children()[0].get_children()[0]
+        for child in vbox.get_children()[0].get_children()[0].get_children()[0].get_children():
+            vbox.get_children()[0].get_children()[0].get_children()[0].remove(child)
+
+        label1 = gtk.Label()
+        label1.set_text("File system:  " + self.directory)
+        label1.show()
+        vbox.get_children()[0].get_children()[0].get_children()[0].pack_start(label1, expand=False, fill=False, padding=0)
+        vbox.get_children()[0].get_children()[1].get_children()[0].hide()
-- 
1.7.9.5


