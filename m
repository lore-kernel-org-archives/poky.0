Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id AD5744C8007E
	for <poky@yoctoproject.org>; Tue,  8 Feb 2011 15:26:46 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 08 Feb 2011 13:26:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,443,1291622400"; d="scan'208";a="385979722"
Received: from nbuild1.sc.intel.com (HELO localhost) ([172.25.110.36])
	by azsmga001.ch.intel.com with ESMTP; 08 Feb 2011 13:26:46 -0800
Message-Id: <80bf6d2005bc4eb7a621d3ca81b2299b2e2453b7.1297176911.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1297176911.git.nitin.a.kamble@intel.com>
References: <cover.1297176911.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 25 Jan 2011 08:43:10 -0800
Date: Tue, 08 Feb 2011  6:57:04 -0800
To: poky@yoctoproject.org
CC: 
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 1/1] image-mklibs.bbclass: add the library optimization functionality
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
X-List-Received-Date: Tue, 08 Feb 2011 21:26:47 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

If you want to enable the mklibs library size optimization for your image
then, edit the MKLIBS_OPTIMIZED_IMAGES line in the local.conf like this:

  MKLIBS_OPTIMIZED_IMAGES ?= "poky-image-minimal your-own-image"

Also this will enable the mklibs library size optimization for all images.

  MKLIBS_OPTIMIZED_IMAGES ?= "all"

on qemux86 machine this reduced the rootfs size of poky image-minimal
image from 7.9MB to 7.2MB. That is around 11% image foot print reduction.
That image had 38 elf executables. Generally the size optimization by
mklibs is reversely proportional to the number of elf executables in the
rootfs. So bigger images will see less optimization, and smaller images
will see large image size reductions.

Thanks to mark hatle for his help in implementation of this.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/classes/image-mklibs.bbclass |   69 +++++++++++++++++++++++++++++++++++++
 meta/conf/local.conf.sample       |   12 ++++++-
 2 files changed, 80 insertions(+), 1 deletions(-)
 create mode 100644 meta/classes/image-mklibs.bbclass

diff --git a/meta/classes/image-mklibs.bbclass b/meta/classes/image-mklibs.bbclass
new file mode 100644
index 0000000..0e72b01
--- /dev/null
+++ b/meta/classes/image-mklibs.bbclass
@@ -0,0 +1,69 @@
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
+		if [ "${img}" == "${PN}" ] || [ "${img}" == "all" ]
+		then
+			mklibs_optimize_image_doit
+			break
+		fi
+	done
+}
+
+
+EXPORT_FUNCTIONS mklibs_optimize_image
diff --git a/meta/conf/local.conf.sample b/meta/conf/local.conf.sample
index 8ac31d8..f70af87 100644
--- a/meta/conf/local.conf.sample
+++ b/meta/conf/local.conf.sample
@@ -73,10 +73,20 @@ EXTRA_IMAGE_FEATURES_mx31ads = "tools-testapps debug-tweaks"
 #PACKAGE_CLASSES ?= "package_rpm package_deb package_ipk"
 PACKAGE_CLASSES ?= "package_rpm package_ipk"
 
+# mklibs library size optimization is more useful to smaller images, 
+# and less useful for bigger images. Also mklibs library optimization can break the ABI compatibility, so should not be applied to the images which are tobe
+# extended or upgraded later.
+#This enabled mklibs library size optimization just for the specified image.
+#MKLIBS_OPTIMIZED_IMAGES ?= "poky-image-minimal"
+#This enable mklibs library size optimization will be for all the images.
+#MKLIBS_OPTIMIZED_IMAGES ?= "all"
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
1.7.2.2


