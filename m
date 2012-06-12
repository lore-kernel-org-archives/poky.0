Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA730E0070B
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 13:42:23 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 715DA2FF3E
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 16:42:18 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Jun 2012 13:41:18 -0700
Message-Id: <37e5d3c29a639412f7cc42c4ea7b32c44f007251.1339533508.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 715DA2FF3E.6FA1C
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 28/31] freetype: upgrade to 2.4.9
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
X-List-Received-Date: Tue, 12 Jun 2012 20:42:24 -0000

From: Laurentiu Palcu <laurentiu.palcu@intel.com>

(From OE-Core rev: 6dc49f00248ffb937de45c4d075907774b4cd8fc)

Signed-off-by: Laurentiu Palcu <laurentiu.palcu@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../no-hardcode.patch                              |    0
 .../{freetype_2.4.8.bb => freetype_2.4.9.bb}       |    4 ++--
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-graphics/freetype/{freetype-2.4.8 => freetype-2.4.9}/no-hardcode.patch (100%)
 rename meta/recipes-graphics/freetype/{freetype_2.4.8.bb => freetype_2.4.9.bb} (91%)

diff --git a/meta/recipes-graphics/freetype/freetype-2.4.8/no-hardcode.patch b/meta/recipes-graphics/freetype/freetype-2.4.9/no-hardcode.patch
similarity index 100%
rename from meta/recipes-graphics/freetype/freetype-2.4.8/no-hardcode.patch
rename to meta/recipes-graphics/freetype/freetype-2.4.9/no-hardcode.patch
diff --git a/meta/recipes-graphics/freetype/freetype_2.4.8.bb b/meta/recipes-graphics/freetype/freetype_2.4.9.bb
similarity index 91%
rename from meta/recipes-graphics/freetype/freetype_2.4.8.bb
rename to meta/recipes-graphics/freetype/freetype_2.4.9.bb
index bce01cf..31bee80 100644
--- a/meta/recipes-graphics/freetype/freetype_2.4.8.bb
+++ b/meta/recipes-graphics/freetype/freetype_2.4.9.bb
@@ -18,8 +18,8 @@ PR = "r0"
 SRC_URI = "${SOURCEFORGE_MIRROR}/freetype/freetype-${PV}.tar.bz2 \
            file://no-hardcode.patch"
 
-SRC_URI[md5sum] = "dbf2caca1d3afd410a29217a9809d397"
-SRC_URI[sha256sum] = "a9eb7da3875fcb2f022a9c280c01b94ae45ac83d8102838c05dce1277948fb71"
+SRC_URI[md5sum] = "77a893dae81fd5b896632715ca041179"
+SRC_URI[sha256sum] = "c4204ac1d48e99d4375a2f32bf4f3f92780a9d9f015e64e57e852f6c004859b9"
 
 S = "${WORKDIR}/freetype-${PV}"
 
-- 
1.7.9.5


