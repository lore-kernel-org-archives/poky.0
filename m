Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id DC06B4C8009E
	for <poky@yoctoproject.org>; Tue,  8 Feb 2011 23:54:32 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p195sWuc011482
	for <poky@yoctoproject.org>; Tue, 8 Feb 2011 21:54:32 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 8 Feb 2011 21:54:32 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 8 Feb 2011 21:54:31 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Tue,  8 Feb 2011 23:51:46 -0600
Message-Id: <043a08305a26d8de1a8848bbafe41e42a8dc3c7a.1297230569.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1297230569.git.mark.hatle@windriver.com>
References: <cover.1297230569.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1297230569.git.mark.hatle@windriver.com>
References: <cover.1297230569.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 09 Feb 2011 05:54:32.0042 (UTC)
	FILETIME=[D27104A0:01CBC81D]
Subject: [PATCH 2/2] Misc hard link fixes
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
X-List-Received-Date: Wed, 09 Feb 2011 05:54:33 -0000

I searched the various classes and looked for copies that should attempt to
preserve hardlinks.  This fixes the majority of this copies by switching to
using tar as the copy method.  It also has the side effect of preserving sparse
files.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/classes/libc-package.bbclass     |   12 ++++++------
 meta/classes/populate_sdk_deb.bbclass |    2 +-
 meta/classes/sourcepkg.bbclass        |    2 +-
 meta/classes/staging.bbclass          |    2 +-
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/meta/classes/libc-package.bbclass b/meta/classes/libc-package.bbclass
index 733f26b..c9d81f0 100644
--- a/meta/classes/libc-package.bbclass
+++ b/meta/classes/libc-package.bbclass
@@ -104,24 +104,24 @@ TMP_LOCALE="/tmp/locale${libdir}/locale"
 do_prep_locale_tree() {
 	treedir=${WORKDIR}/locale-tree
 	rm -rf $treedir
-	mkdir -p $treedir/bin $treedir/lib $treedir/${datadir} $treedir/${libdir}/locale
-	cp -pPR ${PKGD}${datadir}/i18n $treedir/${datadir}/i18n
+	mkdir -p $treedir/${base_bindir} $treedir/${base_libdir} $treedir/${datadir} $treedir/${libdir}/locale
+	tar -cf - -C ${PKGD}${datadir} -ps i18n | tar -xf - -C $treedir/${datadir}
 	# unzip to avoid parsing errors
 	for i in $treedir/${datadir}/i18n/charmaps/*gz; do 
 		gunzip $i
 	done
-	cp -pPR ${PKGD}${base_libdir}/* $treedir/lib
+	tar -cf - -C ${PKGD}${base_libdir} -ps . | tar -xf - -C $treedir/${base_libdir}
 	if [ -f ${STAGING_DIR_NATIVE}${prefix_native}/lib/libgcc_s.* ]; then
-		cp -pPR ${STAGING_DIR_NATIVE}/${prefix_native}/lib/libgcc_s.* $treedir/lib
+		tar -cf - -C ${STAGING_DIR_NATIVE}/${prefix_native}/${base_libdir} -ps libgcc_s.* | tar -xf - -C $treedir/${base_libdir}
 	fi
-	install -m 0755 ${PKGD}${bindir}/localedef $treedir/bin
+	install -m 0755 ${PKGD}${bindir}/localedef $treedir/${base_bindir}
 }
 
 do_collect_bins_from_locale_tree() {
 	treedir=${WORKDIR}/locale-tree
 
 	mkdir -p ${PKGD}${libdir}
-	cp -pPR $treedir/${libdir}/locale ${PKGD}${libdir}
+	tar -cf - -C $treedir/${libdir} -ps locale | tar -xf - -C ${PKGD}${libdir}
 }
 
 inherit qemu
diff --git a/meta/classes/populate_sdk_deb.bbclass b/meta/classes/populate_sdk_deb.bbclass
index d563c28..a5b6384 100644
--- a/meta/classes/populate_sdk_deb.bbclass
+++ b/meta/classes/populate_sdk_deb.bbclass
@@ -6,7 +6,7 @@ populate_sdk_post_deb () {
 
 	local target_rootfs=$1
 
-	cp -r ${STAGING_ETCDIR_NATIVE}/apt ${target_rootfs}/etc
+	tar -cf -C ${STAGING_ETCDIR_NATIVE} -ps apt | tar -xf - -C ${target_rootfs}/etc
 }
 
 fakeroot populate_sdk_deb () {
diff --git a/meta/classes/sourcepkg.bbclass b/meta/classes/sourcepkg.bbclass
index f738553..f12a195 100644
--- a/meta/classes/sourcepkg.bbclass
+++ b/meta/classes/sourcepkg.bbclass
@@ -41,7 +41,7 @@ sourcepkg_do_create_orig_tgz(){
 	echo $src_tree
 	oenote "Creating .orig.tar.gz in ${DEPLOY_DIR_SRC}/${P}.orig.tar.gz"
 	tar cvzf ${DEPLOY_DIR_SRC}/${P}.orig.tar.gz --exclude-from temp/exclude-from-file $src_tree
-	cp -pPR $src_tree $src_tree.orig
+	tar -cf - -C $src_tree -ps . | tar -xf - -C $src_tree.orig
 }
 
 sourcepkg_do_archive_bb() {
diff --git a/meta/classes/staging.bbclass b/meta/classes/staging.bbclass
index a713734..fef6457 100644
--- a/meta/classes/staging.bbclass
+++ b/meta/classes/staging.bbclass
@@ -17,7 +17,7 @@ sysroot_stage_dir() {
 	# However we always want to stage a $src itself, even if it's empty
 	mkdir -p "$dest"
 	if [ -d "$src" ]; then
-		cp -fpPR "$src"/* "$dest"
+		tar -cf - -C "$src" -ps . | tar -xf - -C "$dest"
 	fi
 }
 
-- 
1.7.3.4


