Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D57EF4C811F6
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 02:55:40 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0J8te7V021461
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 00:55:40 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 19 Jan 2011 00:55:39 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 19 Jan 2011 00:55:39 -0800
Message-Id: <681d2a4ae59ed2e7d250ae1c8cde34c79dc911e5.1295426481.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1295426481.git.jingdong.lu@windriver.com>
References: <cover.1295426481.git.jingdong.lu@windriver.com>
From: Jingdong Lu <jingdong.lu@windriver.com>
Old-Date: Wed, 19 Jan 2011 16:30:00 +0800
Date: Wed, 19 Jan 2011 16:54:02 +0800
To: poky@yoctoproject.org
CC: 
X-OriginalArrivalTime: 19 Jan 2011 08:55:40.0328 (UTC)
	FILETIME=[A5C51A80:01CBB7B6]
Subject: [PATCH 3/4] libxml2: Enable "--with-docbook --with-debug --with-catalog" for LSB test.
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
X-List-Received-Date: Wed, 19 Jan 2011 08:55:41 -0000

Enable options "--with-doc --with-debug --with-catalog" in order to pass LSB test.

Signed-off-by: Jingdong Lu<jingdong.lu@windriver.com>
---
 meta/recipes-core/libxml/libxml2.inc      |    1 +
 meta/recipes-core/libxml/libxml2_2.7.7.bb |    2 +-
 2 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-core/libxml/libxml2.inc b/meta/recipes-core/libxml/libxml2.inc
index 748a7fb..78ee781 100644
--- a/meta/recipes-core/libxml/libxml2.inc
+++ b/meta/recipes-core/libxml/libxml2.inc
@@ -21,6 +21,7 @@ inherit autotools pkgconfig binconfig
 
 EXTRA_OECONF = "--without-python --without-debug --without-legacy --without-catalog --without-docbook --with-c14n"
 EXTRA_OECONF_virtclass-native = "--with-python=${STAGING_BINDIR}/python --without-legacy --with-catalog --without-docbook --with-c14n"
+EXTRA_OECONF_poky-lsb = "--without-python --with-debug --without-legacy --with-catalog --with-docbook --with-c14n"
 
 # required for pythong binding
 export HOST_SYS
diff --git a/meta/recipes-core/libxml/libxml2_2.7.7.bb b/meta/recipes-core/libxml/libxml2_2.7.7.bb
index 9615a7f..daec3be 100644
--- a/meta/recipes-core/libxml/libxml2_2.7.7.bb
+++ b/meta/recipes-core/libxml/libxml2_2.7.7.bb
@@ -1,6 +1,6 @@
 require libxml2.inc
 
-PR = "r2"
+PR = "r3"
 
 SRC_URI[md5sum] = "9abc9959823ca9ff904f1fbcf21df066"
 SRC_URI[sha256sum] = "af5b781418ba4fff556fa43c50086658ea8a2f31909c2b625c2ce913a1d9eb68"
-- 
1.7.0.4


