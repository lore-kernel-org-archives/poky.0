Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web10.241.1678987951638163165
 for <poky@lists.yoctoproject.org>;
 Thu, 16 Mar 2023 10:32:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=hGSdrYFd;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id r19-20020a05600c459300b003eb3e2a5e7bso1718025wmo.0
        for <poky@lists.yoctoproject.org>; Thu, 16 Mar 2023 10:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1678987950;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=E5UbD0Hv+btkgBJJ0qv1wP3kFcCYObSWtgsyN5DAVkY=;
        b=hGSdrYFdRB6loUVbUzhhrNu5wuIAPbLRQMx1UKMpQHJt/JtloTnIZSLbkjLJJElv4n
         NmD7OHs1ODRl69JX0UlN5udU9uXZTrE5Q+2JmXvZ3bisXHUFxIWVMdG68D4rMt2K5SsO
         vuDL3cPWtUzVoj+2exSCN8XQZjfwXShaFSTdY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678987950;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E5UbD0Hv+btkgBJJ0qv1wP3kFcCYObSWtgsyN5DAVkY=;
        b=eLmf31jS5wfN2k4UE6NSTWXPGJHBGG1egfdmFMoGIa0OcmscDFKKjZ7IMQaHZCxdic
         ANBHjRgHBhz2ipaGkveo9MBK2ABSa3GTxa4pg9neXFwuemDWBYa8q1vaHCd6XSGzHf5P
         W/4pBWHlYBCL3oQV+9O6qtN10FuQyrGUXBX0L/rodqSK4w4VCYJSnsTxqViUvVDkPmyD
         +Iws1dYQkfEuflTsARh3f13/iCrncIc4CdnBxr9CupdSwAvuSu4dG9CuzXIbVj/yBuzQ
         JcQbzMmKVZLrcEIt8viqHQ6+6tIdCsXIJ/WsPZa1hgaFrIwV2ccZWBMx8Lg66MycGoiR
         wQwQ==
X-Gm-Message-State: AO0yUKUW1LkOLM6ZC98QtfZishpwb8pe90oSf7ctIqG6XzU7shHR/Mfd
	h7JBIvHNgHYlbYIrqjcIK8kLrl08Gej1hQgLCow=
X-Google-Smtp-Source: AK7set/Nzw3roodZvme8/s8FLy0Y0i54WGsbrI7Q4VucushxaZRrhkmBkbFR1EgtzeX7uBR2ve2hxg==
X-Received: by 2002:a1c:ed08:0:b0:3ed:4e5d:99fd with SMTP id l8-20020a1ced08000000b003ed4e5d99fdmr2856914wmh.13.1678987949627;
        Thu, 16 Mar 2023 10:32:29 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:4181:67:6e43:6a9])
        by smtp.gmail.com with ESMTPSA id 23-20020a05600c229700b003dc522dd25esm5488754wmf.30.2023.03.16.10.32.28
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Mar 2023 10:32:29 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH v2] poky-bleeding: Update and rework
Date: Thu, 16 Mar 2023 17:32:28 +0000
Message-Id: <20230316173228.200216-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This distro setting has bitrotted quite badly but the idea remains
a good one. Try and improve things by:

* using a class and a list of recipes to make things more readable
* drop settings for recipes which no longer use git
* drop obsolete PREFERRED_VERSION settings
* add a provider switch to use linux-yocto-dev
* reword to avoid "package" confusion with recipe

The distro then builds and highlighted a number of matchbox
issues which other patches address and improve.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/classes/poky-bleeding.bbclass       | 20 ++++++
 .../include/poky-floating-revisions.inc       | 66 +++++--------------
 meta-poky/conf/distro/poky-bleeding.conf      |  6 +-
 3 files changed, 39 insertions(+), 53 deletions(-)
 create mode 100644 meta-poky/classes/poky-bleeding.bbclass

diff --git a/meta-poky/classes/poky-bleeding.bbclass b/meta-poky/classes/poky-bleeding.bbclass
new file mode 100644
index 00000000000..e5f30687e4b
--- /dev/null
+++ b/meta-poky/classes/poky-bleeding.bbclass
@@ -0,0 +1,20 @@
+#
+# AUTOREV and PV containing SRCPV needs to be set early, before any anonymous python
+# expands anything containing PV, else the parse process won't trigger the fetcher to
+# cache the needed version data
+#
+python pokybleeding_version_handler () {
+    bpn = d.getVar("BPN")
+    # We're running before the class extension code at PreFinalise so manually fix BPN
+    bpn = bpn.replace("-nativesdk", "").replace("nativesdk-", "")
+
+    if bpn in d.getVar("POKY_AUTOREV_RECIPES").split():
+        if "pseudo" in bpn:
+            bb.warn("Here 5 %s %s" % (d.getVar("PN"), bpn))
+        d.setVar("SRCREV", "${AUTOREV}")
+        if "+git" not in d.getVar("PV"):
+            d.appendVar("PV", "+git${SRCPV}")
+}
+
+addhandler pokybleeding_version_handler
+pokybleeding_version_handler[eventmask] = "bb.event.RecipePreFinalise"
diff --git a/meta-poky/conf/distro/include/poky-floating-revisions.inc b/meta-poky/conf/distro/include/poky-floating-revisions.inc
index 0cc4e005b91..0721a718bdd 100644
--- a/meta-poky/conf/distro/include/poky-floating-revisions.inc
+++ b/meta-poky/conf/distro/include/poky-floating-revisions.inc
@@ -1,52 +1,22 @@
 #
