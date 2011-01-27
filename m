Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6D0114C81257
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 17:41:26 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 15:41:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="701466144"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga001.jf.intel.com with ESMTP; 27 Jan 2011 15:41:25 -0800
Message-Id: <4dd3a9c5e9eafb4085b832a422c98fd517119f3a.1296171289.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1296171287.git.dexuan.cui@intel.com>
References: <cover.1296171287.git.dexuan.cui@intel.com>
Old-Date: Thu, 27 Jan 2011 20:06:13 +0800
Date: Fri, 28 Jan 2011  7:40:44 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [Dexuan: Jan 28: PULL 04/16] lttng-ust: upgrade from 0.8 to 0.11
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
X-List-Received-Date: Thu, 27 Jan 2011 23:41:26 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../lttng/{lttng-ust_0.8.bb => lttng-ust_0.11.bb}  |    9 +++------
 1 files changed, 3 insertions(+), 6 deletions(-)
 rename meta/recipes-kernel/lttng/{lttng-ust_0.8.bb => lttng-ust_0.11.bb} (68%)

diff --git a/meta/recipes-kernel/lttng/lttng-ust_0.8.bb b/meta/recipes-kernel/lttng/lttng-ust_0.11.bb
similarity index 68%
rename from meta/recipes-kernel/lttng/lttng-ust_0.8.bb
rename to meta/recipes-kernel/lttng/lttng-ust_0.11.bb
index 136e5e8..575e35a 100644
--- a/meta/recipes-kernel/lttng/lttng-ust_0.8.bb
+++ b/meta/recipes-kernel/lttng/lttng-ust_0.11.bb
@@ -3,10 +3,7 @@ DESCRIPTION = "The LTTng Userspace Tracer (UST) is a library accompanied by a se
 HOMEPAGE = "http://lttng.org/ust"
 BUGTRACKER = "n/a"
 
-# In the source directory, doc/manual/ust.html says ustctl/libustcmd/ustd are
-# licensed as GPL v2, but the source codes of ustctl/libustcmd/ustd have a
-# LGPLv2.1+ header; the files in snprintf/ have a BSD header.
-LICENSE = "LGPV2.1+ & BSD"
+LICENSE = "LGPLv2.1+ & BSD"
 LIC_FILES_CHKSUM = "file://COPYING;md5=e647752e045a8c45b6f583771bd561ef \
                     file://ustctl/ustctl.c;endline=16;md5=eceeaab8a5574f24d62f7950b9d1adf4 \
                     file://snprintf/various.h;endline=31;md5=89f2509b6b4682c4fc95255eec4abe44"
@@ -17,8 +14,8 @@ PR = "r0"
 
 SRC_URI = "http://lttng.org/files/ust/releases/ust-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "333ff7c8fef92b31dff85789865bb791"
-SRC_URI[sha256sum] = "802398bc2c3ad5c80bd236d1ee24968f4da8a1401695e8dc15cb396ac836abb4"
+SRC_URI[md5sum] = "0a23fa60df4da3fb5188e314001eb49c"
+SRC_URI[sha256sum] = "af8f699019ae260103bb401b6738d5e417e79732a509859b42a52e9a0f5edb35"
 
 S = "${WORKDIR}/ust-${PV}"
 
-- 
1.7.2


