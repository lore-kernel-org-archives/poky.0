Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D96FE00820; Tue, 26 May 2015 12:16:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.179 listed in list.dnswl.org]
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D5B5E00820
	for <poky@yoctoproject.org>; Tue, 26 May 2015 12:16:05 -0700 (PDT)
Received: by wicmc15 with SMTP id mc15so74005988wic.1
	for <poky@yoctoproject.org>; Tue, 26 May 2015 12:16:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=jO+DibsTkBn6LjzlMZaiQnIuFX3eKdyldtgR/a0Dthc=;
	b=BsUCG58jUrY5RZYICFFhWzEMPgg1qH4xXiWhB+NJVpnm+UxfTZ3ndMu/m5hBmEassG
	n/ksyl+0y4d8CZgB9PTHrHZiN2b73Cp/kstXpkmuYYd7UeUp5VBDtxf8ruZAotxWq6Ds
	GuTu7VkisXul1pBqoJPexht3mJAwGS0m+zkePtrHCrBeAbWfwuxNdwlgetyReLtbUh54
	zB/l6X5a6qbhdFQLyqXMXtdcxDmAxqjD3v72Vt4lVVe/WppiodYR9EVKAWo+L45ZBFsN
	l8sCZd47CFOwuJezZo3opJKKmssAqGdtiE5O76YjLEb2mN2DtSrdtr2EOOgprboJvNbG
	4r3w==
X-Gm-Message-State: ALoCoQnmMTNAizGqy5kIYiDZFViQy+WplKu64lTijp4B/xaR6XbAQuhBOEQDxgPYAZoCU2qBop0z
X-Received: by 10.194.92.2 with SMTP id ci2mr50719398wjb.34.1432667764897;
	Tue, 26 May 2015 12:16:04 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by mx.google.com with ESMTPSA id
	fs9sm23151892wjc.34.2015.05.26.12.16.03 for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 26 May 2015 12:16:04 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Tue, 26 May 2015 20:11:38 +0100
Message-Id: <1432667498-26655-2-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1432667498-26655-1-git-send-email-ross.burton@intel.com>
References: <1432667498-26655-1-git-send-email-ross.burton@intel.com>
Subject: [PATCH][V2 2/2] distro/upstream_tracking: remove stale update reasons
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
X-List-Received-Date: Tue, 26 May 2015 19:16:09 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/include/upstream_tracking.inc | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index e72fa43..96ca06c 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -54,33 +54,17 @@ RECIPE_NO_UPDATE_REASON_pn-build-appliance = "Always reports behind"
 RECIPE_NO_UPDATE_REASON_pn-cdrtools = "v3.x uses incompatible CDDL license"
 RECIPE_NO_UPDATE_REASON_pn-createrepo = "Versions after 0.9.* use YUM, so we hold at 0.4.11"
 RECIPE_NO_UPDATE_REASON_pn-db= "API compatibility issue"
-RECIPE_NO_UPDATE_REASON_pn-dbus = "D-BUS 1.9.x is the development version, not stable."
-RECIPE_NO_UPDATE_REASON_pn-gnome-desktop = "waiting for the sato gtk3 port"
-RECIPE_NO_UPDATE_REASON_pn-gnome-icon-theme = "waiting for the sato gtk3 port"
-RECIPE_NO_UPDATE_REASON_pn-gnome-keyring = "waiting for the sato gtk3 port"
-RECIPE_NO_UPDATE_REASON_pn-gobject_introspection = "Does not cross-compile"
 RECIPE_NO_UPDATE_REASON_pn-groff = "1.18.1.4 is latest GPLv2 Version no 1.21"
 RECIPE_NO_UPDATE_REASON_pn-bash = "The latest version in yocto is 4.3.30"
-RECIPE_NO_UPDATE_REASON_pn-gtk+ = "Do not upgrade to version: 2.99.2 because prefer stable tree"
-RECIPE_NO_UPDATE_REASON_pn-gtk-engines = "2.91.1 is a 3.0 beta release"
 RECIPE_NO_UPDATE_REASON_pn-jpeg = "webkit-gtk 1.8.3 doesn't work with jpeg 9"
 RECIPE_NO_UPDATE_REASON_pn-kernelshark = "0.2 is the latest version."
 RECIPE_NO_UPDATE_REASON_pn-liberation-fonts = "2.00.0 - fontforge package required "
-RECIPE_NO_UPDATE_REASON_pn-libgnome-keyring = "waiting for the sato gtk3 port"
-RECIPE_NO_UPDATE_REASON_pn-libunique = "Do not upgrade to version: 2.91.4 because it requires gtk+ >= 2.90.0 and the stable version of gtk+ used by poky is 2.20.1"
-RECIPE_NO_UPDATE_REASON-libxml2 = "only release candidates available "
-RECIPE_NO_UPDATE_REASON_pn-mx-1.0 = "PRS 1.99 is dev version"
 RECIPE_NO_UPDATE_REASON_pn-nettle = "3.0.0 breaks gnutls, api changes"
 RECIPE_NO_UPDATE_REASON_pn-pkgconfig = "removes glib-conf, adds circular depends"
-RECIPE_NO_UPDATE_REASON_pn-polkit = "requires spidermonkey 1.8.5, not available in poky"
 RECIPE_NO_UPDATE_REASON_pn-python-distribute = "0.7.3 only upgrades 0.6.32, can't install on its own, also obsolete"
 RECIPE_NO_UPDATE_REASON_pn-python-pygobject = "Newer versions of python-pygobject depend on gobject-introspection which doesn't cross-compile"
-RECIPE_NO_UPDATE_REASON_pn-qemugl = "Do not upgrade to version: 33466cd8 because the upstream is broken in x86_64 build"
 RECIPE_NO_UPDATE_REASON_pn-syslinux="Waiting for 4.06 for 3.3 kernel headers support"
 RECIPE_NO_UPDATE_REASON_pn-texinfo = "Checking script parses directory wrong"
-RECIPE_NO_UPDATE_REASON_pn-tinylogin = "TinyLogin was merged into BusyBox."
 RECIPE_NO_UPDATE_REASON_pn-webkit-gtk = ">= 1.10.2 needs ruby"
 RECIPE_NO_UPDATE_REASON_pn-xdg-utils = "only release candidates available "
-RECIPE_NO_UPDATE_REASON_pn-zaurusd = "SVN rev 426 is last Stable release"
 RECIPE_NO_UPDATE_REASON_pn-tremor = "Same revision on different SVN modules"
-RECIPE_NO_UPDATE_REASON_pn-gdk-pixbuf = "2.31.x is unstable"
-- 
2.1.4


