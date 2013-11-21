Return-Path: <ross.burton@intel.com>
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F5C2E006B7
	for <poky@yoctoproject.org>; Thu, 21 Nov 2013 06:54:39 -0800 (PST)
Received: by mail-we0-f179.google.com with SMTP id q59so8538496wes.24
	for <poky@yoctoproject.org>; Thu, 21 Nov 2013 06:54:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=M3Hqkqb1XfZ4sDDHGHH37xO2pyOQR+Z7KFq0dlQQDZ8=;
	b=JGZuaB0mI0+x42m7A+u63SQ5Sn5CMIDpvlk7pJnnFL2T7RvOgvnW06CE7psGHDCW8I
	JzuakGzUHmuJppEiIoHcQDdHDNRuDn/4btT2YiRj5VMK80JJRy1b3Op1mH4lQ0qsUa6I
	e7S3PWB9iwkkROAFpfGWeXROuD71lcmGLE3C8VCzpqf54t5j+CqkoXO4hwNUnwLQCE40
	0OOyULCob9laLQ+hS7Yh0U8rE0mgRozVmdk3ao1psIkfoLEDKOW3S5YPXGrSWgjIyvZ8
	SMGTUkFTWvq18ynqIcBBDRcxYCSalG6mUg8WHerqh+A+GD8WjutEkmHw67jWuJlr4hl9
	ErSA==
X-Gm-Message-State: ALoCoQkkPwpnafBLLy5hled2O0eoua3qRV4gtX7Mx1RzS28x+dRa6RmN0EEehzwDUYXeKoxU4YHe
X-Received: by 10.180.83.1 with SMTP id m1mr6224329wiy.9.1385045677656;
	Thu, 21 Nov 2013 06:54:37 -0800 (PST)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id b7sm6182269wiz.8.2013.11.21.06.54.36
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 21 Nov 2013 06:54:36 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Thu, 21 Nov 2013 14:54:31 +0000
Message-Id: <1385045671-30831-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] poky.conf: enable ptest distro feature
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
X-List-Received-Date: Thu, 21 Nov 2013 14:54:41 -0000

Poky is the reference distribution for testing, so it should build the -ptest
packages for on-target testing.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/poky.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index bac20bd..d0dbbdb 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -13,7 +13,7 @@ LOCALCONF_VERSION = "1"
 LAYER_CONF_VERSION ?= "6"
 
 # Override these in poky based distros
-POKY_DEFAULT_DISTRO_FEATURES = "largefile opengl multiarch wayland"
+POKY_DEFAULT_DISTRO_FEATURES = "largefile opengl ptest multiarch wayland"
 POKY_DEFAULT_EXTRA_RDEPENDS = "packagegroup-core-boot"
 POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
-- 
1.7.10.4


