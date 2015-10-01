Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94792E00E6A; Thu,  1 Oct 2015 11:07:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.176 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9428E00B6C
	for <poky@yoctoproject.org>; Thu,  1 Oct 2015 11:07:41 -0700 (PDT)
Received: by wicge5 with SMTP id ge5so942265wic.0
	for <poky@yoctoproject.org>; Thu, 01 Oct 2015 11:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=PMWfVxBzQHJVc4L/0oJx2oT7Nrv8LiksE33cHlDVOLU=;
	b=poKJOC/TMJlkDUAbaUNqnUFPItagoukKhniiLpUryhvYBoEXTE5bXmwfN/WJxniJFE
	UeR+OxUgwwCzvItVHbRarvcNDAOI7VBOCWkLG1QoKZ9Mq2GBNuDYrgdWzW3yZpPVCaQX
	eH4Q3Z1+ToAAs5kS2jpIN1HgTeyDasza6rVDi2q7+EuTDFEa1jXjZhCktMhgbZGFqbQ8
	UG9BipFjfcspZoDT+jw8C0dNxrc/cgWpDYrwhS7FxmnkGn9mALpaJSXE3k5B/2a/xgqL
	z1jIgPodwNHzdoxEYPhtYPEptvucgR73Rrq+5q231fNQ988zdmIurPcr6PZ87QEpSOk5
	A8UA==
X-Received: by 10.180.188.33 with SMTP id fx1mr143063wic.31.1443722860946;
	Thu, 01 Oct 2015 11:07:40 -0700 (PDT)
Received: from ernie.rdm.local (rademacherexchange.de. [46.245.221.222])
	by smtp.gmail.com with ESMTPSA id jf3sm4352813wic.8.2015.10.01.11.07.40
	for <poky@yoctoproject.org> (version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 01 Oct 2015 11:07:40 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <9A2A9F0F-9060-44E4-A59D-3749BF52C6A5@gmail.com>
Date: Thu, 1 Oct 2015 20:07:40 +0200
To: poky@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [PATCH 9/9] Update libusb1 from 1.0.19 to 1.0.20
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
X-List-Received-Date: Thu, 01 Oct 2015 18:07:43 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


2015-09-13: v1.0.20
* Add Haiku support
* Fix multiple memory and resource leaks (#16, #52, #76, #81)
* Fix possible deadlock when executing transfer callback
* New libusb_free_pollfds() API
* Darwin: Fix devices not being detected on OS X 10.8 (#48)
* Linux: Allow larger isochronous transfer submission (#23)
* Windows: Fix broken builds Cygwin/MinGW builds and compiler warnings
* Windows: Fix broken bus number lookup
* Windows: Improve submission of control requests for composite devices
* Examples: Add two-stage load support to fxload (#12)
* Correctly report cancellations due to timeouts
* Improve efficiency of event handling
* Improve speed of transfer submission in multi-threaded environments
* Various other bug fixes and improvements
The (#xx) numbers are libusb issue numbers, see ie:
https://github.com/libusb/libusb/issues/16

Signed-off-by: Jens Rehsack <sno@netbsd.org>
---
 meta/recipes-support/libusb/libusb1_1.0.19.bb | 34 =
---------------------------
 meta/recipes-support/libusb/libusb1_1.0.20.bb | 34 =
+++++++++++++++++++++++++++
 2 files changed, 34 insertions(+), 34 deletions(-)
 delete mode 100644 meta/recipes-support/libusb/libusb1_1.0.19.bb
 create mode 100644 meta/recipes-support/libusb/libusb1_1.0.20.bb

diff --git a/meta/recipes-support/libusb/libusb1_1.0.19.bb =
b/meta/recipes-support/libusb/libusb1_1.0.19.bb
deleted file mode 100644
index a20e1fc..0000000
--- a/meta/recipes-support/libusb/libusb1_1.0.19.bb
+++ /dev/null
@@ -1,34 +0,0 @@
-SUMMARY =3D "Userspace library to access USB (version 1.0)"
-HOMEPAGE =3D "http://libusb.sf.net"
-BUGTRACKER =3D "http://www.libusb.org/report"
-SECTION =3D "libs"
-
-LICENSE =3D "LGPLv2.1+"
-LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3Dfbc093901857fcd118f065f900982c24"
-
-BBCLASSEXTEND =3D "native nativesdk"
-
-SRC_URI =3D "${SOURCEFORGE_MIRROR}/libusb/libusb-${PV}.tar.bz2 \
-          "
-
-SRC_URI[md5sum] =3D "f9e2bb5879968467e5ca756cb4e1fa7e"
-SRC_URI[sha256sum] =3D =
"6c502c816002f90d4f76050a6429c3a7e0d84204222cbff2dce95dd773ba6840"
-
-S =3D "${WORKDIR}/libusb-${PV}"
-
-inherit autotools pkgconfig
-
-# Don't configure udev by default since it will cause a circular
-# dependecy with udev package, which depends on libusb
-EXTRA_OECONF =3D "--libdir=3D${base_libdir} --disable-udev"
-
-do_install_append() {
-	install -d ${D}${libdir}
-	if [ ! ${D}${libdir} -ef ${D}${base_libdir} ]; then
-		mv ${D}${base_libdir}/pkgconfig ${D}${libdir}
-	fi
-}
-
-FILES_${PN} +=3D "${base_libdir}/*.so.*"
-
-FILES_${PN}-dev +=3D "${base_libdir}/*.so ${base_libdir}/*.la"
diff --git a/meta/recipes-support/libusb/libusb1_1.0.20.bb =
b/meta/recipes-support/libusb/libusb1_1.0.20.bb
new file mode 100644
index 0000000..21b8b45
--- /dev/null
+++ b/meta/recipes-support/libusb/libusb1_1.0.20.bb
@@ -0,0 +1,34 @@
+SUMMARY =3D "Userspace library to access USB (version 1.0)"
+HOMEPAGE =3D "http://libusb.sf.net"
+BUGTRACKER =3D "http://www.libusb.org/report"
+SECTION =3D "libs"
+
+LICENSE =3D "LGPLv2.1+"
+LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3Dfbc093901857fcd118f065f900982c24"
+
+BBCLASSEXTEND =3D "native nativesdk"
+
+SRC_URI =3D "${SOURCEFORGE_MIRROR}/libusb/libusb-${PV}.tar.bz2 \
+          "
+
+SRC_URI[md5sum] =3D "1d4eb194eaaa2bcfbba28102768c7dbf"
+SRC_URI[sha256sum] =3D =
"cb057190ba0a961768224e4dc6883104c6f945b2bf2ef90d7da39e7c1834f7ff"
+
+S =3D "${WORKDIR}/libusb-${PV}"
+
+inherit autotools pkgconfig
+
+# Don't configure udev by default since it will cause a circular
+# dependecy with udev package, which depends on libusb
+EXTRA_OECONF =3D "--libdir=3D${base_libdir} --disable-udev"
+
+do_install_append() {
+	install -d ${D}${libdir}
+	if [ ! ${D}${libdir} -ef ${D}${base_libdir} ]; then
+		mv ${D}${base_libdir}/pkgconfig ${D}${libdir}
+	fi
+}
+
+FILES_${PN} +=3D "${base_libdir}/*.so.*"
+
+FILES_${PN}-dev +=3D "${base_libdir}/*.so ${base_libdir}/*.la"
--=20
1.9.1

--=20
Jens Rehsack - rehsack@gmail.com


