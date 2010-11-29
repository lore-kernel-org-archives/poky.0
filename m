Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 971184C81217
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 00:09:46 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Nov 2010 22:09:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,274,1288594800"; d="scan'208";a="631095243"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga002.fm.intel.com with ESMTP; 28 Nov 2010 22:09:46 -0800
Message-Id: <4dad0f8bda980b61be756c51aa04d7125e76e538.1291011420.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291011420.git.dongxiao.xu@intel.com>
References: <cover.1291011420.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Mon, 29 Nov 2010 11:25:06 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 11/13] telepathy-idle: Fix LICENSE and LIC_FILES_CHKSUM info
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
X-List-Received-Date: Mon, 29 Nov 2010 06:09:46 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../telepathy/telepathy-idle_0.1.6.bb              |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-connectivity/telepathy/telepathy-idle_0.1.6.bb b/meta/recipes-connectivity/telepathy/telepathy-idle_0.1.6.bb
index 446e7be..0e7f4b7 100644
--- a/meta/recipes-connectivity/telepathy/telepathy-idle_0.1.6.bb
+++ b/meta/recipes-connectivity/telepathy/telepathy-idle_0.1.6.bb
@@ -2,7 +2,9 @@ SUMMARY = "Telepathy IRC connection manager"
 DESCRIPTION = "Telepathy implementation of the Internet Relay Chat protocols."
 HOMEPAGE = "http://telepathy.freedesktop.org/wiki/"
 DEPENDS = "glib-2.0 dbus telepathy-glib openssl"
-LICENSE = "LGPL"
+LICENSE = "LGPLv2.1"
+LIC_FILES_CHKSUM = "file://COPYING;md5=2d5025d4aa3495befef8f17206a5b0a1 \
+                    file://src/idle.c;beginline=1;endline=19;md5=b06b1e2594423111a1a7910b0eefc7f9"
 PR = "r0"
 
 SRC_URI = "http://telepathy.freedesktop.org/releases/${PN}/${P}.tar.gz"
-- 
1.6.3.3


