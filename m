Return-Path: <eric.nelson@boundarydevices.com>
Received: from mail.integraonline.com (relay2.integra.net [204.130.255.181])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 290B5E002E9
	for <poky@yoctoproject.org>; Tue, 30 Jul 2013 13:35:13 -0700 (PDT)
Received: (qmail 22192 invoked from network); 30 Jul 2013 20:35:13 -0000
Received: from unknown (HELO localhost.localdomain) (70.96.116.236)
	by relay2.integra.net with SMTP; 30 Jul 2013 20:35:13 -0000
From: Eric Nelson <eric.nelson@boundarydevices.com>
To: poky@yoctoproject.org
Date: Tue, 30 Jul 2013 13:35:07 -0700
Message-Id: <1375216507-11576-1-git-send-email-eric.nelson@boundarydevices.com>
X-Mailer: git-send-email 1.8.1.2
Cc: otavio@ossystems.com.br
Subject: [PATCH] gst-plugins-gl: add explicit dependency on libpng
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
X-List-Received-Date: Tue, 30 Jul 2013 20:35:14 -0000

Signed-off-by: Eric Nelson <eric.nelson@boundarydevices.com>
---
 meta/recipes-multimedia/gstreamer/gst-plugins-gl_0.10.3.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-gl_0.10.3.bb b/meta/recipes-multimedia/gstreamer/gst-plugins-gl_0.10.3.bb
index a6c74fb..213e799 100644
--- a/meta/recipes-multimedia/gstreamer/gst-plugins-gl_0.10.3.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-plugins-gl_0.10.3.bb
@@ -8,7 +8,7 @@ SRC_URI[sha256sum] = "48340b6a4b8abce16344a7bc33e74a94fdcce4f57ef6342cdf2f941c42
 
 SRC_URI += " file://0001-conditional-gl-framebuffer-undefined-use.patch"
 
-DEPENDS += "gst-plugins-base virtual/libgles2 virtual/egl jpeg"
+DEPENDS += "gst-plugins-base virtual/libgles2 virtual/egl jpeg libpng"
 
 inherit gettext gconf
 
-- 
1.8.1.2


