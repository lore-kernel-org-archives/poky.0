Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C12B5E013CC
	for <poky@yoctoproject.org>; Thu, 22 Mar 2012 18:34:56 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 Mar 2012 18:34:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="124111298"
Received: from yocto-build3.sh.intel.com ([10.239.48.15])
	by orsmga002.jf.intel.com with ESMTP; 22 Mar 2012 18:34:55 -0700
From: edwin.zhai@intel.com
To: poky@yoctoproject.org
Date: Fri, 23 Mar 2012 09:36:13 +0800
Message-Id: <99b3a94a7298427e306aaced77694bdc047d30b2.1332466139.git.edwin.zhai@intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1332466139.git.edwin.zhai@intel.com>
References: <cover.1332466139.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1332466139.git.edwin.zhai@intel.com>
References: <cover.1332466139.git.edwin.zhai@intel.com>
Subject: [PATCH 1/1] n450: fix wrong video driver
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
X-List-Received-Date: Fri, 23 Mar 2012 01:34:56 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

n450 should use i915 rather than i965.

[YOCTO #1840] fixed

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 conf/machine/include/ia32-base.inc       |    4 ++++
 meta-sugarbay/conf/machine/sugarbay.conf |    2 +-
 2 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
index 7da53f6..9b2ef5a 100644
--- a/conf/machine/include/ia32-base.inc
+++ b/conf/machine/include/ia32-base.inc
@@ -49,6 +49,10 @@ XSERVER_IA32_EXT = "xserver-xorg-extension-dri \
            "
 
 XSERVER_IA32_I915 = "xf86-video-intel \
+           mesa-dri-driver-i915 \
+           "
+
+XSERVER_IA32_I965 = "xf86-video-intel \
            mesa-dri-driver-i965 \
            "
 
diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index 776089e..a44f918 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -11,5 +11,5 @@ require conf/machine/include/ia32-base.inc
 
 XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_EXT} \
-           ${XSERVER_IA32_I915} \
+           ${XSERVER_IA32_I965} \
            "
-- 
1.7.1


