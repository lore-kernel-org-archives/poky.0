Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBF25E014B6
	for <poky@yoctoproject.org>; Wed, 12 Sep 2012 03:35:15 -0700 (PDT)
Received: from mail-wg0-f54.google.com ([74.125.82.54])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 12 Sep 2012 03:34:52 -0700
Received: by wgx1 with SMTP id 1so928096wgx.11
	for <poky@yoctoproject.org>; Wed, 12 Sep 2012 03:34:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:x-gm-message-state;
	bh=YNsplyLKBbi1StCWgTJHlPfY3vmRntwGM3bygkQWSpE=;
	b=YoZMoqq8q+MwITC7EADLEKFA03YBgug0y6pR4zKURBfc+Z+2ER5BFmMYowsbXnnXvP
	ReqlxlflJDPLJFuMviBceH5paG+BlrEXQiu8bpCsqO4gjtNITgUy1qvqdHs64zs08SDf
	o7Vw/hFLyEXNLjcK239C1IOjhQ0Sy6u4KYdUNHHLS8ZzgNhFWV4cFdtXSLzJxSIM4cCq
	51zOe9MCz+w+bMbpu8q9IRAXkl3AKBTJWfZtRTDjo7uzuPOa3m/wnbXQEu4UGNTrN+Ig
	MtuliTClxQqjuc+jHE3YwlYrRbh5bO43NPATyGiGmo8RQZFMxFWeQtVPeyY4+lhV57RN
	I3KQ==
Received: by 10.216.233.208 with SMTP id p58mr10849698weq.56.1347446090672;
	Wed, 12 Sep 2012 03:34:50 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id k20sm7423749wiv.11.2012.09.12.03.34.49
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 12 Sep 2012 03:34:49 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Wed, 12 Sep 2012 11:33:58 +0100
Message-Id: <1347446038-16720-2-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
In-Reply-To: <1347446038-16720-1-git-send-email-ross.burton@intel.com>
References: <1347446038-16720-1-git-send-email-ross.burton@intel.com>
X-Gm-Message-State: ALoCoQkpe/FzXK1/1VMfJEAtWMBRr6BrAzX7xKCpX0GiSxWi5M8Fu6ArSlt4G9XAjiYNk62qt4rM
Subject: [PATCH 2/2] scripts: change default ARM BSP to use xserver-xorg, not -lite
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
X-List-Received-Date: Wed, 12 Sep 2012 10:35:16 -0000


Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 .../bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf   |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
index 1cf6097..a3e2970 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
@@ -5,8 +5,8 @@
 
 {{ input type:"boolean" name:"xserver" prio:"50" msg:"Do you need support for X? (y/n)" default:"y" }}
 {{ if xserver == "y": }}
-PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg-lite"
-XSERVER = "xserver-xorg-lite \
+PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
+XSERVER = "xserver-xorg \
            xf86-input-evdev \
            xf86-input-mouse \
            xf86-video-omapfb \
-- 
1.7.10


