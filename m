Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DC1BE0144A
	for <poky@yoctoproject.org>; Wed, 20 Jun 2012 16:10:53 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id B91E030411
	for <poky@yoctoproject.org>; Wed, 20 Jun 2012 19:10:47 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Wed, 20 Jun 2012 16:10:43 -0700
Message-Id: <535627a66fe3f33d8bd3acd7347b848bd1e7e0f7.1340233660.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1340233660.git.scott.a.garman@intel.com>
References: <cover.1340233660.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1340233660.git.scott.a.garman@intel.com>
References: <cover.1340233660.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: B91E030411.326CF
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 6/6] qt4-embedded: fix QT_ARCH usage in QT_CONFIG_FLAGS
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
X-List-Received-Date: Wed, 20 Jun 2012 23:10:53 -0000

From: Anders Darander <anders@chargestorm.se>

After the change to shell style functions (from python style), the
ability to use oe_filter_out on QT_CONFIG_FLAGS got broken.

This patch solves that by referring to QT_ARCH in a more correct way.

(From OE-Core rev: abd5d5a712686a379a1a1da29d78a0f374f13e33)

Signed-off-by: Anders Darander <anders@chargestorm.se>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/recipes-qt/qt4/qt4-embedded.inc |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-qt/qt4/qt4-embedded.inc b/meta/recipes-qt/qt4/qt4-embedded.inc
index 05803d1..9c5b4af 100644
--- a/meta/recipes-qt/qt4/qt4-embedded.inc
+++ b/meta/recipes-qt/qt4/qt4-embedded.inc
@@ -10,7 +10,7 @@ QT_BASE_LIB  ?= "libqt-embedded"
 SRC_URI += "file://qte.sh"
 
 QT_CONFIG_FLAGS += " \
-    -embedded ${QT_ARCH} \
+    -embedded $QT_ARCH \
     -qtlibinfix ${QT_LIBINFIX} \
     -plugin-gfx-transformed -plugin-gfx-qvfb -plugin-gfx-vnc -plugin-gfx-directfb \
     -plugin-mouse-tslib -qt-mouse-pc -qt-mouse-qvfb -qt-mouse-linuxinput \
-- 
1.7.9.5


