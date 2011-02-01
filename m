Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (unknown [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5050A4C80093
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 20:43:32 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p112hCPT005674
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 18:43:12 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 31 Jan 2011 18:43:11 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 31 Jan 2011 18:43:11 -0800
Message-Id: <161f8feab98ffdca1f0dd23ba71ee7b34caedf83.1296527961.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1296527961.git.jingdong.lu@windriver.com>
References: <cover.1296527961.git.jingdong.lu@windriver.com>
Old-Date: Sun, 30 Jan 2011 15:27:44 +0800
Date: Tue, 01 Feb 2011 10:41:30 +0800
To: poky@yoctoproject.org
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
X-OriginalArrivalTime: 01 Feb 2011 02:43:11.0597 (UTC)
	FILETIME=[C44221D0:01CBC1B9]
Subject: [PATCH 3/4] libxml2: Enable "--with-legacy" for LSB test.
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
X-List-Received-Date: Tue, 01 Feb 2011 02:43:32 -0000

From: Jingdong Lu <jingdong.lu@windriver.com>

Enable "--with-legacy" in order to pass library check of LSB.

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 meta/recipes-core/libxml/libxml2.inc      |    2 +-
 meta/recipes-core/libxml/libxml2_2.7.7.bb |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-core/libxml/libxml2.inc b/meta/recipes-core/libxml/libxml2.inc
index 78ee781..ba6db8f 100644
--- a/meta/recipes-core/libxml/libxml2.inc
+++ b/meta/recipes-core/libxml/libxml2.inc
@@ -21,7 +21,7 @@ inherit autotools pkgconfig binconfig
 
 EXTRA_OECONF = "--without-python --without-debug --without-legacy --without-catalog --without-docbook --with-c14n"
 EXTRA_OECONF_virtclass-native = "--with-python=${STAGING_BINDIR}/python --without-legacy --with-catalog --without-docbook --with-c14n"
-EXTRA_OECONF_poky-lsb = "--without-python --with-debug --without-legacy --with-catalog --with-docbook --with-c14n"
+EXTRA_OECONF_poky-lsb = "--without-python --with-debug --with-legacy --with-catalog --with-docbook --with-c14n"
 
 # required for pythong binding
 export HOST_SYS
diff --git a/meta/recipes-core/libxml/libxml2_2.7.7.bb b/meta/recipes-core/libxml/libxml2_2.7.7.bb
index daec3be..91f4ceb 100644
--- a/meta/recipes-core/libxml/libxml2_2.7.7.bb
+++ b/meta/recipes-core/libxml/libxml2_2.7.7.bb
@@ -1,6 +1,6 @@
 require libxml2.inc
 
-PR = "r3"
+PR = "r4"
 
 SRC_URI[md5sum] = "9abc9959823ca9ff904f1fbcf21df066"
 SRC_URI[sha256sum] = "af5b781418ba4fff556fa43c50086658ea8a2f31909c2b625c2ce913a1d9eb68"
-- 
1.7.0.4


