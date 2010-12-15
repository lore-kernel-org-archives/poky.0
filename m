Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6EEF54C80FA8
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 10:33:41 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 Dec 2010 08:33:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,356,1288594800"; d="scan'208";a="687831363"
Received: from unknown (HELO localhost) ([10.255.16.75])
	by orsmga001.jf.intel.com with ESMTP; 16 Dec 2010 08:33:40 -0800
Message-Id: <cc9e307cb37347e028fa7a8613c7306043d32951.1292516982.git.josh@linux.intel.com>
In-Reply-To: <cover.1292516982.git.josh@linux.intel.com>
References: <cover.1292516982.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Wed, 15 Dec 2010 13:42:15 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 6/8] contacts: fix for make 3.82
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
X-List-Received-Date: Thu, 16 Dec 2010 16:33:41 -0000

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta/recipes-sato/pimlico/contacts/make-382.patch |   14 ++++++++++++++
 meta/recipes-sato/pimlico/contacts_git.bb         |    5 +++--
 2 files changed, 17 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-sato/pimlico/contacts/make-382.patch

diff --git a/meta/recipes-sato/pimlico/contacts/make-382.patch b/meta/recipes-sato/pimlico/contacts/make-382.patch
new file mode 100644
index 0000000..f85d6b2
--- /dev/null
+++ b/meta/recipes-sato/pimlico/contacts/make-382.patch
@@ -0,0 +1,14 @@
+Fix for stricter parser in make 3.82. This fix has been pushed to upstream git.
+
+JL - 15/12/10
+
+Index: git/Makefile.am
+===================================================================
+--- git.orig/Makefile.am
++++ git/Makefile.am
+@@ -11,4 +11,4 @@ DISTCLEANFILES = $(INTLTOOL_BUILT)
+ MAINTAINERCLEANFILES = aclocal.m4 compile config.guess config.sub configure depcomp $(INTLTOOL_BUILT:=.in) install-sh ltmain.sh mkinstalldirs Makefile.in missing
+ 
+ snapshot:
+-        $(MAKE) dist distdir=$(PACKAGE)-snap`date +"%Y%m%d"`
++	$(MAKE) dist distdir=$(PACKAGE)-snap`date +"%Y%m%d"`
diff --git a/meta/recipes-sato/pimlico/contacts_git.bb b/meta/recipes-sato/pimlico/contacts_git.bb
index bff4e28..c375435 100644
--- a/meta/recipes-sato/pimlico/contacts_git.bb
+++ b/meta/recipes-sato/pimlico/contacts_git.bb
@@ -6,11 +6,12 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
                     file://src/contacts-gtk.c;endline=23;md5=e1ee9b9e72045f2d3aa44cf17313b46e"
 
 PV = "0.12+git${SRCPV}"
-PR = "r0"
+PR = "r1"
 
 S = "${WORKDIR}/git"
 
-SRC_URI =+ "git://git.gnome.org/${PN};protocol=git"
+SRC_URI =+ "git://git.gnome.org/${PN};protocol=git \
+	    file://make-382.patch"
 
 S = "${WORKDIR}/git"
 
-- 
1.7.3.3


