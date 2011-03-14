Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id BA1AB4C80AAC
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 18:26:54 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Mar 2011 16:26:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,319,1297065600"; d="scan'208";a="612927360"
Received: from eflanaga-mobl.jf.intel.com (HELO [10.7.198.154])
	([10.7.198.154])
	by orsmga002.jf.intel.com with ESMTP; 14 Mar 2011 16:26:54 -0700
Message-ID: <4D7EA440.7030504@intel.com>
Date: Mon, 14 Mar 2011 16:26:56 -0700
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [PATCH 1/1] cairo_1.10.2: Fix RDEPENDS to include glib-2.0
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
X-List-Received-Date: Mon, 14 Mar 2011 23:26:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


The autobuilder picked up cairo having a dependency on glib-2.0.
Added glib-2.0 to RDEPENDS.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
  meta/recipes-graphics/cairo/cairo_1.10.2.bb |    4 ++--
  1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-graphics/cairo/cairo_1.10.2.bb b/meta/recipes-graphics/cairo/cairo_1.10.2.bb
index 572e1f6..1a98999 100644
--- a/meta/recipes-graphics/cairo/cairo_1.10.2.bb
+++ b/meta/recipes-graphics/cairo/cairo_1.10.2.bb
@@ -2,7 +2,7 @@ require cairo.inc

  LIC_FILES_CHKSUM = "file://COPYING;md5=e73e999e0c72b5ac9012424fa157ad77"

-PR = "r0"
+PR = "r1"

  SRC_URI = "http://cairographics.org/releases/cairo-${PV}.tar.gz"

@@ -10,7 +10,7 @@ SRC_URI[md5sum] = "f101a9e88b783337b20b2e26dfd26d5f"
  SRC_URI[sha256sum] = "32018c7998358eebc2ad578ff8d8559d34fc80252095f110a572ed23d989fc41"

  RDEPENDS_${PN} += "libcairo2 libcairo-gobject2 libcairo-script-interpreter2 \
-		  cairo-perf-utils"
+		  cairo-perf-utils glib-2.0"

  ALLOW_EMPTY = "1"

-- 
1.7.1

