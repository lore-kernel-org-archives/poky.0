Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ABC0E01199
	for <poky@yoctoproject.org>; Wed,  3 Oct 2012 02:51:05 -0700 (PDT)
Received: from mail-we0-f176.google.com ([74.125.82.176])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 03 Oct 2012 02:51:04 -0700
Received: by weyz53 with SMTP id z53so4867607wey.35
	for <poky@yoctoproject.org>; Wed, 03 Oct 2012 02:51:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=drLBJMZhL9vw5uij7e5TqwlcT/kWCG9xBLirpT9AFbo=;
	b=K8DHEDihMLcrsl43e5aGE++NakLFvsZb70ub66jL91wXMCznHe1XCaqJoemkdGbD01
	m2I8DPd6UslvY2O3MM7bMGb/Pya+lPo062fi7RQfonZlCb++qKQ6oYM33h0RcbYUb7Pd
	o8UXe1sA9GbG2w+1qPHdz9r1cE2UaX3Kr4jbNYZg3jSR5s/g3rHPNg7OAgXGVEZ6EWQ2
	MwGhq4EuHFaaU9yHtLpXbowTYwwRspqA61zcwNVclUENjbk9XojxQ/rIPzq9goILpZim
	+lBSpFv1aITU6vpVhUmMnePcQ001BsIX440ckZp1BK8eQo+GO3Bu3nLlhx8+iDDyNaGX
	+Ayw==
Received: by 10.180.108.45 with SMTP id hh13mr28299779wib.15.1349257862250;
	Wed, 03 Oct 2012 02:51:02 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id gm7sm7520449wib.10.2012.10.03.02.51.00
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 03 Oct 2012 02:51:01 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Wed,  3 Oct 2012 10:49:59 +0100
Message-Id: <1349257799-32764-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQlrkcg17wTxIzYnF7NyvHOhPIxg5IHrIMQkp/18vkb5igqjKxK4b016rLbPgy2MAohEJ5Aq
Subject: [PATCH] distro-tracking: remove mesa-xlib
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
X-List-Received-Date: Wed, 03 Oct 2012 09:51:05 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc |    1 -
 meta-yocto/conf/distro/include/maintainers.inc  |    1 -
 2 files changed, 2 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index e0cfa35..835696c 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -222,7 +222,6 @@ DISTRO_PN_ALIAS_pn-matchbox-wm = "OpenedHand"
 DISTRO_PN_ALIAS_pn-menu-cache = "OSPDT"
 DISTRO_PN_ALIAS_pn-mesa-dri = "Fedora=mesa Ubuntu=libgl1-mesa-dri"
 DISTRO_PN_ALIAS_pn-mesa-dri-glsl-native = "Fedora=mesa Ubuntu=libgl1-mesa-dri"
-DISTRO_PN_ALIAS_pn-mesa-xlib = "Fedora=mesa Ubuntu=libgl1-mesa-swx11"
 DISTRO_PN_ALIAS_pn-meta-environment-i586 = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-ide-support = 'OE-Core'
 DISTRO_PN_ALIAS_pn-meta-toolchain-gmae = "OE-Core"
diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 38b6974..830aebe 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -448,7 +448,6 @@ RECIPE_MAINTAINER_pn-mdadm = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-menu-cache = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-mesa-dri = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-mesa-dri-glsl-native = "Valentin Popa <valentin.popa@intel.com>"
-RECIPE_MAINTAINER_pn-mesa-xlib = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-meta-ide-support = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-metacity = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-mingetty = "Kai Kang <kai.kang@windriver.com>"
-- 
1.7.10


