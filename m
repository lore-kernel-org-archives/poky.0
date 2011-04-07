Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 95F474C80A46
	for <poky@pokylinux.org>; Thu,  7 Apr 2011 02:32:27 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p377WQ5J025397
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@pokylinux.org>; Thu, 7 Apr 2011 00:32:27 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 7 Apr 2011 00:32:26 -0700
Message-ID: <11ca0bad7cc5cba9e75e79720d79d770d1b57f79.1302161399.git.kai.kang@windriver.com>
In-Reply-To: <cover.1302161399.git.kai.kang@windriver.com>
References: <cover.1302161399.git.kai.kang@windriver.com>
Old-Date: Thu, 7 Apr 2011 15:17:08 +0800
Date: Thu, 7 Apr 2011 15:32:20 +0800
To: <poky@pokylinux.org>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Subject: [PATCH 1/1] slang: update DEPENDS to avoid compile failure
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
X-List-Received-Date: Thu, 07 Apr 2011 07:32:27 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Add libx11 and libpng to slang DEPENDS to avoid compile failure.
Fixes [YOCTO #947]

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 meta/recipes-extended/slang/slang_2.2.2.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/slang/slang_2.2.2.bb b/meta/recipes-extended/slang/slang_2.2.2.bb
index 29d9e46..ba4be88 100644
--- a/meta/recipes-extended/slang/slang_2.2.2.bb
+++ b/meta/recipes-extended/slang/slang_2.2.2.bb
@@ -9,7 +9,7 @@ to recode S-Lang procedures in C if you need to."
 
 SECTION = "libs"
 PRIORITY = "optional"
-DEPENDS = "pcre"
+DEPENDS = "pcre libx11 libpng"
 PR = "r2"
 
 LICENSE = "GPL Artistic"
-- 
1.7.1


