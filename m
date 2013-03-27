Return-Path: <ross.burton@intel.com>
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86A61E0146E
	for <poky@yoctoproject.org>; Wed, 27 Mar 2013 07:02:30 -0700 (PDT)
Received: by mail-wi0-f181.google.com with SMTP id hj8so2248066wib.8
	for <poky@yoctoproject.org>; Wed, 27 Mar 2013 07:02:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=c79WJntAHZssoQr/Nl67AeHAbDPZP4VlSiCJnZa8hFc=;
	b=ZiBM/ciAF/jLo2qIATwf44/TbcSHsC2j59Iiu704fVyzsEiVCMHRFKtoWh4Um1LwDA
	mBaSKXaSYHAadWcf/teG/nDaB2jNs9sypg5jCgbbL1K2qGxatEjfWk0Ry67RHzwhybxQ
	lXAA0r3idiwJirqF83YWDf8DVfziPk4YY8RPzukRkwY/j+F6XZ5t+gSFOBJ0BNOVUSB+
	FgPO7Z2Engcb1ndy3789+Aeim54ESZ339Y3XnxBxtzAht4VTuvYUYfM8LVvk2xLHRhUd
	wAS0tK6LfPJ/oBCp7A3eE95nFcA6qNQ/Qu5REU2Ff2RitC605zw66I5YBN5zPfc2RXEP
	lzmg==
X-Received: by 10.194.83.33 with SMTP id n1mr31806622wjy.7.1364392949283;
	Wed, 27 Mar 2013 07:02:29 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id g9sm9911245wix.1.2013.03.27.07.02.27
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 27 Mar 2013 07:02:28 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Wed, 27 Mar 2013 13:59:48 +0000
Message-Id: <1364392789-24104-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
X-Gm-Message-State: ALoCoQmwqkZjf7dTbFqCZKYO1gY/14DDxYCPXrpPQHbjb1Tr/dDevqwabDbBSv1Xh6pAdpyKZE9a
Subject: [PATCH] poky.conf: enable Wayland DISTRO_FEATURE
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
X-List-Received-Date: Wed, 27 Mar 2013 14:02:30 -0000

Without the Wayland feature you don't get the Wayland EGL platform built into
Mesa, so Poky can't be used to test Wayland or Weston properly out of the box.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/poky.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index f146f5f..afe328b 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -11,7 +11,7 @@ TARGET_VENDOR = "-poky"
 LOCALCONF_VERSION = "1"
 LAYER_CONF_VERSION ?= "6"
 
-DISTRO_FEATURES_append = " largefile opengl multiarch"
+DISTRO_FEATURES_append = " largefile opengl multiarch wayland"
 
 PREFERRED_VERSION_linux-yocto ?= "3.4%"
 PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.8%"
-- 
1.7.10.4


