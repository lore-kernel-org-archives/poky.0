Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 937314C81200
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 04:15:38 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oB8AFbSm028543;
	Wed, 8 Dec 2010 02:15:37 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 8 Dec 2010 02:15:37 -0800
Received: from [128.224.162.176] ([128.224.162.176]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 8 Dec 2010 02:15:37 -0800
From: Lu Jingdong <jingdong.lu@windriver.com>
To: poky <poky@yoctoproject.org>
Date: Wed, 08 Dec 2010 18:16:55 +0800
Message-ID: <1291803415.3076.12.camel@eric-desktop>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-OriginalArrivalTime: 08 Dec 2010 10:15:37.0321 (UTC)
	FILETIME=[DBA6A590:01CB96C0]
Subject: [PATCH 4/8] libxml-perl: Add libxml-perl
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
X-List-Received-Date: Wed, 08 Dec 2010 10:15:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Subject: [PATCH 4/8] libxml-perl: Add libxml-perl

Add libxml-perl in order to enable graphic LSB test(OLVER-Core test).

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 meta/recipes-devtools/perl/libxml-perl_0.08.bb |   24
++++++++++++++++++++++++
 1 files changed, 24 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-devtools/perl/libxml-perl_0.08.bb

diff --git a/meta/recipes-devtools/perl/libxml-perl_0.08.bb
b/meta/recipes-devtools/perl/libxml-perl_0.08.bb
new file mode 100644
index 0000000..b642169
--- /dev/null
+++ b/meta/recipes-devtools/perl/libxml-perl_0.08.bb
@@ -0,0 +1,24 @@
+DESCRIPTION = "libxml-perl is a collection of smaller Perl modules,
scripts, and \
+documents for working with XML in Perl.  libxml-perl software \
+works in combination with XML::Parser, PerlSAX, XML::DOM, \
+XML::Grove and others."
+SUMMARY = "Collection of Perl modules for working with XML."
+SECTION = "libs"
+LICENSE = "Artistic"
+PR = "r0"
+
+LIC_FILES_CHKSUM =
"file://README;beginline=33;endline=35;md5=1705549eef7577a3d6ba71123a1f0ce8"
+
+DEPENDS += "libxml-parser-perl"
+
+SRC_URI =
"http://www.cpan.org/modules/by-module/XML/${PN}-${PV}.tar.gz"
+
+EXTRA_CPANFLAGS = "EXPATLIBPATH=${STAGING_LIBDIR} EXPATINCPATH=
${STAGING_INCDIR}"
+
+inherit cpan
+
+do_compile() {
+       export LIBC="$(find ${STAGING_DIR_TARGET}/${base_libdir}/ -name
'libc-*.so')"
+       cpan_do_compile
+}
+
-- 
1.7.0.4

-- 
Lu Jingdong
jingdong.lu@windriver.com
China, Wind River


