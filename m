Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6DA464C80093
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 17:40:32 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id A8D4B3096E
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 18:40:27 -0500 (EST)
Message-Id: <8cb92f560c1aff57c17c70ed33f2ccd50f8cdcd5.1297985951.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1297985951.git.scott.a.garman@intel.com>
References: <cover.1297985951.git.scott.a.garman@intel.com>
Old-Date: Thu, 17 Feb 2011 13:30:14 -0800
Date: Thu, 17 Feb 2011 15:40:25 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: A8D4B3096E.8771F
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 2/4] openjade-native: Set datadir explicitly
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
X-List-Received-Date: Thu, 17 Feb 2011 23:40:32 -0000

From: Scott Garman <scott.a.garman@intel.com>

datadir was previously defaulting to usr/share and hence could not
find openjade's data files.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../openjade/openjade-native_1.3.2.bb              |    6 +++++-
 1 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/openjade/openjade-native_1.3.2.bb b/meta/recipes-devtools/openjade/openjade-native_1.3.2.bb
index f267fc5..3615ec3 100644
--- a/meta/recipes-devtools/openjade/openjade-native_1.3.2.bb
+++ b/meta/recipes-devtools/openjade/openjade-native_1.3.2.bb
@@ -7,7 +7,7 @@ SECTION = "base"
 LICENSE = "BSD"
 LIC_FILES_CHKSUM = "file://COPYING;md5=641ff1e4511f0a87044ad42f87cb1045"
 
-PR = "r0"
+PR = "r1"
 
 DEPENDS = "opensp-native sgml-common-native"
 RDEPENDS_${PN} = "sgml-common"
@@ -23,6 +23,10 @@ inherit autotools native
 EXTRA_OECONF = "--enable-spincludedir=${STAGING_INCDIR}/OpenSP \
                 --enable-splibdir=${STAGING_LIBDIR}"
 
+# We need to set datadir explicitly, but adding it to EXTRA_OECONF
+# results in it being specified twice when configure is run.
+CONFIGUREOPTS := "${@d.getVar('CONFIGUREOPTS', True).replace('--datadir=${datadir}', '--datadir=${STAGING_DATADIR}/sgml/openjade-${PV}')}"
+
 CFLAGS =+ "-I${S}/include"
 
 do_install() {
-- 
1.7.1


