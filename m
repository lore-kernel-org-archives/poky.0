Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F291E00982; Tue, 26 May 2015 12:16:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 034A4E007B6
	for <poky@yoctoproject.org>; Tue, 26 May 2015 12:16:04 -0700 (PDT)
Received: by wizk4 with SMTP id k4so88013707wiz.1
	for <poky@yoctoproject.org>; Tue, 26 May 2015 12:16:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=asWgmJr0H74AnlH/y1K1VJTYZ9wn+s4l01YMF7RPaAI=;
	b=ZvQWFWpXpW0k+szKqIhOTdqNCGab3HJ3rbN5OUau+15WRWhteNTnRwMXRCaEbzGMR4
	qYRSRH1c3E8IK2gTCJNS4UiZnZ30b5fcOFO8x24LNkvJkRozS11e8driJEpelrbIhjMh
	Z06K8BaXjZYLTrcURTShXkD82e0l6/Hsqm/QaC4/M1EsCLl/hqz8DZF2HoBm5gCMn/L1
	PDH1AcPXNJHcbZzuToQiwI8dBI/nADFy4/XFDS++pP6QqgHKCeH2mvgMw9uCqE4hCOYw
	ufsGyo+DLHp2ejGiXD83UWczHcUQlCnTcsJagCTHSuPuzmYl7VrXn3TiReAMxjl9x53g
	Tsmw==
X-Gm-Message-State: ALoCoQmqv5x6Ik3e+Inyztg83jjUU5gZZxBuVWhtM3/XfoAMC5kVWSNcX06AghCrDPsrrlxUpftV
X-Received: by 10.180.74.210 with SMTP id w18mr10087502wiv.77.1432667763672;
	Tue, 26 May 2015 12:16:03 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by mx.google.com with ESMTPSA id
	fs9sm23151892wjc.34.2015.05.26.12.16.02 for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 26 May 2015 12:16:02 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Tue, 26 May 2015 20:11:37 +0100
Message-Id: <1432667498-26655-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH][V2 1/2] distro/package_regex: add patterns for GNOME stable releases
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
X-List-Received-Date: Tue, 26 May 2015 19:16:08 -0000

The GNOME versioning scheme is set in stone, so add patterns for the latest
stable release and the latest GNOME 2-specific stable release, and use them for
atk, glib-2.0, gtk+ and gtk+3.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/include/package_regex.inc | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index 544557c..83f02df 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -134,3 +134,25 @@ GITTAGREGEX_pn-linux-yocto-dev = "${GITTAGREGEX_COMMON}"
 GITTAGREGEX_pn-uclibc = "${GITTAGREGEX_COMMON}"
 GITTAGREGEX_pn-glibc = "${GITTAGREGEX_COMMON}"
 GITTAGREGEX_pn-xf86-video-omap = "${GITTAGREGEX_COMMON}"
+
+# GNOME related.
+#
+# GNOME2_STABLE picks stable releases in the 2.x series (so not 2.90 onwards,
+# which were GNOME 3 betas.
+#
+# GNOME_STABLE picks the latest stable release.
+
+GNOME2_STABLE = "(?P<pver>2\.([0-8]*[02468])+\.\d+)"
+GNOME_STABLE = "(?P<pver>\d+\.(\d*[02468])+\.\d+)"
+
+REGEX_pn-glib-2.0 = "${GNOME_STABLE}"
+REGEX_pn-atk = "${GNOME_STABLE}"
+REGEX_pn-at-spi2-core = "${GNOME_STABLE}"
+REGEX_pn-at-spi2-atk = "${GNOME_STABLE}"
+REGEX_pn-gdk-pixbuf = "${GNOME_STABLE}"
+REGEX_pn-gtk+ = "${GNOME2_STABLE}"
+REGEX_pn-gtk+3 = "${GNOME_STABLE}"
+REGEX_pn-gtk-engines = "${GNOME2_STABLE}"
+REGEX_pn-glib-networking = "${GNOME_STABLE}"
+REGEX_pn-librsvg = "${GNOME_STABLE}"
+REGEX_pn-libsoup-2.4 = "${GNOME_STABLE}"
-- 
2.1.4


