Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E55BE015E1; Sun, 15 Jul 2018 08:17:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1894E00CA9
	for <poky@lists.yoctoproject.org>; Sun, 15 Jul 2018 08:17:22 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id c14-v6so2456092wmb.4
	for <poky@lists.yoctoproject.org>; Sun, 15 Jul 2018 08:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=from:to:subject:date:message-id;
	bh=sfm52waRc0EVJfclUf94d3o+53q9rHzlo/2prfiJN5w=;
	b=KndmwpaWNh0W0BSg7PlJMdxdkYQVEmBMeP4e83B6FSTGS5pReWGlthGw+RU4J4yUEU
	QR/ImlFVrK9/SicFhj41dioyEAJjXAnw2n4rqaoU5kvbd7DUSpYKfMqrNl9aogcmUCvO
	38l595ijcQrPTAzyB/+ORSaJY2wNro3tVVP+8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=sfm52waRc0EVJfclUf94d3o+53q9rHzlo/2prfiJN5w=;
	b=pZO0ZAUq3bCkkASRzjWHcsST4p7dCiuXFC2I4aqScAH72wbyFXfYA57bHc2tDzwXOI
	GPdqyKyQknJgROaZRw7L04x3GeJ4rvcUE3OWJDG/bYYoLd9X9sHvnEzBciwvfFPqfpYy
	Hm2cH00RdrPwWJH1yUwhdJpXpVu+Gc06EvM+LXHzJM2J/kDpo7yvg4s0H78is3sYhvKA
	gWTgt2y1pbczMtWHMfQHs09Qc5o3smgkE0lLFE0cWpD7QZVktpaB1vFR+e2Si9KGu2eM
	67FuQAKiuA/HI9KdvBWar88zF5kUFDWNf6pYr5V9J4UDXDrMG35mi1qfeNU5Zc3sUR7k
	0sdQ==
X-Gm-Message-State: AOUpUlH+V+t6TXMH+451oib9t66egAXN+43G2P+vYWKZEMpUGLN/r+cG
	G6iwiJ1vUsEJ6t+qqC9E7ZP8B7jRAdQ=
X-Google-Smtp-Source: AAOMgpfzmTPm0b5v7K958zFrb/OdRuXL8/2DkHKSm0OARFYT+6x2bPmg0O4N633X5AAadSWC5k+9Pg==
X-Received: by 2002:a1c:dac6:: with SMTP id
	r189-v6mr7866020wmg.150.1531667841698; 
	Sun, 15 Jul 2018 08:17:21 -0700 (PDT)
Received: from hex.int.rpsys.net (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	r18-v6sm1764837wmh.28.2018.07.15.08.17.20
	for <poky@lists.yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 15 Jul 2018 08:17:20 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Date: Sun, 15 Jul 2018 16:17:19 +0100
Message-Id: <20180715151719.16899-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.17.1
Subject: [PATCH] oeqa/selftest/systemd_boot: Never use cleansstate in QA tests without special handling of SSTATE_DIR
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
X-List-Received-Date: Sun, 15 Jul 2018 15:17:23 -0000

Removing things straight from the live sstate directory is prone to issues
since other builds may be relying on the artefact presence.

Also, cleansstate is very slow on the huge sstate that the autobuilder has
on slow NFS drives. This may well be causing long buildtimes in oe-selftest
as the time taken to remove the artefact by be long.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
index dd5eeec1633..26c775c09e9 100644
--- a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
+++ b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
@@ -44,7 +44,7 @@ class Systemdboot(OESelftestTestCase):
 
         # Ensure we're actually testing that this gets built and not that
         # it was around from an earlier build
-        bitbake('-c cleansstate systemd-boot')
+        bitbake('-c clean systemd-boot')
         runCmd('rm -f %s' % systemdbootfile)
 
         self._common_build()
-- 
2.17.1


