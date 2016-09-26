Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1682E00828; Mon, 26 Sep 2016 12:09:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62286E0080D
	for <poky@yoctoproject.org>; Mon, 26 Sep 2016 12:09:13 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP; 26 Sep 2016 12:09:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,401,1470726000"; d="scan'208";a="1056878356"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.5.48])
	by orsmga002.jf.intel.com with ESMTP; 26 Sep 2016 12:09:12 -0700
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Mon, 26 Sep 2016 14:12:44 -0500
Message-Id: <fec22a960388a95f3a20e6474f32cd310d7e3f85.1474916769.git.leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1474916769.git.leonardo.sandoval.gonzalez@linux.intel.com>
References: <cover.1474916769.git.leonardo.sandoval.gonzalez@linux.intel.com>
In-Reply-To: <cover.1474916769.git.leonardo.sandoval.gonzalez@linux.intel.com>
References: <cover.1474916769.git.leonardo.sandoval.gonzalez@linux.intel.com>
MIME-Version: 1.0
Subject: [PATCH 3/3] maintainers: Change maintainers for python(3) modules
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
X-List-Received-Date: Mon, 26 Sep 2016 19:09:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

New maintainers for python(3) modules: Edwin for python3 and Jose for
python2

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 meta-poky/conf/distro/include/maintainers.inc | 68 +++++++++++++--------------
 1 file changed, 34 insertions(+), 34 deletions(-)

diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
index 68829b0..db95111 100644
--- a/meta-poky/conf/distro/include/maintainers.inc
+++ b/meta-poky/conf/distro/include/maintainers.inc
@@ -625,43 +625,43 @@ RECIPE_MAINTAINER_pn-pulseaudio-client-conf-sato = "Tanu Kaskinen <tanuk@iki.fi>
 RECIPE_MAINTAINER_pn-puzzles = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-python = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-native = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-async = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-distribute = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-git = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-gitdb = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-imaging = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-mako = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-async = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-distribute = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-git = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-gitdb = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-imaging = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-mako = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python-native = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-nose = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-numpy = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-pexpect = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-ptyprocess = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-pycairo = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-pycurl = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-pygtk = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-pyrex = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-scons = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-scons-native = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-setuptools = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-six = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-smartpm = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-smmap = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-nose = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-numpy = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-pexpect = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-ptyprocess = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-pycairo = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-pycurl = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-pygtk = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-pyrex = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-scons = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-scons-native = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-setuptools = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-six = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-smartpm = "Jose Lamego <jose.a.lamego@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-smmap = "Jose Lamego <jose.a.lamego@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3 = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-async = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-dbus = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-distribute = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-docutils = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-git = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-gitdb = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-mako = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-async = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-dbus = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-distribute = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-docutils = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-git = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-gitdb = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-mako = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
 RECIPE_MAINTAINER_pn-python3-native = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-nose = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-numpy = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-pip = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-pygobject = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-setuptools = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-six = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python3-smmap = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-nose = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-numpy = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-pip = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-pygobject = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-setuptools = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-six = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python3-smmap = "Edwin Plauchu <edwin.plauchu.camacho@linux.intel.com>"
 RECIPE_MAINTAINER_pn-qemu = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-qemu-helper-native = "Aníbal Limón <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-qemuwrapper-cross = "Aníbal Limón <anibal.limon@linux.intel.com>"
-- 
2.1.4


