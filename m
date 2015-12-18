Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23E36E00B63; Fri, 18 Dec 2015 09:00:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7C27E0033E
	for <poky@yoctoproject.org>; Fri, 18 Dec 2015 09:00:40 -0800 (PST)
Received: by mail-wm0-f42.google.com with SMTP id p187so72939415wmp.0
	for <poky@yoctoproject.org>; Fri, 18 Dec 2015 09:00:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=VcicpSaHu8QqD2fAjhG0/dyXJMRWY1BwezRDICygiiY=;
	b=XJIhD3oxugjM1MgQg3NlNpC3F4Lj2RXeyn0Eq5C/bGWz+ULbIvMadKzPf2fqKa8Upp
	/N6AKNmNgBZ9qzz0394DTM0g4b4T3uvtACYwVhmjV7f3/3kazvIQfyLdSvx4t7Pt7AWO
	/DkBAzUuO1k4hHgaEW3VWI6V16C+8mcLu84tah2f80aMhvIl91Ahko9zdvNlR5CQmhiU
	EnWiH/oJ37XeApX6menXiOiJf7NeOmite/Dq13SAYolc+8MJMBK9kW3OLrS5zMbNqz2c
	OjmoMuZC0Kctw7MjOgZGLPQx7zSGf/vja3QDZC+HvVnDXmrdE2rT6GQoeRaddVVkwJPv
	LUQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=VcicpSaHu8QqD2fAjhG0/dyXJMRWY1BwezRDICygiiY=;
	b=BBnVgaVWGeQOcjfrinhIofmCoMJzI2MUjiLlaI6yk1IfUPh3+D61wglGg1urE10oYd
	D8W8XubhIyUhHglyaSo4iV35VcJyo2kWuD76k+KmonTT4ThVj3NbGEXFRFzPwNukSl6S
	Sam2EBHIm3cNRpMzIjk7UkKKgvprVvKe/Z6S4X8GvafovTcMRyJU9c6HJ4LNBp2Btag/
	hFiVlRpLGjf358gxNQLB9icRt3oYkBrI8TzcDkp19CL6QRwiAt/FY/gINne5/nqGub5K
	ikuzO/cb86yIquiAdu0ZhKgjk2qsFlaHNbEPG7NpZ4cKQSMQnG3dOwLhOzzAfi3zh9NK
	18Hw==
X-Gm-Message-State: ALoCoQnvi9Dj7hV/ju78Kaf1FeqVG2OAUoNb8qYJunTUoiOMiMezWkuCvrfPUQQO1ZiyIZkO+95HikMS5aHmuJGmxAQROjPSVA==
X-Received: by 10.28.158.75 with SMTP id h72mr4277849wme.74.1450458039332;
	Fri, 18 Dec 2015 09:00:39 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	vu4sm15598834wjc.2.2015.12.18.09.00.38 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 18 Dec 2015 09:00:38 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Fri, 18 Dec 2015 17:00:30 +0000
Message-Id: <1450458030-26912-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.6.4
Subject: [PATCH] conf/local.conf.sample: comment out ASSUME_PROVIDED=libsdl-native
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
X-List-Received-Date: Fri, 18 Dec 2015 17:00:42 -0000

Ubuntu 15.10 and Debian testing can't build qemu-native against the host libsdl.
Now that libsdl-native is buildable, comment out the ASSUME_PROVIDED which meant
it wouldn't be used.

[ YOCTO #8553 ]

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/local.conf.sample | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index 371349d..7a0dde5 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -223,11 +223,12 @@ BB_DISKMON_DIRS = "\
 # Qemu configuration
 #
 # By default qemu will build with a builtin VNC server where graphical output can be
-# seen. The two lines below enable the SDL backend too. This assumes there is a
-# libsdl library available on your build system.
+# seen. The two lines below enable the SDL backend too. By default libsdl-native will
+# be built, if you want to use your host's libSDL instead of the minimal libsdl built
+# by libsdl-native then uncomment the ASSUME_PROVIDED line below.
 PACKAGECONFIG_append_pn-qemu-native = " sdl"
 PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"
-ASSUME_PROVIDED += "libsdl-native"
+#ASSUME_PROVIDED += "libsdl-native"
 
 
 # CONF_VERSION is increased each time build/conf/ changes incompatibly and is used to
-- 
2.6.4


