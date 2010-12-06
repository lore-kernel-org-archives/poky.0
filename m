Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3B5114C80050
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 13:06:10 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eyz10 with SMTP id 10so6641826eyz.35
	for <poky@yoctoproject.org>; Mon, 06 Dec 2010 11:06:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:received:from:to:cc:subject:date
	:message-id:x-mailer;
	bh=ldNqUAEYUYVrAdxuxBRsNmdkGeD7BfS+lFgB7joCpbM=;
	b=Ct75uh/Uik467z93YiRIMzsH2EFlVf4UPfSl0jptoBvIfqm7RRTEl4nh7pZgzZPKXk
	FafoHVDVk7KyeYPEMqpqXSvIpKdauvTcLxwawc5Cy8rSy2Q+sTvHNfIVKe8EUnBVIQzk
	3SYRx12gm1dvTRdq6rM98Z0bip9nskg5v2abk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=from:to:cc:subject:date:message-id:x-mailer;
	b=qI5NultbBLaLrhXYH8FpqJElyrA2zWgr5KPrsfTtPBK1wfZV2RrX2l5d1WAwtZjP8q
	BHhzaoEqpX4g2xhcJTbTWgzzhKD86vNB4a1GQ8sOLJ27ytwy1vhvZ1kQmykYRPmuZCVJ
	6Hf/ljbn3RRUWkRJvGruaDyb+CYs6ZPVTWBnc=
Received: by 10.213.3.66 with SMTP id 2mr6152480ebm.82.1291662368795;
	Mon, 06 Dec 2010 11:06:08 -0800 (PST)
Received: from localhost.localdomain (j200125.upc-j.chello.nl [24.132.200.125])
	by mx.google.com with ESMTPS id x54sm4976102eeh.23.2010.12.06.11.06.07
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 06 Dec 2010 11:06:07 -0800 (PST)
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: poky@yoctoproject.org
Date: Mon,  6 Dec 2010 20:05:57 +0100
Message-Id: <1291662362-13810-1-git-send-email-fransmeulenbroeks@gmail.com>
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
X-List-Received-Date: Mon, 06 Dec 2010 19:06:10 -0000

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


