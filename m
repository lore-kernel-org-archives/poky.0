Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 984C64C80A47
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 01:59:29 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1G7xT9I017708
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 23:59:29 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 15 Feb 2011 23:59:28 -0800
Received: from localhost ([128.224.162.205]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 15 Feb 2011 23:59:28 -0800
Message-Id: <8396f9bd74afc8ce3644d2310b4138111123afda.1297843029.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1297843029.git.jingdong.lu@windriver.com>
References: <cover.1297843029.git.jingdong.lu@windriver.com>
Old-Date: Wed, 16 Feb 2011 15:47:40 +0800
Date: Wed, 16 Feb 2011 15:59:45 +0800
To: poky@yoctoproject.org
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
X-OriginalArrivalTime: 16 Feb 2011 07:59:28.0780 (UTC)
	FILETIME=[6FBCB4C0:01CBCDAF]
Subject: [PATCH 1/1] gtk+: add BASE_RRECOMMANDS_poky-lsb for gtk+
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
X-List-Received-Date: Wed, 16 Feb 2011 07:59:29 -0000

From: Jingdong Lu <jingdong.lu@windriver.com>

Gtk+ will fail during compiling poky-image-lsb and DISTRO is "poky-lsb" because of "BASE_RRECOMMANDS".
Add BASE_RRECOMMANDS_poky-lsb for gtk+ in order to avoid the dependence of "BASE_RRECOMMANDS".

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 meta/recipes-gnome/gtk+/gtk+.inc       |    1 +
 meta/recipes-gnome/gtk+/gtk+_2.22.1.bb |    2 +-
 2 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-gnome/gtk+/gtk+.inc b/meta/recipes-gnome/gtk+/gtk+.inc
index 94a8fe6..4a24802 100644
--- a/meta/recipes-gnome/gtk+/gtk+.inc
+++ b/meta/recipes-gnome/gtk+/gtk+.inc
@@ -38,6 +38,7 @@ FILES_${PN}-dbg += " \
 BASE_RRECOMMENDS = "ttf-dejavu-sans"
 BASE_RRECOMMENDS_angstrom = "ttf-dejavu-sans gdk-pixbuf-loader-png gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif gdk-pixbuf-loader-xpm"
 BASE_RRECOMMENDS_poky = "gdk-pixbuf-loader-png gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif gdk-pixbuf-loader-xpm shared-mime-info"
+BASE_RRECOMMENDS_poky-lsb = "gdk-pixbuf-loader-png gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif gdk-pixbuf-loader-xpm shared-mime-info"
 
 GLIBC_RRECOMMENDS= "${BASE_RRECOMMENDS} glibc-gconv-iso8859-1"
 
diff --git a/meta/recipes-gnome/gtk+/gtk+_2.22.1.bb b/meta/recipes-gnome/gtk+/gtk+_2.22.1.bb
index 35aa883..93fdb53 100644
--- a/meta/recipes-gnome/gtk+/gtk+_2.22.1.bb
+++ b/meta/recipes-gnome/gtk+/gtk+_2.22.1.bb
@@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7 \
                     file://gtk/gtk.h;endline=27;md5=c59e0b4490dd135a5726ebf851f9b17f \
                     file://gdk/gdk.h;endline=27;md5=07db285ec208fb3e0bf7d861b0614202 \
                     file://tests/testgtk.c;endline=27;md5=262db5db5f776f9863e56df31423e24c"
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "http://download.gnome.org/sources/gtk+/2.22/gtk+-${PV}.tar.bz2 \
            file://xsettings.patch;patch=1 \
-- 
1.7.0.4