-# Package Versions for cutting edge testing:
+# Set recipe versions to auto-rev for cutting edge testing
 #
 
-#SRCREV:pn-opkg-native ?= "${AUTOREV}"
-#SRCREV:pn-opkg-sdk ?= "${AUTOREV}"
-#SRCREV:pn-opkg ?= "${AUTOREV}"
-#SRCREV:pn-opkg-utils-native ?= "${AUTOREV}"
-#SRCREV:pn-opkg-utils ?= "${AUTOREV}"
-SRCREV:pn-gconf-dbus ?= "${AUTOREV}"
-SRCREV:pn-matchbox-common ?= "${AUTOREV}"
-SRCREV:pn-matchbox-config-gtk ?= "${AUTOREV}"
-SRCREV:pn-matchbox-desktop ?= "${AUTOREV}"
-SRCREV:pn-matchbox-keyboard ?= "${AUTOREV}"
-SRCREV:pn-matchbox-panel-2 ?= "${AUTOREV}"
-SRCREV:pn-matchbox-themes-extra ?= "${AUTOREV}"
-SRCREV:pn-matchbox-terminal ?= "${AUTOREV}"
-SRCREV:pn-matchbox-wm ?= "${AUTOREV}"
-SRCREV:pn-settings-daemon ?= "${AUTOREV}"
-SRCREV:pn-screenshot ?= "${AUTOREV}"
-SRCREV:pn-libfakekey ?= "${AUTOREV}"
-SRCREV:pn-psplash ?= "${AUTOREV}"
-SRCREV:pn-gtk-sato-engine ?= "${AUTOREV}"
-SRCREV:pn-matchbox-theme-sato ?= "${AUTOREV}"
-SRCREV:pn-sato-icon-theme ?= "${AUTOREV}"
-SRCREV:pn-matchbox-desktop-sato ?= "${AUTOREV}"
-SRCREV:pn-oh-puzzles ?= "${AUTOREV}"
-SRCREV:pn-libowl ?= "${AUTOREV}"
-SRCREV:pn-libmatchbox ?= "${AUTOREV}"
-SRCREV:pn-ofono ?= "${AUTOREV}"
-
-SRCREV:pn-dri2proto = "${AUTOREV}"
-#PREFERRED_VERSION_dri2proto ?= "1.99.1+git%"
-SRCREV:pn-libdrm = "${AUTOREV}"
-#PREFERRED_VERSION_libdrm ?= "2.4.0+git%"
-SRCREV:pn-libxcb = "${AUTOREV}"
-#PREFERRED_VERSION_libxcb ?= "1.1.90.1+gitr%"
-SRCREV:pn-lib-proto = "${AUTOREV}"
-#PREFERRED_VERSION_xcb-proto ?= "1.2+gitr%"
-SRCREV:pn-libxcb-sdk = "${AUTOREV}"
-#PREFERRED_VERSION_libxcb-sdk ?= "1.1.90.1+gitr%"
-SRCREV:pn-xf86-input-evdev = "${AUTOREV}"
-#PREFERRED_VERSION_xf86-input-evdev ?= "2.0.4"
-SRCREV:pn-xf86-input-mouse = "${AUTOREV}"
-#PREFERRED_VERSION_xf86-input-mouse ?= "1.3.0+git%"
-SRCREV:pn-xf86-input-synaptics = "${AUTOREV}"
-#PREFERRED_VERSION_xf86-input-synaptics ?= "0.15.2+git%"
-
-#SRCDATE_oprofile ?= "${DATE}"
-
-PREFERRED_VERSION_oprofile ?= "0.9.4+cvs${SRCDATE_oprofile}"
+INHERIT += "poky-bleeding"
 
+POKY_AUTOREV_RECIPES = "\
+    libmatchbox \
+    opkg-utils \
+    matchbox-config-gtk \
+    matchbox-desktop \
+    matchbox-keyboard \
+    matchbox-panel-2 \
+    matchbox-terminal \
+    matchbox-theme-sato \
+    matchbox-wm \
+    pseudo \
+    puzzles \
+    sato-icon-theme \
+    sato-screenshot \
+    settings-daemon \
+"
diff --git a/meta-poky/conf/distro/poky-bleeding.conf b/meta-poky/conf/distro/poky-bleeding.conf
index 2d3e046a457..8cbf2284d0a 100644
--- a/meta-poky/conf/distro/poky-bleeding.conf
+++ b/meta-poky/conf/distro/poky-bleeding.conf
@@ -1,8 +1,4 @@
-PREFERRED_VERSION_glib-2.0 ?= "2.17.4"
-PREFERRED_VERSION_glib-2.0-native ?= "2.17.4"
-PREFERRED_VERSION_atk ?= "1.22.0"
-PREFERRED_VERSION_pango ?= "1.21.2"
-PREFERRED_VERSION_gtk+ ?= "2.13.3"
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-dev"
 
 require conf/distro/include/poky-floating-revisions.inc
 require conf/distro/poky.conf
-- 
2.38.1

