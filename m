Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6CFDB4C81069
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 05:21:34 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 19 Nov 2010 03:21:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,222,1288594800"; d="scan'208";a="859353991"
Received: from gzhai-nhm.sh.intel.com (HELO localhost) ([10.239.36.111])
	by fmsmga001.fm.intel.com with ESMTP; 19 Nov 2010 03:21:33 -0800
Message-Id: <57060e75bd5a6ea57b00f436ffa6bbd5b68c4da7.1290165996.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290165996.git.edwin.zhai@intel.com>
References: <cover.1290165996.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 19 Nov 2010 08:00:37 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 09/17] atk: Update to 1.32.0
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
X-List-Received-Date: Fri, 19 Nov 2010 11:21:34 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../atk/{atk_1.30.0.bb => atk_1.32.0.bb}           |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)
 rename meta/recipes-support/atk/{atk_1.30.0.bb => atk_1.32.0.bb} (81%)

diff --git a/meta/recipes-support/atk/atk_1.30.0.bb b/meta/recipes-support/atk/atk_1.32.0.bb
similarity index 81%
rename from meta/recipes-support/atk/atk_1.30.0.bb
rename to meta/recipes-support/atk/atk_1.32.0.bb
index e85ef90..35f8e08 100644
--- a/meta/recipes-support/atk/atk_1.30.0.bb
+++ b/meta/recipes-support/atk/atk_1.32.0.bb
@@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7 \
                     file://atk/atkutil.c;endline=20;md5=db21b0bdbef9da4dc6eb122debc9f9bc \
                     file://atk/atk.h;endline=20;md5=c58238d688c24387376d6c69d06248a7"
 
-SRC_URI = "http://download.gnome.org/sources/atk/1.30/${PN}-${PV}.tar.bz2"
+SRC_URI = "http://download.gnome.org/sources/atk/1.32/${PN}-${PV}.tar.bz2"
 
 
 
-- 
1.6.3.3


