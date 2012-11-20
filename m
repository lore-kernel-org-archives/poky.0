Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90B56E0032E
	for <poky@yoctoproject.org>; Mon, 19 Nov 2012 17:24:30 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 19 Nov 2012 17:24:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,282,1352102400"; d="scan'208";a="170359122"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.12.202])
	by AZSMGA002.ch.intel.com with ESMTP; 19 Nov 2012 17:24:26 -0800
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 19 Nov 2012 17:24:26 -0800
Message-Id: <1353374666-14076-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
Subject: [PATCH v2] maintainers: Tweak ownership of recipes
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
X-List-Received-Date: Tue, 20 Nov 2012 01:24:31 -0000

hwlatdetect -> Darren Hart
python-* -> Bogdan Marinescu
lttng-modules -> Bogdan Marinescu
mtdev -> Ross Burton

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc |   14 +++++++-------
 1 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 18efb4a..0784846 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -670,24 +670,24 @@ RECIPE_MAINTAINER_pn-psplash = "Scott Garman <scott.a.garman@intel.com>"
 RECIPE_MAINTAINER_pn-pth = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-pulseaudio = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-puzzles = "Valentin Popa <valentin.popa@intel.com>"
-RECIPE_MAINTAINER_pn-python-argparse-native = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-argparse = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-argparse-native = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
+RECIPE_MAINTAINER_pn-python-argparse = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-python = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-python-dbus = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-python-gst = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-python-imaging = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-python-imaging = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-python-pycairo = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
-RECIPE_MAINTAINER_pn-python-pycairo ="Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-pycairo = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-python-pycurl = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-python-pygobject = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-python-pygtk = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-python-pyrex = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-python-scons = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
-RECIPE_MAINTAINER_pn-python-setuptools-native = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-setuptools = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-smartpm-native = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-python-smartpm = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-python-setuptools-native = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
+RECIPE_MAINTAINER_pn-python-setuptools = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
+RECIPE_MAINTAINER_pn-python-smartpm-native = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
+RECIPE_MAINTAINER_pn-python-smartpm = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-qemu-config = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-qemugl ="Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-qemu-helper-nativesdk = "Scott Garman <scott.a.garman@intel.com>"
-- 
1.7.7.6


