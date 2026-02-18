Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE550E9A03B
	for <webhook@archiver.kernel.org>; Wed, 18 Feb 2026 10:25:20 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.9103.1771410310301904041
 for <poky@lists.yoctoproject.org>;
 Wed, 18 Feb 2026 02:25:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EnDe/te9;
 spf=pass (domain: gmail.com, ip: 209.85.221.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-43626796202so4711012f8f.3
        for <poky@lists.yoctoproject.org>; Wed, 18 Feb 2026 02:25:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771410308; x=1772015108; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Xqd7rVLJKKeJVauEH+w9PvKs1hcurGjsnk2I07du13E=;
        b=EnDe/te962+QHtzimsqKOsEFS5g4zAWfYopr95JkbEJjY8jDKo2SUXOtu2IVpKrRm5
         wk4SnQY6zGukXZtAfcHfbibXWxaKWYpmPNEv8JaCTc/YfApshdm4rLKacQB+CrOIBD4b
         hRvLOzOd5QtvKn2GFUEB8jP9Qghhv4g364AI7Spmr4egV5u+evS1u7sBHqidStx0osnM
         oZTxSxclEK8Q1sBO8qIzEtKRsRzMZF7v4tuMq0SghrqnqYhzGHQUSQ6NSZgalgrKK5dy
         H4r/TIeSWIgLl6kcGz/Oq6a0oWKlJqZSajM6RIxw01JsS5ma7tcFtCufXhDp+7MHQ/s/
         LKfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771410308; x=1772015108;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xqd7rVLJKKeJVauEH+w9PvKs1hcurGjsnk2I07du13E=;
        b=wUAKIUF6GHHLxxbZ/cDweL26og+x0T4u4Q7g7ILRMxwvIpSmoMRH23U5HW1TwCrPaX
         wBmPTyc75w2i02LyOxdmoN3Y5Hb6UW2t3cHnIA4uL8mrL3K9xoFMda3+0DDgpfq6DKzk
         MOZEXcZMqE6CYZyMA/VmWMICPCP79al+Mh2NI94AY9cJcxUMoBOUt/0idNwBtioFicDY
         RlBVTOw/UbOl5EtTEKu+kWzrA02J1tcLAaDAAPaNIJ5mNp4Pbj69iYRv9mdTF6q4zS4d
         qnwuKGoy4je200x0ySUgWJph0y+BM9jaoD6DnzJZGNG7ULx1a56c3i3xPB+FFrIUl0Fp
         E7Vw==
X-Gm-Message-State: AOJu0YxsW4SUSDs3Fh8LBb6HnD+wKsYCvfRsl6zqiqnvM0WL6rijG0HS
	dNeMH7xffmgcfrAEmczKRQUsRSq94/vFLIear/0G9RCsbNPIfE4H5qX8ub6FTw==
X-Gm-Gg: AZuq6aKNx1oO5AXB7eRA6uMS1KKAJW3JNSG6veluaTnWeUQ/rHcJ77rrgYKkBmKl02g
	rKa9IlVRhwykCwrFwkAJ4YVCygHk7ure9Ek2G3JTrhA1+P/1WtJIhJ7KiA6vX/+AM2EYeRdfpzr
	O3Lpyl+3/b5ZSnEuYOXdParg4+FSZL/RQ+B5KIT4JeM+WhhlWAdLMls+72it5n6X+uWJ7HkjHeq
	LTvhg+kU866teYT+rIBKYUL57rQeDuGu8YdUiC7h9Spw3SIozyBmOAaf5MnsbF566xSsHPwys+/
	vI+KA3bsciErKW21jVg2BR7boswS4N1s/hIDuEMWZUb5BETrKc6RpZg1PGFDGPHtkEpxBFN4mX9
	XBXrkxyeSniCeKeaPFIlifrB8dHm1nUdD8ES8zYjLNiRTGFvsBts2dEboBcYjXWkjc5lF75PRJZ
	O4iEb2V+vpXoS5nJUJPLhqWI54hV/UbNwB8CvMrHzE28k9dihyi0D41t4iFSyKgQTM+3es2A==
X-Received: by 2002:a05:6000:400e:b0:433:2f55:7cab with SMTP id ffacd0b85a97d-43958e4a6c2mr2131370f8f.37.1771410307694;
        Wed, 18 Feb 2026 02:25:07 -0800 (PST)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796acf5b9sm39035304f8f.34.2026.02.18.02.25.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 02:25:07 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH] meta-poky: remove the default template
Date: Wed, 18 Feb 2026 11:24:59 +0100
Message-ID: <20260218102459.3590135-1-alex@linutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 18 Feb 2026 10:25:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13838

It is largely duplicating oe-core's template (with addition of
some poky-specific items and minor differences, see below),
and has issues such as assuming a particular layer layout, and
pre-selecting a particular DISTRO and MACHINE.

Rather than continuing to maintain both template, let's transition
the oe-core template as a starting point (when not using bitbake-setup).

To get poky one from oe-core template would need to initialize as usual with
oe-init-build-env, then add the two meta-yocto layers, and set a DISTRO
(both can be done from command line without having to do manual edits).

