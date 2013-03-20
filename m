Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C35B1E0148C
	for <poky@yoctoproject.org>; Wed, 20 Mar 2013 01:10:02 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r2K8A1Y5013183
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 20 Mar 2013 01:10:01 -0700 (PDT)
Received: from pek-usp-9.wrs.com (128.224.162.26) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.2.342.3;
	Wed, 20 Mar 2013 01:10:01 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Wed, 20 Mar 2013 15:54:38 +0800
Message-ID: <c9da8b9a72c18693f206bc905b156f38ac0d8328.1363765882.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.7
In-Reply-To: <cover.1363765882.git.liezhi.yang@windriver.com>
References: <cover.1363765882.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/2] maintainers.inc: remove several duplicated lines
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
X-List-Received-Date: Wed, 20 Mar 2013 08:10:02 -0000
Content-Type: text/plain

There are several duplicated lines in maintainers.inc, remove the
duplicated ones.

[YOCTO #4064]

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 meta-yocto/conf/distro/include/maintainers.inc |    7 -------
 1 files changed, 0 insertions(+), 7 deletions(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 0f7a872..0f7241e 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -217,7 +217,6 @@ RECIPE_MAINTAINER_pn-glib-networking = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-glproto = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-gmp = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-gnome-common = "Constantin Musca <constantinx.musca@intel.com>"
-RECIPE_MAINTAINER_pn-gnome-common = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-gnome-desktop = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-gnome-doc-utils = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-gnome-icon-theme = "Constantin Musca <constantinx.musca@intel.com>"
@@ -299,7 +298,6 @@ RECIPE_MAINTAINER_pn-kconfig-frontends-native = "Saul Wold <sgw@linux.intel.com>
 RECIPE_MAINTAINER_pn-kconfig-frontends = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-kernelshark = "Darren Hart <dvhart@linux.intel.com>"
 RECIPE_MAINTAINER_pn-kern-tools-native = "Bruce Ashfield <bruce.ashfield@windriver.com>"
-RECIPE_MAINTAINER_pn-kern-tools-native = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-kexec-tools = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-keymaps = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-kf = "Constantin Musca <constantinx.musca@intel.com>"
@@ -609,7 +607,6 @@ RECIPE_MAINTAINER_pn-packagegroup-core-standalone-gmae-sdk-target = "Saul Wold <
 RECIPE_MAINTAINER_pn-packagegroup-core-standalone-sdk-target = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-tools-debug = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-tools-profile = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-packagegroup-core-tools-profile = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-tools-testapps = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-x11-base = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-x11-sato = "Saul Wold <sgw@linux.intel.com>"
@@ -663,8 +660,6 @@ RECIPE_MAINTAINER_pn-python = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-python-dbus = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-python-gst = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-python-imaging = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
-RECIPE_MAINTAINER_pn-python-imaging = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
-RECIPE_MAINTAINER_pn-python-pycairo = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-python-pycairo = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-python-pycurl = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-python-pygobject = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
@@ -695,7 +690,6 @@ RECIPE_MAINTAINER_pn-quilt = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-quota = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-randrproto = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-readline = "Saul Wold <sgw@linux.intel.com>"
-#	RECIPE_MAINTAINER_pn-<recipe name> = "Full Name <address@domain>"
 RECIPE_MAINTAINER_pn-recordproto = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-remake-native = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-remake = "Saul Wold <sgw@linux.intel.com>"
@@ -731,7 +725,6 @@ RECIPE_MAINTAINER_pn-socat = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-speex = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-sqlite3 = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-squashfs-tools = "Radu Moisan <radu.moisan@intel.com>"
-RECIPE_MAINTAINER_pn-squashfs-tools = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-startup-notification = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-stat = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-strace = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
-- 
1.7.7


