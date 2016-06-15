Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74705E00C8B; Wed, 15 Jun 2016 02:54:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD51EE00C7D
	for <poky@yoctoproject.org>; Wed, 15 Jun 2016 02:54:57 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id f126so14107705wma.1
	for <poky@yoctoproject.org>; Wed, 15 Jun 2016 02:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=e/IBzc+JifSQJNiP6iain6mbu0Tlr8lstAdZohfcLpA=;
	b=uywxW6LiNTLpz9/G/YuUNnLghrEiErqkvZeowp2eGtCn10vYtQzlqQwQ6evGGe8bZ0
	+DTHfdybetLUm5lrN4HW8pB7G35g+8+daECP1zcNYQBN/tF5cOgs3OUzwsn5ku6t/lve
	tObAZpE01PDobOUY3f70R0zDy1zOi3Y0llV3z+I+L1GeDRqHrfkIk9SEe0SV9DBGwMpt
	7V2jUAazFQCY8+TYB8yKnQ7zRjgVukn9jLjSWY8xJoX5K6RNBhHCLhKzU26kgq1D5JTG
	0WCuiAW4qvhmpEfTd9l23m0RubqeJFtDCX0gKTy/lhGKiCcuvE9EFoVUNZ9wDMF3AJiN
	+kuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=e/IBzc+JifSQJNiP6iain6mbu0Tlr8lstAdZohfcLpA=;
	b=GNyx598JLH5apAgJHEF5xKIpaDzKxm4lroy1k1jkTfFiUXF6ieYy2qpn80xwJ37ew/
	cnZoeN1+tJOJpvQl6imItLfa++ZP6y+ox9Y1MRd6/CM3glHo2io6979i56taiHDVOrXy
	H2vNm6FHodePRhW+FqZMnYG91y0CbFDIg5l3Ej/Y+qMBMJnXvfgn+ae/0NoBgnWBxSZA
	JMr219l5EIjBXL/sJ7LYB/XQ4uKwizmucI9weV28CXX35/vsbb5hWuu86XPJprgAXzcz
	Gh5Krc71AXT5CuRTAjZTYGxx1orcNQCIDQUYWjyS+/Sz5oXwMLBm9egka5+PomkE+pcq
	B8Pw==
X-Gm-Message-State: ALyK8tI1ma9mabcVTY7CGmYCYGLnYYdvz2p26yx+Koj+bs3W3cegMd+KdINz+lqBxX7a1eS/
X-Received: by 10.194.86.200 with SMTP id r8mr10135753wjz.158.1465984496457;
	Wed, 15 Jun 2016 02:54:56 -0700 (PDT)
Received: from flashheart.burtonini.com (home.burtonini.com. [81.2.106.35])
	by smtp.gmail.com with ESMTPSA id
	w76sm8717920wmd.11.2016.06.15.02.54.55 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 15 Jun 2016 02:54:55 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Wed, 15 Jun 2016 10:54:54 +0100
Message-Id: <1465984494-6825-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.8.0.rc3
Subject: [PATCH] conf/distro: remove oprofileui
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
X-List-Received-Date: Wed, 15 Jun 2016 09:54:59 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-poky/conf/distro/include/maintainers.inc             | 2 --
 meta-poky/conf/distro/include/poky-floating-revisions.inc | 1 -
 2 files changed, 3 deletions(-)

diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
index 6497212..1177d2c 100644
--- a/meta-poky/conf/distro/include/maintainers.inc
+++ b/meta-poky/conf/distro/include/maintainers.inc
@@ -555,8 +555,6 @@ RECIPE_MAINTAINER_pn-opkg-arch-config = "Alejandro del Castillo <alejandro.delca
 RECIPE_MAINTAINER_pn-opkg-keyrings = "Alejandro del Castillo <alejandro.delcastillo@ni.com>"
 RECIPE_MAINTAINER_pn-opkg-utils = "Alejandro del Castillo <alejandro.delcastillo@ni.com>"
 RECIPE_MAINTAINER_pn-oprofile = "Alexander Kanavin <alexander.kanavin@intel.com>"
-RECIPE_MAINTAINER_pn-oprofileui = "Alexander Kanavin <alexander.kanavin@intel.com>"
-RECIPE_MAINTAINER_pn-oprofileui-server = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-orc = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-os-release = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-ossp-uuid = "Alexander Kanavin <alexander.kanavin@intel.com>"
diff --git a/meta-poky/conf/distro/include/poky-floating-revisions.inc b/meta-poky/conf/distro/include/poky-floating-revisions.inc
index e1abd3a..a3da043 100644
--- a/meta-poky/conf/distro/include/poky-floating-revisions.inc
+++ b/meta-poky/conf/distro/include/poky-floating-revisions.inc
@@ -19,7 +19,6 @@ SRCREV_pn-matchbox-wm ?= "${AUTOREV}"
 SRCREV_pn-settings-daemon ?= "${AUTOREV}"
 SRCREV_pn-screenshot ?= "${AUTOREV}"
 SRCREV_pn-libfakekey ?= "${AUTOREV}"
-SRCREV_pn-oprofileui ?= "${AUTOREV}"
 SRCREV_pn-psplash ?= "${AUTOREV}"
 SRCREV_pn-gtk-sato-engine ?= "${AUTOREV}"
 SRCREV_pn-matchbox-theme-sato ?= "${AUTOREV}"
-- 
2.8.0.rc3


