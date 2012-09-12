Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF84BE014B1
	for <poky@yoctoproject.org>; Wed, 12 Sep 2012 03:34:51 -0700 (PDT)
Received: from mail-wi0-f182.google.com ([209.85.212.182])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 12 Sep 2012 03:34:50 -0700
Received: by wibhq12 with SMTP id hq12so1460917wib.11
	for <poky@yoctoproject.org>; Wed, 12 Sep 2012 03:34:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=IASZm5xYXyDskuoPMjUTqdROmJ7Fs68LoSc1uHms6Jk=;
	b=ERo8dMEZspygnNuDqMlZPdNH6QNZCj5KmOi8KedIjdIxiqL1lxQhchUPw5NzwY0o+z
	JG8+j9ocKIrkpgSzZP9C/2HxVQrHDrd5hqzay8sGa2sYjKbp0VZNl5ghLRnxJRgYnpQZ
	r4QHu4sgkyLum0Hkb0cYBIv1gIxcX7zWAbREgIIHy4LQTNKkdxJAI8JmUDwv8sWmWk1I
	PZ18ubDnnQyY9GNAEQHQtfhhUb2RPnM+joI7Ii+EULBkaJW6OvUHrz3x8NegcvCgaux8
	zoQks1uoLzwEtwHmiZbWfreIIuUjfEYR0naDDYsRg2VY3nIvEqlNVPVVoYygGc83KtUR
	wU5Q==
Received: by 10.180.84.104 with SMTP id x8mr31760188wiy.20.1347446089256;
	Wed, 12 Sep 2012 03:34:49 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id k20sm7423749wiv.11.2012.09.12.03.34.47
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 12 Sep 2012 03:34:47 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Wed, 12 Sep 2012 11:33:57 +0100
Message-Id: <1347446038-16720-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQnmjJv52mMd7F6rLCTc4P5wY5Jpc5KIXDW9b9GcXo4gApbGK/Cj6YW8GCpR/bomX6iiWM5L
Subject: [PATCH 1/2] distro-tracking; remove references to xserver-xorg-lite
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
X-List-Received-Date: Wed, 12 Sep 2012 10:34:51 -0000


Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc |    1 -
 meta-yocto/conf/distro/include/maintainers.inc  |    1 -
 2 files changed, 2 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index c63bd47..4b97774 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -409,7 +409,6 @@ DISTRO_PN_ALIAS_pn-xserver-xf86-config = "OE-Core"
 DISTRO_PN_ALIAS_pn-xserver-xf86-dri-lite = "Fedora=xorg-x11-server Ubuntu=xserver-xorg"
 DISTRO_PN_ALIAS_pn-xserver-xf86-lite = "Fedora=xorg-x11-server Ubuntu=xserver-xorg"
 DISTRO_PN_ALIAS_pn-xserver-xorg = "Fedora=xorg-x11-server Ubuntu=xserver-xorg"
-DISTRO_PN_ALIAS_pn-xserver-xorg-lite = "Fedora=xorg-x11-server Ubuntu=xserver-xorg"
 DISTRO_PN_ALIAS_pn-xset = "Fedora=xorg-x11-server-utils Ubuntu=x11-xserver-utils Debian=x11-xserver-utils Opensuse=xorg-x11"
 DISTRO_PN_ALIAS_pn-xtscal = "OSPDT upstream=http://gpe.linuxtogo.org/download/source/"
 DISTRO_PN_ALIAS_pn-xvideo-tests = "OpenedHand"
diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index dace3b9..f5f35f2 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -722,7 +722,6 @@ RECIPE_MAINTAINER_pn-xrestop = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xserver-nodm-init = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xserver-xf86-config = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xserver-xorg = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
-RECIPE_MAINTAINER_pn-xserver-xorg-lite = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-xset = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xtrans = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
 RECIPE_MAINTAINER_pn-xtscal = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
-- 
1.7.10