The difference between templates (if review determines there are important
pieces that should be carried over to oe-core, that can of course be done):

	diff -uNr meta-poky/conf/templates/default/bblayers.conf.sample ../openembedded-core/meta/conf/templates/default/bblayers.conf.sample
	--- meta-poky/conf/templates/default/bblayers.conf.sample	2026-02-17 12:17:55.599510358 +0100
	+++ ../openembedded-core/meta/conf/templates/default/bblayers.conf.sample	2026-02-06 14:34:36.078136263 +0100
	@@ -1,12 +1,10 @@
	-# POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.conf
	+# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
	 # changes incompatibly
	-POKY_BBLAYERS_CONF_VERSION = "2"
	+LCONF_VERSION = "7"

	 BBPATH = "${TOPDIR}"
	 BBFILES ?= ""

	 BBLAYERS ?= " \
	   ##OEROOT##/meta \
	-  ##OEROOT##/../meta-yocto/meta-poky \
	-  ##OEROOT##/../meta-yocto/meta-yocto-bsp \
	   "
	diff -uNr meta-poky/conf/templates/default/conf-summary.txt ../openembedded-core/meta/conf/templates/default/conf-summary.txt
	--- meta-poky/conf/templates/default/conf-summary.txt	2026-02-17 12:17:55.599510358 +0100
	+++ ../openembedded-core/meta/conf/templates/default/conf-summary.txt	2026-02-06 14:34:36.078136263 +0100
	@@ -1 +1 @@
	-This is the default build configuration for the Poky reference distribution.
	+This is the default build configuration for the openembedded-core layer.
	diff -uNr meta-poky/conf/templates/default/local.conf.sample ../openembedded-core/meta/conf/templates/default/local.conf.sample
	--- meta-poky/conf/templates/default/local.conf.sample	2026-02-17 12:17:55.599510358 +0100
	+++ ../openembedded-core/meta/conf/templates/default/local.conf.sample	2026-02-13 11:35:38.470911235 +0100
	@@ -25,14 +25,6 @@
	 #MACHINE ?= "qemux86"
	 #MACHINE ?= "qemux86-64"
	 #
	-# There are also the following hardware board target machines included for
	-# demonstration purposes:
	-#
	-#MACHINE ?= "beaglebone-yocto"
	-#MACHINE ?= "genericarm64"
	-#MACHINE ?= "genericx86"
	-#MACHINE ?= "genericx86-64"
	-#
	 # This sets the default machine to be qemux86-64 if no other machine is selected:
	 MACHINE ??= "qemux86-64"

	@@ -81,20 +73,6 @@
	 #
	 #TMPDIR = "${TOPDIR}/tmp"

	-#
	-# Default policy config
	-#
	-# The distribution setting controls which policy settings are used as defaults.
	-# The default value is fine for general Yocto project use, at least initially.
	-# Ultimately when creating custom policy, people will likely end up subclassing
	-# these defaults.
	-#
	-DISTRO ?= "poky"
	-# As an example of a subclass there is a "bleeding" edge policy configuration
	-# where many versions are set to the absolute latest code from the upstream
	-# source control systems. This is just mentioned here as an example, its not
	-# useful to most new users.
	-# DISTRO ?= "poky-bleeding"

	 #
	 # Package Management configuration
	@@ -107,8 +85,8 @@
	 #  - 'package_ipk' for ipk files are used by opkg (a debian style embedded package manager)
	 #  - 'package_rpm' for rpm style packages
	 # E.g.: PACKAGE_CLASSES ?= "package_rpm package_deb package_ipk"
	-# OE-Core defaults to ipkg, whilst Poky defaults to rpm:
	-# PACKAGE_CLASSES ?= "package_rpm"
	+# We default to ipk (via meta/conf/distro/defaultsetup.conf included in meta/conf/bitbake.conf):
	+#PACKAGE_CLASSES ?= "package_ipk"

	 #
	 # SDK target architecture
	@@ -158,6 +136,7 @@
	 #   - 'buildstats' collect build statistics
	 USER_CLASSES ?= "buildstats"

	+
	 #
	 # Runtime testing of images
	 #
	@@ -225,22 +204,6 @@
	 #file://.* https://someserver.tld/share/sstate/PATH;downloadfilename=PATH \
	 #file://.* file:///some/local/dir/sstate/PATH"

	-#
	-# Yocto Project SState Mirror
	-#
	-# The Yocto Project has prebuilt artefacts available for its releases, you can enable
	-# use of these by uncommenting some of the following lines. This will mean the build uses
	-# the network to check for artefacts at the start of builds, which does slow it down
	-# initially but it will then speed up the builds by not having to build things if they are
	-# present in the cache. It assumes you can download something faster than you can build it
	-# which will depend on your network.
	-# Note: For this to work you also need hash-equivalence passthrough to the matching server
	-# There is a choice between our sstate server directly and a faster content delivery network
	-# (CDN) kindly provided by JSDelivr, uncomment one of the SSTATE_MIRRORS lines, not both.
	-# Using the CDN rather than the yoctoproject.org address is suggested/preferred.
	-#
	-#BB_HASHSERVE_UPSTREAM = 'wss://hashserv.yoctoproject.org/ws'
	-#SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"

	 #
	 # Qemu configuration
	diff -uNr meta-poky/conf/templates/default/local.conf.sample.extended ../openembedded-core/meta/conf/templates/default/local.conf.sample.extended
	--- meta-poky/conf/templates/default/local.conf.sample.extended	2026-02-17 12:17:55.599510358 +0100
	+++ ../openembedded-core/meta/conf/templates/default/local.conf.sample.extended	2026-02-06 14:34:36.078136263 +0100
	@@ -31,10 +31,11 @@
	 #do_fetch[number_threads] = "4"
	 #

	-# If you want to get an image based on directfb without x11 alter
	-# DISTRO_FEATURES:
	-DISTRO_FEATURES:append = " directfb"
	-DISTRO_FEATURES:remove = "x11"
	+
	+#DISTRO_FEATURES = "alsa bluetooth ext2 irda ipv4 ipv6 pcmcia usbgadget usbhost wifi nfs zeroconf pci"
	+
	+# If you want to get an image based on directfb without x11, Please copy this variable to build/conf/local.conf
	+#DISTRO_FEATURES = "alsa bluetooth ext2 irda ipv4 ipv6 pcmcia usbgadget usbhost wifi xattr nfs zeroconf pci 3g directfb"

	 # ENABLE_BINARY_LOCALE_GENERATION controls the generation of binary locale
	 # packages at build time using qemu-native. Disabling it (by setting it to 0)
	@@ -178,13 +179,13 @@
	 # implications so they are disabled by default.  To enable them,
	 # un-comment the below as appropriate.
	 #LICENSE_FLAGS_ACCEPTED = "commercial_gst-fluendo-mp3 \
	-#                           commercial_gst-openmax \
	-#                           commercial_gst-plugins-ugly \
	-#                           commercial_lame \
	-#                           commercial_libmad \
	-#                           commercial_libomxil \
	-#                           commercial_mpeg2dec \
	-#                           commercial_qmmp"
	+#                          commercial_gst-openmax \
	+#                          commercial_gst-plugins-ugly \
	+#                          commercial_lame \
	+#                          commercial_libmad \
	+#                          commercial_libomxil \
	+#                          commercial_mpeg2dec \
	+#                          commercial_qmmp"

	 #
	@@ -263,7 +264,7 @@
	 #
	 # By including the security_flags include file you enable flags
	 # to the compiler and linker that cause them to generate more secure
	-# code.
	+# code, this is enabled by default in the poky-lsb distro.
	 # This does affect compile speed slightly.
	 #
	 # Use the following line to enable the security compiler and linker flags to your build

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 .templateconf                                 |   2 -
 .../templates/default/bblayers.conf.sample    |  12 -
 .../conf/templates/default/conf-notes.txt     |  19 -
 .../conf/templates/default/conf-summary.txt   |   1 -
 .../conf/templates/default/local.conf.sample  | 285 -------------
 .../default/local.conf.sample.extended        | 388 ------------------
 .../conf/templates/default/site.conf.sample   |  33 --
 7 files changed, 740 deletions(-)
 delete mode 100644 .templateconf
 delete mode 100644 meta-poky/conf/templates/default/bblayers.conf.sample
 delete mode 100644 meta-poky/conf/templates/default/conf-notes.txt
 delete mode 100644 meta-poky/conf/templates/default/conf-summary.txt
 delete mode 100644 meta-poky/conf/templates/default/local.conf.sample
 delete mode 100644 meta-poky/conf/templates/default/local.conf.sample.extended
 delete mode 100644 meta-poky/conf/templates/default/site.conf.sample

