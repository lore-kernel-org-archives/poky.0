Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id B37AB4C80A1D
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 22:33:22 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id E55DE308F9
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 23:33:15 -0500 (EST)
Message-Id: <8cb5fde536b29e043f44ccdea10f4816a69c69ae.1297830466.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1297830466.git.scott.a.garman@intel.com>
References: <cover.1297830466.git.scott.a.garman@intel.com>
Old-Date: Tue, 15 Feb 2011 16:36:12 -0800
Date: Tue, 15 Feb 2011 20:33:13 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: E55DE308F9.C302B
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 4/5] opensp: improve configuration and install steps
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
X-List-Received-Date: Wed, 16 Feb 2011 04:33:22 -0000

From: Scott Garman <scott.a.garman@intel.com>

* For the -native case we need to point two configure
  options to the SGML catalogs in the native sysroot
* Some packages (e.g, iputils) use different names for
  the openSP utilities, so create these names as
  symlinks after do_install

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-devtools/opensp/opensp_1.5.bb |   18 ++++++++++++++++++
 1 files changed, 18 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/opensp/opensp_1.5.bb b/meta/recipes-devtools/opensp/opensp_1.5.bb
index bda87cb..61022e0 100644
--- a/meta/recipes-devtools/opensp/opensp_1.5.bb
+++ b/meta/recipes-devtools/opensp/opensp_1.5.bb
@@ -24,4 +24,22 @@ S = "${WORKDIR}/OpenSP-${PV}"
 
 inherit autotools gettext
 
+EXTRA_OECONF_virtclass-native = "\
+	--enable-default-catalog=${sysconfdir}/sgml/catalog \
+	--enable-default-search-path=${datadir}/sgml \
+	"
+
+do_install_append() {
+	# Set up symlinks to often-used alternate names. See
+	# http://www.linuxfromscratch.org/blfs/view/stable/pst/opensp.html
+	cd ${D}${libdir}
+	ln -sf libosp.so libsp.so
+
+	cd ${D}${bindir}
+	for util in nsgmls sgmlnorm spam spcat spent sx; do
+		ln -sf o$util $util	
+	done
+	ln -sf osx sgml2xml
+}
+
 BBCLASSEXTEND = "native"
-- 
1.7.1


