Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4EA924C80655
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 01:31:19 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2E6VHbP012347
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 13 Mar 2011 23:31:17 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sun, 13 Mar 2011 23:31:17 -0700
Message-ID: <c5b7a3123701d8cee64c1606643a8ad8709ccbd2.1300083112.git.kai.kang@windriver.com>
In-Reply-To: <cover.1300083112.git.kai.kang@windriver.com>
References: <cover.1300083112.git.kai.kang@windriver.com>
Old-Date: Mon, 14 Mar 2011 14:06:09 +0800
Date: Mon, 14 Mar 2011 14:29:58 +0800
To: <sgw@linux.intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: [PATCH 1/1] PATCH: fix Bug 812 about slang
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
X-List-Received-Date: Mon, 14 Mar 2011 06:31:19 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Export "INST_LIB_DIR" to slang/slsh to fix cross compile warnings

Add necessary files to run slsh.

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 meta/recipes-extended/slang/slang_2.2.2.bb |    8 +++++++-
 1 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/slang/slang_2.2.2.bb b/meta/recipes-extended/slang/slang_2.2.2.bb
index 7fe76af..8459e24 100644
--- a/meta/recipes-extended/slang/slang_2.2.2.bb
+++ b/meta/recipes-extended/slang/slang_2.2.2.bb
@@ -10,7 +10,7 @@ to recode S-Lang procedures in C if you need to."
 SECTION = "libs"
 PRIORITY = "optional"
 DEPENDS = "pcre"
-PR = "r0"
+PR = "r1"
 
 LICENSE = "GPL Artistic"
 LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3"
@@ -23,3 +23,9 @@ inherit autotools
 
 SRC_URI[md5sum] = "974437602a781cfe92ab61433dd16d03"
 SRC_URI[sha256sum] = "cfaf8551fa3855f9b0043309bb553ef6d457f931b404df5a6ba6a5a69371fc42"
+
+do_install() {
+	oe_runmake install DESTDIR=${D} -e 'INST_LIB_DIR=${STAGING_DIR_HOST}/usr/lib'
+}
+
+FILES_${PN} += "/usr/share/slsh/"
-- 
1.7.1


