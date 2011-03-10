Return-Path: <liping.ke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 158104C80852
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 03:33:28 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Mar 2011 01:33:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,295,1297065600"; d="scan'208";a="718585869"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by orsmga001.jf.intel.com with ESMTP; 10 Mar 2011 01:33:02 -0800
Message-Id: <5a97c0eed40a529bf704e3592920401e6136b443.1299749366.git.liping.ke@intel.com>
In-Reply-To: <cover.1299749366.git.liping.ke@intel.com>
References: <cover.1299749366.git.liping.ke@intel.com>
Old-Date: Thu, 10 Mar 2011 17:27:55 +0800
Date: Thu, 10 Mar 2011 17:31:10 +0800
To: poky@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 1/1] Disable wget server side cache
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
X-List-Received-Date: Thu, 10 Mar 2011 09:33:28 -0000

From: Liping Ke <liping.ke@intel.com>

We found some proxy server has wrong cache for long http file name.
It will cause fetching wrong ipk files from adt repo. To avoid this,
we use wget options --no-cache to disable all server side cache.
It will make the fetch speed slower, yet correct always.

Signed-off-by: Liping Ke <liping.ke@intel.com>
Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 .../installer/adt-installer_1.0.bb                 |    3 ++-
 .../installer/files/wget_cache.patch               |   10 ++++++++++
 2 files changed, 12 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-devtools/installer/files/wget_cache.patch

diff --git a/meta/recipes-devtools/installer/adt-installer_1.0.bb b/meta/recipes-devtools/installer/adt-installer_1.0.bb
index 50290f9..ff7afe6 100644
--- a/meta/recipes-devtools/installer/adt-installer_1.0.bb
+++ b/meta/recipes-devtools/installer/adt-installer_1.0.bb
@@ -36,11 +36,13 @@ PR = "r0"
 ADT_DEPLOY = "${TMPDIR}/deploy/sdk/"
 ADT_DIR = "${WORKDIR}/adt-installer/"
 YOCTOADT_VERSION = "${SDK_VERSION}"
+S = "${WORKDIR}/trunk"
 
 inherit deploy
 
 PV = "0.1.8+svnr${SRCPV}"
 SRC_URI = "svn://opkg.googlecode.com/svn;module=trunk;proto=http \
+           file://wget_cache.patch \
            file://adt_installer \
            file://scripts/adt_installer_internal \
            file://scripts/util \
@@ -70,7 +72,6 @@ fakeroot do_deploy () {
 	cp ${WORKDIR}/adt_installer.tar.bz2 ${ADT_DEPLOY}
 }
 
-do_patch[noexec] = "1"
 do_install[noexec] = "1"
 do_configure[noexec] = "1"
 do_compile[noexec] = "1"
diff --git a/meta/recipes-devtools/installer/files/wget_cache.patch b/meta/recipes-devtools/installer/files/wget_cache.patch
new file mode 100644
index 0000000..6fd38e5
--- /dev/null
+++ b/meta/recipes-devtools/installer/files/wget_cache.patch
@@ -0,0 +1,10 @@
+--- trunk/libopkg/opkg_download.c	2011-03-10 16:41:29.000000000 +0800
++++ trunk/libopkg/opkg_download.c	2011-03-10 16:42:33.000000000 +0800
+@@ -162,6 +162,7 @@
+ 
+       argv[i++] = "wget";
+       argv[i++] = "-q";
++      argv[i++] = "--no-cache";
+       if (conf->http_proxy || conf->ftp_proxy) {
+ 	argv[i++] = "-Y";
+ 	argv[i++] = "on";
-- 
1.7.0.4


