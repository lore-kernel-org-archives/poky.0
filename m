Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-ew0-f45.google.com (mail-ew0-f45.google.com
	[209.85.215.45])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6DEA54C81069
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 13:07:37 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ewy10 with SMTP id 10so6868558ewy.32
	for <poky@yoctoproject.org>; Mon, 06 Dec 2010 11:07:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:received:from:to:cc:subject:date
	:message-id:x-mailer;
	bh=reHJ0hgTBfmP96ZV2pFIZnAJMC/JiHmFzH4t+xolo2A=;
	b=wHKoi4MWwHYhert4y14i7xeHG3y98wCssMYZgS2jrRajfsIAoMPmDHTEK5+w5j6cnK
	5WLOF7QdfUB8hjwSi/Vh61ZvKSfIPwSbfCnhVrVBm7IZQysZDfBmXZHB4mu3571H3bWP
	u489M3dWzbiEKK9Xam5A5vdKqoFRwev9jpGIU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=from:to:cc:subject:date:message-id:x-mailer;
	b=YJNhrZsP+tWDUHo1DauMLuJOVHC0ghn5YdHcNfLEnLaISbJs3iFlHAlhRCEucF+dgW
	znhIFpVNkBoxbSrYbzsDuOK6ZL8Qkyg4lAwtYd1Aimj3lyoxwu/m14r0LB7cLYULN9eR
	CdgtshMoTysJ8Qm7JWrcFeFe0Iij81S5H1SuQ=
Received: by 10.213.26.80 with SMTP id d16mr2585570ebc.55.1291662453568;
	Mon, 06 Dec 2010 11:07:33 -0800 (PST)
Received: from localhost.localdomain (j200125.upc-j.chello.nl [24.132.200.125])
	by mx.google.com with ESMTPS id b52sm4979362eei.13.2010.12.06.11.07.31
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 06 Dec 2010 11:07:32 -0800 (PST)
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: poky@yoctoproject.org
Date: Mon,  6 Dec 2010 20:07:25 +0100
Message-Id: <1291662447-13865-1-git-send-email-fransmeulenbroeks@gmail.com>
X-Mailer: git-send-email 1.6.4.2
Subject: [PATCH 2/4] libcddb: new recipe, brought over from OE
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
X-List-Received-Date: Mon, 06 Dec 2010 19:07:37 -0000

Signed-off-by: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
---
 meta/recipes-multimedia/libcddb/libcddb_1.3.2.bb |   17 +++++++++++++++++
 1 files changed, 17 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-multimedia/libcddb/libcddb_1.3.2.bb

diff --git a/meta/recipes-multimedia/libcddb/libcddb_1.3.2.bb b/meta/recipes-multimedia/libcddb/libcddb_1.3.2.bb
new file mode 100644
index 0000000..aa8dc73
--- /dev/null
+++ b/meta/recipes-multimedia/libcddb/libcddb_1.3.2.bb
@@ -0,0 +1,17 @@
+DESCRIPTION = "A library for accessing a CDDB server"
+HOMEPAGE = "http://libcddb.sourceforge.net"
+SECTION = "libs"
+PRIORITY = "optional"
+LICENSE = "LGPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=6e29c688d912da12b66b73e32b03d812"
+PR = "r1"
+
+DEPENDS = "libcdio gettext"
+
+SRC_URI = "http://downloads.sourceforge.net/${PN}/${P}.tar.bz2"
+
+SRC_URI[md5sum] = "8bb4a6f542197e8e9648ae597cd6bc8a"
+SRC_URI[sha256sum] = "35ce0ee1741ea38def304ddfe84a958901413aa829698357f0bee5bb8f0a223b"
+
+inherit autotools pkgconfig
+
-- 
1.6.4.2


