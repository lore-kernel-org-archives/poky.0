Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 02D454C800A2
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 17:31:01 -0500 (CDT)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 4B860308D2
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 18:30:56 -0400 (EDT)
Message-Id: <503bcd606e92f983c0eb481f8e7e10144bf4accb.1301956134.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1301956134.git.scott.a.garman@intel.com>
References: <cover.1301956134.git.scott.a.garman@intel.com>
Old-Date: Mon, 4 Apr 2011 13:07:17 -0700
Date: Mon, 04 Apr 2011 15:30:54 -0700
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 4B860308D2.526A6
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 2/3] openjade-native: run install-catalog only during do_populate_sysroot
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
X-List-Received-Date: Mon, 04 Apr 2011 22:31:01 -0000

From: Scott Garman <scott.a.garman@intel.com>

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../openjade/openjade-native_1.3.2.bb              |   13 ++++++++-----
 1 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/meta/recipes-devtools/openjade/openjade-native_1.3.2.bb b/meta/recipes-devtools/openjade/openjade-native_1.3.2.bb
index 5c1037a..1c672e1 100644
--- a/meta/recipes-devtools/openjade/openjade-native_1.3.2.bb
+++ b/meta/recipes-devtools/openjade/openjade-native_1.3.2.bb
@@ -62,9 +62,12 @@ do_install() {
 }
 
 openjade_sstate_postinst() {
-	# Ensure that the catalog file sgml-docbook.cat is properly
-	# updated when the package is installed from sstate cache.
-	install-catalog \
-		--add ${sysconfdir}/sgml/sgml-docbook.cat \
-		${sysconfdir}/sgml/openjade-${PV}.cat
+	if [ "${BB_CURRENTTASK}" = "populate_sysroot" -o "${BB_CURRENTTASK}" = "populate_sysroot_setscene" ]
+	then
+		# Ensure that the catalog file sgml-docbook.cat is properly
+		# updated when the package is installed from sstate cache.
+		install-catalog \
+			--add ${sysconfdir}/sgml/sgml-docbook.cat \
+			${sysconfdir}/sgml/openjade-${PV}.cat
+	fi
 }
-- 
1.7.1


