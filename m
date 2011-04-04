Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 931664C800A2
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 17:30:57 -0500 (CDT)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 807FC308D0
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 18:30:53 -0400 (EDT)
Message-Id: <8cf6c0ff1f3374796de04c85e039c4f678ab7570.1301956134.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1301956134.git.scott.a.garman@intel.com>
References: <cover.1301956134.git.scott.a.garman@intel.com>
Old-Date: Mon, 4 Apr 2011 13:02:05 -0700
Date: Mon, 04 Apr 2011 15:30:51 -0700
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 807FC308D0.4C6A9
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 1/3] docbook-sgml-dtd-native.inc: run install-catalog only during do_populate_sysroot
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
X-List-Received-Date: Mon, 04 Apr 2011 22:30:57 -0000

From: Scott Garman <scott.a.garman@intel.com>

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../docbook-sgml-dtd/docbook-sgml-dtd-native.inc   |   13 ++++++++-----
 1 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-native.inc b/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-native.inc
index 83cedbc..ede7bb1 100644
--- a/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-native.inc
+++ b/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-native.inc
@@ -39,9 +39,12 @@ do_install () {
 }
 
 docbook_sgml_dtd_sstate_postinst () {
-	# Ensure that the catalog file sgml-docbook.cat is properly
-	# updated when the package is installed from sstate cache.
-	install-catalog \
-		--add ${sysconfdir}/sgml/sgml-docbook.cat \
-		${sysconfdir}/sgml/sgml-docbook-dtd-${DTD_VERSION}.cat
+	if [ "${BB_CURRENTTASK}" = "populate_sysroot" -o "${BB_CURRENTTASK}" = "populate_sysroot_setscene" ]
+	then
+		# Ensure that the catalog file sgml-docbook.cat is properly
+		# updated when the package is installed from sstate cache.
+		install-catalog \
+			--add ${sysconfdir}/sgml/sgml-docbook.cat \
+			${sysconfdir}/sgml/sgml-docbook-dtd-${DTD_VERSION}.cat
+	fi
 }
-- 
1.7.1


