Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90CDCE01528
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:40:05 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 20 Aug 2013 01:40:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="388942017"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 20 Aug 2013 01:40:05 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id 5F4766A4007;
	Tue, 20 Aug 2013 01:40:02 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:44:49 +0200
Message-Id: <3ca5ffaf80d848a65cf5869b7ee6120a7da46672.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 007/186] gst-fluendo-mpegdemux: upgrade to v0.10.72
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 20 Aug 2013 08:40:05 -0000

From: Cristian Iorga <cristian.iorga@intel.com>

(From OE-Core rev: b7b114c507166625356645cf719daddd4fac2fea)

Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 ...0.10.71.bb => gst-fluendo-mpegdemux_0.10.72.bb} |    6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)
 rename meta/recipes-multimedia/gstreamer/{gst-fluendo-mpegdemux_0.10.71.bb => gst-fluendo-mpegdemux_0.10.72.bb} (70%)

diff --git a/meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.71.bb b/meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.72.bb
similarity index 70%
rename from meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.71.bb
rename to meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.72.bb
index 580b9e8..f4bdce1 100644
--- a/meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.71.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.72.bb
@@ -8,7 +8,5 @@ LICENSE_FLAGS = "commercial"
 
 acpaths = "-I ${S}/common/m4 -I ${S}/m4"
 
-PR = "r0"
-
-SRC_URI[md5sum] = "a7b5152cd73fd0f9fa653fca93c82bd7"
-SRC_URI[sha256sum] = "3be3907e860bce4cc8bee0c70e4b28e91d97f4037e611473b8c9bb954b4de4f9"
+SRC_URI[md5sum] = "df726579404af65b9536428661ab4322"
+SRC_URI[sha256sum] = "a9784bc16352d0fb73de81b9c17142609e8bede46f6d9b881fc3d19673954abf"
-- 
1.7.9.5


