Return-Path: <ross.burton@intel.com>
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id A45D6E0070F
	for <poky@yoctoproject.org>; Mon, 18 Feb 2013 08:51:58 -0800 (PST)
Received: by mail-wg0-f42.google.com with SMTP id 12so2878064wgh.1
	for <poky@yoctoproject.org>; Mon, 18 Feb 2013 08:51:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=04kSmDm4P0KIvEp99MkoBY9ui8f3hAqTIuofy2OvDZc=;
	b=Ffz2KJgrju8L8ZfBZ0My9rQwnggufcxr0y2eGKy+T+nLhcR5Tdo/bPauJoYUtxqwKQ
	oE1UsqhArtrp9bTA2RocWqijTIcSHONuk3grrVZtvRSAUAJuAAxixfPxqLIucaL8R2aS
	ikB3d8U/0dZBQ4IaA+M4bxgYvnaF/zgTbGWiZbtBPKtJwoQOiv0iHjNe3pSC2foJZ0Ya
	sMV0uWA4GIa363XUbKOs2yjRDO7Ot7tRRi5WOmqZuI/oTNQIwh27B5oheECHNrr15Xbp
	Pt3AQZHw/JsCzfPUAEG67AgvWzN/hOnKW+8AMu6QczXHq/UmdoSu8Adh17OKsTpU42M3
	RH0A==
X-Received: by 10.194.91.211 with SMTP id cg19mr20525767wjb.43.1361206312994; 
	Mon, 18 Feb 2013 08:51:52 -0800 (PST)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id bs6sm22788396wib.4.2013.02.18.08.51.51
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 18 Feb 2013 08:51:52 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Mon, 18 Feb 2013 16:49:36 +0000
Message-Id: <1361206176-32696-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
X-Gm-Message-State: ALoCoQlK/B1KULDe3Fs5BcZfwdXeO+4wM+isq/Ld4IXg1HI3Fc5IUyGDz1o0hLP5+OqN8jF7iIeF
Subject: [PATCH] distro: remove web and gtkhtml2 from distro tracking
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
X-List-Received-Date: Mon, 18 Feb 2013 16:51:59 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc            |    2 --
 meta-yocto/conf/distro/include/maintainers.inc             |    2 --
 meta-yocto/conf/distro/include/poky-floating-revisions.inc |    2 --
 meta-yocto/conf/distro/include/recipe_color.inc            |    1 -
 meta-yocto/conf/distro/include/upstream_tracking.inc       |    2 --
 5 files changed, 9 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index 6cccee3..2246097 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -132,7 +132,6 @@ DISTRO_PN_ALIAS_pn-gst-plugins-good = "Meego=gst-plugins-good Fedora=gstreamer-p
 DISTRO_PN_ALIAS_pn-gst-plugins-ugly = "OpenSuSE=gstreamer-plugins-ugly Mandriva=gstreamer0.10-plugins-ugly Debian=gst-plugins-ugly0.10"
 DISTRO_PN_ALIAS_pn-gtk-doc-stub = "Fedora=gtk-doc Ubuntu=gtk-doc"
 DISTRO_PN_ALIAS_pn-gtk-engines = "Fedora=gtk2-engines OpenSuSE=gtk2-engines Ubuntu=gtk2-engines Mandriva=gtk-engines2 Debian=gtk2-engines"
-DISTRO_PN_ALIAS_pn-gtkhtml2 = "Debian=libgtkhtml2-0 Fedora=gtkhtml2"
 DISTRO_PN_ALIAS_pn-gtk+ = "Meego=gtk2 Fedora=gtk2 OpenSuSE=gtk2 Ubuntu=gtk+2.0 Mandriva=gtk+2.0 Debian=gtk+2.0"
 DISTRO_PN_ALIAS_pn-gtk-sato-engine = "OpenedHand"
 DISTRO_PN_ALIAS_pn-gtk-theme-torturer = "OSPDT upstream=http://wiki.laptop.org/go/GTK_for_OLPC"
@@ -390,7 +389,6 @@ DISTRO_PN_ALIAS_pn-v86d = "Debian=v86d Ubuntu=v86d"
 DISTRO_PN_ALIAS_pn-videoproto = "Meego=xorg-x11-proto-videoproto"
 DISTRO_PN_ALIAS_pn-watchdog = "Debian=watchdog Ubuntu=watchdog Mandriva=watchdog"
 DISTRO_PN_ALIAS_pn-webkit-gtk = "Fedora=webkitgtk Ubuntu=libwebkit"
