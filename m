Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3678C4C81069
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 01:07:48 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 06 Dec 2010 23:07:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,310,1288594800"; d="scan'208";a="865304957"
Received: from unknown (HELO [10.255.13.237]) ([10.255.13.237])
	by fmsmga001.fm.intel.com with ESMTP; 06 Dec 2010 23:07:47 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Tue, 07 Dec 2010 01:08:06 -0600
Message-ID: <1291705686.2848.64.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: [PATCH 2/3] crownbay: add drm emgd feature
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
X-List-Received-Date: Tue, 07 Dec 2010 07:07:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Config options to enable the emgd 1.5 'Gold' driver.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 wrs/cfg/kernel-cache/bsp/crownbay/crownbay.scc     |    1 +
 .../kernel-cache/features/drm-emgd/drm-emgd.cfg    |    3 +++
 .../kernel-cache/features/drm-emgd/drm-emgd.scc    |    1 +
 3 files changed, 5 insertions(+), 0 deletions(-)
 create mode 100644 wrs/cfg/kernel-cache/features/drm-emgd/drm-emgd.cfg
 create mode 100644 wrs/cfg/kernel-cache/features/drm-emgd/drm-emgd.scc

diff --git a/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.scc b/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.scc
index 5f4c7fa..c37fcf1 100644
--- a/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.scc
+++ b/wrs/cfg/kernel-cache/bsp/crownbay/crownbay.scc
@@ -4,3 +4,4 @@ include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
 include features/serial/8250.scc
 include features/logbuf/size-normal.scc
+include features/drm-emgd/drm-emgd.scc
diff --git a/wrs/cfg/kernel-cache/features/drm-emgd/drm-emgd.cfg b/wrs/cfg/kernel-cache/features/drm-emgd/drm-emgd.cfg
new file mode 100644
index 0000000..cb9558d
--- /dev/null
+++ b/wrs/cfg/kernel-cache/features/drm-emgd/drm-emgd.cfg
@@ -0,0 +1,3 @@
+CONFIG_DRM=y
+CONFIG_DRM_EGD=m
+CONFIG_DRM_KMS_HELPER=m
diff --git a/wrs/cfg/kernel-cache/features/drm-emgd/drm-emgd.scc b/wrs/cfg/kernel-cache/features/drm-emgd/drm-emgd.scc
new file mode 100644
index 0000000..672ee2e
--- /dev/null
+++ b/wrs/cfg/kernel-cache/features/drm-emgd/drm-emgd.scc
@@ -0,0 +1 @@
+kconf hardware drm-emgd.cfg
-- 
1.7.0.4




