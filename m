Return-Path: <ross.burton@intel.com>
Received: from mail-we0-f180.google.com (mail-we0-f180.google.com
	[74.125.82.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7018AE01481
	for <poky@yoctoproject.org>; Wed, 27 Mar 2013 03:49:09 -0700 (PDT)
Received: by mail-we0-f180.google.com with SMTP id r5so4474462wey.25
	for <poky@yoctoproject.org>; Wed, 27 Mar 2013 03:49:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=Mqvm4BNc4GYY7fDrGm/JS5KxNy5whzCzi8mFEoevKBA=;
	b=VOvQ08kunD+I0vBM++tO7dBzwYwX/Qq5yZCUzwVLOV3Kkov++8TDCeT+HeXzCNOAdM
	RXToNjEyNPCU6BgL879L0bkOZOQ19Y6Nv4B6HwDIy/8dHCPKVGhqSE1WTeclX56Ghzh8
	4vn+hioAbFUQD4FyI+tbB3r2CL/zZi13TCyYPZewQkQd8x8imvE7sDRD6ap6GJ0ekMed
	8kM2QptlLQGrFLMPZtHkK2safy6Y5sDuI3uLeQLrxdGy8x15MDkfrjVH3HGLsfgBqM0l
	/RZjkN7fkUFKGHBWX4Rpcjvwv/YznUygrFlNhfAkPHuI7mhEwgE22ysgtiUDa6xbcK4v
	dMOA==
X-Received: by 10.194.242.163 with SMTP id wr3mr30335346wjc.35.1364381347939; 
	Wed, 27 Mar 2013 03:49:07 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id ek4sm7835361wib.11.2013.03.27.03.49.06
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 27 Mar 2013 03:49:07 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Wed, 27 Mar 2013 10:46:28 +0000
Message-Id: <1364381188-11279-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
X-Gm-Message-State: ALoCoQlxMdtCZ6Ol8IV68WscrYfYs689PHxxn/zGXnq3cIFPYvxhBLNhpNGzFOL4oTKv2BMDLjDN
Subject: [PATCH] local.conf.sample.extended: remove obsolete DISTRO_FEATURES_INITMAN reference
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
X-List-Received-Date: Wed, 27 Mar 2013 10:49:09 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/local.conf.sample.extended |    4 ----
 1 file changed, 4 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index 4d9ce56..d0dff80 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -211,7 +211,3 @@
 # Put the following two lines in the conf file with intact.
 #ARCHIVER_CLASS = "${@'archive-${ARCHIVER_MODE}-source' if ARCHIVER_MODE != 'none' else ''}"
 #INHERIT += "${ARCHIVER_CLASS}"
-#
-# set init manager: sysvinit or systemd
-# sysvinit is the default choice
-#DISTRO_FEATURES_INITMAN ?= "sysvinit"
-- 
1.7.10.4