-DISTRO_PN_ALIAS_pn-web = "OpenedHand"
 DISTRO_PN_ALIAS_pn-web-webkit = "OpenedHand"
 DISTRO_PN_ALIAS_pn-which = "Mandriva=which Fedora=which"
 DISTRO_PN_ALIAS_pn-wpa-supplicant = "Meego=wpa_supplicant Fedora=wpa_supplicant OpenSuSE=wpa_supplicant Ubuntu=wpasupplicant Mandriva=wpa_supplicant Debian=wpasupplicant"
diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 9bd9069..0f7a872 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -253,7 +253,6 @@ RECIPE_MAINTAINER_pn-gtk-doc-stub-native = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-gtk-doc-stub = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-gtk-doc = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-gtk-engines = "Constantin Musca <constantinx.musca@intel.com>"
-RECIPE_MAINTAINER_pn-gtkhtml2 = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-gtk-sato-engine = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-gtk-theme-torturer = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-gtk+ = "Constantin Musca <constantinx.musca@intel.com>"
@@ -798,7 +797,6 @@ RECIPE_MAINTAINER_pn-vte ="Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-watchdog = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-wbxml2 = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-webkit-gtk = "Constantin Musca <constantinx.musca@intel.com>"
-RECIPE_MAINTAINER_pn-web = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-web-webkit = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-wget = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-which = "Radu Moisan <radu.moisan@intel.com>"
diff --git a/meta-yocto/conf/distro/include/poky-floating-revisions.inc b/meta-yocto/conf/distro/include/poky-floating-revisions.inc
index f1b3a0e..ab55f39 100644
--- a/meta-yocto/conf/distro/include/poky-floating-revisions.inc
+++ b/meta-yocto/conf/distro/include/poky-floating-revisions.inc
@@ -9,8 +9,6 @@ SRCREV_pn-exmap-console ?= "${AUTOREV}"
 #SRCREV_pn-opkg-utils-naitve ?= "${AUTOREV}"
 #SRCREV_pn-opkg-utils ?= "${AUTOREV}"
 SRCREV_pn-gconf-dbus ?= "${AUTOREV}"
-#SRCREV_pn-gtkhtml2 ?= "${AUTOREV}"
-SRCREV_pn-web ?= "${AUTOREV}"
 SRCREV_pn-matchbox-common ?= "${AUTOREV}"
 SRCREV_pn-matchbox-config-gtk ?= "${AUTOREV}"
 SRCREV_pn-matchbox-desktop ?= "${AUTOREV}"
diff --git a/meta-yocto/conf/distro/include/recipe_color.inc b/meta-yocto/conf/distro/include/recipe_color.inc
index c301037..70871f1 100644
--- a/meta-yocto/conf/distro/include/recipe_color.inc
+++ b/meta-yocto/conf/distro/include/recipe_color.inc
@@ -115,7 +115,6 @@ RECIPE_COLOR_pn-grep = "yellow"
 RECIPE_COLOR_pn-groff = "red"
 RECIPE_COLOR_pn-gtk+ = "yellow"
 RECIPE_COLOR_pn-gtk-doc = "red"
-RECIPE_COLOR_pn-gtkhtml2 = "red"
 RECIPE_COLOR_pn-gtk-sato-engine = "yellow"
 RECIPE_COLOR_pn-gtk-theme-torturer = "red"
 RECIPE_COLOR_pn-guilt-native = "red"
diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index 0ca6e5e..a984722 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -83,8 +83,6 @@ RECIPE_NO_UPDATE_REASON_pn-gst-plugins-good = "not compatible with gst-fluendo 0
 RECIPE_NO_UPDATE_REASON_pn-gst-plugins-ugly = "not compatible with gst-fluendo 0.10.x"
 RECIPE_NO_UPDATE_REASON_pn-gstreamer=" not compatible with gst-fluendo 0.10.x "
 RECIPE_NO_UPDATE_REASON_pn-gtk+ = "Do not upgrade to version: 2.99.2 because prefer stable tree"
-RECIPE_UPSTREAM_VERSION_pn-gtkhtml2 = "2.11.1"
-CHECK_DATE_pn-gtkhtml2 = "Aug 29, 2012"
 RECIPE_UPSTREAM_VERSION_pn-icu = "4.8.1.1"
 RECIPE_UPSTREAM_DATE_pn-icu = "Oct 10, 2011"
 CHECK_DATE_pn-icu = "Aug 29, 2012"
-- 
1.7.10.4


