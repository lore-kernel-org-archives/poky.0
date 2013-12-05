Return-Path: <ross.burton@intel.com>
Received: from mail-wg0-f43.google.com (mail-wg0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BCA0E0077E
	for <poky@yoctoproject.org>; Thu,  5 Dec 2013 09:42:10 -0800 (PST)
Received: by mail-wg0-f43.google.com with SMTP id k14so14490022wgh.22
	for <poky@yoctoproject.org>; Thu, 05 Dec 2013 09:42:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=s2Dc3lrGUuy0quFdmmOgFHTmiwrlOwmH/spaVkaC2VA=;
	b=ZCVSsULiy8rTtbm1CCwacRD+Egh2RLfbov4Qi86eS/Bq0JSy7PSoL7ugkuqVNzaytq
	vd6yV3NHYx+4YsEJqCh0eK3s/xt0G04zgpWaaWBjnFHJiVdwtXOJ1ARGY3yew5Uk5XU4
	jZaczkbS3vinHFqM29LE2EZcJWWBZ5VrBv91u0Yf37fyuVoPo3AeQMb+TxVSnRwxJ0i+
	uAp5BRxmywwZuxJw8mAFndxdOuFyuwQXZHA5bZpGj8uxOhxnYCYHhzmwRgBkWcIuJ/ot
	446WQ41L7pfXySWN5TaaVobYbmDfgeYEnn+TIVVTalLypzg3Rx0L7TyGQT1Qkiz9+WgT
	A4Sw==
X-Gm-Message-State: ALoCoQkZGdPNkQ6eZyy3+rxDNcx9hS9lBqOQOEBM/ab30EnaZPhU+u9GlaX539tUSItUT3WJ0uf1
X-Received: by 10.180.19.201 with SMTP id h9mr12691687wie.36.1386265329635;
	Thu, 05 Dec 2013 09:42:09 -0800 (PST)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id e10sm8266042wiy.7.2013.12.05.09.42.08
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 05 Dec 2013 09:42:08 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Thu,  5 Dec 2013 17:42:02 +0000
Message-Id: <1386265322-29062-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] distro-tracking: remove GMAE package groups
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
X-List-Received-Date: Thu, 05 Dec 2013 17:42:11 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc |    3 ---
 meta-yocto/conf/distro/include/maintainers.inc  |    3 ---
 meta-yocto/conf/distro/include/recipe_color.inc |    2 --
 3 files changed, 8 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index cdf0bc4..4c838c8b 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -282,7 +282,6 @@ DISTRO_PN_ALIAS_pn-meta-environment-qemux86 = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-environment-qemux86-64 = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-ide-support = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-toolchain = "OE-Core"
-DISTRO_PN_ALIAS_pn-meta-toolchain-gmae = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-toolchain-qt = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-toolchain-qte = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-toolchain-sdk = "OE-Core"
@@ -334,10 +333,8 @@ DISTRO_PN_ALIAS_pn-packagegroup-core-nfs = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-qt = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-qt4e = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-sdk = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-sdk-gmae = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-ssh-dropbear = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-ssh-openssh = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-core-standalone-gmae-sdk-target = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-standalone-sdk-target = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-tools = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core-tools-debug = "OE-Core"
diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index b6de775d..ca3789a 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -440,7 +440,6 @@ RECIPE_MAINTAINER_pn-menu-cache = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-mesa-demos = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-mesa = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-meta-ide-support = "Jessica Zhang <jessica.zhang@intel.com>"
-RECIPE_MAINTAINER_pn-meta-toolchain-gmae = "Jessica Zhang <jessica.zhang@intel.com>"
 RECIPE_MAINTAINER_pn-meta-toolchain-qte = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-meta-toolchain = "Jessica Zhang <jessica.zhang@intel.com>"
 RECIPE_MAINTAINER_pn-midori = "Ross Burton <ross.burton@intel.com>"
@@ -503,11 +502,9 @@ RECIPE_MAINTAINER_pn-packagegroup-core-lsb = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-nfs = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-qt4e = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-qt = "Paul Eggleton <paul.eggleton@linux.intel.com>"
-RECIPE_MAINTAINER_pn-packagegroup-core-sdk-gmae = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-sdk = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-ssh-dropbear = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-ssh-openssh = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-packagegroup-core-standalone-gmae-sdk-target = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-standalone-sdk-target = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-tools-debug = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-packagegroup-core-tools-profile = "Saul Wold <sgw@linux.intel.com>"
diff --git a/meta-yocto/conf/distro/include/recipe_color.inc b/meta-yocto/conf/distro/include/recipe_color.inc
index 6fd4966..8e36ea3 100644
--- a/meta-yocto/conf/distro/include/recipe_color.inc
+++ b/meta-yocto/conf/distro/include/recipe_color.inc
@@ -371,8 +371,6 @@ RECIPE_COLOR_pn-table = "red"
 RECIPE_COLOR_pn-tar = "yellow"
 RECIPE_COLOR_pn-packagegroup-base = "red"
 RECIPE_COLOR_pn-packagegroup-core-sdk = "red"
-RECIPE_COLOR_pn-packagegroup-core-sdk-gmae = "red"
-RECIPE_COLOR_pn-packagegroup-core-standalone-gmae-sdk-target = "red"
 RECIPE_COLOR_pn-packagegroup-core-standalone-sdk-target = "red"
 RECIPE_COLOR_pn-packagegroup-sdk-host = "red"
 RECIPE_COLOR_pn-tcf-agent = "yellow"
-- 
1.7.10.4


