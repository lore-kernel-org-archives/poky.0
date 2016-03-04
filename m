Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8A3DE00C1C; Thu,  3 Mar 2016 19:10:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DB74E00C10
	for <poky@yoctoproject.org>; Thu,  3 Mar 2016 19:09:58 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 03 Mar 2016 19:09:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,534,1449561600"; d="scan'208";a="926515375"
Received: from nikhilbh-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.139.241])
	by orsmga002.jf.intel.com with ESMTP; 03 Mar 2016 19:09:54 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri,  4 Mar 2016 16:09:21 +1300
Message-Id: <e51bce816ceec4f06d70f30a3125f0e8d4355aef.1457060930.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <cover.1457060930.git.paul.eggleton@linux.intel.com>
References: <cover.1457060930.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1457060930.git.paul.eggleton@linux.intel.com>
References: <cover.1457060930.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 2/2] conf/distro/include: drop old recipes
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
X-List-Received-Date: Fri, 04 Mar 2016 03:10:00 -0000

These recipes have been removed (some a very long time ago).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-poky/conf/distro/include/maintainers.inc             |  5 -----
 meta-poky/conf/distro/include/poky-floating-revisions.inc | 14 --------------
 2 files changed, 19 deletions(-)

diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
index a474b1f..62b1e48 100644
--- a/meta-poky/conf/distro/include/maintainers.inc
+++ b/meta-poky/conf/distro/include/maintainers.inc
@@ -327,7 +327,6 @@ RECIPE_MAINTAINER_pn-libnl = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libnotify = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libnss-mdns = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libogg = "Maxin B. John <maxin.john@intel.com>"
-RECIPE_MAINTAINER_pn-liboil = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libomxil = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-libowl = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libpam = "Maxin B. John <maxin.john@intel.com>"
@@ -406,7 +405,6 @@ RECIPE_MAINTAINER_pn-lighttpd = "Alexander Kanavin <alexander.kanavin@intel.com>
 RECIPE_MAINTAINER_pn-linux-dummy = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-linux-firmware = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-linux-libc-headers = "Bruce Ashfield <bruce.ashfield@windriver.com>"
-RECIPE_MAINTAINER_pn-linux-libc-headers-yocto = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-linux-yocto = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-linux-yocto-dev = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-linux-yocto-rt = "Bruce Ashfield <bruce.ashfield@windriver.com>"
@@ -480,7 +478,6 @@ RECIPE_MAINTAINER_pn-nfs-utils = "Alejandro Hernandez <alejandro.hernandez@linux
 RECIPE_MAINTAINER_pn-npth = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-nspr = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-nss = "Alexander Kanavin <alexander.kanavin@intel.com>"
-RECIPE_MAINTAINER_pn-ocf-linux = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-ofono = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-oh-puzzles = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-openjade-native = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
@@ -549,7 +546,6 @@ RECIPE_MAINTAINER_pn-procps = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-pseudo = "Mark Hatle <mark.hatle@windriver.com>"
 RECIPE_MAINTAINER_pn-psmisc = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-psplash = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-pth = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-pulseaudio = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-pulseaudio-client-conf-sato = "Tanu Kaskinen <tanuk@iki.fi>"
 RECIPE_MAINTAINER_pn-puzzles = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
@@ -748,7 +744,6 @@ RECIPE_MAINTAINER_pn-xvinfo = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-xwininfo = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-xz = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-yasm = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-zaurusd = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-zip = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-zlib = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-stress = "Maxin B. John <maxin.john@intel.com>"
diff --git a/meta-poky/conf/distro/include/poky-floating-revisions.inc b/meta-poky/conf/distro/include/poky-floating-revisions.inc
index b11f2cd..f25616a 100644
--- a/meta-poky/conf/distro/include/poky-floating-revisions.inc
+++ b/meta-poky/conf/distro/include/poky-floating-revisions.inc
@@ -12,40 +12,26 @@ SRCREV_pn-matchbox-common ?= "${AUTOREV}"
 SRCREV_pn-matchbox-config-gtk ?= "${AUTOREV}"
 SRCREV_pn-matchbox-desktop ?= "${AUTOREV}"
 SRCREV_pn-matchbox-keyboard ?= "${AUTOREV}"
-SRCREV_pn-matchbox-panel ?= "${AUTOREV}"
 SRCREV_pn-matchbox-panel-2 ?= "${AUTOREV}"
 SRCREV_pn-matchbox-themes-extra ?= "${AUTOREV}"
 SRCREV_pn-matchbox-terminal ?= "${AUTOREV}"
 SRCREV_pn-matchbox-wm ?= "${AUTOREV}"
-SRCREV_pn-matchbox-wm-2 ?= "${AUTOREV}"
 SRCREV_pn-settings-daemon ?= "${AUTOREV}"
 SRCREV_pn-screenshot ?= "${AUTOREV}"
 SRCREV_pn-libfakekey ?= "${AUTOREV}"
 SRCREV_pn-oprofileui ?= "${AUTOREV}"
-SRCREV_pn-zaurusd ?= "${AUTOREV}"
-SRCREV_pn-libowl-av ?= "${AUTOREV}"
-SRCREV_pn-owl-video ?= "${AUTOREV}"
 SRCREV_pn-psplash ?= "${AUTOREV}"
-SRCREV_pn-exmap-console ?= "${AUTOREV}"
 SRCREV_pn-gtk-sato-engine ?= "${AUTOREV}"
 SRCREV_pn-matchbox-theme-sato ?= "${AUTOREV}"
-SRCREV_pn-matchbox-theme-sato-2 ?= "${AUTOREV}"
 SRCREV_pn-sato-icon-theme ?= "${AUTOREV}"
 SRCREV_pn-matchbox-desktop-sato ?= "${AUTOREV}"
 SRCREV_pn-oh-puzzles ?= "${AUTOREV}"
 SRCREV_pn-libowl ?= "${AUTOREV}"
-SRCREV_pn-matchbox-applet-light ?= "${AUTOREV}"
 SRCREV_pn-fstests ?= "${AUTOREV}"
 SRCREV_pn-xvideo-tests ?= "${AUTOREV}"
 SRCREV_pn-clutter ?= "${AUTOREV}"
 SRCREV_pn-clutter-gst ?= "${AUTOREV}"
-SRCREV_pn-gaku ?= "${AUTOREV}"
-SRCREV_pn-gypsy ?= "${AUTOREV}"
-SRCREV_pn-aaina ?= "${AUTOREV}"
-SRCREV_pn-clutter-cairo ?= "${AUTOREV}"
-SRCREV_pn-table ?= "${AUTOREV}"
 SRCREV_pn-libmatchbox ?= "${AUTOREV}"
-SRCREV_pn-tasks ?= "${AUTOREV}"
 SRCREV_pn-ofono ?= "${AUTOREV}"
 
 SRCREV_pn-dri2proto = "${AUTOREV}"
-- 
2.5.0


