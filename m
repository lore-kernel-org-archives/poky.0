Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 148704C80B71
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 22:44:39 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAO4icpX006431
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 20:44:38 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 23 Nov 2010 20:44:38 -0800
Received: from [128.224.162.176] ([128.224.162.176]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 23 Nov 2010 20:44:38 -0800
From: Lu Jingdong <jingdong.lu@windriver.com>
To: poky <poky@yoctoproject.org>
Date: Wed, 24 Nov 2010 12:46:10 +0800
Message-ID: <1290573970.1858.83.camel@eric-desktop>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-OriginalArrivalTime: 24 Nov 2010 04:44:38.0557 (UTC)
	FILETIME=[4D1F3CD0:01CB8B92]
Subject: [PATCH 2/3] Add new package libxml-perl in order to enable graphic LSB test(OLVER-Core test).
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
X-List-Received-Date: Wed, 24 Nov 2010 04:44:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 meta/recipes-devtools/perl/libxml-perl_0.08.bb |   15 +++++++++++++++
 1 files changed, 15 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-devtools/perl/libxml-perl_0.08.bb

diff --git a/meta/recipes-devtools/perl/libxml-perl_0.08.bb
b/meta/recipes-devtools/perl/libxml-perl_0.08.bb
new file mode 100644
index 0000000..6c3c9c7
--- /dev/null
+++ b/meta/recipes-devtools/perl/libxml-perl_0.08.bb
@@ -0,0 +1,15 @@
+SECTION = "libs"
+LICENSE = "Artistic"
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

Pull URL:
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro

-- 
Lu Jingdong
jingdong.lu@windriver.com
China, Wind River


