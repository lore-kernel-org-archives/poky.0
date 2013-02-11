Return-Path: <ross.burton@intel.com>
Received: from mail-wg0-f53.google.com (mail-wg0-f53.google.com [74.125.82.53])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 36C36E01487
	for <poky@yoctoproject.org>; Mon, 11 Feb 2013 02:55:35 -0800 (PST)
Received: by mail-wg0-f53.google.com with SMTP id fn15so4479397wgb.8
	for <poky@yoctoproject.org>; Mon, 11 Feb 2013 02:55:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:x-gm-message-state;
	bh=CBB8BHYUwCvGnokM6YelrvCghVv0AhLhz7dEIIquYmQ=;
	b=aQvGjwUre/LBiFtmE9d4wUw6r0NN3t8ayM7Hh26EU0vfF8YkyAqjdxz4HYVjsra9sD
	i8qYwSHIsBPBMLEd1+A78nANU7Q2NmnhDAyRDqNUo9MqUgy4g5r9JgIwoB0NLqHR9VJF
	pni1anaHsMd25mvSTj7986yrPS3FuwFd7RPT47V78PCkk8iwvcwMM7I5eHatCTGMJs9B
	PDjJluA85V+KMY99sYIWLIS9i+xJ86nOIOvSt6M145b+oasyKTUbVIOXho8jQOh1nD8o
	QpZczDVtSQUjMuepo07UeDCHErSX7w4ib9+WhXeZKyaENDqoe5W1NYC2jXDD53PcqXBB
	IoSA==
X-Received: by 10.180.7.232 with SMTP id m8mr14949393wia.8.1360580133536;
	Mon, 11 Feb 2013 02:55:33 -0800 (PST)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id eo10sm32294641wib.9.2013.02.11.02.55.32
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 11 Feb 2013 02:55:32 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Mon, 11 Feb 2013 10:53:17 +0000
Message-Id: <1360579997-17694-3-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1360579997-17694-1-git-send-email-ross.burton@intel.com>
References: <1360579997-17694-1-git-send-email-ross.burton@intel.com>
X-Gm-Message-State: ALoCoQnXjd08EJ4EnHA21VHP/sFs4QOAdVPBQrhKuUQUFrjT/CrTsTyvm4rYznPHhW19rdzCW/6A
Subject: [PATCH 3/3] distro: remove clutter-box2d
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
X-List-Received-Date: Mon, 11 Feb 2013 10:55:35 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc |    1 -
 meta-yocto/conf/distro/include/maintainers.inc  |    1 -
 meta-yocto/conf/distro/include/recipe_color.inc |    1 -
 3 files changed, 3 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index 7e005a0..6cccee3 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -36,7 +36,6 @@ DISTRO_PN_ALIAS_pn-claws-plugin-rssyl = "Fedora=claws-mail-plugins OpenSuSE=claw
 DISTRO_PN_ALIAS_pn-clipboard-manager = "OpenedHand"
 DISTRO_PN_ALIAS_pn-clutter = "Fedora=clutter OpenSuse=clutter Ubuntu=clutter-1.0 Mandriva=clutter Debian=clutter"
 DISTRO_PN_ALIAS_pn-clutter-1.8 = "Fedora=clutter OpenSuse=clutter Ubuntu=clutter-1.0 Mandriva=clutter Debian=clutter"
-DISTRO_PN_ALIAS_pn-clutter-box2d = "Meego=clutter-box2d"
 DISTRO_PN_ALIAS_pn-clutter-gst-1.8 = "Fedora=clutter-gst Debian=libclutter-gst"
 DISTRO_PN_ALIAS_pn-clutter-gtk-1.8 = "Fedora=clutter-gtk OpenSuSE=clutter-gtk Ubuntu=clutter-gtk-0.10 Mandriva=clutter-gtk Debian=clutter-gtk"
 DISTRO_PN_ALIAS_pn-cogl = "Fedora=cogl OpenSuse=cogl Ubuntu=cogl Mandriva=cogl Debian=cogl"
diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 57de36c..91079aa 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -86,7 +86,6 @@ RECIPE_MAINTAINER_pn-claws-plugin-mailmbox = "Constantin Musca <constantinx.musc
 RECIPE_MAINTAINER_pn-claws-plugin-rssyl = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-clipboard-manager = "Constantin Musca <constantinx.musca@intel.com>"
 RECIPE_MAINTAINER_pn-clutter-1.8 = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-clutter-box2d = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-clutter-gst-1.8 = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-clutter-gtk-1.8 = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-clutter = "Ross Burton <ross.burton@intel.com>"
diff --git a/meta-yocto/conf/distro/include/recipe_color.inc b/meta-yocto/conf/distro/include/recipe_color.inc
index 53c23c3..c301037 100644
--- a/meta-yocto/conf/distro/include/recipe_color.inc
+++ b/meta-yocto/conf/distro/include/recipe_color.inc
@@ -47,7 +47,6 @@ RECIPE_COLOR_pn-claws-plugin-maildir = "red"
 RECIPE_COLOR_pn-claws-plugin-mailmbox = "red"
 RECIPE_COLOR_pn-claws-plugin-rssyl = "red"
 RECIPE_COLOR_pn-clipboard-manager = "red"
-RECIPE_COLOR_pn-clutter-box2d = "red"
 RECIPE_COLOR_pn-clutter-gst-1.8 = "red"
 RECIPE_COLOR_pn-clutter-gtk-1.8 = "red"
 RECIPE_COLOR_pn-compositeproto = "yellow"
-- 
1.7.10.4


