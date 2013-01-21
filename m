Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F714E011AF
	for <poky@yoctoproject.org>; Mon, 21 Jan 2013 07:46:50 -0800 (PST)
Received: from mail-fa0-f70.google.com ([209.85.161.70])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 21 Jan 2013 07:46:49 -0800
Received: by mail-fa0-f70.google.com with SMTP id t1so7525411fae.9
	for <poky@yoctoproject.org>; Mon, 21 Jan 2013 07:46:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:from:to:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=zykWyEum3u4t7QtrkGemzXSqqs8NcYVylLokyKONP2o=;
	b=Xx0dWQuTsIHvKNl5enpQpZSMXKkkz8odeb15ywLHnH20MG6gkZ7p3yaQFboBsQ/Z0Y
	KvTZgXJeQYPrdUG8rwikEOl2ETFnMnoq0rAQztCWjBDIS9AeUL1e/du86N+H8znxVitz
	rwv1f0bFXvFpihdW2l2LN1+GZg0trtkV3Tk9Xc81ghu9avUc2rqAkWwi/SV8cdJXc0SK
	kyzTdfErQo3G/Uy5Gbu9p8L1re3VGazkDYxvA5dxK+Jd5dV16emG4sYRj4uaAnB4gA2K
	AZuwzD8bJfECuWq6u0MAqrWDCAsS+09AoW8Grom3ziHDFkTysUiBphz0dwWYTwCfxQu+
	fp1Q==
X-Received: by 10.194.78.207 with SMTP id d15mr27162519wjx.52.1358783207055;
	Mon, 21 Jan 2013 07:46:47 -0800 (PST)
X-Received: by 10.194.78.207 with SMTP id d15mr27162487wjx.52.1358783206763;
	Mon, 21 Jan 2013 07:46:46 -0800 (PST)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id fv2sm17372623wib.4.2013.01.21.07.46.45
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 21 Jan 2013 07:46:46 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Mon, 21 Jan 2013 15:44:47 +0000
Message-Id: <1358783087-17256-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
X-Gm-Message-State: ALoCoQnd/QpR301k2d0W3YiiY7ibRNSAeFg01Ih31E3blRh+9RKalUUN/+szrjelcDa++JPkOKvH5qMtTWYcuQ0gw03pm0DoGS1MeYouc5PROy4sKMzMB2GtMQio3xx0xFDWaJMI2VrsevRGB4Y4+Hel6eD3skh9GQ==
Subject: [PATCH] distro-tracking: remove e-d-s and libical
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
X-List-Received-Date: Mon, 21 Jan 2013 15:46:50 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc            |    1 -
 meta-yocto/conf/distro/include/maintainers.inc             |    2 --
 meta-yocto/conf/distro/include/poky-floating-revisions.inc |    1 -
 meta-yocto/conf/distro/include/recipe_color.inc            |    1 -
 meta-yocto/conf/distro/include/upstream_tracking.inc       |    4 ----
 5 files changed, 9 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index 2070ba1..2f56d44 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -95,7 +95,6 @@ DISTRO_PN_ALIAS_pn-eglibc-locale = "OE-Core"
 DISTRO_PN_ALIAS_pn-emgd-driver-bin = "Intel"
 DISTRO_PN_ALIAS_pn-encodings = "Ubuntu=xfonts-encodings Mandriva=x11-font-encodings Debian=xfonts-encodings"
 DISTRO_PN_ALIAS_pn-evieext = "Meego=xorg-x11-proto-evieext Debian=x11proto-evie"
-DISTRO_PN_ALIAS_pn-evolution-data-server = "Debian=evolution-data-server Fedora=evolution-data-server Mandriva=evolution-data-server OpenSuSE=evolution-data-server Ubuntu=evolution-data-server"
 DISTRO_PN_ALIAS_pn-external-csl-toolchain = "OE-Core"
 DISTRO_PN_ALIAS_pn-external-poky-toolchain = "OE-Core"
 DISTRO_PN_ALIAS_pn-external-python-tarball = "OE-Core"
diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index f7aebd4..df661cf 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -174,7 +174,6 @@ RECIPE_MAINTAINER_pn-encodings = "Constantin Musca <constantinx.musca@intel.com>
 RECIPE_MAINTAINER_pn-epdfview = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-ethtool = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-evieext ="Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-evolution-data-server = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-expat = "Scott Garman <scott.a.garman@intel.com>"
 RECIPE_MAINTAINER_pn-farsight2 = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-file = "Saul Wold <sgw@linux.intel.com>"
@@ -362,7 +361,6 @@ RECIPE_MAINTAINER_pn-libgsmd = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-libgtkstylus = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-libi18n-collate-perl-native = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libi18n-collate-perl = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-libical = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-libice = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-libiconv = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libid3tag = "Cristian Iorga <cristian.iorga@intel.com>"
diff --git a/meta-yocto/conf/distro/include/poky-floating-revisions.inc b/meta-yocto/conf/distro/include/poky-floating-revisions.inc
index 7a4d9d3..fafe4a3 100644
--- a/meta-yocto/conf/distro/include/poky-floating-revisions.inc
+++ b/meta-yocto/conf/distro/include/poky-floating-revisions.inc
@@ -11,7 +11,6 @@ SRCREV_pn-exmap-console ?= "${AUTOREV}"
 SRCREV_pn-gconf-dbus ?= "${AUTOREV}"
 #SRCREV_pn-gtkhtml2 ?= "${AUTOREV}"
 SRCREV_pn-web ?= "${AUTOREV}"
-SRCREV_pn-evolution-data-server ?= "${AUTOREV}"
 SRCREV_pn-matchbox-common ?= "${AUTOREV}"
 SRCREV_pn-matchbox-config-gtk ?= "${AUTOREV}"
 SRCREV_pn-matchbox-desktop ?= "${AUTOREV}"
diff --git a/meta-yocto/conf/distro/include/recipe_color.inc b/meta-yocto/conf/distro/include/recipe_color.inc
index 9402a93..f61250a 100644
--- a/meta-yocto/conf/distro/include/recipe_color.inc
+++ b/meta-yocto/conf/distro/include/recipe_color.inc
@@ -78,7 +78,6 @@ RECIPE_COLOR_pn-eggdbus = "yellow"
 RECIPE_COLOR_pn-empathy = "red"
 RECIPE_COLOR_pn-encodings = "yellow"
 RECIPE_COLOR_pn-epdfview = "red"
-RECIPE_COLOR_pn-evolution-data-server = "yellow"
 RECIPE_COLOR_pn-expat = "yellow"
 RECIPE_COLOR_pn-farsight2 = "red"
 RECIPE_COLOR_pn-findutils = "yellow"
diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index e129af2..28cb387 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -252,7 +252,6 @@ CHECK_DATE_pn-ethtool = "Aug 28, 2012"
 RECIPE_UPSTREAM_VERSION_pn-evieext="1.1.0"
 RECIPE_UPSTREAM_DATE_pn-evieext="Aug 26, 2009"
 CHECK_DATE_pn-evieext = "Aug 28, 2012"
-RECIPE_UPSTREAM_DATE_pn-evolution-data-server = "Jun 01, 2010"
 RECIPE_UPSTREAM_VERSION_pn-expat = "2.0.1"
 CHECK_DATE_pn-expat = "Aug 28, 2012"
 RECIPE_UPSTREAM_DATE_pn-expat = "Jun 5, 2007"
@@ -615,9 +614,6 @@ CHECK_DATE_pn-libgsmd = "Aug 30, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libgtkstylus = "0.3"
 RECIPE_UPSTREAM_DATE_pn-libgtkstylus = "Jun 1, 2012"
 CHECK_DATE_pn-libgtkstylus = "Aug 30, 2012"
-RECIPE_UPSTREAM_VERSION_pn-libical = "0.48"
-RECIPE_UPSTREAM_DATE_pn-libical ="Dec 13, 2011"
-CHECK_DATE_pn-libical = "Nov 08, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libice = "1.0.8"
 RECIPE_UPSTREAM_DATE_pn-libice = "Mar 02, 2012"
 CHECK_DATE_pn-libice = "Aug 30, 2012"
-- 
1.7.10.4


