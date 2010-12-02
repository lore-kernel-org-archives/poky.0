Return-Path: <aalonso00@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 073844C80052
	for <poky@yoctoproject.org>; Wed,  1 Dec 2010 20:31:28 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eyz10 with SMTP id 10so4146996eyz.35
	for <poky@yoctoproject.org>; Wed, 01 Dec 2010 18:31:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:received:sender:from:to:cc:subject
	:date:message-id:x-mailer;
	bh=/1zvOUpgaFKzW/FH3Hh/JSVF5G8weht5qeOQk9EL/z0=;
	b=i9obPzw2pvTfzehxfVPV+t0tSnLRNKi1MM7nouOsknCrYo+yjiaH5kDf2ut6ASVLy+
	zcyM4+dWUdUejjsvKNCvsf5klIdB3Pti1ARpKU1qiblYM5zFjwFlpRB3j+9CEduy0Gae
	rRNOViWwCREfDmzqdK9S/PB+Mgf08WuN3uWLQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer;
	b=bMMnu6Salw8jzo/ipQo8e7t5Yc47Uq/QiH/+Bkn/AR6AyDP4LizsYEYj235avkOljr
	ZOILKsVDFMjbsQ5lBeZgKqjtR64vIPAkolmrs4Zg4++bLvGh/xS2eOSZRCNCTV5za2oC
	x+ty9+QauU1X1BYw3Jy1v/5FF+7+5eBKjLXlE=
Received: by 10.213.27.132 with SMTP id i4mr5341564ebc.22.1291257085087;
	Wed, 01 Dec 2010 18:31:25 -0800 (PST)
Received: from aalonso-pc.lan ([189.134.121.81])
	by mx.google.com with ESMTPS id b52sm596979eei.19.2010.12.01.18.31.23
	(version=SSLv3 cipher=RC4-MD5); Wed, 01 Dec 2010 18:31:24 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: poky@yoctoproject.org
Date: Wed,  1 Dec 2010 20:36:20 -0600
Message-Id: <1291257381-21280-1-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.2.3
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 1/2] librsvg: fix gdk-pixbuf-query-loaders not found in path
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
X-List-Received-Date: Thu, 02 Dec 2010 02:31:29 -0000

* Fix configure: error: gdk-pixbuf-query-loaders not found in path
* Bump PR

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 meta/recipes-gnome/librsvg/librsvg_2.32.0.bb |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb b/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb
index a421b68..2f257fc 100644
--- a/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb
+++ b/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb
@@ -8,7 +8,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 
 SECTION = "x11/utils"
 DEPENDS = "gtk+ libcroco cairo libxml2 popt"
-PR = "r1"
+PR = "r2"
 
 inherit autotools pkgconfig gnome
 
@@ -17,6 +17,7 @@ EXTRA_OECONF = "--disable-mozilla-plugin --without-svgz --without-croco --disabl
 SRC_URI += "file://doc_Makefile.patch"
 
 do_configure_prepend () {
+    export GDK_PIXBUF_QUERYLOADERS="${libdir}/gtk-2.0/version/loaders"
 	echo "CLEANFILES=" > gtk-doc.make
 }
 
-- 
1.7.2.3


