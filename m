Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1F2D64C8009A
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 03:16:59 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Mar 2011 01:16:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,321,1297065600"; d="scan'208";a="402751416"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.87])
	by azsmga001.ch.intel.com with ESMTP; 15 Mar 2011 01:16:45 -0700
Message-Id: <4db527185345ee185954a0d2c0951a70565b8e0c.1300176847.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1300176847.git.lianhao.lu@intel.com>
References: <cover.1300176847.git.lianhao.lu@intel.com>
Old-Date: Tue, 15 Mar 2011 16:05:11 +0800
Date: Tue, 15 Mar 2011 16:15:51 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 1/1] package_ipk.bbclass: Remove the duplication in PACKAGE_ARCHS.
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
X-List-Received-Date: Tue, 15 Mar 2011 08:16:59 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

[YOCTO #870] Remove the duplicated values in PACKAGE_ARCHS, so the
opkg-cl wouldn't report errors of duplicate src declaration which
results the do_rootfs failure.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/package_ipk.bbclass |   16 ++++++++++++++--
 1 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/meta/classes/package_ipk.bbclass b/meta/classes/package_ipk.bbclass
index 3c2472b..fbd4ef1 100644
--- a/meta/classes/package_ipk.bbclass
+++ b/meta/classes/package_ipk.bbclass
@@ -150,6 +150,17 @@ package_update_index_ipk () {
 	done
 }
 
+def package_unique_archs_ipk (d):
+    unique_archs = []
+    ipkg_archs = bb.data.getVar('PACKAGE_ARCHS',d,True)
+
+    for arch in ipkg_archs.split():
+        if not arch in unique_archs:
+            unique_archs.append(arch)
+
+    return " ".join(unique_archs)
+
+PACKAGE_ARCHS_UNIQUE_IPK = "${@package_unique_archs_ipk(d)}"
 #
 # Generate an ipkg conf file ${IPKGCONF_TARGET} suitable for use against 
 # the target system and an ipkg conf file ${IPKGCONF_SDK} suitable for 
@@ -159,7 +170,7 @@ package_generate_ipkg_conf () {
 	package_generate_archlist
 	echo "src oe file:${DEPLOY_DIR_IPK}" >> ${IPKGCONF_TARGET}
 	echo "src oe file:${DEPLOY_DIR_IPK}" >> ${IPKGCONF_SDK}
-	ipkgarchs="${PACKAGE_ARCHS}"
+	ipkgarchs="${PACKAGE_ARCHS_UNIQUE_IPK}"
 	for arch in $ipkgarchs; do
 		if [ -e ${DEPLOY_DIR_IPK}/$arch/Packages ] ; then
 		        echo "src oe-$arch file:${DEPLOY_DIR_IPK}/$arch" >> ${IPKGCONF_TARGET}
@@ -176,7 +187,8 @@ package_generate_ipkg_conf () {
 }
 
 package_generate_archlist () {
-	ipkgarchs="${PACKAGE_ARCHS}"
+	ipkgarchs="${PACKAGE_ARCHS_UNIQUE_IPK}"
+
 	priority=1
 	for arch in $ipkgarchs; do
 		sdkarch=`echo $arch | sed -e 's/${HOST_ARCH}/${SDK_ARCH}/'`
-- 
1.7.0.4


