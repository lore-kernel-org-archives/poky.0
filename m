Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-ew0-f45.google.com (mail-ew0-f45.google.com
	[209.85.215.45])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3AF1D4C80050
	for <poky@yoctoproject.org>; Sun, 12 Dec 2010 09:01:53 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ewy10 with SMTP id 10so3536134ewy.32
	for <poky@yoctoproject.org>; Sun, 12 Dec 2010 07:01:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:received:from:to:cc:subject:date
	:message-id:x-mailer;
	bh=ldNqUAEYUYVrAdxuxBRsNmdkGeD7BfS+lFgB7joCpbM=;
	b=IoaH1iZwz65JuhkoHaVHEyy6aRBgICS2jY9PdqpKbfLPF5m9rx05UjkW5n8EuL3jbs
	hQpc5/LkfbJsESvk657o4w6PK7lqtHycwmHO7AL0VPaAl3RKx/YqhnPA70fzWDH6F/dw
	XQb96lSNDvdb2ZisPAIaQcQRJGGV1dNw5+Mhs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=from:to:cc:subject:date:message-id:x-mailer;
	b=sejNjxDvNHBtKufoaiDewwlYTgvb9KxGxQ3Nhose5q3ziwO7HC7wNiIPfBjlWCGqQV
	XQnzsQlWiHZVi4xukWR/I5zvLYBT8xb/5GCW66fAmtpzF4uA4dTmyuh2yRcw2HnrAezW
	pvnoQ4w1twhfMLa+FLegbrHMfY9kXysbXZaOA=
Received: by 10.213.28.66 with SMTP id l2mr1484951ebc.71.1292166111165;
	Sun, 12 Dec 2010 07:01:51 -0800 (PST)
Received: from localhost.localdomain (j200125.upc-j.chello.nl [24.132.200.125])
	by mx.google.com with ESMTPS id b52sm4252083eei.19.2010.12.12.07.01.49
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Sun, 12 Dec 2010 07:01:50 -0800 (PST)
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: poky@yoctoproject.org
Date: Sun, 12 Dec 2010 16:01:41 +0100
Message-Id: <1292166104-22971-1-git-send-email-fransmeulenbroeks@gmail.com>
X-Mailer: git-send-email 1.6.4.2
Subject: [PATCH 1/4] libcdio: new recipe (brought over from OE)
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
X-List-Received-Date: Sun, 12 Dec 2010 15:01:55 -0000

Signed-off-by: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
---
 meta/recipes-multimedia/libcdio/libcdio_0.82.bb |   28 +++++++++++++++++++++++
 1 files changed, 28 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-multimedia/libcdio/libcdio_0.82.bb

diff --git a/meta/recipes-multimedia/libcdio/libcdio_0.82.bb b/meta/recipes-multimedia/libcdio/libcdio_0.82.bb
new file mode 100644
index 0000000..6f5e240
--- /dev/null
+++ b/meta/recipes-multimedia/libcdio/libcdio_0.82.bb
@@ -0,0 +1,28 @@
+DESCRIPTION = "The GNU Compact Disc Input and Control library (libcdio) contains a library for CD-ROM and CD image access."
+HOMEPAGE = "http://www.gnu.org/software/libcdio/"
+SECTION = "libs"
+PRIORITY = "optional"
+LICENSE = "GPLv3+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
+
+DEPENDS = "ncurses"
+PR = "r0"
+
+SRC_URI = "${GNU_MIRROR}/${PN}/${P}.tar.gz"
+SRC_URI[md5sum] = "1c29b18e01ab2b966162bc727bf3c360"
+SRC_URI[sha256sum] = "1acb3de8e0927906ade7a34c5853173d3068b87b02dfba80d0bf11e47f0b5d39"
+
+inherit autotools pkgconfig
+
+EXTRA_OECONF = "ac_cv_member_struct_tm_tm_gmtoff=no"
+
+PACKAGES += "${PN}-utils"
+
+FILES_${PN} = "${libdir}/${PN}${SOLIB}"
+FILES_${PN}-utils = "${bindir}/*"
+
+python populate_packages_prepend () {
+        glibdir = bb.data.expand('${libdir}', d)
+        do_split_packages(d, glibdir, '^lib(.*)\.so\..*', 'lib%s', 'gstreamer %s library', extra_depends='', allow_links=True)
+}
+DEBUG_OPTIMIZATION_thumb = "-Os -fno-omit-frame-pointer -g"
-- 
1.6.4.2


