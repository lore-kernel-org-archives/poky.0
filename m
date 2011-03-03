Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id E646E4C803BA
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 06:01:52 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Mar 2011 04:01:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,258,1297065600"; d="scan'208";a="663423999"
Received: from gzhai-nhm.sh.intel.com (HELO localhost) ([10.239.36.8])
	by fmsmga002.fm.intel.com with ESMTP; 03 Mar 2011 04:01:52 -0800
Message-Id: <ce15ff14dac44db00021b4717f3be92c4a639be5.1299153379.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1299153379.git.edwin.zhai@intel.com>
References: <cover.1299153379.git.edwin.zhai@intel.com>
Old-Date: Thu, 3 Mar 2011 19:54:09 +0800
Date: Thu, 03 Mar 2011 19:59:56 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 2/3] sato-icon-theme: Explictly use "Sato" as gtk icon theme
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
X-List-Received-Date: Thu, 03 Mar 2011 12:01:53 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

There is a tricky race condition that "Sato" icons got missing on
matchbox-desktop as low priority "hicolor" theme was chosen. Explictly
settting "Sato" in gtk config file to avoid this.

[BUGID #456] got fixed.

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../sato-icon-theme/sato-icon-theme.inc            |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-sato/sato-icon-theme/sato-icon-theme.inc b/meta/recipes-sato/sato-icon-theme/sato-icon-theme.inc
index a1669c6..0eff9dd 100644
--- a/meta/recipes-sato/sato-icon-theme/sato-icon-theme.inc
+++ b/meta/recipes-sato/sato-icon-theme/sato-icon-theme.inc
@@ -16,9 +16,12 @@ PACKAGE_ARCH = "all"
 
 EXTRA_OECONF += "--with-iconmap=${STAGING_LIBDIR_NATIVE}/../libexec/icon-name-mapping"
 
+#explictly setting "Sato" as default icon theme to avoid icon missing due to
+#tricky race condition
 pkg_postinst_${PN} () {
         if [ "x$D" != "x" ]; then
                 exit 1
         fi
         gtk-update-icon-cache -q /usr/share/icons/Sato
+        echo 'gtk-icon-theme-name = "Sato"' >> /etc/gtk-2.0/gtkrc
 }
-- 
1.6.3.3


