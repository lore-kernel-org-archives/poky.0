Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 47DA94C80579
	for <poky@yoctoproject.org>; Fri,  8 Apr 2011 03:53:13 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p388rCeX025988
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 8 Apr 2011 01:53:12 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 8 Apr 2011 01:53:12 -0700
Message-ID: <c736c43ae24bae2af7e059bf3770c6f422c75a71.1302252022.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1302252022.git.xiaofeng.yan@windriver.com>
References: <cover.1302252022.git.xiaofeng.yan@windriver.com>
Old-Date: Fri, 8 Apr 2011 16:30:54 +0800
Date: Fri, 8 Apr 2011 16:43:44 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/1] eglibc-package.inc: Add eglibc-binarys, eglibc-localedatas, eglibc-gconvs and eglibc-charmps to variable PACKAGE
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
X-List-Received-Date: Fri, 08 Apr 2011 08:53:13 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

The purpose to add above variables is for installing them to lsb-image easy. or not these packages about locale will occupy too much space in list  taks-poky-lsb.bb
eglibc-binarys include packages "eglibc-binary-*"
eglibc-localedatas include packages "eglibc-localedata-*"
eglibc-gconvs include packages "eglibc-gconv-*"
eglibc-charmaps include packages "eglibc-charmap-*"

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta/recipes-core/eglibc/eglibc-package.inc |   20 ++++++++++++++++++++
 1 files changed, 20 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-core/eglibc/eglibc-package.inc b/meta/recipes-core/eglibc/eglibc-package.inc
index 01275aa..0b59d63 100644
--- a/meta/recipes-core/eglibc/eglibc-package.inc
+++ b/meta/recipes-core/eglibc/eglibc-package.inc
@@ -44,6 +44,26 @@ PACKAGES_DYNAMIC = " \
 		    eglibc-gconv-* eglibc-charmap-* eglibc-localedata-* eglibc-binary-localedata-* \
 		    locale-base-*${PKGSUFFIX}"
 
+# Create a eglibc-binarys
+ALLOW_EMPTY_${PN}-binarys = "1"
+PACKAGES += "${PN}-binarys"
+RRECOMMENDS_${PN}-binarys =  "${@" ".join([p for p in d.getVar('PACKAGES', True).split() if p.find("eglibc-binary") != -1])}"
+
+# Create a eglibc-charmaps package 
+ALLOW_EMPTY_${PN}-charmaps = "1"
+PACKAGES += "${PN}-charmaps"
+RRECOMMENDS_${PN}-charmaps =  "${@" ".join([p for p in d.getVar('PACKAGES', True).split() if p.find("eglibc-charmap") != -1])}"
+
+# Create a eglibc-gconvs package 
+ALLOW_EMPTY_${PN}-gconvs = "1"
+PACKAGES += "${PN}-gconvs"
+RRECOMMENDS_${PN}-gconvs =  "${@" ".join([p for p in d.getVar('PACKAGES', True).split() if p.find("eglibc-gconv") != -1])}"
+
+# Create a eglibc-localedatas package 
+ALLOW_EMPTY_${PN}-localedatas = "1"
+PACKAGES += "${PN}-localedatas"
+RRECOMMENDS_${PN}-localedatas =  "${@" ".join([p for p in d.getVar('PACKAGES', True).split() if p.find("eglibc-localedata") != -1])}"
+
 RPROVIDES_eglibc = "glibc"
 RPROVIDES_eglibc-utils = "glibc-utils"
 RPROVIDES_eglibc-pic = "glibc-pic"
-- 
1.7.0.4


