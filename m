Return-Path: <ross.burton@intel.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 63BABE01482
	for <poky@yoctoproject.org>; Mon, 11 Feb 2013 02:55:32 -0800 (PST)
Received: by mail-wg0-f54.google.com with SMTP id fm10so4737331wgb.9
	for <poky@yoctoproject.org>; Mon, 11 Feb 2013 02:55:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=9fAfFPF6LTa02PkDSD3mbtdAyu7ZwLD8INSThqEmXEE=;
	b=Q1X9SVvGO6qfy+bOyqm2Kpk+2fS2TW9raQnIqrmefcoJUzZ9ELxH6gkiBnXE2/pvCT
	pqQUh/09ncy5iGaF/NhuhB0jntV9pgakgHklirgZH/KAbgdXYWuO8Z5KMuIU6Q69LBpF
	AgJj4qsD6MKPzz5Cutoj+mZqo2cg07y2PGNXhkwtQMWBhRKGE3naMOnp4fQ3LGQeTcRd
	dR/URU4gzWCoUIRTpM1tPrYHULWik7CLp08dgzpQTqkqgk+k/ma81GtkgxE9awoPRIHD
	oHCFiK3IrgzlYw5G5bTq+ZFRpbjxFSTFam/KaM2TKKdK+f8DgQXS1tNsy/ZXKsOHCWug
	DhZg==
X-Received: by 10.194.158.100 with SMTP id wt4mr23153166wjb.37.1360580130426; 
	Mon, 11 Feb 2013 02:55:30 -0800 (PST)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id eo10sm32294641wib.9.2013.02.11.02.55.28
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 11 Feb 2013 02:55:29 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Mon, 11 Feb 2013 10:53:15 +0000
Message-Id: <1360579997-17694-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
X-Gm-Message-State: ALoCoQkavPjGTBN56h9G/5JMPIS4ek9jGom12QG6cewuk4D+0jiNsNTYadNculbIAEgvT9Kk0tYa
Subject: [PATCH 1/3] distro: remove matchbox-stroke
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
X-List-Received-Date: Mon, 11 Feb 2013 10:55:32 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc            |    1 -
 meta-yocto/conf/distro/include/maintainers.inc             |    1 -
 meta-yocto/conf/distro/include/poky-floating-revisions.inc |    1 -
 meta-yocto/conf/distro/include/recipe_color.inc            |    1 -
 4 files changed, 4 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index b67ea2a..38f6c12 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -231,7 +231,6 @@ DISTRO_PN_ALIAS_pn-matchbox-keyboard = "Debian=matchbox-keyboard Fedora=matchbox
 DISTRO_PN_ALIAS_pn-matchbox-panel-2 = "Debian=matchbox-panel Mandriva=matchbox-panel Ubuntu=matchbox-panel"
 DISTRO_PN_ALIAS_pn-matchbox-session = "OpenedHand"
 DISTRO_PN_ALIAS_pn-matchbox-session-sato = "OpenedHand"
-DISTRO_PN_ALIAS_pn-matchbox-stroke = "OpenedHand"
 DISTRO_PN_ALIAS_pn-matchbox-terminal = "OpenedHand"
 DISTRO_PN_ALIAS_pn-matchbox-theme-sato-2 = "OpenedHand"
 DISTRO_PN_ALIAS_pn-matchbox-theme-sato = "OpenedHand"
diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 9a63224..afd538e 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -507,7 +507,6 @@ RECIPE_MAINTAINER_pn-matchbox-keyboard = "Constantin Musca <constantinx.musca@in
 RECIPE_MAINTAINER_pn-matchbox-panel-2 = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-matchbox-session-sato = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-matchbox-session = "Constantin Musca <constantinx.musca@intel.com>"
-RECIPE_MAINTAINER_pn-matchbox-stroke = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-matchbox-terminal = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-matchbox-theme-sato-2 = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-matchbox-theme-sato = "Constantin Musca <constantinx.musca@intel.com>"
diff --git a/meta-yocto/conf/distro/include/poky-floating-revisions.inc b/meta-yocto/conf/distro/include/poky-floating-revisions.inc
index fafe4a3..f1b3a0e 100644
--- a/meta-yocto/conf/distro/include/poky-floating-revisions.inc
+++ b/meta-yocto/conf/distro/include/poky-floating-revisions.inc
@@ -17,7 +17,6 @@ SRCREV_pn-matchbox-desktop ?= "${AUTOREV}"
 SRCREV_pn-matchbox-keyboard ?= "${AUTOREV}"
 SRCREV_pn-matchbox-panel ?= "${AUTOREV}"
 SRCREV_pn-matchbox-panel-2 ?= "${AUTOREV}"
-SRCREV_pn-matchbox-stroke ?= "${AUTOREV}"
 SRCREV_pn-matchbox-themes-extra ?= "${AUTOREV}"
 SRCREV_pn-matchbox-terminal ?= "${AUTOREV}"
 SRCREV_pn-matchbox-wm ?= "${AUTOREV}"
diff --git a/meta-yocto/conf/distro/include/recipe_color.inc b/meta-yocto/conf/distro/include/recipe_color.inc
index fe52b72..0326129 100644
--- a/meta-yocto/conf/distro/include/recipe_color.inc
+++ b/meta-yocto/conf/distro/include/recipe_color.inc
@@ -262,7 +262,6 @@ RECIPE_COLOR_pn-matchbox-keyboard = "yellow"
 RECIPE_COLOR_pn-matchbox-panel-2 = "yellow"
 RECIPE_COLOR_pn-matchbox-session = "yellow"
 RECIPE_COLOR_pn-matchbox-session-sato = "yellow"
-RECIPE_COLOR_pn-matchbox-stroke = "yellow"
 RECIPE_COLOR_pn-matchbox-terminal = "yellow"
 RECIPE_COLOR_pn-matchbox-theme-sato = "yellow"
 RECIPE_COLOR_pn-matchbox-theme-sato-2 = "yellow"
-- 
1.7.10.4


