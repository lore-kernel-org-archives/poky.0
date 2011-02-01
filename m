Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1BD5C4C800AA
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 12:27:16 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 01 Feb 2011 10:27:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,411,1291622400"; d="scan'208";a="883288831"
Received: from nbuild1.sc.intel.com (HELO localhost) ([172.25.110.36])
	by fmsmga001.fm.intel.com with ESMTP; 01 Feb 2011 10:27:15 -0800
Message-Id: <39ba68a1f9c47df8a0dbe072dbee74bc55edc094.1296560850.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1296560850.git.nitin.a.kamble@intel.com>
References: <cover.1296560850.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 25 Jan 2011 08:43:10 -0800
Date: Tue, 01 Feb 2011  3:57:22 -0800
To: poky@yoctoproject.org
CC: 
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 4/4] image-mklibs.bbclass: add the library optimization functionality
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
X-List-Received-Date: Tue, 01 Feb 2011 18:27:16 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Thanks to mark hatle for his help in implementation of this.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/classes/image-mklibs.bbclass |   57 +++++++++++++++++++++++++++++++++++++
 meta/conf/local.conf.sample       |    2 +
 2 files changed, 59 insertions(+), 0 deletions(-)
 create mode 100644 meta/classes/image-mklibs.bbclass

diff --git a/meta/classes/image-mklibs.bbclass b/meta/classes/image-mklibs.bbclass
new file mode 100644
index 0000000..9fd2bc0
--- /dev/null
+++ b/meta/classes/image-mklibs.bbclass
@@ -0,0 +1,57 @@
+do_rootfs[depends] += "mklibs-native:do_populate_sysroot"
+
+IMAGE_PREPROCESS_COMMAND += "mklibs_optimize_image; "
+
+mklibs_optimize_image () {
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
+EXPORT_FUNCTIONS mklibs_optimize_image
diff --git a/meta/conf/local.conf.sample b/meta/conf/local.conf.sample
index f9953d1..a3667e9 100644
--- a/meta/conf/local.conf.sample
+++ b/meta/conf/local.conf.sample
@@ -74,8 +74,10 @@ EXTRA_IMAGE_FEATURES_mx31ads = "tools-testapps debug-tweaks"
 PACKAGE_CLASSES ?= "package_rpm package_ipk"
 
 # A list of additional classes to use when building the system
+# include 'image-mklibs' to reduce shared library files size for an image
 # include 'image-prelink' in order to prelink the filesystem image
 # include 'image-swab' to perform host system intrusion detection
+# NOTE: if listing mklibs & prelink both, then make sure mklibs is before prelink
 USER_CLASSES ?= "image-prelink"
 
 # POKYMODE controls the characteristics of the generated packages/images by
-- 
1.7.2.2


