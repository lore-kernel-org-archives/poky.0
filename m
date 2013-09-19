Return-Path: <ross.burton@intel.com>
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE829E01479
	for <poky@yoctoproject.org>; Thu, 19 Sep 2013 03:04:18 -0700 (PDT)
Received: by mail-wi0-f175.google.com with SMTP id ez12so7684790wid.14
	for <poky@yoctoproject.org>; Thu, 19 Sep 2013 03:04:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=LGBffcteIye3ABwatZy5+uA2N8ePj7zn0JLqG4YRIEM=;
	b=inK1fxuD69p0fHdzDsBQRPYO8q26ZFigz1/+3sbKfdtxkA/C6c/fKLn7nhT7kKCKNg
	nsyOZ61xdSAHl35TwfP4GlfXI042IiaWvFraXi6SDlcc5D9gjAinUY1Fi8c6aHTlQOFT
	VTXxRSw5bV4dW5d0DrjZ2eC3qZb0wUhvOTWC0bN8QQz4vTDdFeYh7wQIOt6fYnfBTU5i
	uhcLKNDz0CwYlNtXSnUUF4JbaYM7NioHPtkt8AENy6VogIXm8DLRlLsMy842Zzb74S08
	1mhEMXljprPoOgitPf+KrWAeZRKyfE7ZwYhV8pWQciQcz9UPwNNY+73S+w6uzT+A8x4j
	HI6g==
X-Gm-Message-State: ALoCoQlLx2U+xLipSe6Tj47N+Uv3Pl4/S0vmtRcXQiR50muMVDoHWFTr7YFSULASX1JBfShgCkOl
X-Received: by 10.180.108.199 with SMTP id hm7mr7479054wib.31.1379585057573;
	Thu, 19 Sep 2013 03:04:17 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id z13sm8479434wib.0.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 19 Sep 2013 03:04:17 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Thu, 19 Sep 2013 11:04:12 +0100
Message-Id: <1379585052-26418-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] distro: remove anjuta-remote-run from distro_alias and maintainers
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
X-List-Received-Date: Thu, 19 Sep 2013 10:04:20 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc |    1 -
 meta-yocto/conf/distro/include/maintainers.inc  |    1 -
 2 files changed, 2 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index 1526ff7..bd3362a 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -13,7 +13,6 @@ DISTRO_PN_ALIAS_pn-aaina = "Intel"
 DISTRO_PN_ALIAS_pn-abiword-embedded = "Fedora=abiword Ubuntu=abiword"
 DISTRO_PN_ALIAS_pn-adt-installer = "Intel"
 DISTRO_PN_ALIAS_pn-alsa-state = "OE-Core"
-DISTRO_PN_ALIAS_pn-anjuta-remote-run = "OpenedHand"
 DISTRO_PN_ALIAS_pn-augeas = "Ubuntu=libaugeas0 Debian=libaugeas0"
 DISTRO_PN_ALIAS_pn-avahi-ui = "Ubuntu=avahi-discover Debian=avahi-discover"
 DISTRO_PN_ALIAS_pn-babeltrace = "OSPDT"
diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 87e7eaf..570593a 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -35,7 +35,6 @@ RECIPE_MAINTAINER_pn-alsa-state = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-alsa-tools = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-alsa-utils = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-alsa-utils-alsaconf = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-anjuta-remote-run = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-apmd = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-apr = "Cristiana Voicu <cristiana.voicu@intel.com>"
 RECIPE_MAINTAINER_pn-apr-util = "Cristiana Voicu <cristiana.voicu@intel.com>"
-- 
1.7.10.4


