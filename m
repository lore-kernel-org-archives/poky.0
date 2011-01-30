Return-Path: <lianhao.lu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 00E684C80594
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 02:21:30 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 30 Jan 2011 00:21:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,400,1291622400"; d="scan'208";a="652531649"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by fmsmga002.fm.intel.com with ESMTP; 30 Jan 2011 00:21:29 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PjSXv-0000vg-Aw; Sun, 30 Jan 2011 16:22:07 +0800
Message-Id: <c00770ba3d5adbda2e1164735e3bde13b4b15362.1296375580.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1296375580.git.lianhao.lu@intel.com>
References: <cover.1296375580.git.lianhao.lu@intel.com>
Old-Date: Sun, 30 Jan 2011 12:04:46 +0800
Date: Sun, 30 Jan 2011 16:22:07 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 1/8] image/package_xx/rootfs_xx.bbclass: move rootfs_xx_log_check().
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
X-List-Received-Date: Sun, 30 Jan 2011 08:21:31 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

Move function rootfs_xx_log_check() from rootfs_xx.bbclass to relevant
package_xx.bbclass. (Where xx is rpm/ipk/deb).

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/image.bbclass       |    5 +----
 meta/classes/package_deb.bbclass |   20 ++++++++++++++++++++
 meta/classes/package_ipk.bbclass |   20 ++++++++++++++++++++
 meta/classes/package_rpm.bbclass |   20 ++++++++++++++++++++
 meta/classes/rootfs_deb.bbclass  |   20 --------------------
 meta/classes/rootfs_ipk.bbclass  |   20 --------------------
 meta/classes/rootfs_rpm.bbclass  |   20 --------------------
 7 files changed, 61 insertions(+), 64 deletions(-)

