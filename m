Return-Path: <constantinx.musca@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ABCFE006C9
	for <poky@yoctoproject.org>; Tue, 12 Feb 2013 00:49:44 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 12 Feb 2013 00:49:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,648,1355126400"; d="scan'208";a="201393219"
Received: from costin-desktop (HELO localhost.localdomain) ([10.237.105.152])
	by AZSMGA002.ch.intel.com with ESMTP; 12 Feb 2013 00:49:42 -0800
From: Constantin Musca <constantinx.musca@intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Feb 2013 10:50:32 +0200
Message-Id: <1360659032-28556-1-git-send-email-constantinx.musca@intel.com>
X-Mailer: git-send-email 1.7.11.7
Cc: Constantin Musca <constantinx.musca@intel.com>
Subject: [PATCH] maintainers.inc: update ownership of recipes
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
X-List-Received-Date: Tue, 12 Feb 2013 08:49:44 -0000

- I am the new maintainer for: groff, apt, js, augeas, gnutls and
libtasn1

Signed-off-by: Constantin Musca <constantinx.musca@intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 91079aa..9bd9069 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -38,12 +38,12 @@ RECIPE_MAINTAINER_pn-anjuta-remote-run = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-apmd = "Andrei Dinu <andrei.adrianx.dinu@intel.com>"
 RECIPE_MAINTAINER_pn-apr = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-apr-util = "Radu Moisan <radu.moisan@intel.com>"
-RECIPE_MAINTAINER_pn-apt = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-apt = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-aspell = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-atk = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-at = "Andrei Dinu <andrei.adrianx.dinu@intel.com>"
 RECIPE_MAINTAINER_pn-attr = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-augeas = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-augeas = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-autoconf = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-autogen = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-automake = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
@@ -228,13 +228,13 @@ RECIPE_MAINTAINER_pn-gnome-terminal = "Constantin Musca <constantinx.musca@intel
 RECIPE_MAINTAINER_pn-gnome-vfs = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-gnu-config = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-gnupg = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-gnutls = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-gnutls = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-gobject-introspection = "Kai Kang <kai.kang@windriver.org>"
 RECIPE_MAINTAINER_pn-gperf = "Andrei Dinu <andrei.adrianx.dinu@intel.com>"
 RECIPE_MAINTAINER_pn-gpgme = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-grep = "Andrei Dinu <andrei.adrianx.dinu@intel.com>"
-RECIPE_MAINTAINER_pn-groff-native = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-groff = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-groff-native = "Constantin Musca <constantinx.musca@intel.com>"
+RECIPE_MAINTAINER_pn-groff = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-grub-efi-i586-native = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-grub = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-gssdp = "Cristian Iorga <cristian.iorga@intel.com>"
@@ -292,7 +292,7 @@ RECIPE_MAINTAINER_pn-irda-utils = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-iso-codes = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-jpeg = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-json-glib = "Constantin Musca <constantinx.musca@intel.com>"
-RECIPE_MAINTAINER_pn-js = "Radu Moisan <radu.moisan@intel.com>"
+RECIPE_MAINTAINER_pn-js = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-kbd-native = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-kbd = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-kbproto = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
@@ -405,7 +405,7 @@ RECIPE_MAINTAINER_pn-libsndfile1 = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-libsoup-2.4 = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-libsoup = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-libsyncml = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-libtasn1 = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libtasn1 = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-libtelepathy = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-libtheora = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libtimedate-perl = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
-- 
1.7.11.7


