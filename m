Return-Path: <ross.burton@intel.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 97A3FE0148C
	for <poky@yoctoproject.org>; Mon, 11 Feb 2013 02:55:37 -0800 (PST)
Received: by mail-wi0-f182.google.com with SMTP id hi18so2929402wib.9
	for <poky@yoctoproject.org>; Mon, 11 Feb 2013 02:55:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:x-gm-message-state;
	bh=onB1wbX+e6m0RarBJ3nes2r1JThrklg1gDSke1ioZ3M=;
	b=aOIt5xgjsVQcEdt8TgGAscsnCDZqzlaomameMQiB8C5OgOfTHVT4Zgg07CeWOMM4yF
	BSv46C78AnWjECqMfWeop7QMA3k8D8QjKKhYeca+QgNQSQziPP6pRRrgWgjyQPbJCXDC
	Hg1jI4wA3kbiuU82UJnPS+LaBc7RIelHnSdGU/Wc7FP+e3KeKPIblANeXWOQfEiI7uuS
	nl4jhC89uZi5u3OyonKR2BETGjv1nGKat1dBNIQu41BYmp7l7P2LbptaqbD0rTZckncO
	oS7PA26ngj7XiD50i2iBjh6nMlXWe1VdiMw9CgABoPH8rkDAm/UejUSIDCD3TWGQa5HV
	rk2g==
X-Received: by 10.194.118.166 with SMTP id kn6mr22958155wjb.18.1360580132087; 
	Mon, 11 Feb 2013 02:55:32 -0800 (PST)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id eo10sm32294641wib.9.2013.02.11.02.55.30
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 11 Feb 2013 02:55:31 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Mon, 11 Feb 2013 10:53:16 +0000
Message-Id: <1360579997-17694-2-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1360579997-17694-1-git-send-email-ross.burton@intel.com>
References: <1360579997-17694-1-git-send-email-ross.burton@intel.com>
X-Gm-Message-State: ALoCoQlquYfweQe4JL4SrU6cZCTrmtjXCqGTwST7VRthV0tBs5YKc0ASjtx3mfs//q64JOXu1iaE
Subject: [PATCH 2/3] distro: remove orinoco-conf
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
X-List-Received-Date: Mon, 11 Feb 2013 10:55:38 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc      |    1 -
 meta-yocto/conf/distro/include/maintainers.inc       |    1 -
 meta-yocto/conf/distro/include/recipe_color.inc      |    1 -
 meta-yocto/conf/distro/include/upstream_tracking.inc |    1 -
 4 files changed, 4 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index 38f6c12..7e005a0 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -269,7 +269,6 @@ DISTRO_PN_ALIAS_pn-opkg = "OSPDT upstream=http://svn.openmoko.org/trunk/src/tar"
 DISTRO_PN_ALIAS_pn-opkg-utils = "OSPDT upstream=http://svn.openmoko.org/trunk/src/target/opkg/"
 DISTRO_PN_ALIAS_pn-oprofileui = "Fedora=oprofileui Ubuntu=oprofile-gui Debian=oprofile-gui"
 DISTRO_PN_ALIAS_pn-oprofileui-server = "Fedora=oprofileui Ubuntu=oprofile-gui Debian=oprofile-gui"
-DISTRO_PN_ALIAS_pn-orinoco-conf = "OE-Core"
 DISTRO_PN_ALIAS_pn-owl-video = "OpenedHand"
 DISTRO_PN_ALIAS_pn-package-index = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-base = "OE-Core"
diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index afd538e..57de36c 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -588,7 +588,6 @@ RECIPE_MAINTAINER_pn-opkg-utils = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-oprofile = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-oprofileui = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-oprofileui-server = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-orinoco-conf = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-ossp-uuid-native = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-ossp-uuid = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-owl-video = "Constantin Musca <constantinx.musca@intel.com>"
diff --git a/meta-yocto/conf/distro/include/recipe_color.inc b/meta-yocto/conf/distro/include/recipe_color.inc
index 0326129..53c23c3 100644
--- a/meta-yocto/conf/distro/include/recipe_color.inc
+++ b/meta-yocto/conf/distro/include/recipe_color.inc
@@ -301,7 +301,6 @@ RECIPE_COLOR_pn-opkg_nogpg = "yellow"
 RECIPE_COLOR_pn-opkg-utils = "yellow"
 RECIPE_COLOR_pn-oprofile = "yellow"
 RECIPE_COLOR_pn-oprofileui = "yellow"
-RECIPE_COLOR_pn-orinoco-conf = "red"
 RECIPE_COLOR_pn-owl-video = "yellow"
 RECIPE_COLOR_pn-package-index = "red"
 RECIPE_COLOR_pn-pax = "yellow"
diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index 06f0cc8..bfa76a3 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -1047,7 +1047,6 @@ CHECK_DATE_pn-oprofile = "Nov 8, 2012"
 RECIPE_UPSTREAM_VERSION_pn-oprofileui = "0.0+git0+82ecf8c6b53b84f80682a8312f9defa83a95f2a3"
 CHECK_DATE_pn-oprofileui = "Aug 31, 2011"
 RECIPE_UPSTREAM_DATE_pn-oprofileui = "Nov 14, 2011"
-RECIPE_UPSTREAM_VERSION_pn-orinoco-conf = "1.0"
 RECIPE_UPSTREAM_DATE_pn-owl-video = "Jan 26, 2012"
 RECIPE_UPSTREAM_VERSION_pn-owl-video = "3.0"
 CHECK_DATE_pn-owl-video = "Aug 31, 2012"
-- 
1.7.10.4


