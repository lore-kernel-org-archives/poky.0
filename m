Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id CCBFE4C80B71
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 01:43:15 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 Apr 2011 23:43:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,267,1301900400"; d="scan'208";a="914425271"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga001.fm.intel.com with ESMTP; 25 Apr 2011 23:43:15 -0700
Message-Id: <e0b0147a4ca5e14339746c5cfceaebeb3d815a6d.1303798223.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1303798223.git.dongxiao.xu@intel.com>
References: <cover.1303798223.git.dongxiao.xu@intel.com>
Old-Date: Wed, 20 Apr 2011 15:09:14 +0800
Date: Tue, 26 Apr 2011 14:46:10 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 10/13] libsamplerate0: upgrade to version 0.1.7
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
X-List-Received-Date: Tue, 26 Apr 2011 06:43:16 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Add libsamplerate-0.1.7-macro-quoting.patch to fix autoreconf issue

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../libsamplerate-0.1.7-macro-quoting.patch        |   22 ++++++++++++++++++++
 ...amplerate0_0.1.2.bb => libsamplerate0_0.1.7.bb} |   11 +++++----
 2 files changed, 28 insertions(+), 5 deletions(-)
 create mode 100644 meta/recipes-multimedia/libsamplerate/libsamplerate0-0.1.7/libsamplerate-0.1.7-macro-quoting.patch
 rename meta/recipes-multimedia/libsamplerate/{libsamplerate0_0.1.2.bb => libsamplerate0_0.1.7.bb} (59%)

diff --git a/meta/recipes-multimedia/libsamplerate/libsamplerate0-0.1.7/libsamplerate-0.1.7-macro-quoting.patch b/meta/recipes-multimedia/libsamplerate/libsamplerate0-0.1.7/libsamplerate-0.1.7-macro-quoting.patch
new file mode 100644
index 0000000..878f969
--- /dev/null
+++ b/meta/recipes-multimedia/libsamplerate/libsamplerate0-0.1.7/libsamplerate-0.1.7-macro-quoting.patch
@@ -0,0 +1,22 @@
+Upstream-Status: Pending
+
+diff -ruN libsamplerate-0.1.7-orig//acinclude.m4 libsamplerate-0.1.7/acinclude.m4
+--- libsamplerate-0.1.7-orig//acinclude.m4	2011-04-20 15:04:25.147664992 +0800
++++ libsamplerate-0.1.7/acinclude.m4	2011-04-20 15:04:45.397665029 +0800
+@@ -135,7 +135,6 @@
+ 	fi
+ 
+ )
+-]
+ 
+ if test $ac_cv_c_byte_order = big ; then
+ 	ac_cv_c_big_endian=1
+@@ -154,7 +153,7 @@
+ 	AC_MSG_WARN([[*****************************************************************]])
+ 	fi
+ 
+-)# AC_C_FIND_ENDIAN
++])# AC_C_FIND_ENDIAN
+ 
+ 
+ 
diff --git a/meta/recipes-multimedia/libsamplerate/libsamplerate0_0.1.2.bb b/meta/recipes-multimedia/libsamplerate/libsamplerate0_0.1.7.bb
similarity index 59%
rename from meta/recipes-multimedia/libsamplerate/libsamplerate0_0.1.2.bb
rename to meta/recipes-multimedia/libsamplerate/libsamplerate0_0.1.7.bb
index 85eb7bc..d08640f 100644
--- a/meta/recipes-multimedia/libsamplerate/libsamplerate0_0.1.2.bb
+++ b/meta/recipes-multimedia/libsamplerate/libsamplerate0_0.1.7.bb
@@ -2,14 +2,15 @@ DESCRIPTION = "An audio Sample Rate Conversion library"
 SECTION = "libs"
 LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
-                    file://src/samplerate.c;beginline=1;endline=17;md5=2deac26142757e825d957e5ac149b292"
+                    file://src/samplerate.c;beginline=1;endline=17;md5=ed4dfdaa3bdf0f817ebc70cee0cccc88"
 DEPENDS = "flac"
-PR = "r3"
+PR = "r0"
 
-SRC_URI = "http://www.mega-nerd.com/SRC/libsamplerate-${PV}.tar.gz"
+SRC_URI = "http://www.mega-nerd.com/SRC/libsamplerate-${PV}.tar.gz \
+           file://libsamplerate-0.1.7-macro-quoting.patch"
 
-SRC_URI[md5sum] = "06861c2c6b8e5273c9b80cf736b9fd0e"
-SRC_URI[sha256sum] = "98b8766323c78b7b718dfd4ef6b9292bbf0796b742abb2319b8278cbeee731d4"
+SRC_URI[md5sum] = "6731a81cb0c622c483b28c0d7f90867d"
+SRC_URI[sha256sum] = "78ed5d9ff1bf162c4a078f6a3e7432a537dd2f22dc58872b081fb01156027fcc"
 S = "${WORKDIR}/libsamplerate-${PV}"
 
 inherit autotools pkgconfig
-- 
1.7.1


