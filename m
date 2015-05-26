Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49E9DE0095D; Tue, 26 May 2015 10:21:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.174 listed in list.dnswl.org]
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF4F9E007B6
	for <poky@yoctoproject.org>; Tue, 26 May 2015 10:21:27 -0700 (PDT)
Received: by wicmx19 with SMTP id mx19so84726180wic.0
	for <poky@yoctoproject.org>; Tue, 26 May 2015 10:21:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=qgr9xyU58zJphb7DoH8FkTxd/HlAhGPpV/eiPTC2zLo=;
	b=HUT4pF33/poTOjZYU6VJlncRrz3FwmKYmteO34xp7qi9igAtN0N8zktHKjvJFzGNX2
	nZUFw1s6apNQe65kEz1UqY5xRIBqXsHC2fkMBU8kL95GrAIBFVan7v6Wq+cOslnoWAKJ
	pQr2bOgNIlegulJOumDdgGKOmbHjSkF4Sdl9SnF0vvreNWhYdSoA0gZBaGGtGj7aDwXc
	UH7gdMtyfYo3dQaHGKn/MZN6WtInwWE6OQLgc1Q4gnOU0uYAzJtcyNDvHOA2+uxXrpcJ
	G2e3mWwReDbd8wU44aUi8TZR3EUElwRppfiB4zkhnd1bybtWMO7YCBImghnWZSuLCBE4
	656w==
X-Gm-Message-State: ALoCoQmpwIr8m4hOEucF/6pyeemyfQid0qtdBV5mF539g6xxK51pqscy9jz1vDFWBlZdUQ/qAaHb
X-Received: by 10.180.77.34 with SMTP id p2mr42364761wiw.22.1432660886487;
	Tue, 26 May 2015 10:21:26 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35])
	by mx.google.com with ESMTPSA id f6sm22732167wjq.31.2015.05.26.10.21.25
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 26 May 2015 10:21:25 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Tue, 26 May 2015 18:17:01 +0100
Message-Id: <1432660621-23284-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] distro/package_regex: add patterns for GNOME stable releases
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
X-List-Received-Date: Tue, 26 May 2015 17:21:31 -0000

The GNOME versioning scheme is set in stone, so add patterns for the latest
stable release and the latest GNOME 2-specific stable release, and use them for
atk, glib-2.0, gtk+ and gtk+3.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/include/package_regex.inc | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index 544557c..7e383f6 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -134,3 +134,18 @@ GITTAGREGEX_pn-linux-yocto-dev = "${GITTAGREGEX_COMMON}"
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
+REGEX_pn-gtk+ = "${GNOME2_STABLE}"
+REGEX_pn-gtk+3 = "${GNOME_STABLE}"
-- 
2.1.4


