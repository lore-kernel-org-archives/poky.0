Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC1F2E00B43; Thu,  1 Oct 2015 11:02:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.180 listed in list.dnswl.org]
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00257E00747
	for <poky@yoctoproject.org>; Thu,  1 Oct 2015 11:02:04 -0700 (PDT)
Received: by wicge5 with SMTP id ge5so728434wic.0
	for <poky@yoctoproject.org>; Thu, 01 Oct 2015 11:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=19YkGe/tIK6qQwMDRrGDwW51sjMUEt4P3vlK9HFJWS0=;
	b=aIG6BNyoBQ6mOg1bKkKqW8WBb+AZTM+MhRQpV2n3gtrEOg9oaqLJ/8xff44Aae3riO
	OajonO1Hli/FuZzzKQAHmYaqg3y/fXJMy6JvpZ78eMDpEBPnDcMvfOqGwIKIVMec303w
	ax7HdKAE3xOSWk65+i+HQtwSC/zhsktOIbhhsv3+pSc9iIwVQwz5bisc91nABL1BAR3Z
	qOgGx64QPHbNiWeg3Z1J2cd2TeYkdIuBE8Y2R9tm9SFE7q3sdTYisW6GqmydvdqvwXlz
	IMjYendZo0vT6dAfYkzCBi6gsfJtwR6DF7bu/FLf+0EM6NOI+7fTHPBpLvFjP3GUBanN
	RELg==
X-Received: by 10.194.93.35 with SMTP id cr3mr11646256wjb.46.1443722523904;
	Thu, 01 Oct 2015 11:02:03 -0700 (PDT)
Received: from ernie.rdm.local (rademacherexchange.de. [46.245.221.222])
	by smtp.gmail.com with ESMTPSA id
	fs9sm4322947wic.24.2015.10.01.11.02.03 for <poky@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 01 Oct 2015 11:02:03 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <D0B15EA9-247E-468A-9F35-8C9450B48E6E@gmail.com>
Date: Thu, 1 Oct 2015 20:02:02 +0200
To: poky@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [PATCH 2/9] Don't introduce pci dependencies without pci being featured
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
X-List-Received-Date: Thu, 01 Oct 2015 18:02:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Signed-off-by: Jens Rehsack <sno@netbsd.org>
---
 meta/recipes-core/udev/udev.inc | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta/recipes-core/udev/udev.inc =
b/meta/recipes-core/udev/udev.inc
index a00dad5..ea218f0 100644
--- a/meta/recipes-core/udev/udev.inc
+++ b/meta/recipes-core/udev/udev.inc
@@ -12,7 +12,9 @@ LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3Db234ee4d69f5fce4486a80fdaf4a4263 \
=20
 LDFLAGS +=3D "-lrt"
=20
-DEPENDS =3D "glib-2.0 libusb usbutils pciutils glib-2.0-native =
gperf-native libxslt-native util-linux"
+DEPENDS =3D "glib-2.0 glib-2.0-native gperf-native libxslt-native =
util-linux"
+DEPENDS +=3D " ${@base_contains('MACHINE_FEATURES', 'usbhost', 'libusb =
usbutils', '', d)}"
+DEPENDS +=3D " ${@base_contains('MACHINE_FEATURES', 'pci', 'pciutils', =
'', d)}"
 RPROVIDES_${PN} =3D "hotplug"
=20
 SRC_URI =3D =
"${KERNELORG_MIRROR}/linux/utils/kernel/hotplug/udev-${PV}.tar.gz \
@@ -37,10 +39,6 @@ RDEPENDS_${PN}-ptest +=3D "make perl python"
 libexecdir =3D "${base_libdir}"
 EXTRA_OECONF =3D "--disable-introspection \
                 --with-rootlibdir=3D${base_libdir} \
-                --with-pci-ids-path=3D${datadir}/pci.ids \
-                ac_cv_file__usr_share_pci_ids=3Dno \
-                ac_cv_file__usr_share_hwdata_pci_ids=3Dno \
-                ac_cv_file__usr_share_misc_pci_ids=3Dyes \
                 --sbindir=3D${base_sbindir} \
                 --libexecdir=3D${nonarch_base_libdir} \
                 --with-rootlibdir=3D${base_libdir} \
@@ -48,6 +46,8 @@ EXTRA_OECONF =3D "--disable-introspection \
                 --without-systemdsystemunitdir \
                "
=20
+EXTRA_OECONF +=3D " ${@base_contains('MACHINE_FEATURES', 'pci', =
'--with-pci-ids-path=3D${datadir}/pci.ids =
ac_cv_file__usr_share_pci_ids=3Dno =
ac_cv_file__usr_share_hwdata_pci_ids=3Dno =
ac_cv_file__usr_share_misc_pci_ids=3Dyes', '--without-pci-ids-path', =
d)}"
+
 PACKAGES =3D+ "udev-cache"
 PACKAGES =3D+ "libudev"
 PACKAGES =3D+ "libgudev"
--=20
1.9.1

--=20
Jens Rehsack - rehsack@gmail.com


