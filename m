Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 553654C8120A
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 04:16:16 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oB8AGFWa028679;
	Wed, 8 Dec 2010 02:16:15 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 8 Dec 2010 02:16:15 -0800
Received: from [128.224.162.176] ([128.224.162.176]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 8 Dec 2010 02:16:15 -0800
From: Lu Jingdong <jingdong.lu@windriver.com>
To: poky <poky@yoctoproject.org>
Date: Wed, 08 Dec 2010 18:17:33 +0800
Message-ID: <1291803453.3076.13.camel@eric-desktop>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-OriginalArrivalTime: 08 Dec 2010 10:16:15.0525 (UTC)
	FILETIME=[F26C1D50:01CB96C0]
Subject: [PATCH 5/8] perl-uri: Add perl-uri
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
X-List-Received-Date: Wed, 08 Dec 2010 10:16:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Subject: [PATCH 5/8] perl-uri: Add perl-uri

Add perl-uri in order to enable graphic LSB test(OLVER-Core test).

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 meta/recipes-devtools/perl/perl-uri_1.56.bb |   25
+++++++++++++++++++++++++
 1 files changed, 25 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-devtools/perl/perl-uri_1.56.bb

diff --git a/meta/recipes-devtools/perl/perl-uri_1.56.bb
b/meta/recipes-devtools/perl/perl-uri_1.56.bb
new file mode 100644
index 0000000..7dd5668
--- /dev/null
+++ b/meta/recipes-devtools/perl/perl-uri_1.56.bb
@@ -0,0 +1,25 @@
+DESCRIPTION = "This package contains the URI.pm module with friends. \
+The module implements the URI class. URI objects can be used to access
\
+and manipulate the various components that make up these strings."
+
+SECTION = "libs"
+LICENSE = "Artistic"
+PR = "r0"
+
+LIC_FILES_CHKSUM =
"file://README;beginline=26;endline=30;md5=6c33ae5c87fd1c4897714e122dd9c23d"
+
+DEPENDS += "perl"
+
+SRC_URI = "http://www.cpan.org/authors/id/G/GA/GAAS/URI-${PV}.tar.gz"
+
+S = "${WORKDIR}/URI-${PV}"
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


