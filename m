Return-Path: <ross.burton@intel.com>
Received: from mail-wg0-f48.google.com (mail-wg0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AA71E014AD
	for <poky@yoctoproject.org>; Fri,  5 Apr 2013 04:20:23 -0700 (PDT)
Received: by mail-wg0-f48.google.com with SMTP id m15so3585566wgh.3
	for <poky@yoctoproject.org>; Fri, 05 Apr 2013 04:20:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=Prg4U1WgvvfpXBTSuuf5uUgL4TEi9blPobU+ZMx7I+c=;
	b=no1Pb1kTLzqpoZUPQ2LPRVsGTZbULU/JHcNsgd+EPaAfgs5EUKyXjWy3t3PG1IEo7o
	q1FSFOVUXmCj4U4W2a4tl3FrnBvJMCwHSG3DHAs5imtUrND0LBG/WvgUW1SMMF1Vud3y
	OlVr52cH44o9i+/cN9lgPWvbxyfgTe2zxpCNzkN/aDxNLRv4RP6aro9nAZyZvVZqtcDZ
	56LyDQywU+og44pWAeOkXuQ4R2j3Nsu5ZsY1uFR/ZOusyo4awIrwmm5UVzK00F2/hQ05
	iLjFHKOvfuEqmWQUhwmT15zDfazimLcY9vWYssuAK6FEC7a8NXfqT5Qw3kudb+h5kRmL
	fMYg==
X-Received: by 10.194.110.69 with SMTP id hy5mr15757610wjb.1.1365160822020;
	Fri, 05 Apr 2013 04:20:22 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id g9sm3571732wix.1.2013.04.05.04.20.20
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 05 Apr 2013 04:20:21 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Fri,  5 Apr 2013 12:17:34 +0100
Message-Id: <1365160654-15858-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
X-Gm-Message-State: ALoCoQlnlRDvriPW3ojkjzjaQBO2YqabgFDCkBVvtd4tbHOnYnGelr7cjhxgxl05SpSjonsTcz2t
Subject: [PATCH] atom-pc: add i965 Mesa driver so GL works on i965 onwards
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
X-List-Received-Date: Fri, 05 Apr 2013 11:20:23 -0000


Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto-bsp/conf/machine/atom-pc.conf |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/atom-pc.conf b/meta-yocto-bsp/conf/machine/atom-pc.conf
index deb4231f..40139e3 100644
--- a/meta-yocto-bsp/conf/machine/atom-pc.conf
+++ b/meta-yocto-bsp/conf/machine/atom-pc.conf
@@ -22,7 +22,8 @@ XSERVER ?= "xserver-xorg \
            xf86-video-modesettings \
            xf86-video-vesa \
            xf86-video-intel \
-           mesa-driver-i915"
+           mesa-driver-i915 \
+           mesa-driver-i965"
 
 #MACHINE_EXTRA_RDEPENDS = "rt2860"
 
-- 
1.7.10.4


