Return-Path: <Stefan.Eichenberger@netmodule.com>
Received: from wolf.netmodule.com (wolf.netmodule.com [194.29.26.243])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id AEDDDE0047F
	for <poky@yoctoproject.org>; Fri,  8 Feb 2013 06:30:22 -0800 (PST)
Received: from 194-29-26-246.static.cablecom.ch ([194.29.26.246]
	helo=gila.netmodule.intranet)
	by wolf.netmodule.com with esmtp id 1U3oyM-0002sc-H7
	for poky@yoctoproject.org; Fri, 08 Feb 2013 15:30:38 +0100
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Fri, 8 Feb 2013 15:30:13 +0100
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [poky][PATCH] Write DPKG_ARCH to /etc/apt/apt.conf
Thread-Index: Ac4GCMoFDUfbRSiyQwe7BMT1EeuLmg==
From: "Stefan Eichenberger" <Stefan.Eichenberger@netmodule.com>
To: <poky@yoctoproject.org>
Message-Id: <1U3oyM-0002sc-H7@wolf.netmodule.com>
Subject: [PATCH] Write DPKG_ARCH to /etc/apt/apt.conf
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
X-List-Received-Date: Fri, 08 Feb 2013 14:30:22 -0000
Content-class: urn:content-classes:message
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Apt does not recognize the architecture if a different one is set with
DPKG_ARCH (e.g. armel). This patch writes the correct architecture to
/etc/apt/apt.conf.

Signed-off-by: Stefan Eichenberger <stefan.eichenberger@netmodule.com>
---
 meta/recipes-devtools/apt/apt_0.7.14.bb |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/apt/apt_0.7.14.bb
b/meta/recipes-devtools/apt/apt_0.7.14.bb
index 667b700..7f1572b 100644
--- a/meta/recipes-devtools/apt/apt_0.7.14.bb
+++ b/meta/recipes-devtools/apt/apt_0.7.14.bb
@@ -16,3 +16,8 @@ require apt-package.inc
 FILES_${PN} +=3D "${bindir}/apt-key"
 apt-manpages +=3D "doc/apt-key.8"
=20
+do_install_append() {
+    #Write the correct apt-architecture to apt.conf
+    APT_CONF=3D${D}/etc/apt/apt.conf
+    echo 'APT::Architecture "${DPKG_ARCH}";' > ${APT_CONF}
+}
--=20
1.7.4.1

