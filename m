Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web11.7294.1678918914349203208
 for <poky@lists.yoctoproject.org>;
 Wed, 15 Mar 2023 15:21:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Rb0+nb2D;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id c8-20020a05600c0ac800b003ed2f97a63eso1965958wmr.3
        for <poky@lists.yoctoproject.org>; Wed, 15 Mar 2023 15:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1678918912;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=b/p1rnrBPTEI1QHVeFbwsQ3hlXHcEpNql0A+ubk+Wj8=;
        b=Rb0+nb2D24fG9Fhes4NofZjW/00SUqsP39mLenVuiqBP5cSd3IaEfIZs3Cv406pDuZ
         7y/MEy3J/EGdg3uaovJxRAzVfwMzoVf2dSMmg6vajYwvM1QBVPQ2rP+ZXW+2TaC2ebky
         9OxvTH62ZL5VHj1Ur269ikuzusS45z+nnu6jc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678918912;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b/p1rnrBPTEI1QHVeFbwsQ3hlXHcEpNql0A+ubk+Wj8=;
        b=5bIPCUSsDpJc4Xtd0zxZTr+RPMeEZNgDQQwK4RE3HsHCUiwSIimWRutkAuxVTD7oAa
         r26sZpO/9r8FJF8sagjxleeKmKAxiHYAQ3vlTvjtMCC10IiJh05d7MaDhM8b48uZ6cHy
         N2VCj4LqY2LLF13Am5UEl8zB5QzjNw4XU/NEbGWk7KTjaRDjKJ8+WHbh0CI6aA514diI
         3DYp3Qk2exOa9a5rFDtGprABgd3eZYa5BsduU3AMgQ9xy0iMzDxdZQZTtn2+1rHgJ7F4
         i24un8C+lCfZ3OLb08yJ/4B0xDBr7IjV9It8S3aWs0wPRDcsFsjdKXKn8i5YhDTUiNFF
         hPfw==
X-Gm-Message-State: AO0yUKXkP3VIVm81unY5SHR/yVtYftM8iw/fOI3x2lCHEeBlM4ITNqJA
	1B/47zv42W5OZhO5vXYB4XdMtm542K8ZZcCiamg=
X-Google-Smtp-Source: AK7set9HDMqjVLsHO50Id5y3VAziUaGwISDFcKIoLunDRLn7HYz/fLEmDXU1DZ2sWNWvvgu1X/MfRQ==
X-Received: by 2002:a05:600c:4e4f:b0:3ed:4c36:ae94 with SMTP id e15-20020a05600c4e4f00b003ed4c36ae94mr316800wmq.15.1678918912352;
        Wed, 15 Mar 2023 15:21:52 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:4181:67:6e43:6a9])
        by smtp.gmail.com with ESMTPSA id bh10-20020a05600c3d0a00b003ed23e9e03bsm3101930wmb.46.2023.03.15.15.21.51
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 15:21:51 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky-bleeding: Update and rework
Date: Wed, 15 Mar 2023 22:21:51 +0000
Message-Id: <20230315222151.4190075-1-richard.purdie@linuxfoundation.org>
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
 meta-poky/classes/poky-bleeding.bbclass       |  5 ++
 .../include/poky-floating-revisions.inc       | 69 ++++++-------------
 meta-poky/conf/distro/poky-bleeding.conf      |  6 +-
 3 files changed, 27 insertions(+), 53 deletions(-)
 create mode 100644 meta-poky/classes/poky-bleeding.bbclass

diff --git a/meta-poky/classes/poky-bleeding.bbclass b/meta-poky/classes/poky-bleeding.bbclass
new file mode 100644
index 00000000000..3167d623fc3
--- /dev/null
+++ b/meta-poky/classes/poky-bleeding.bbclass
@@ -0,0 +1,5 @@
+python () {
+    for recipe in d.getVar("POKY_AUTOREV_RECIPES").split():
+        d.setVar("SRCREV:pn-%s" % recipe, "${AUTOREV}")
+        d.setVar("PV:append:pn-%s" % recipe, "+git${SRCPV}")
+}
diff --git a/meta-poky/conf/distro/include/poky-floating-revisions.inc b/meta-poky/conf/distro/include/poky-floating-revisions.inc
index 0cc4e005b91..82e5360b910 100644
--- a/meta-poky/conf/distro/include/poky-floating-revisions.inc
+++ b/meta-poky/conf/distro/include/poky-floating-revisions.inc
@@ -1,52 +1,25 @@
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
+    opkg-utils-native \
+    matchbox-config-gtk \
+    matchbox-desktop \
+    matchbox-keyboard \
+    matchbox-panel-2 \
+    matchbox-terminal \
+    matchbox-theme-sato \
+    matchbox-wm \
+    pseudo \
+    pseudo-native \
+    sato-icon-theme \
+    sato-screenshot \
+    settings-daemon \
+"
+# Not currently working
+#    puzzles
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

