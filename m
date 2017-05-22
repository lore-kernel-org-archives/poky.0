Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E05EE00B51; Mon, 22 May 2017 10:24:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FCFCE00812
	for <poky@yoctoproject.org>; Mon, 22 May 2017 10:24:48 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga105.fm.intel.com with ESMTP; 22 May 2017 10:24:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,378,1491289200"; d="scan'208";a="1172805239"
Received: from yctb05.ostc.intel.com ([10.54.69.59])
	by fmsmga002.fm.intel.com with ESMTP; 22 May 2017 10:24:47 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Mon, 22 May 2017 10:24:44 -0700
Message-Id: <20170522172444.44621-1-leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.12.0
MIME-Version: 1.0
Subject: [PATCH] maintainers: update maintainers in several python modules, cronie and swig
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 22 May 2017 17:24:51 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

The python modules involved are:

* Python 2: numpy and setuptools
* python 3: async, dbus, distribute, docutils, gitdb, nose, numpy, pip,
  pygobject, setuptools, six and smmap

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 meta-poky/conf/distro/include/maintainers.inc | 32 +++++++++++++--------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
index 261c8f313bf..3cb75d0ecd1 100644
--- a/meta-poky/conf/distro/include/maintainers.inc
+++ b/meta-poky/conf/distro/include/maintainers.inc
@@ -131,7 +131,7 @@ RECIPE_MAINTAINER_pn-coreutils = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-cpio = "Denys Dmytriyenko <denis@denix.org>"
 RECIPE_MAINTAINER_pn-cracklib = "Armin Kuster <akuster@mvista.com>"
 RECIPE_MAINTAINER_pn-createrepo = "Hongxu Jia <hongxu.jia@windriver.com>"
-RECIPE_MAINTAINER_pn-cronie = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
+RECIPE_MAINTAINER_pn-cronie = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-cross-localedef-native = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-cryptodev-linux = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-cryptodev-module = "Robert Yang <liezhi.yang@windriver.com>"
@@ -626,7 +626,7 @@ RECIPE_MAINTAINER_pn-python-imaging = "Jose Lamego <jose.a.lamego@linux.intel.co
 RECIPE_MAINTAINER_pn-python-mako = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-native = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-nose = "Jose Lamego <jose.a.lamego@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-numpy = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-numpy = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-pexpect = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-ptyprocess = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-pycairo = "Jose Lamego <jose.a.lamego@linux.intel.com>"
@@ -635,26 +635,26 @@ RECIPE_MAINTAINER_pn-python-pygtk = "Jose Lamego <jose.a.lamego@linux.intel.com>
 RECIPE_MAINTAINER_pn-python-pyrex = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-scons = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-scons-native = "Jose Lamego <jose.a.lamego@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-setuptools = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-setuptools = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-six = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-smartpm = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-smmap = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3 = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-async = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-dbus = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-distribute = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-docutils = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-async = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-dbus = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-distribute = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-docutils = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-git = "Jose Lamego <jose.a.lamego@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-gitdb = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-gitdb = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-mako = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-native = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-nose = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-numpy = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-pip = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-pygobject = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-setuptools = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-six = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-smmap = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-nose = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-numpy = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-pip = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-pygobject = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-setuptools = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-six = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-smmap = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-qemu = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-qemu-helper-native = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-qemuwrapper-cross = "Aníbal Limón <anibal.limon@linux.intel.com>"
@@ -707,7 +707,7 @@ RECIPE_MAINTAINER_pn-stress = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-subversion = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-sudo = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-swabber-native = "Alexander Kanavin <alexander.kanavin@intel.com>"
-RECIPE_MAINTAINER_pn-swig = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
+RECIPE_MAINTAINER_pn-swig = "Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-sysfsutils = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-sysklogd = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-syslinux = "Alexander Kanavin <alexander.kanavin@intel.com>"
-- 
2.12.0


