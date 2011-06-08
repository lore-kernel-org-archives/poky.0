Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7633D4C80188
	for <poky@yoctoproject.org>; Wed,  8 Jun 2011 05:49:42 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p58Anfp9003131
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 8 Jun 2011 03:49:41 -0700 (PDT)
Received: from localhost (128.224.162.154) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 8 Jun 2011 03:49:41 -0700
Message-ID: <3753d5b6e3a1c6cec6bdb75b90c73f96058b292c.1307529994.git.kai.kang@windriver.com>
In-Reply-To: <cover.1307529994.git.kai.kang@windriver.com>
References: <cover.1307529994.git.kai.kang@windriver.com>
Old-Date: Wed, 8 Jun 2011 17:56:09 +0800
Date: Wed, 8 Jun 2011 18:49:41 +0800
To: <sgw@linux.intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.154]
Cc: poky@yoctoproject.org
Subject: [PATCH 2/2] libxml-simple-perl: update EXTRA_PERLFLAGS
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
X-List-Received-Date: Wed, 08 Jun 2011 10:49:42 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

[Yocto 1132]

libxml-simple-perl should not refer to native perl libs modules, update
EXTRA_PERLFLAGS to fix the failure.

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 .../perl/libxml-simple-perl_2.18.bb                |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-devtools/perl/libxml-simple-perl_2.18.bb b/meta/recipes-devtools/perl/libxml-simple-perl_2.18.bb
index ca57776..75a018a 100644
--- a/meta/recipes-devtools/perl/libxml-simple-perl_2.18.bb
+++ b/meta/recipes-devtools/perl/libxml-simple-perl_2.18.bb
@@ -2,7 +2,7 @@ SECTION = "libs"
 LICENSE = "Artistic"
 LIC_FILES_CHKSUM = "file://README;beginline=70;md5=94aa5d46682b411a53a5494cfb22640e"
 DEPENDS += "libxml-parser-perl"
-PR = "r1"
+PR = "r2"
 
 SRC_URI = "http://www.cpan.org/modules/by-module/XML/XML-Simple-${PV}.tar.gz"
 
@@ -11,6 +11,6 @@ SRC_URI[sha256sum] = "a54967c188cda3e20f496c83be4de3f1740eeaa83c0380712ecd969ad8
 
 S = "${WORKDIR}/XML-Simple-${PV}"
 
-EXTRA_PERLFLAGS = "-I ${STAGING_LIBDIR_NATIVE}/perl/${@get_perl_version(d)}"
+EXTRA_PERLFLAGS = "-I ${STAGING_LIBDIR}/perl/${@get_perl_version(d)}"
 
 inherit cpan
-- 
1.7.5.1.300.gc565c