diff --git a/.templateconf b/.templateconf
deleted file mode 100644
index faf0348..0000000
--- a/.templateconf
+++ /dev/null
@@ -1,2 +0,0 @@
-# Template settings
-TEMPLATECONF=${TEMPLATECONF:-meta-poky/conf/templates/default}
diff --git a/meta-poky/conf/templates/default/bblayers.conf.sample b/meta-poky/conf/templates/default/bblayers.conf.sample
deleted file mode 100644
index d34b552..0000000
--- a/meta-poky/conf/templates/default/bblayers.conf.sample
+++ /dev/null
@@ -1,12 +0,0 @@
-# POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.conf
-# changes incompatibly
-POKY_BBLAYERS_CONF_VERSION = "2"
-
-BBPATH = "${TOPDIR}"
-BBFILES ?= ""
-
-BBLAYERS ?= " \
-  ##OEROOT##/meta \
-  ##OEROOT##/../meta-yocto/meta-poky \
-  ##OEROOT##/../meta-yocto/meta-yocto-bsp \
-  "
diff --git a/meta-poky/conf/templates/default/conf-notes.txt b/meta-poky/conf/templates/default/conf-notes.txt
deleted file mode 100644
index cfd1f19..0000000
--- a/meta-poky/conf/templates/default/conf-notes.txt
+++ /dev/null
@@ -1,19 +0,0 @@
-
-### Shell environment set up for builds. ###
-
-You can now run 'bitbake <target>'
-
-Common targets are:
-    core-image-minimal
-    core-image-full-cmdline
-    core-image-sato
-    core-image-weston
-    meta-toolchain
-    meta-ide-support
-
-You can also run generated qemu images with a command like 'runqemu qemux86-64'.
-
-Other commonly useful commands are:
- - 'devtool' and 'recipetool' handle common recipe tasks
- - 'bitbake-layers' handles common layer tasks
- - 'oe-pkgdata-util' handles common target package tasks
diff --git a/meta-poky/conf/templates/default/conf-summary.txt b/meta-poky/conf/templates/default/conf-summary.txt
deleted file mode 100644
index 8fc0303..0000000
--- a/meta-poky/conf/templates/default/conf-summary.txt
+++ /dev/null
@@ -1 +0,0 @@
-This is the default build configuration for the Poky reference distribution.
diff --git a/meta-poky/conf/templates/default/local.conf.sample b/meta-poky/conf/templates/default/local.conf.sample
deleted file mode 100644
index 5a62de3..0000000
--- a/meta-poky/conf/templates/default/local.conf.sample
+++ /dev/null
@@ -1,285 +0,0 @@
-#
-# This file is your local configuration file and is where all local user settings
-# are placed. The comments in this file give some guide to the options a new user
-# to the system might want to change but pretty much any configuration option can
-# be set in this file. More adventurous users can look at
-# local.conf.sample.extended which contains other examples of configuration which
-# can be placed in this file but new users likely won't need any of them
-# initially. There's also site.conf.sample which contains examples of site specific
-# information such as proxy server addresses.
-#
-# Lines starting with the '#' character are commented out and in some cases the
-# default values are provided as comments to show people example syntax. Enabling
-# the option is a question of removing the # character and making any change to the
-# variable as required.
-
-#
-# Machine Selection
-#
-# You need to select a specific machine to target the build with. There are a selection
-# of emulated machines available which can boot and run in the QEMU emulator:
-#
-#MACHINE ?= "qemuarm"
-#MACHINE ?= "qemuarm64"
-#MACHINE ?= "qemuriscv64"
-#MACHINE ?= "qemux86"
-#MACHINE ?= "qemux86-64"
-#
-# There are also the following hardware board target machines included for 
-# demonstration purposes:
-#
-#MACHINE ?= "beaglebone-yocto"
-#MACHINE ?= "genericarm64"
-#MACHINE ?= "genericx86"
-#MACHINE ?= "genericx86-64"
-#
-# This sets the default machine to be qemux86-64 if no other machine is selected:
-MACHINE ??= "qemux86-64"
-
-# These are some of the more commonly used values. Looking at the files in the
-# meta/conf/machine directory, or the conf/machine directory of any additional layers
-# you add in will show all the available machines.
-
-#
-# Where to place downloads
-#
-# During a first build the system will download many different source code tarballs
-# from various upstream projects. This can take a while, particularly if your network
-# connection is slow. These are all stored in DL_DIR. When wiping and rebuilding you
-# can preserve this directory to speed up this part of subsequent builds. This directory
-# is safe to share between multiple builds on the same machine too.
-#
-# The default is a downloads directory under TOPDIR which is the build directory.
-#
-#DL_DIR ?= "${TOPDIR}/downloads"
-
-#
-# Where to place shared-state files
-#
-# BitBake has the capability to accelerate builds based on previously built output.
-# This is done using "shared state" files which can be thought of as cache objects
-# and this option determines where those files are placed.
-#
-# You can wipe out TMPDIR leaving this directory intact and the build would regenerate
-# from these files if no changes were made to the configuration. If changes were made
-# to the configuration, only shared state files where the state was still valid would
-# be used (done using checksums).
-#
-# The default is a sstate-cache directory under TOPDIR.
-#
-#SSTATE_DIR ?= "${TOPDIR}/sstate-cache"
-
-#
-# Where to place the build output
-#
-# This option specifies where the bulk of the building work should be done and
-# where BitBake should place its temporary files and output. Keep in mind that
-# this includes the extraction and compilation of many applications and the toolchain
-# which can use Gigabytes of hard disk space.
-#
-# The default is a tmp directory under TOPDIR.
-#
-#TMPDIR = "${TOPDIR}/tmp"
-
-#
-# Default policy config
-#
-# The distribution setting controls which policy settings are used as defaults.
-# The default value is fine for general Yocto project use, at least initially.
-# Ultimately when creating custom policy, people will likely end up subclassing 
-# these defaults.
-#
-DISTRO ?= "poky"
-# As an example of a subclass there is a "bleeding" edge policy configuration
-# where many versions are set to the absolute latest code from the upstream 
-# source control systems. This is just mentioned here as an example, its not
-# useful to most new users.
-# DISTRO ?= "poky-bleeding"
-
-#
-# Package Management configuration
-#
-# This variable lists which packaging formats to enable. Multiple package backends
-# can be enabled at once and the first item listed in the variable will be used
-# to generate the root filesystems.
-# Options are:
-#  - 'package_deb' for debian style deb files
-#  - 'package_ipk' for ipk files are used by opkg (a debian style embedded package manager)
-#  - 'package_rpm' for rpm style packages
-# E.g.: PACKAGE_CLASSES ?= "package_rpm package_deb package_ipk"
-# OE-Core defaults to ipkg, whilst Poky defaults to rpm:
-# PACKAGE_CLASSES ?= "package_rpm"
-
-#
-# SDK target architecture
-#
-# This variable specifies the architecture to build SDK items for and means
-# you can build the SDK packages for architectures other than the machine you are
-# running the build on (i.e. building i686 packages on an x86_64 host).
-# Supported values are i686, x86_64, aarch64
-#SDKMACHINE ?= "i686"
-
-#
-# Extra image configuration defaults
-#
-# The EXTRA_IMAGE_FEATURES variable allows extra packages to be added to the generated
-# images. Some of these options are added to certain image types automatically. Some
-# of the features available are:
-#  "dbg-pkgs"             - add -dbg packages for all installed packages
-#                           (adds symbol information for debugging/profiling)
-#  "src-pkgs"             - add -src packages for all installed packages
-#                           (adds source code for debugging)
-#  "dev-pkgs"             - add -dev packages for all installed packages
-#                           (useful if you want to develop against libs in the image)
-#  "ptest-pkgs"           - add -ptest packages for all ptest-enabled packages
-#                           (useful if you want to run the package test suites)
-#  "tools-sdk"            - add development tools (gcc, make, pkgconfig etc.)
-#  "tools-debug"          - add debugging tools (gdb, strace)
-#  "eclipse-debug"        - add Eclipse remote debugging support
-#  "tools-profile"        - add profiling tools (oprofile, lttng, valgrind)
-#  "tools-testapps"       - add useful testing tools (ts_print, aplay, arecord etc.)
-#  "allow-empty-password" - allow users to have an empty password
-#  "empty-root-password"  - the root user has no password set
-#  "allow-root-login      - the root user can login
-# There are other features that can be used here too, see
-# meta/classes-recipe/image.bbclass and
-# meta/classes-recipe/core-image.bbclass for more details.
-#
-# The following will allow root login without a password for convenience.
-# Use with care, and never in product builds.
-#EXTRA_IMAGE_FEATURES ?= "allow-empty-password empty-root-password allow-root-login"
-
-#
-# Additional image features
-#
-# The following is a list of additional classes to use when building images which
-# enable extra features. Some available options which can be included in this variable
-# are:
-#   - 'buildstats' collect build statistics
-USER_CLASSES ?= "buildstats"
-
-#
-# Runtime testing of images
-#
-# The build system can test booting virtual machine images under qemu (an emulator)
-# after any root filesystems are created and run tests against those images. It can also
-# run tests against any SDK that are built. To enable this uncomment these lines.
-# See meta/classes-recipe/test{image,sdk}.bbclass for further details.
-#IMAGE_CLASSES += "testimage testsdk"
-#TESTIMAGE_AUTO:qemuall = "1"
-
-#
-# Interactive shell configuration
-#
-# Under certain circumstances the system may need input from you and to do this it
-# can launch an interactive shell. It needs to do this since the build is
-# multithreaded and needs to be able to handle the case where more than one parallel
-# process may require the user's attention. The default is iterate over the available
-# terminal types to find one that works.
-#
-# Examples of the occasions this may happen are when resolving patches which cannot
-# be applied, to use the devshell or the kernel menuconfig
-#
-# Supported values are auto, gnome, xfce, rxvt, screen, konsole (KDE 3.x only), none
-# Note: currently, Konsole support only works for KDE 3.x due to the way
-# newer Konsole versions behave
-#OE_TERMINAL = "auto"
-# By default disable interactive patch resolution (tasks will just fail instead):
-PATCHRESOLVE = "noop"
-
-#
-# Disk Space Monitoring during the build
-#
-# Monitor the disk space during the build. If there is less that 1GB of space or less
-# than 100K inodes in any key build location (TMPDIR, DL_DIR, SSTATE_DIR), gracefully
-# shutdown the build. If there is less than 100MB or 1K inodes, perform a hard halt
-# of the build. The reason for this is that running completely out of space can corrupt
-# files and damages the build in ways which may not be easily recoverable.
-# It's necessary to monitor /tmp, if there is no space left the build will fail
-# with very exotic errors.
-BB_DISKMON_DIRS ??= "\
-    STOPTASKS,${TMPDIR},1G,100K \
-    STOPTASKS,${DL_DIR},1G,100K \
-    STOPTASKS,${SSTATE_DIR},1G,100K \
-    STOPTASKS,/tmp,100M,100K \
-    HALT,${TMPDIR},100M,1K \
-    HALT,${DL_DIR},100M,1K \
-    HALT,${SSTATE_DIR},100M,1K \
-    HALT,/tmp,10M,1K"
-
-#
-# Shared-state files from other locations
-#
-# As mentioned above, shared state files are prebuilt cache data objects which can be
-# used to accelerate build time. This variable can be used to configure the system
-# to search other mirror locations for these objects before it builds the data itself.
-#
-# This can be a filesystem directory, or a remote url such as https or ftp. These
-# would contain the sstate-cache results from previous builds (possibly from other
-# machines). This variable works like fetcher MIRRORS/PREMIRRORS and points to the
-# cache locations to check for the shared objects.
-# NOTE: if the mirror uses the same structure as SSTATE_DIR, you need to add PATH
-# at the end as shown in the examples below. This will be substituted with the
-# correct path within the directory structure.
-#SSTATE_MIRRORS ?= "\
-#file://.* https://someserver.tld/share/sstate/PATH;downloadfilename=PATH \
-#file://.* file:///some/local/dir/sstate/PATH"
-
-#
-# Yocto Project SState Mirror
-#
-# The Yocto Project has prebuilt artefacts available for its releases, you can enable
-# use of these by uncommenting some of the following lines. This will mean the build uses
-# the network to check for artefacts at the start of builds, which does slow it down
-# initially but it will then speed up the builds by not having to build things if they are
-# present in the cache. It assumes you can download something faster than you can build it
-# which will depend on your network.
-# Note: For this to work you also need hash-equivalence passthrough to the matching server
-# There is a choice between our sstate server directly and a faster content delivery network
-# (CDN) kindly provided by JSDelivr, uncomment one of the SSTATE_MIRRORS lines, not both.
-# Using the CDN rather than the yoctoproject.org address is suggested/preferred.
-#
-#BB_HASHSERVE_UPSTREAM = 'wss://hashserv.yoctoproject.org/ws'
-#SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
-
-#
-# Qemu configuration
-#
-# By default native qemu will build with a builtin VNC server and a SDL UI frontend
-# where graphical output can be seen.
-# By default libsdl2-native will be built, if you want to use your host's libSDL instead of 
-# the minimal libsdl built by libsdl2-native then uncomment the ASSUME_PROVIDED line below.
-#ASSUME_PROVIDED += "libsdl2-native"
-
-# You can also enable the Gtk UI frontend, which takes somewhat longer to build, but adds
-# a handy set of menus for controlling the emulator.
-#PACKAGECONFIG:append:pn-qemu-system-native = " gtk+"
-
-#
-# Hash Equivalence
-#
-# Enable support for automatically running a local hash equivalence server and
-# instruct bitbake to use a hash equivalence aware signature generator. Hash
-# equivalence improves reuse of sstate by detecting when a given sstate
-# artifact can be reused as equivalent, even if the current task hash doesn't
-# match the one that generated the artifact.
-#
-# A shared hash equivalent server can be set with "<HOSTNAME>:<PORT>" format
-#
-#BB_HASHSERVE = "auto"
-#BB_SIGNATURE_HANDLER = "OEEquivHash"
-
-#
-# Memory Resident Bitbake
-#
-# Bitbake's server component can stay in memory after the UI for the current command
-# has completed. This means subsequent commands can run faster since there is no need
-# for bitbake to reload cache files and so on. Number is in seconds, after which the
-# server will shut down.
-#
-#BB_SERVER_TIMEOUT = "60"
-
-# CONF_VERSION is increased each time build/conf/ changes incompatibly and is used to
-# track the version of this file when it was generated. This can safely be ignored if
-# this doesn't mean anything to you.
-CONF_VERSION = "2"
diff --git a/meta-poky/conf/templates/default/local.conf.sample.extended b/meta-poky/conf/templates/default/local.conf.sample.extended
deleted file mode 100644
index bc2dec9..0000000
--- a/meta-poky/conf/templates/default/local.conf.sample.extended
+++ /dev/null
@@ -1,388 +0,0 @@
-# BBMASK contains regular expressions that can be used to tell BitBake to ignore
-# certain recipes.
-#BBMASK = ""
-
-#
-# Parallelism Options
-#
-# These two options control how much parallelism BitBake should use. The first
-# option determines how many tasks bitbake should run in parallel:
-#
-#BB_NUMBER_THREADS ?= "4"
-#
-# Default to setting automatically based on cpu count
-#BB_NUMBER_THREADS ?= "${@oe.utils.cpu_count()}"
-#
-# The second option controls how many processes make should run in parallel when
-# running compile tasks:
-#
-#PARALLEL_MAKE ?= "-j 4"
-#
-# Default to setting automatically based on cpu count
-#PARALLEL_MAKE ?= "-j ${@oe.utils.cpu_count()}"
-#
-# For a quad-core machine, BB_NUMBER_THREADS = "4", PARALLEL_MAKE = "-j 4" would
-# be appropriate for example.
-#
-# Some users are behind firewalls or use servers where the number of parallel connections
-# is limited. In such cases you can limit the number of fetch tasks which run in parallel by
-# setting the option below, in this case limiting to a maximum of 4 fetch tasks in parallel:
-#
-#do_fetch[number_threads] = "4"
-#
-
-# If you want to get an image based on directfb without x11 alter
-# DISTRO_FEATURES:
-DISTRO_FEATURES:append = " directfb"
-DISTRO_FEATURES:remove = "x11"
-
-# ENABLE_BINARY_LOCALE_GENERATION controls the generation of binary locale
-# packages at build time using qemu-native. Disabling it (by setting it to 0)
-# will save some build time at the expense of breaking i18n on devices with
-# less than 128MB RAM.
-#ENABLE_BINARY_LOCALE_GENERATION = "1"
-
-# If GLIBC_SPLIT_LC_PACKAGES is set to a non-zero value, convert
-# glibc-binary-localedata-XX-YY to be a meta package depending on
-# glibc-binary-localedata-XX-YY-lc-address and so on. This enables
-# saving quite some space if someone doesn't need LC_COLLATE for
-# example.
-#GLIBC_SPLIT_LC_PACKAGES = "1"
-
-# Set GLIBC_GENERATE_LOCALES to the locales you wish to generate should you not
-# wish to perform the time-consuming step of generating all LIBC locales.
-# NOTE: If removing en_US.UTF-8 you will also need to uncomment, and set
-# appropriate value for IMAGE_LINGUAS.
-# WARNING: this may break localisation!
-# WARNING: some recipes expect certain localizations to be enabled, e.g.
-# bash-ptest: fr-fr, de-de
-# glib-2.0-ptest: tr-tr, lt-lt, ja-jp.euc-jp, fa-ir, ru-ru, de-de, hr-hr, el-gr, fr-fr, es-es, en-gb
-# if you remove some of these and enable ptest, you'll get QA warning like:
-# ERROR: glib-2.0-1_2.58.0-r0 do_package_qa: QA Issue: glib-2.0-ptest rdepends on locale-base-de-de, but it isn't a build dependency? [build-deps]
-#GLIBC_GENERATE_LOCALES = "en_GB.UTF-8 en_US.UTF-8"
-#IMAGE_LINGUAS ?= "en-gb"
-
-# The following are used to control options related to debugging.
-#
-# Uncomment this to change the optimization to make debugging easer, at the
-# possible cost of performance.
-# DEBUG_BUILD = "1"
-#
-# Uncomment this to disable the stripping of the installed binaries
-# INHIBIT_PACKAGE_STRIP = "1"
-#
-# Uncomment this to disable the split of the debug information into -dbg files
-# INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
-#
-# When splitting debug information, the following controls the results of the
-# file splitting.
-#
-#  .debug (default):
-#    When splitting the debug information will be placed into
-#    a .debug directory in the same dirname of the binary produced:
-#      /bin/foo -> /bin/.debug/foo
-#
-#  debug-file-directory:
-#    When splitting the debug information will be placed into
-#    a central debug-file-directory, /usr/lib/debug:
-#      /bin/foo -> /usr/lib/debug/bin/foo.debug
-#
-#    Any source code referenced in the debug symbols will be copied
-#    and made available within the /usr/src/debug directory
-#
-#PACKAGE_DEBUG_SPLIT_STYLE = '.debug'
-# PACKAGE_DEBUG_SPLIT_STYLE = 'debug-file-directory'
-
-# Uncomment these to build a package such that you can use gprof to profile it.
-# NOTE: Don't build glibc itself with these flags, or it'll fail to build.
-#
-# PROFILE_OPTIMIZATION = "-pg"
-# SELECTED_OPTIMIZATION = "${PROFILE_OPTIMIZATION}"
-# LDFLAGS =+ "-pg"
-
-# TCMODE controls the characteristics of the generated packages/images by
-# telling poky which toolchain 'profile' to use.
-#
-# The default is "default" which uses the internal toolchain. With
-# additional layers, it is possible to set this to use a precompiled
-# external toolchain. One example is the Sourcery G++ Toolchain, support
-# for which is now in the separate meta-sourcery layer:
-#
-#  http://github.com/MentorEmbedded/meta-sourcery/
-#
-# meta-sourcery can be used as a template for adding support for other
-# external toolchains. See the link above for further details.
-#
-# TCMODE points the system to a file in conf/distro/include/tcmode-${TCMODE}.inc,
-# so for meta-sourcery which has conf/distro/include/tcmode-external-sourcery.inc
-# you would set it as follows:
-#
-# TCMODE ?= "external-sourcery"
-
-# This value is currently used by pseudo to determine if the recipe should
-# build both the 32-bit and 64-bit wrapper libraries on a 64-bit build system.
-#
-# Pseudo will attempt to determine if a 32-bit wrapper is necessary, but
-# it doesn't always guess properly.  If you have 32-bit executables on
-# your 64-bit build system, you likely want to set this to "0",
-# otherwise you could end up with incorrect file attributes on the
-# target filesystem.
-#
-# Default is to not build 32 bit libs on 64 bit systems, uncomment this
-# if you need the 32 bits libs
-#NO32LIBS = "0"
-
-# Uncomment the following lines to enable multilib builds
-#require conf/multilib.conf
-#MULTILIBS = "multilib:lib32"
-#DEFAULTTUNE:virtclass-multilib-lib32 = "x86"
-
-# Set RPM_PREFER_ELF_ARCH to configure preferred ABI when using rpm packaging
-# backend to generate a rootfs, choices are:
-# 1: ELF32 wins
-# 2: ELF64 wins
-# 4: ELF64 N32 wins (for mips64 or mips64el only)
-#RPM_PREFER_ELF_ARCH ?= "2"
-
-# The network based PR service host and port
-# Uncomment the following lines to enable PRservice.
-# Set PRSERV_HOST to 'localhost:0' to automatically
-# start local PRService.
-# Set to other values to use remote PRService.
-#PRSERV_HOST = "localhost:0"
-
-# Additional image generation features
-#
-# The following is a list of classes to import to use in the generation of images
-# currently an example class is image_types_uboot
-# IMAGE_CLASSES = " image_types_uboot"
-
-# The following options will build a companion 'debug filesystem' in addition
-# to the normal deployable filesystem.  This companion system allows a
-# debugger to know the symbols and related sources.  It can be used to
-# debug a remote 'production' system without having to add the debug symbols
-# and sources to remote system.  If IMAGE_FSTYPES_DEBUGFS is not defined, it
-# defaults to IMAGE_FSTYPES.
-#IMAGE_GEN_DEBUGFS = "1"
-#IMAGE_FSTYPES_DEBUGFS = "tar.gz"
-
-# Incremental rpm image generation, the rootfs would be totally removed
-# and re-created in the second generation by default, but with
-# INC_RPM_IMAGE_GEN = "1", the rpm based rootfs would be kept, and will
-# do update(remove/add some pkgs) on it.  NOTE: This is not suggested
-# when you want to create a productive rootfs
-#INC_RPM_IMAGE_GEN = "1"
-
-# This is a list of packages that require a commercial license to ship
-# product. If shipped as part of an image these packages may have
-# implications so they are disabled by default.  To enable them,
-# un-comment the below as appropriate.
-#LICENSE_FLAGS_ACCEPTED = "commercial_gst-fluendo-mp3 \
-#                           commercial_gst-openmax \
-#                           commercial_gst-plugins-ugly \
-#                           commercial_lame \
-#                           commercial_libmad \
-#                           commercial_libomxil \
-#                           commercial_mpeg2dec \
-#                           commercial_qmmp"
-
-
-#
-# Disk space monitor, take action when the disk space or the amount of
-# inode is running low, it is enabled when BB_DISKMON_DIRS is set.
-#
-# Set the directory for the monitor, the format is:
-# "action,directory,minimum_space,minimum_free_inode"
-#
-# The "action" must be set and should be one of:
-# HALT: Immediately halt
-# STOPTASKS: The new tasks can't be executed any more, will stop the build
-#           when the running tasks have been done.
-# WARN: show warnings (see BB_DISKMON_WARNINTERVAL for more information)
-#
-# The "directory" must be set, any directory is OK.
-#
-# Either "minimum_space" or "minimum_free_inode" (or both of them)
-# should be set, otherwise the monitor would not be enabled,
-# the unit can be G, M, K or none, but do NOT use GB, MB or KB
-# (B is not needed).
-#BB_DISKMON_DIRS = "STOPTASKS,${TMPDIR},1G,100K WARN,${SSTATE_DIR},1G,100K"
-#
-# Set disk space and inode interval (only works when the action is "WARN",
-# the unit can be G, M, or K, but do NOT use the GB, MB or KB
-# (B is not needed), the format is:
-# "disk_space_interval,disk_inode_interval", the default value is
-# "50M,5K" which means that it would warn when the free space is
-# lower than the minimum space(or inode), and would repeat the warning
-# when the disk space reduces 50M (or the amount of inode reduces 5k).
-#BB_DISKMON_WARNINTERVAL = "50M,5K"
-
-# Archive the source and put them to ${DEPLOY_DIR}/sources/.
-#
-#INHERIT += "archiver"
-#
-# The tarball for the patched source will be created by default, and you
-# can configure the archiver as follow:
-#
-# Create archive for:
-# 1) original (or unpacked) source:
-#ARCHIVER_MODE[src] = "original"
-# 2) patched source: (default)
-#ARCHIVER_MODE[src] = "patched"
-# 3) configured source:
-#ARCHIVER_MODE[src] = "configured"
-#
-# 4) the patches between do_unpack and do_patch:
-#ARCHIVER_MODE[diff] = "1"
-# set the files that you'd like to exclude from the diff:
-#ARCHIVER_MODE[diff-exclude] ?= ".pc autom4te.cache patches"
-#
-# 5) the environment data, similar to 'bitbake -e recipe':
-#ARCHIVER_MODE[dumpdata] = "1"
-#
-# 6) the recipe (.bb and .inc):
-#ARCHIVER_MODE[recipe] = "1"
-#
-# 7) Whether output the .src.rpm package:
-#ARCHIVER_MODE[srpm] = "1"
-#
-# 8) Filter the license, the recipe whose license in
-#    COPYLEFT_LICENSE_INCLUDE will be included, and in
-#    COPYLEFT_LICENSE_EXCLUDE will be excluded.
-#COPYLEFT_LICENSE_INCLUDE = 'GPL* LGPL*'
-#COPYLEFT_LICENSE_EXCLUDE = 'CLOSED Proprietary'
-#
-# 9) Config the recipe type that will be archived, the type can be
-#    target, native, nativesdk, cross, crosssdk and cross-canadian,
-#    you can set one or more types. Archive all types by default.
-#COPYLEFT_RECIPE_TYPES = 'target'
-#
-
-#
-# GCC/LD FLAGS to enable more secure code generation
-#
-# By including the security_flags include file you enable flags
-# to the compiler and linker that cause them to generate more secure
-# code.
-# This does affect compile speed slightly.
-#
-# Use the following line to enable the security compiler and linker flags to your build
-#require conf/distro/include/security_flags.inc
-
-# Image level user/group configuration.
-# Inherit extrausers to make the setting of EXTRA_USERS_PARAMS effective.
-#IMAGE_CLASSES += "extrausers"
-# User / group settings
-# The settings are separated by the ; character.
-# Each setting is actually a command. The supported commands are useradd,
-# groupadd, userdel, groupdel, usermod and groupmod.
-#EXTRA_USERS_PARAMS = "\
-#    useradd -p '' tester; \
-#    groupadd developers; \
-#    userdel nobody; \
-#    groupdel video; \
-#    groupmod -g 1020 developers; \
-#    usermod -s /bin/sh tester; \
-#"
-
-# Various packages dynamically add users and groups to the system at package
-# install time.  For programs that do not care what the uid/gid is of the
-# resulting users/groups, the order of the install will determine the final
-# uid/gid.  This can lead to non-deterministic uid/gid values from one build
-# to another.  Use the following settings to specify that all user/group adds
-# should be created based on a static passwd/group file.
-#
-# Note, if you enable or disable the useradd-staticids in a configured system,
-# the TMPDIR may contain incorrect uid/gid values.  Clearing the TMPDIR
-# will correct this condition.
-#
-# By default the system looks in the BBPATH for files/passwd and files/group
-# the default can be overridden by specifying USERADD_UID/GID_TABLES.
-#
-#USERADDEXTENSION = "useradd-staticids"
-#USERADD_UID_TABLES = "files/passwd"
-#USERADD_GID_TABLES = "files/group"
-#
-# In order to prevent generating a system where a dynamicly assigned uid/gid
-# can exist, you should enable the following setting.  This will force the
-# system to error out if the user/group name is not defined in the
-# files/passwd or files/group (or specified replacements.)
-#USERADD_ERROR_DYNAMIC = "1"
-
-# Enabling FORTRAN
-# Note this is not officially supported and is just illustrated here to
-# show an example of how it can be done
-# You'll also need your fortran recipe to depend on libgfortran
-#FORTRAN:forcevariable = ",fortran"
-
-#
-# Kernel image features
-#
-# The INITRAMFS_IMAGE image variable will cause an additional recipe to
-# be built as a dependency to the what ever rootfs recipe you might be
-# using such as core-image-sato.  The initramfs might be needed for
-# the initial boot of the target system such as to load kernel
-# modules prior to mounting the root file system.
-#
-# INITRAMFS_IMAGE_BUNDLE variable controls if the image recipe
-# specified by the INITRAMFS_IMAGE will be run through an extra pass
-# through the kernel compilation in order to build a single binary
-# which contains both the kernel image and the initramfs.  The
-# combined binary will be deposited into the tmp/deploy directory.
-# NOTE: You can set INITRAMFS_IMAGE in an image recipe, but
-#       INITRAMFS_IMAGE_BUNDLE can only be set in a conf file.
-#
-#INITRAMFS_IMAGE = "core-image-minimal-initramfs"
-#INITRAMFS_IMAGE_BUNDLE = "1"
-
-#
-# IPK Hierarchical feed
-#
-# In some cases it may be desirable not to have all package files in the same
-# directory. An example would be when package feeds are to be uploaded to a
-# shared webhosting service or transferred to a Windows machine which may have
-# problems with directories containing multiple thousands of files.
-#
-# If the IPK_HIERARCHICAL_FEED variable is set to "1", packages will be split
-# between subdirectories in a similar way to how Debian package feeds are
-# organised. In the hierarchical feed, package files are written to
-# <outdir>/<arch>/<pkg_prefix>/<pkg_subdir>, where pkg_prefix is the first
-# letter of the package file name for non-lib packages or "lib" plus the 4th
-# letter of the package file name for lib packages (eg, 'l' for less, 'libc' for
-# libc6).  pkg_subdir is the root of the package file name, discarding the
-# version and architecture parts and the common suffixes '-dbg', '-dev', '-doc',
-# '-staticdev', '-locale' and '-locale-*' which are listed in
-# meta/conf/bitbake.conf.
-#
-# If IPK_HIERARCHICAL_FEED is unset or set to any other value, the traditional
-# feed layout is used where package files are placed in <outdir>/<arch>/.
-#
-#IPK_HIERARCHICAL_FEED = "1"
-#
-
-#
-# System initialization
-#
-#INIT_MANAGER = "none"
-#INIT_MANAGER = "sysvinit"
-#INIT_MANAGER = "systemd"
-#INIT_MANAGER = "mdev-busybox"
-
-#
-# Use a full set of packages instead of busybox for base utils
-#
-#PREFERRED_PROVIDER_base-utils = "packagegroup-core-base-utils"
-#VIRTUAL-RUNTIME_base-utils = "packagegroup-core-base-utils"
-#VIRTUAL-RUNTIME_base-utils-hwclock = "util-linux-hwclock"
-#VIRTUAL-RUNTIME_base-utils-syslog = "syslog"
-
-#
-# Enable LTO system-wide
-#
-#require conf/distro/include/lto.inc
-#DISTRO_FEATURES:append = " lto"
-
-#
-# Set PS1 for SDK
-#
-#SDK_PS1 ?= "${SDK_NAME}${SDK_VENDOR}:\$ "
diff --git a/meta-poky/conf/templates/default/site.conf.sample b/meta-poky/conf/templates/default/site.conf.sample
deleted file mode 100644
index 5164fed..0000000
--- a/meta-poky/conf/templates/default/site.conf.sample
+++ /dev/null
@@ -1,33 +0,0 @@
-#
-# local.conf covers user settings, site.conf covers site specific information
-# such as proxy server addresses and optionally any shared download location
-#
-# SITE_CONF_VERSION is increased each time build/conf/site.conf
-# changes incompatibly
-SCONF_VERSION = "1"
-
-# Uncomment to cause CVS to use the proxy host specified
-#CVS_PROXY_HOST = "proxy.example.com"
-#CVS_PROXY_PORT = "81"
-
-# For svn, you need to create ~/.subversion/servers containing:
-#[global]
-#http-proxy-host = proxy.example.com
-#http-proxy-port = 81
-#
-
-# To use git with a proxy, you must use an external git proxy command, such as
-# the one provided by scripts/oe-git-proxy. To use this script, copy it to
-# your PATH and uncomment the following:
-#GIT_PROXY_COMMAND ?= "oe-git-proxy"
-#ALL_PROXY ?= "socks://socks.example.com:1080"
-#or
-#ALL_PROXY ?= "https://proxy.example.com:8080"
-# If you wish to use certain hosts without the proxy, specify them in NO_PROXY.
-# See the script for details on syntax. The script oe-git-proxy uses some tools
-# that may not be included on HOSTTOOLS, thus  add them manually through
-# HOSTTOOLS += "getent"
-
-# Uncomment this to use a shared download directory
-#DL_DIR = "/some/shared/download/directory/"
-
-- 
2.47.3


