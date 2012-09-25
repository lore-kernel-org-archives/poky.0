Return-Path: <Qi.Chen@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B365DE011C0
	for <poky@yoctoproject.org>; Tue, 25 Sep 2012 04:55:38 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q8PBtcxd025634
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 25 Sep 2012 04:55:38 -0700 (PDT)
Received: from chenqi-OptiPlex-760.corp.ad.wrs.com (128.224.163.154) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.309.2; Tue, 25 Sep 2012 04:55:37 -0700
From: <Qi.Chen@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 25 Sep 2012 19:55:38 +0800
Message-ID: <1348574138-23441-1-git-send-email-Qi.Chen@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [PATCH] dbus-native: add missing dependencies
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
X-List-Received-Date: Tue, 25 Sep 2012 11:55:38 -0000
Content-Type: text/plain

From: Chen Qi <Qi.Chen@windriver.com>

dbus-native depends on libxau-native and libxdmcp-native, so
add these dependencies to it.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 meta/recipes-core/dbus/dbus.inc |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-core/dbus/dbus.inc b/meta/recipes-core/dbus/dbus.inc
index 5c99e11..e80ee40 100644
--- a/meta/recipes-core/dbus/dbus.inc
+++ b/meta/recipes-core/dbus/dbus.inc
@@ -7,10 +7,10 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=10dded3b58148f3f1fd804b26354af3e \
                     file://dbus/dbus.h;firstline=6;endline=20;md5=6eea2e0c7750dd8e620dcb1437312fa5"
 X11DEPENDS = "virtual/libx11 libsm"
 DEPENDS = "expat virtual/libintl ${@base_contains('DISTRO_FEATURES', 'x11', '${X11DEPENDS}', '', d)}"
-DEPENDS_virtclass-native = "expat-native virtual/libintl-native"
+DEPENDS_virtclass-native = "expat-native virtual/libintl-native libxau-native libxdmcp-native"
 DEPENDS_virtclass-nativesdk = "nativesdk-expat virtual/nativesdk-libintl virtual/libx11"
 
-INC_PR = "r4"
+INC_PR = "r5"
 
 SRC_URI = "http://dbus.freedesktop.org/releases/dbus/dbus-${PV}.tar.gz \
            file://tmpdir.patch; \
-- 
1.7.9.5


