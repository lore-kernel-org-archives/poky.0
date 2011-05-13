Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8C8D24C8071E
	for <poky@yoctoproject.org>; Fri, 13 May 2011 02:56:44 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4D7uhb2002547
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 13 May 2011 00:56:44 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 13 May 2011 00:56:43 -0700
Message-ID: <15e37ed318e4472791fd52dc9c67fe699c8e4d8b.1305266909.git.kai.kang@windriver.com>
In-Reply-To: <cover.1305266909.git.kai.kang@windriver.com>
References: <cover.1305266909.git.kai.kang@windriver.com>
Old-Date: Fri, 6 May 2011 10:17:59 +0800
Date: Fri, 13 May 2011 15:55:57 +0800
To: <sgw@linux.intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: [PATCH 1/4] libxml-sax-perl: added to create LSB olver test report
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
X-List-Received-Date: Fri, 13 May 2011 07:56:44 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

libxml-sax-perl is need to create LSB olver test report,
so import it and its dependecy libxml-namespacesupport-perl from oe.
Add LICENSE and reset PR.

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 .../perl/libxml-namespacesupport-perl_1.11.bb      |   22 ++++++++++++++++
 meta/recipes-extended/perl/libxml-sax-perl_0.96.bb |   26 ++++++++++++++++++++
 2 files changed, 48 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/perl/libxml-namespacesupport-perl_1.11.bb
 create mode 100644 meta/recipes-extended/perl/libxml-sax-perl_0.96.bb

diff --git a/meta/recipes-extended/perl/libxml-namespacesupport-perl_1.11.bb b/meta/recipes-extended/perl/libxml-namespacesupport-perl_1.11.bb
new file mode 100644
index 0000000..d96430e
--- /dev/null
+++ b/meta/recipes-extended/perl/libxml-namespacesupport-perl_1.11.bb
@@ -0,0 +1,22 @@
+SUMMARY = "Perl module for supporting simple generic namespaces"
+DESCRIPTION = "XML::NamespaceSupport offers a simple way to process namespace-based XML names. \
+                It also helps maintain a prefix-to-namespace URI map, and provides a number of \
+                basic checks. "
+
+SECTION = "libs"
+LICENSE = "Artistic|GPLv1+"
+PR = "r0"
+
+LIC_FILES_CHKSUM = "file://META.yml;beginline=22;endline=22;md5=3b2b564dae8b9af9e8896e85c07dcbe5"
+
+SRC_URI = "http://search.cpan.org/CPAN/authors/id/P/PE/PERIGRIN/XML-NamespaceSupport-${PV}.tar.gz"
+SRC_URI[md5sum] = "222cca76161cd956d724286d36b607da"
+SRC_URI[sha256sum] = "6d8151f0a3f102313d76b64bfd1c2d9ed46bfe63a16f038e7d860fda287b74ea"
+
+
+S = "${WORKDIR}/XML-NamespaceSupport-${PV}"
+
+inherit cpan
+
+BBCLASSEXTEND="native"
+
diff --git a/meta/recipes-extended/perl/libxml-sax-perl_0.96.bb b/meta/recipes-extended/perl/libxml-sax-perl_0.96.bb
new file mode 100644
index 0000000..13956cb
--- /dev/null
+++ b/meta/recipes-extended/perl/libxml-sax-perl_0.96.bb
@@ -0,0 +1,26 @@
+SUMMARY = "Perl module for using and building Perl SAX2 XML processors" 
+DESCRIPTION = "XML::SAX consists of several framework classes for using and \
+building Perl SAX2 XML parsers, filters, and drivers.  It is designed \ 
+around the need to be able to "plug in" different SAX parsers to an \
+application without requiring programmer intervention.  Those of you \
+familiar with the DBI will be right at home.  Some of the designs \
+come from the Java JAXP specification (SAX part), only without the \
+javaness."
+
+SECTION = "libs"
+LICENSE = "Artistic|GPLv1+"
+DEPENDS += "libxml-namespacesupport-perl-native"
+RDEPENDS_${PN} += "libxml-namespacesupport-perl perl-module-file-temp"
+PR = "r0"
+
+LIC_FILES_CHKSUM = "file://LICENSE;md5=65c4cd8f39c24c7135ed70dacbcb09e3"
+
+SRC_URI = "http://search.cpan.org/CPAN/authors/id/G/GR/GRANTM/XML-SAX-${PV}.tar.gz"
+SRC_URI[md5sum] = "bdcd4119a62505184e211e9dfaef0ab1"
+SRC_URI[sha256sum] = "9bbef613afa42c46df008d537decc5a61df7e92d65463f3c900769f39e5c8e08"
+
+S = "${WORKDIR}/XML-SAX-${PV}"
+
+inherit cpan
+
+BBCLASSEXTEND = "native"
-- 
1.7.1


