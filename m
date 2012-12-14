Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CF1DE00294
	for <poky@yoctoproject.org>; Fri, 14 Dec 2012 08:25:00 -0800 (PST)
Received: from mail-la0-f72.google.com ([209.85.215.72])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 14 Dec 2012 08:24:08 -0800
Received: by mail-la0-f72.google.com with SMTP id l5so2397925lah.11
	for <poky@yoctoproject.org>; Fri, 14 Dec 2012 08:24:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=xwvfuoZPbUNMyqnkRsC3/WXYPWxcZsZ7faBO2exW0vs=;
	b=cGzLTEoAnZ/0R2e2GrpA7DoGGrGDmIReXBsN5BbZ+AT77RnBcjX1PMGyTAwT8v0cqH
	VYDu5hJUaIMpiNAW8DY2Lf1DtMWfy/JOuY96ZoqFjHXnR7DTbrJ2VVd8Dzks5Rk5waXX
	IvGpFKj6gzQymVunif2piAI/pdh1MN9Be6TL//8QfoxE3pXSNQTYn+DAD1CMaLMDbs/M
	6GDMLF7dDpDKikIpabHlL9dYoaAMZFxUqupXDMlj6mCjBq+DDhphr6sSYmeBzq5JZ/Xe
	22SxWylJucnhoo8DgPC522ixWFHJ4t/0uZM/0nLh+qgsBrH0Ayy/erV8zZ4D/uBQWkkN
	bpxg==
Received: by 10.181.13.75 with SMTP id ew11mr3630027wid.9.1355502296797;
	Fri, 14 Dec 2012 08:24:56 -0800 (PST)
Received: by 10.181.13.75 with SMTP id ew11mr3630015wid.9.1355502296566;
	Fri, 14 Dec 2012 08:24:56 -0800 (PST)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id dm3sm12944551wib.9.2012.12.14.08.24.54
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 14 Dec 2012 08:24:55 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Fri, 14 Dec 2012 16:23:15 +0000
Message-Id: <1355502195-8268-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQmWf4VC3V+OwIMb/av7WZZmRkb99tT5++R5kKS99W/eYkZg8GTIYCf6y5M+5WKY75r+uXzWpaWeH56+GxSBPyr0I5gMsPODVIt1p8ZJuvfUgoovRFmN3JzlwhNMZkKijMET8dvMJ0qRM/qcMZCSorTlRPfjeQ==
Subject: [PATCH] beagleboard: use xf86-video-omapfb
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
X-List-Received-Date: Fri, 14 Dec 2012 16:25:00 -0000

The newer -omap driver doesn't support the GPU on BeagleBoard.

[ YOCTO #3522 ]

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto-bsp/conf/machine/beagleboard.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/beagleboard.conf b/meta-yocto-bsp/conf/machine/beagleboard.conf
index 204be95..6633880 100644
--- a/meta-yocto-bsp/conf/machine/beagleboard.conf
+++ b/meta-yocto-bsp/conf/machine/beagleboard.conf
@@ -6,7 +6,7 @@ PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
            xf86-input-evdev \
            xf86-input-mouse \
-           xf86-video-omap \
+           xf86-video-omapfb \
            xf86-input-keyboard"
 
 # Ship all kernel modules by default
-- 
1.7.10


