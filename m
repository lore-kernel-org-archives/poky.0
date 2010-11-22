Return-Path: <edwin.zhai@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B4BD4C8112F
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 07:09:50 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 22 Nov 2010 05:09:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,236,1288594800"; d="scan'208";a="576281829"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by orsmga002.jf.intel.com with ESMTP; 22 Nov 2010 05:09:50 -0800
Message-Id: <8ded0b06c2489de41f7a65304fb3a28ef504ffc6.1290431109.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290431109.git.edwin.zhai@intel.com>
References: <cover.1290431109.git.edwin.zhai@intel.com>
From: Zhai Edwin <gzhai@yocto-build3-desktop.(none)>
Date: Mon, 22 Nov 2010 10:43:17 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] tasks: remove unused patch completely
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
X-List-Received-Date: Mon, 22 Nov 2010 13:09:51 -0000

remove patch in 509b30dee.

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 meta/recipes-sato/pimlico/tasks_0.18.bb |    4 +---
 1 files changed, 1 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-sato/pimlico/tasks_0.18.bb b/meta/recipes-sato/pimlico/tasks_0.18.bb
index 999da76..f363855 100644
--- a/meta/recipes-sato/pimlico/tasks_0.18.bb
+++ b/meta/recipes-sato/pimlico/tasks_0.18.bb
@@ -5,9 +5,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
                     file://src/omoko/openmoko-tasks.c;endline=20;md5=04d56a46863c9f4247694f40257a836a \
                     file://src/hildon/hildon-tasks.c;endline=21;md5=488ddf31dc14b2196dec7cc736211b52"
 
-SRC_URI = "http://pimlico-project.org/sources/${PN}/${PN}-${PV}.tar.gz \
-           file://fix_pre-GTK+2.16.patch;apply=yes \
-           "
+SRC_URI = "http://pimlico-project.org/sources/${PN}/${PN}-${PV}.tar.gz"
 
 OWL_poky = "--with-owl"
 
-- 
1.7.0.4


