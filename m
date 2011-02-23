Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id A2CE24C80335
	for <poky@yoctoproject.org>; Wed, 23 Feb 2011 03:28:36 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1N9SasU010182
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 23 Feb 2011 01:28:36 -0800 (PST)
Received: from localhost (128.224.162.205) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 23 Feb 2011 01:28:36 -0800
Message-ID: <86d25ba89b074908f132d5e9cc7438e11e00ab7a.1298452018.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1298452018.git.jingdong.lu@windriver.com>
References: <cover.1298452018.git.jingdong.lu@windriver.com>
Old-Date: Wed, 23 Feb 2011 16:24:15 +0800
Date: Wed, 23 Feb 2011 17:28:23 +0800
To: <poky@yoctoproject.org>
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.205]
Subject: [PATCH 1/2] libxml-parser-perl: remove FILES_${PN}
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
X-List-Received-Date: Wed, 23 Feb 2011 09:28:37 -0000
Content-Type: text/plain

From: Jingdong Lu <jingdong.lu@windriver.com>

Because of the error path in FILES_${PN} we got nothing in libxml-parser-perl package.
Romove "FILES_${PN}"

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 .../perl/libxml-parser-perl_2.36.bb                |    4 ----
 1 files changed, 0 insertions(+), 4 deletions(-)

diff --git a/meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb b/meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb
index 5742879..2565f8b 100644
--- a/meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb
+++ b/meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb
@@ -19,7 +19,3 @@ do_compile() {
 	cpan_do_compile
 }
 
-
-
-FILES_${PN} = "${PERLLIBDIRS}/auto/XML/Parser/Expat/* \
-                ${PERLLIBDIRS}/XML"
-- 
1.7.0.4


