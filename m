Return-Path: <lianhao.lu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id CDE784C811F6
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 20:50:44 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Jan 2011 18:50:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,383,1291622400"; d="scan'208";a="596865392"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by orsmga002.jf.intel.com with ESMTP; 26 Jan 2011 18:50:43 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PiHxM-00078l-5K; Thu, 27 Jan 2011 10:51:32 +0800
Message-Id: <619d62d8c1d6a761e2aff146d789d482fd45a409.1296095614.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1296095614.git.lianhao.lu@intel.com>
References: <cover.1296095614.git.lianhao.lu@intel.com>
Old-Date: Wed, 26 Jan 2011 21:26:10 +0800
Date: Thu, 27 Jan 2011 10:51:32 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 4/6] classes/populate_sdk_*: remove blanks.
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
X-List-Received-Date: Thu, 27 Jan 2011 02:50:45 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

Remove unnecessary blanks introduced in commit
2fc923582dbf15d1a694c0f7764f48e97b30116a and
6af64af67102945a08e640e1100ea14831c6d794.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/populate_sdk_deb.bbclass |   22 +++++++++++-----------
 meta/classes/populate_sdk_ipk.bbclass |    6 +++---
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/meta/classes/populate_sdk_deb.bbclass b/meta/classes/populate_sdk_deb.bbclass
index 356f409..abcb000 100644
--- a/meta/classes/populate_sdk_deb.bbclass
+++ b/meta/classes/populate_sdk_deb.bbclass
@@ -2,7 +2,7 @@ do_populate_sdk[depends] += "dpkg-native:do_populate_sysroot apt-native:do_popul
 do_populate_sdk[recrdeptask] += "do_package_write_deb"
 
 generate_generate_deb_conf () {
-	
+
 	rootfs=$1
 	dpkg_arch=$2
 	shift
@@ -22,7 +22,7 @@ generate_generate_deb_conf () {
 		if [ ! -d ${DEPLOY_DIR_DEB}/$arch ]; then
 			continue;
 		fi
-		
+
 		echo "deb file:${DEPLOY_DIR_DEB}/$arch/ ./" >> ${STAGING_ETCDIR_NATIVE}/apt/sources.list.rev
 		(echo "Package: *"
 		echo "Pin: release l=$arch"
@@ -79,9 +79,9 @@ populate_sdk_post_deb () {
 }
 
 fakeroot populate_sdk_deb () {
-	
+
 	package_update_index_deb
-	
+
 	set -x
 	#install target
 	generate_generate_deb_conf ${SDK_OUTPUT}/${SDKTARGETSYSROOT} ${DPKG_ARCH} ${PACKAGE_ARCHS}
@@ -100,13 +100,13 @@ fakeroot populate_sdk_deb () {
 	generate_generate_deb_conf ${SDK_OUTPUT} ${SDK_ARCH} ${sdkarchs}
 	populate_sdk_deb_internal ${SDK_OUTPUT} ${TOOLCHAIN_HOST_TASK}
 	populate_sdk_post_deb ${SDK_OUTPUT}/${SDKPATHNATIVE}
-	
+
 	#move remainings
-	install -d ${SDK_OUTPUT}/${SDKPATHNATIVE}/var/dpkg	
+	install -d ${SDK_OUTPUT}/${SDKPATHNATIVE}/var/dpkg
 	mv ${SDK_OUTPUT}/var/dpkg/* ${SDK_OUTPUT}/${SDKPATHNATIVE}/var/dpkg
-	rm -rf 	${SDK_OUTPUT}/var
-	
-	populate_sdk_log_check 
+	rm -rf ${SDK_OUTPUT}/var
+
+	populate_sdk_log_check
 }
 
 populate_sdk_deb_log_check() {
@@ -114,7 +114,7 @@ populate_sdk_deb_log_check() {
 
 	lf_txt="`cat $lf_path`"
 	for keyword_die in "E:"
-	do				
+	do
 		if (echo "$lf_txt" | grep -v log_check | grep "$keyword_die") >/dev/null 2>&1
 		then
 			echo "log_check: There were error messages in the logfile"
@@ -124,6 +124,6 @@ populate_sdk_deb_log_check() {
 			do_exit=1
 		fi
 	done
-	test "$do_exit" = 1 && exit 1						
+	test "$do_exit" = 1 && exit 1
 	true
 }
diff --git a/meta/classes/populate_sdk_ipk.bbclass b/meta/classes/populate_sdk_ipk.bbclass
index 45b59f0..57502ec 100644
--- a/meta/classes/populate_sdk_ipk.bbclass
+++ b/meta/classes/populate_sdk_ipk.bbclass
@@ -33,7 +33,7 @@ fakeroot populate_sdk_ipk() {
 	install -d ${SDK_OUTPUT}/${SDKPATHNATIVE}/${sysconfdir}
 	install -m 0644 ${IPKGCONF_SDK} ${SDK_OUTPUT}/${SDKPATHNATIVE}/${sysconfdir}/
 
-	populate_sdk_log_check 
+	populate_sdk_log_check
 }
 
 populate_sdk_ipk_log_check() {
@@ -42,14 +42,14 @@ populate_sdk_ipk_log_check() {
 
 	lf_txt="`cat $lf_path`"
 	for keyword_die in "exit 1" "Collected errors" ERR Fail
-	do				
+	do
 		if (echo "$lf_txt" | grep -v log_check | grep "$keyword_die") >/dev/null 2>&1
 		then
 			echo "log_check: There were error messages in the logfile"
 			echo -e "log_check: Matched keyword: [$keyword_die]\n"
 			echo "$lf_txt" | grep -v log_check | grep -C 5 -i "$keyword_die"
 			echo ""
-			do_exit=1				
+			do_exit=1
 		fi
 	done
 	test "$do_exit" = 1 && exit 1
-- 
1.7.0.4


