Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74572E01442
	for <poky@yoctoproject.org>; Mon,  4 Jun 2012 14:00:36 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 57E4B30466
	for <poky@yoctoproject.org>; Mon,  4 Jun 2012 17:00:30 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon,  4 Jun 2012 14:00:22 -0700
Message-Id: <816c6d41a2b610ec74927ce62a97072e594f2abc.1338843506.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1338843506.git.scott.a.garman@intel.com>
References: <cover.1338843506.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1338843506.git.scott.a.garman@intel.com>
References: <cover.1338843506.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 57E4B30466.C4CAA
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 5/7] Hob: change the refresh icon speed to make it view clear
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
X-List-Received-Date: Mon, 04 Jun 2012 21:00:36 -0000

From: Liming An <limingx.l.an@intel.com>

Because the arrow icon refresh so fast as the go backward by illusion, so adjust it slow.

[YOCTO #2335]

(Bitbake rev: ac4a8885fafdc0d1e79831334ead9a8ddb6e2472)

Signed-off-by: Liming An <limingx.l.an@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/ui/crumbs/hobwidget.py |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/bitbake/lib/bb/ui/crumbs/hobwidget.py b/bitbake/lib/bb/ui/crumbs/hobwidget.py
index 751b3e0..6cf73b0 100644
--- a/bitbake/lib/bb/ui/crumbs/hobwidget.py
+++ b/bitbake/lib/bb/ui/crumbs/hobwidget.py
@@ -1057,7 +1057,7 @@ class HobCellRendererPixbuf(gtk.CellRendererPixbuf):
             if self.control.is_active():
                 self.control.on_draw_pixbuf_cb(pix, window.cairo_create(), x, y, w, h, True)
             else:
-                self.control.start_run(200, 0, 0, 1000, 200, tree)
+                self.control.start_run(200, 0, 0, 1000, 150, tree)
         else:
             self.control.remove_running_cell_area(cell_area)
             self.control.on_draw_pixbuf_cb(pix, window.cairo_create(), x, y, w, h, False)
-- 
1.7.9.5


