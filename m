Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id C51834C80AC3
	for <poky@yoctoproject.org>; Tue,  7 Jun 2011 03:41:51 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 07 Jun 2011 01:41:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,331,1304319600"; 
   d="scan'208";a="8349003"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 07 Jun 2011 01:41:50 -0700
From: y
To: poky@yoctoproject.org
Date: Tue,  7 Jun 2011 16:52:06 +0800
Message-Id: <64c05ef57e8fca81dcffef3663d5f90b09d4bbc7.1307436402.git.dongxiao.xu@intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1307436402.git.dongxiao.xu@intel.com>
References: <cover.1307436402.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1307436402.git.dongxiao.xu@intel.com>
References: <cover.1307436402.git.dongxiao.xu@intel.com>
Subject: [PATCH 4/5] ofono: add 0.42 version which works OK for Ericsson 3G module.
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
X-List-Received-Date: Tue, 07 Jun 2011 08:41:52 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

We met ofonod crash after ofono-0.43 version. Thus import 0.42 version
to enable the 3G feature.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/conf/distro/include/default-versions.inc |    1 +
 meta/recipes-connectivity/ofono/ofono.inc     |    2 ++
 meta/recipes-connectivity/ofono/ofono_0.42.bb |   13 +++++++++++++
 3 files changed, 16 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-connectivity/ofono/ofono_0.42.bb

diff --git a/meta/conf/distro/include/default-versions.inc b/meta/conf/distro/include/default-versions.inc
index 0abbd8f..f29ee12 100644
--- a/meta/conf/distro/include/default-versions.inc
+++ b/meta/conf/distro/include/default-versions.inc
@@ -13,6 +13,7 @@ PREFERRED_VERSION_python-native ?= "2.6.6"
 # Force the older version of liberation-fonts until we fix the fontforge issue
 PREFERRED_VERSION_liberation-fonts ?= "1.04"
 
+PREFERRED_VERSION_ofono ?= "0.42"
 
 
 
diff --git a/meta/recipes-connectivity/ofono/ofono.inc b/meta/recipes-connectivity/ofono/ofono.inc
index ee3bc3e..4fc969c 100644
--- a/meta/recipes-connectivity/ofono/ofono.inc
+++ b/meta/recipes-connectivity/ofono/ofono.inc
@@ -15,5 +15,7 @@ INITSCRIPT_PARAMS = "defaults 22"
 do_install_append() {
   install -d ${D}${sysconfdir}/init.d/
   install -m 0755 ${WORKDIR}/ofono ${D}${sysconfdir}/init.d/ofono
+  install -d ${D}${sysconfdir}/udev/rules.d/
+  install -m 0644 ${S}/plugins/97-ofono.rules ${D}${sysconfdir}/udev/rules.d/
 }
 
diff --git a/meta/recipes-connectivity/ofono/ofono_0.42.bb b/meta/recipes-connectivity/ofono/ofono_0.42.bb
new file mode 100644
index 0000000..defea0a
--- /dev/null
+++ b/meta/recipes-connectivity/ofono/ofono_0.42.bb
@@ -0,0 +1,13 @@
+require ofono.inc
+
+PR = "r0"
+
+SRC_URI  = "${KERNELORG_MIRROR}/linux/network/ofono/${P}.tar.bz2 \
+	          file://ofono"
+
+EXTRA_OECONF += "\
+  --enable-test \
+"
+
+SRC_URI[md5sum] = "e3ccf43a287153eed25f8dd75e7c6d18"
+SRC_URI[sha256sum] = "5b6f78cbe218fbc5c84401cd9d64b3204529e98822f959a9b2aae34b538076af"
-- 
1.7.1


