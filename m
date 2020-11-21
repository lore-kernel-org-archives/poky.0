Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web10.978.1605924282291100260
 for <poky@lists.yoctoproject.org>;
 Fri, 20 Nov 2020 18:04:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=default header.b=cRyNhi1r;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: from sinanubuntu.ckuic5o5zete5ommc4uz5anrqg.bx.internal.cloudapp.net (unknown [23.96.20.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 556B422202;
	Sat, 21 Nov 2020 02:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1605924281;
	bh=DpnOcBTtWA0f2oE+GCMaGdRsl1Aa5RFrGJncDqP+mFg=;
	h=From:To:Cc:Subject:Date:From;
	b=cRyNhi1rSjF91PUovXqOUQNZAsD0b1I8JAeE40gVx4sn2Lk8remd/i9OtLje7g78G
	 Dwg2x9fLuzARW6oJczPkZY057ANcwzXrPz4zzc3k3g0172R4aSvMlzr9RlOxB5Tnlg
	 MzhfSNsB5PzppU7Ec5VI4uXwCFjJeLY3UxwEGGNI=
From: "Sinan Kaya" <okaya@kernel.org>
To: poky@lists.yoctoproject.org
Cc: Sinan Kaya <okaya@kernel.org>
Subject: [PATCH] image_types: add zstd initramfs and squashfs support
Date: Sat, 21 Nov 2020 02:04:34 +0000
Message-Id: <20201121020434.19912-1-okaya@kernel.org>
X-Mailer: git-send-email 2.17.1

Add support for zstandard format squashfs and initramfs.

Signed-off-by: Sinan Kaya <okaya@kernel.org>
---
 documentation/ref-manual/ref-variables.rst |  2 ++
 meta/classes/base.bbclass                  |  4 ++++
 meta/classes/image_types.bbclass           |  6 ++++--
 meta/classes/kernel-fitimage.bbclass       |  2 +-
 meta/classes/kernel.bbclass                | 10 ++++++++--
 5 files changed, 19 insertions(+), 5 deletions(-)

diff --git a/documentation/ref-manual/ref-variables.rst b/documentation/ref-manual/ref-variables.rst
index e552351e328..1496b9b7a86 100644
--- a/documentation/ref-manual/ref-variables.rst
+++ b/documentation/ref-manual/ref-variables.rst
@@ -3312,6 +3312,7 @@ system and gives an overview of their function and contents.
       - cpio.lz4
       - cpio.lzma
       - cpio.xz
+      - cpio.zst
       - cramfs
       - ext2
       - ext2.bz2
@@ -3331,6 +3332,7 @@ system and gives an overview of their function and contents.
       - squashfs-lz4
       - squashfs-lzo
       - squashfs-xz
+      - squashfs-zst
       - tar
       - tar.bz2
       - tar.gz
diff --git a/meta/classes/base.bbclass b/meta/classes/base.bbclass
index 5a0b0c6b3e2..ba3eaf0938a 100644
--- a/meta/classes/base.bbclass
+++ b/meta/classes/base.bbclass
@@ -633,6 +633,10 @@ python () {
         if path.endswith('.lz4'):
             d.appendVarFlag('do_unpack', 'depends', ' lz4-native:do_populate_sysroot')
 
+        # *.zst should DEPEND on zstd-native for unpacking
+        elif path.endswith('.zst'):
+            d.appendVarFlag('do_unpack', 'depends', ' zstd-native:do_populate_sysroot')
+
         # *.lz should DEPEND on lzip-native for unpacking
         elif path.endswith('.lz'):
             d.appendVarFlag('do_unpack', 'depends', ' lzip-native:do_populate_sysroot')
diff --git a/meta/classes/image_types.bbclass b/meta/classes/image_types.bbclass
index 66884af8e09..f511cd55711 100644
--- a/meta/classes/image_types.bbclass
+++ b/meta/classes/image_types.bbclass
@@ -107,6 +107,7 @@ IMAGE_CMD_squashfs = "mksquashfs ${IMAGE_ROOTFS} ${IMGDEPLOYDIR}/${IMAGE_NAME}${
 IMAGE_CMD_squashfs-xz = "mksquashfs ${IMAGE_ROOTFS} ${IMGDEPLOYDIR}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.squashfs-xz ${EXTRA_IMAGECMD} -noappend -comp xz"
 IMAGE_CMD_squashfs-lzo = "mksquashfs ${IMAGE_ROOTFS} ${IMGDEPLOYDIR}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.squashfs-lzo ${EXTRA_IMAGECMD} -noappend -comp lzo"
 IMAGE_CMD_squashfs-lz4 = "mksquashfs ${IMAGE_ROOTFS} ${IMGDEPLOYDIR}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.squashfs-lz4 ${EXTRA_IMAGECMD} -noappend -comp lz4"
+IMAGE_CMD_squashfs-zst = "mksquashfs ${IMAGE_ROOTFS} ${IMGDEPLOYDIR}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.squashfs-zst ${EXTRA_IMAGECMD} -noappend -comp zstd"
 
 # By default, tar from the host is used, which can be quite old. If
 # you need special parameters (like --xattrs) which are only supported
@@ -249,6 +250,7 @@ do_image_squashfs[depends] += "squashfs-tools-native:do_populate_sysroot"
 do_image_squashfs_xz[depends] += "squashfs-tools-native:do_populate_sysroot"
 do_image_squashfs_lzo[depends] += "squashfs-tools-native:do_populate_sysroot"
 do_image_squashfs_lz4[depends] += "squashfs-tools-native:do_populate_sysroot"
+do_image_squashfs_zst[depends] += "squashfs-tools-native:do_populate_sysroot"
 do_image_ubi[depends] += "mtd-utils-native:do_populate_sysroot"
 do_image_ubifs[depends] += "mtd-utils-native:do_populate_sysroot"
 do_image_multiubi[depends] += "mtd-utils-native:do_populate_sysroot"
@@ -264,10 +266,10 @@ IMAGE_TYPES = " \
     btrfs \
     iso \
     hddimg \
-    squashfs squashfs-xz squashfs-lzo squashfs-lz4 \
+    squashfs squashfs-xz squashfs-lzo squashfs-lz4 squashfs-zst \
     ubi ubifs multiubi \
     tar tar.gz tar.bz2 tar.xz tar.lz4 tar.zst \
-    cpio cpio.gz cpio.xz cpio.lzma cpio.lz4 \
+    cpio cpio.gz cpio.xz cpio.lzma cpio.lz4 cpio.zst \
     wic wic.gz wic.bz2 wic.lzma wic.zst \
     container \
     f2fs \
diff --git a/meta/classes/kernel-fitimage.bbclass b/meta/classes/kernel-fitimage.bbclass
index bb2f3c4ccc4..fb21a1a256a 100644
--- a/meta/classes/kernel-fitimage.bbclass
+++ b/meta/classes/kernel-fitimage.bbclass
@@ -442,7 +442,7 @@ fitimage_assemble() {
 	#
 	if [ "x${ramdiskcount}" = "x1" ] ; then
 		# Find and use the first initramfs image archive type we find
-		for img in cpio.lz4 cpio.lzo cpio.lzma cpio.xz cpio.gz ext2.gz cpio; do
+		for img in cpio.lz4 cpio.lzo cpio.lzma cpio.xz cpio.zst cpio.gz ext2.gz cpio; do
 			initramfs_path="${DEPLOY_DIR_IMAGE}/${INITRAMFS_IMAGE_NAME}.${img}"
 			echo "Using $initramfs_path"
 			if [ -e "${initramfs_path}" ]; then
diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index 1a444efabf1..0fa9a4c83be 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -7,6 +7,7 @@ PROVIDES += "${@ "virtual/kernel" if (d.getVar("KERNEL_PACKAGE_NAME") == "kernel
 DEPENDS += "virtual/${TARGET_PREFIX}binutils virtual/${TARGET_PREFIX}gcc kmod-native bc-native bison-native"
 DEPENDS += "${@bb.utils.contains("INITRAMFS_FSTYPES", "cpio.lzo", "lzop-native", "", d)}"
 DEPENDS += "${@bb.utils.contains("INITRAMFS_FSTYPES", "cpio.lz4", "lz4-native", "", d)}"
+DEPENDS += "${@bb.utils.contains("INITRAMFS_FSTYPES", "cpio.zst", "zstd-native", "", d)}"
 PACKAGE_WRITE_DEPS += "depmodwrapper-cross"
 
 do_deploy[depends] += "depmodwrapper-cross:do_populate_sysroot gzip-native:do_populate_sysroot"
@@ -225,7 +226,7 @@ copy_initramfs() {
 	mkdir -p ${B}/usr
 	# Find and use the first initramfs image archive type we find
 	rm -f ${B}/usr/${INITRAMFS_IMAGE_NAME}.cpio
-	for img in cpio cpio.gz cpio.lz4 cpio.lzo cpio.lzma cpio.xz; do
+	for img in cpio cpio.gz cpio.lz4 cpio.lzo cpio.lzma cpio.xz cpio.zst; do
 		if [ -e "${DEPLOY_DIR_IMAGE}/${INITRAMFS_IMAGE_NAME}.$img" ]; then
 			cp ${DEPLOY_DIR_IMAGE}/${INITRAMFS_IMAGE_NAME}.$img ${B}/usr/.
 			case $img in
@@ -254,12 +255,17 @@ copy_initramfs() {
 				xz -df ${B}/usr/${INITRAMFS_IMAGE_NAME}.$img
 				break
 				;;
+			*zst)
+				echo "zst decompressing image"
+				zstd -df ${B}/usr/${INITRAMFS_IMAGE_NAME}.$img
+				break
+				;;
 			esac
 			break
 		fi
 	done
 	# Verify that the above loop found a initramfs, fail otherwise
-	[ -f ${B}/usr/${INITRAMFS_IMAGE_NAME}.cpio ] && echo "Finished copy of initramfs into ./usr" || die "Could not find any ${DEPLOY_DIR_IMAGE}/${INITRAMFS_IMAGE_NAME}.cpio{.gz|.lz4|.lzo|.lzma|.xz) for bundling; INITRAMFS_IMAGE_NAME might be wrong."
+	[ -f ${B}/usr/${INITRAMFS_IMAGE_NAME}.cpio ] && echo "Finished copy of initramfs into ./usr" || die "Could not find any ${DEPLOY_DIR_IMAGE}/${INITRAMFS_IMAGE_NAME}.cpio{.gz|.lz4|.lzo|.lzma|.xz|.zst) for bundling; INITRAMFS_IMAGE_NAME might be wrong."
 }
 
 do_bundle_initramfs () {
-- 
2.17.1