diff --git a/meta/classes/image.bbclass b/meta/classes/image.bbclass
index 8e8d92b..14de3e1 100644
--- a/meta/classes/image.bbclass
+++ b/meta/classes/image.bbclass
@@ -155,7 +155,6 @@ insert_feed_uris () {
 }
 
 log_check() {
-	set +x
 	for target in $*
 	do
 		lf_path="${WORKDIR}/temp/log.do_$target.${PID}"
@@ -164,14 +163,12 @@ log_check() {
 		
 		if test -e "$lf_path"
 		then
-			rootfs_${IMAGE_PKGTYPE}_log_check $target $lf_path
+			${IMAGE_PKGTYPE}_log_check $target $lf_path
 		else
 			echo "Cannot find logfile [$lf_path]"
 		fi
 		echo "Logfile is clean"
 	done
-
-	set -x
 }
 
 # set '*' as the rootpassword so the images
diff --git a/meta/classes/package_deb.bbclass b/meta/classes/package_deb.bbclass
index 29dcc5c..2181ce7 100644
--- a/meta/classes/package_deb.bbclass
+++ b/meta/classes/package_deb.bbclass
@@ -67,6 +67,26 @@ python do_package_deb_install () {
     os.putenv('PATH', path)
 }
 
+deb_log_check() {
+	target="$1"
+	lf_path="$2"
+
+	lf_txt="`cat $lf_path`"
+	for keyword_die in "E:"
+	do
+		if (echo "$lf_txt" | grep -v log_check | grep "$keyword_die") >/dev/null 2>&1
+		then
+			echo "log_check: There were error messages in the logfile"
+			echo -e "log_check: Matched keyword: [$keyword_die]\n"
+			echo "$lf_txt" | grep -v log_check | grep -C 5 -i "$keyword_die"
+			echo ""
+			do_exit=1
+		fi
+	done
+	test "$do_exit" = 1 && exit 1
+	true
+}
+
 python do_package_deb () {
     import re, copy
     import textwrap
diff --git a/meta/classes/package_ipk.bbclass b/meta/classes/package_ipk.bbclass
index fdf3262..ba76874 100644
--- a/meta/classes/package_ipk.bbclass
+++ b/meta/classes/package_ipk.bbclass
@@ -61,6 +61,26 @@ python package_ipk_install () {
 		raise bb.build.FuncFailed
 }
 
+ipk_log_check() {
+       target="$1"
+       lf_path="$2"
+
+       lf_txt="`cat $lf_path`"
+       for keyword_die in "exit 1" "Collected errors" ERR Fail
+       do
+               if (echo "$lf_txt" | grep -v log_check | grep "$keyword_die") >/dev/null 2>&1
+               then
+                       echo "log_check: There were error messages in the logfile"
+                       echo -e "log_check: Matched keyword: [$keyword_die]\n"
+                       echo "$lf_txt" | grep -v log_check | grep -C 5 -i "$keyword_die"
+                       echo ""
+                       do_exit=1
+               fi
+       done
+       test "$do_exit" = 1 && exit 1
+       true
+}
+
 #
 # Update the Packages index files in ${DEPLOY_DIR_IPK}
 #
diff --git a/meta/classes/package_rpm.bbclass b/meta/classes/package_rpm.bbclass
index 7c2cdb0..076d6cf 100644
--- a/meta/classes/package_rpm.bbclass
+++ b/meta/classes/package_rpm.bbclass
@@ -70,6 +70,26 @@ package_generate_rpm_conf () {
 	printf "\n" >> ${DEPLOY_DIR_RPM}/solvedb.macro
 }
 
+rpm_log_check() {
+       target="$1"
+       lf_path="$2"
+
+       lf_txt="`cat $lf_path`"
+       for keyword_die in "Cannot find package" "exit 1" ERR Fail
+       do
+               if (echo "$lf_txt" | grep -v log_check | grep "$keyword_die") >/dev/null 2>&1
+               then
+                       echo "log_check: There were error messages in the logfile"
+                       echo -e "log_check: Matched keyword: [$keyword_die]\n"
+                       echo "$lf_txt" | grep -v log_check | grep -C 5 -i "$keyword_die"
+                       echo ""
+                       do_exit=1
+               fi
+       done
+       test "$do_exit" = 1 && exit 1
+       true
+}
+
 python write_specfile () {
 	import textwrap
 
diff --git a/meta/classes/rootfs_deb.bbclass b/meta/classes/rootfs_deb.bbclass
index f579b53..1335e71 100644
--- a/meta/classes/rootfs_deb.bbclass
+++ b/meta/classes/rootfs_deb.bbclass
@@ -136,26 +136,6 @@ fakeroot rootfs_deb_do_rootfs () {
 	log_check rootfs 
 }
 
-rootfs_deb_log_check() {
-	target="$1"
-        lf_path="$2"
-
-	lf_txt="`cat $lf_path`"
-	for keyword_die in "E:"
-	do				
-		if (echo "$lf_txt" | grep -v log_check | grep "$keyword_die") >/dev/null 2>&1
-		then
-			echo "log_check: There were error messages in the logfile"
-			echo -e "log_check: Matched keyword: [$keyword_die]\n"
-			echo "$lf_txt" | grep -v log_check | grep -C 5 -i "$keyword_die"
-			echo ""
-			do_exit=1
-		fi
-	done
-	test "$do_exit" = 1 && exit 1						
-	true
-}
-
 remove_packaging_data_files() {
 	rm -rf ${IMAGE_ROOTFS}${opkglibdir}
 	rm -rf ${IMAGE_ROOTFS}/usr/dpkg/
diff --git a/meta/classes/rootfs_ipk.bbclass b/meta/classes/rootfs_ipk.bbclass
index 593a403..07c114e 100644
--- a/meta/classes/rootfs_ipk.bbclass
+++ b/meta/classes/rootfs_ipk.bbclass
@@ -82,26 +82,6 @@ fakeroot rootfs_ipk_do_rootfs () {
 	log_check rootfs 	
 }
 
-rootfs_ipk_log_check() {
-	target="$1"
-        lf_path="$2"
-
-	lf_txt="`cat $lf_path`"
-	for keyword_die in "exit 1" "Collected errors" ERR Fail
-	do				
-		if (echo "$lf_txt" | grep -v log_check | grep "$keyword_die") >/dev/null 2>&1
-		then
-			echo "log_check: There were error messages in the logfile"
-			echo -e "log_check: Matched keyword: [$keyword_die]\n"
-			echo "$lf_txt" | grep -v log_check | grep -C 5 -i "$keyword_die"
-			echo ""
-			do_exit=1				
-		fi
-	done
-	test "$do_exit" = 1 && exit 1
-	true
-}
-
 rootfs_ipk_write_manifest() {
 	manifest=${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.manifest
 	cp ${IMAGE_ROOTFS}${opkglibdir}/status $manifest
diff --git a/meta/classes/rootfs_rpm.bbclass b/meta/classes/rootfs_rpm.bbclass
index 93223ab..fc8251c 100644
--- a/meta/classes/rootfs_rpm.bbclass
+++ b/meta/classes/rootfs_rpm.bbclass
@@ -226,26 +226,6 @@ EOF
 	fi
 }
 
-rootfs_rpm_log_check() {
-	target="$1"
-        lf_path="$2"
-
-	lf_txt="`cat $lf_path`"
-	for keyword_die in "Cannot find package" "exit 1" ERR Fail
-	do
-		if (echo "$lf_txt" | grep -v log_check | grep "$keyword_die") >/dev/null 2>&1
-		then
-			echo "log_check: There were error messages in the logfile"
-			echo -e "log_check: Matched keyword: [$keyword_die]\n"
-			echo "$lf_txt" | grep -v log_check | grep -C 5 -i "$keyword_die"
-			echo ""
-			do_exit=1
-		fi
-	done
-	test "$do_exit" = 1 && exit 1
-	true
-}
-
 remove_packaging_data_files() {
 	rm -rf ${IMAGE_ROOTFS}${rpmlibdir}
 	rm -rf ${IMAGE_ROOTFS}${opkglibdir}
-- 
1.7.0.4


