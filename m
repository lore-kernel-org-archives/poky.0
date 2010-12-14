Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 732C34C811E4
	for <poky@yoctoproject.org>; Tue, 14 Dec 2010 01:51:16 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 13 Dec 2010 23:51:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,341,1288594800"; d="scan'208";a="867932837"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.15])
	by fmsmga001.fm.intel.com with ESMTP; 13 Dec 2010 23:51:15 -0800
Message-Id: <02e91b163925553bd14ddbc69d44620da0297f5c.1292312335.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1292312335.git.dexuan.cui@intel.com>
References: <cover.1292312335.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Date: Tue, 14 Dec 2010 15:18:56 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] gnome-desktop: add --disable-desktop-docs
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
X-List-Received-Date: Tue, 14 Dec 2010 07:51:16 -0000

autobuilder logs show the below failure:

| xsltproc -o lgpl-vi.omf --stringparam db2omf.basename lgpl --stringparam
db2omf.format 'docbook' --stringparam db2omf.dtd "-//OASIS//DTD DocBook XML
V4.1.2//EN" --stringparam db2omf.lang vi --stringparam db2omf.omf_dir
"/usr/share/omf" --stringparam db2omf.help_dir "/usr/share/gnome/help"
--stringparam db2omf.omf_in ...
| http://www.oasis-open.org/docbook/xml/4.1.2/dbpoolx.mod:632: parser warning :
PEReference: %notation.class; not found
| ...
| unable to parse oc/lgpl.xml
| make[3]: *** [lgpl-oc.omf] Error 1

However this issue can't be reproduced in my Ubuntu 9.04 system. I suppose
it's because on autobuilder the newer libxml has a stricter syntax requirement
about the related xml files.

Actually before commit b8b13dcbb76fdc3c9a2866bb35945dcf949c4b20 upgraded
gnome-desktop to 2.32.1, we also didn't build desktop-docs. The commit removed
no-desktop-docs.patch but didn't notice the Makefile.am depends on
--disable-desktop-docs to decice whether desktop-docs will be built.

So we should continue to make sure desktop-docs is not built.

Fixes [BUGID: 587]

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 meta/recipes-gnome/gnome/gnome-desktop.inc |    7 +++++--
 1 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-gnome/gnome/gnome-desktop.inc b/meta/recipes-gnome/gnome/gnome-desktop.inc
index fb330a5..123f82d 100644
--- a/meta/recipes-gnome/gnome/gnome-desktop.inc
+++ b/meta/recipes-gnome/gnome/gnome-desktop.inc
@@ -3,7 +3,7 @@ SECTION = "x11/gnome"
 LICENSE = "GPLv2 & LGPLv2"
 DEPENDS = "gconf-dbus libxrandr virtual/libx11 gtk+ glib-2.0 gnome-doc-utils"
 
-EXTRA_OECONF = "--disable-scrollkeeper"
+EXTRA_OECONF = "--disable-scrollkeeper --disable-desktop-docs"
 
 do_configure_prepend () {
 	cp ${STAGING_DATADIR}/gnome-common/data/omf.make ${S}
@@ -11,4 +11,7 @@ do_configure_prepend () {
 
 FILES_${PN} += "${datadir}/gnome-about"
 
-inherit gnome pkgconfig
\ No newline at end of file
+PR = "r1"
+
+inherit gnome pkgconfig
+
-- 
1.7.2


