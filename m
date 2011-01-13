Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9F1114C80050
	for <poky@yoctoproject.org>; Thu, 13 Jan 2011 13:55:21 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 13 Jan 2011 11:55:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,319,1291622400"; d="scan'208";a="374258659"
Received: from unknown (HELO localhost) ([10.255.14.43])
	by azsmga001.ch.intel.com with ESMTP; 13 Jan 2011 11:55:20 -0800
Message-Id: <53e1c664d18e7cbc04b76e7df1041fa615d84716.1294944942.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1294944942.git.tom.zanussi@intel.com>
References: <cover.1294944942.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Old-Date: Wed, 12 Jan 2011 16:42:33 -0600
Date: Thu, 13 Jan 2011 13:55:18 -0600
To: poky@yoctoproject.org
Subject: [PATCH 1/1] systemtap: new package
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
X-List-Received-Date: Thu, 13 Jan 2011 19:55:21 -0000

Add systemtap, a general-purpose script-directed dynamic tracing and
performance analysis tool for Linux.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    1 +
 meta/recipes-core/tasks/task-poky-tools.bb         |    1 +
 meta/recipes-kernel/systemtap/systemtap_git.bb     |   28 ++++++++++++++++++++
 3 files changed, 30 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-kernel/systemtap/systemtap_git.bb

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 6b98091..c07e2c7 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -165,6 +165,7 @@ SRCREV_pn-screenshot ??= "292"
 SRCREV_pn-settings-daemon ??= "2059"
 SRCREV_pn-swabber-native ??= "a0792390c5d6d5a5bade7ab155c80eef3f30fa52"
 SRCREV_pn-sysprof ??= "38a6af1f0a45e528fd2842983da71e0f23c70d6a"
+SRCREV_pn-systemtap ??= "4ab3a1863bf4f472acae7a809bf2b38d91658aa8"
 SRCREV_pn-table ??= "4b267533ce16656cba4104fc39dc12709c1bdddf"
 SRCREV_pn-tasks ??= "ea52d46d691c5fce4473ea4e24a35411381f3a65"
 TRACECMDREV ?= "6c696cec3f264a9399241b6e648f58bc97117d49"
diff --git a/meta/recipes-core/tasks/task-poky-tools.bb b/meta/recipes-core/tasks/task-poky-tools.bb
index 60a95f9..c23a3fe 100644
--- a/meta/recipes-core/tasks/task-poky-tools.bb
+++ b/meta/recipes-core/tasks/task-poky-tools.bb
@@ -51,6 +51,7 @@ RRECOMMENDS_task-poky-tools-profile = "\
     kernel-module-oprofile \
     blktrace \
     sysprof \
+    systemtap \
     "
 
 #    exmap-console
diff --git a/meta/recipes-kernel/systemtap/systemtap_git.bb b/meta/recipes-kernel/systemtap/systemtap_git.bb
new file mode 100644
index 0000000..f28c946
--- /dev/null
+++ b/meta/recipes-kernel/systemtap/systemtap_git.bb
@@ -0,0 +1,28 @@
+DESCRIPTION = "SystemTap - script-directed dynamic tracing and performance analysis tool for Linux"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+
+DEPENDS = "elfutils"
+
+PR = r0
+PV = "1.4+git${SRCPV}"
+
+SRC_URI = "git://sources.redhat.com/git/systemtap.git;protocol=git \
+          "
+
+EXTRA_OECONF = "--prefix=${D} --with-libelf=${STAGING_DIR_TARGET} --without-rpm \
+	     ac_cv_file__usr_include_nss=no \
+	     ac_cv_file__usr_include_nss3=no \
+	     ac_cv_file__usr_include_nspr=no \
+	     ac_cv_file__usr_include_nspr4=no \
+	     ac_cv_file__usr_include_avahi_client=no \
+	     ac_cv_file__usr_include_avahi_common=no "
+
+SRC_URI[md5sum]    = "cb202866ed704c44a876d041f788bdee"
+SRC_URI[sha256sum] = "8ffe35caec0d937bd23fd78a3a8d94b58907cc0de0330b35e38f9f764815c459"
+
+COMPATIBLE_MACHINE = "(qemux86|qemux86-64|qemuppc|emenlow|crownbay|atom-pc|n450)"
+
+S = "${WORKDIR}/git"
+
+inherit autotools
-- 
1.7.0.4


