Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7B85C4C800AA
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 16:43:35 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Feb 2011 14:43:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,412,1291622400"; d="scan'208";a="702996727"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga001.jf.intel.com with ESMTP; 01 Feb 2011 14:43:34 -0800
Message-Id: <e7f5f469c5cb2faf9d8f7b7af61d2e2cea281b08.1296600047.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1296600047.git.nitin.a.kamble@intel.com>
References: <cover.1296600047.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 25 Jan 2011 08:43:10 -0800
Date: Tue, 01 Feb 2011 14:43:34 -0800
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 4/6] image-mklibs.bbclass: add the library optimization functionality
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
X-List-Received-Date: Tue, 01 Feb 2011 22:43:35 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Now by default the mklibs library size optimization for poky-image-minimal is
enabled.

If you want to enable the mklibs library size optimization for your image
then, edit the MKLIBS_OPTIMIZED_IMAGES line in the local.conf like this:

  MKLIBS_OPTIMIZED_IMAGES ?= "poky-image-minimal your-own-image"

on qemux86 machine this reduced the rootfs size from 7.9MB to 7.2MB.
That is around 11% image foot print reduction. that image had 38 elf
executables. Generally the size optimization by mklibs is reversely
proportional to the number of elf executables in the rootfs. so
bigger images won't see less optimization, and smaller images will see
large image size reductions.

Thanks to mark hatle for his help in implementation of this.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/classes/image-mklibs.bbclass |   70 +++++++++++++++++++++++++++++++++++++
 meta/conf/local.conf.sample       |   10 +++++-
 2 files changed, 79 insertions(+), 1 deletions(-)
 create mode 100644 meta/classes/image-mklibs.bbclass

diff --git a/meta/classes/image-mklibs.bbclass b/meta/classes/image-mklibs.bbclass
new file mode 100644
index 0000000..8ba3eb4
--- /dev/null
+++ b/meta/classes/image-mklibs.bbclass
@@ -0,0 +1,70 @@
+do_rootfs[depends] += "mklibs-native:do_populate_sysroot"
+
+IMAGE_PREPROCESS_COMMAND += "mklibs_optimize_image; "
+
+mklibs_optimize_image_doit() {
+	rm -rf ${WORKDIR}/mklibs
+	mkdir -p ${WORKDIR}/mklibs/dest
+	cd ${IMAGE_ROOTFS}
+	du -bs > ${WORKDIR}/mklibs/du.before.mklibs.txt
+	for i in `find .`; do file $i; done \
+		| grep ELF \
+		| grep "LSB executable" \
+		| grep "dynamically linked" \
+		| sed "s/:.*//" \
+		| sed "s+^\./++" \
+		> ${WORKDIR}/mklibs/executables.list
+
+	case ${TARGET_ARCH} in
+		powerpc | mips )
+			dynamic_loader="/lib/ld.so.1"
+			;;
+		x86_64)
+			dynamic_loader="/lib/ld-linux-x86-64.so.2"
+			;;
+		i586 )
+			dynamic_loader="/lib/ld-linux.so.2"
+			;;
+		arm )
+			dynamic_loader="/lib/ld-linux.so.3"
+			;;
+		* )
+			dynamic_loader="/unknown_dynamic_linker"
+			;;
+	esac
+
+	mklibs -v \
+		--ldlib ${dynamic_loader} \
+		--sysroot ${PKG_CONFIG_SYSROOT_DIR} \
+		--root ${IMAGE_ROOTFS} \
+		--target `echo ${TARGET_PREFIX} | sed 's/-$//' ` \
+		-d ${WORKDIR}/mklibs/dest \
+		`cat ${WORKDIR}/mklibs/executables.list`
+
+	cd ${WORKDIR}/mklibs/dest
+	for i in *
+	do
+		cp $i `find ${IMAGE_ROOTFS} -name $i`
+	done
+
+	cd ${IMAGE_ROOTFS}
+	du -bs > ${WORKDIR}/mklibs/du.after.mklibs.txt
+
+	echo rootfs size before mklibs optimization: `cat ${WORKDIR}/mklibs/du.before.mklibs.txt`
+	echo rootfs size after mklibs optimization: `cat ${WORKDIR}/mklibs/du.after.mklibs.txt`
+}
+
+mklibs_optimize_image() {
+	for img in ${MKLIBS_OPTIMIZED_IMAGES}
+	do
+		if [ "${img}" == "${PN}" ]
+		then
+			mklibs_optimize=1
+			mklibs_optimize_image_doit
+			break
+		fi
+	done
+}
+
+
+EXPORT_FUNCTIONS mklibs_optimize_image
diff --git a/meta/conf/local.conf.sample b/meta/conf/local.conf.sample
index f9953d1..362dbf0 100644
--- a/meta/conf/local.conf.sample
+++ b/meta/conf/local.conf.sample
@@ -73,10 +73,18 @@ EXTRA_IMAGE_FEATURES_mx31ads = "tools-testapps debug-tweaks"
 #PACKAGE_CLASSES ?= "package_rpm package_deb package_ipk"
 PACKAGE_CLASSES ?= "package_rpm package_ipk"
 
+# mklibs library size optimization is more useful to smaller images, 
+# and less useful for bigger images. Also mklibs library optimization can break the ABI compatibility, so should not be applied to the images which are tobe
+# extended or upgraded later.
+# mklibs librarys size optimization will be enabled just for these images.
+MKLIBS_OPTIMIZED_IMAGES ?= "poky-image-minimal"
+
 # A list of additional classes to use when building the system
+# include 'image-mklibs' to reduce shared library files size for an image
 # include 'image-prelink' in order to prelink the filesystem image
 # include 'image-swab' to perform host system intrusion detection
-USER_CLASSES ?= "image-prelink"
+# NOTE: if listing mklibs & prelink both, then make sure mklibs is before prelink
+USER_CLASSES ?= "image-mklibs image-prelink"
 
 # POKYMODE controls the characteristics of the generated packages/images by
 # telling poky which type of toolchain to use.
-- 
1.7.3.4


