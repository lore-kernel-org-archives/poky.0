Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42521E00346
	for <poky@yoctoproject.org>; Thu, 30 Aug 2012 07:20:06 -0700 (PDT)
Received: from mail-wi0-f176.google.com ([209.85.212.176])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 30 Aug 2012 07:19:56 -0700
Received: by wibhn17 with SMTP id hn17so278403wib.11
	for <poky@yoctoproject.org>; Thu, 30 Aug 2012 07:19:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=jMeQWTlqIOP3C+cxO4JlPofgP3VClNo83oYe6fvYt0c=;
	b=OIxq1yAGQjOzxNrkj8CyVLJ31FXO7FgVgvG0SBGBbiDeeMG3gJGfmbwsz2bQ8bfwGJ
	BY1gdqowpBqwKqNtxE+qY4TSeSM4rz2bhkUbjxOIIOHZpm9+1LzJ5ri0PnyGupb30M57
	ir8MIoVymYhAGAvrQHWT0f/0P2e5/lI9BjEcaG5X3k1Io4Vt2YqVxcMjto1UbFONzsC6
	Jc7Z36kswsyYjB5Jo9FAuDHEYQ3J1dDCmwh+mGth+FGv2CGRV3Q2CL31BlgtXLScQcLE
	s9rhBp9Vq+VXhgGJ5ilMun2xy2hyOUVO/29s02xlc1c2ekeQMkr6SI98F+Z80rwfkrgh
	2IAw==
Received: by 10.180.103.136 with SMTP id fw8mr848615wib.20.1346336394441;
	Thu, 30 Aug 2012 07:19:54 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id h9sm1019646wiz.1.2012.08.30.07.19.52
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 30 Aug 2012 07:19:53 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Thu, 30 Aug 2012 15:19:09 +0100
Message-Id: <1346336349-15790-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQk9oivETLnATkfEhoAxL5mJLLhGfP+ZuTpeQVgcDqtacGwSOeDnbvuyYTvOX1xpFpYd2ftD
Subject: [PATCH] meta-emenlow: unset preferred providers for virtual/libgles[12]
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
X-List-Received-Date: Thu, 30 Aug 2012 14:20:06 -0000

The recent changes to enable GLES/EGL in mesa-dri have caused emenlow to fail:

ERROR: Trying to resolve runtime dependency libglu resulted in conflicting PREFERRED_PROVIDER entries being found.
The providers found were: ['/srv/home/pokybuild/yocto-autobuilder/yocto-slave/emenlow/build/yocto/meta-intel/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb', '/srv/home/pokybuild/yocto-autobuilder/yocto-slave/emenlow/build/meta/recipes-graphics/mesa/mesa-dri_8.0.4.bb']
The PREFERRED_PROVIDER entries resulting in this conflict were: ['PREFERRED_PROVIDER_mesa-dri = xpsb-glx', 'PREFERRED_PROVIDER_virtual/libgles1 = mesa-dri']

Because emenlow's xpsb-glx contains mesa, it needs to entirely replace
mesa-dri. We'd normally set virtual/libgles1 and virtual/libgles2 to xpsb-glx
but these drivers don't build the GLES libraries so that would be a lie.

So, unset the preferred provider entries so that bitbake doesn't look at
mesa-dri at all.
---
 meta-emenlow/conf/machine/emenlow.conf |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index afb3866..65dcd5a 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -13,6 +13,8 @@ PREFERRED_PROVIDER_libdrm = "libdrm-poulsbo"
 PREFERRED_PROVIDER_drm = "libdrm-poulsbo"
 PREFERRED_PROVIDER_virtual/libx11 = "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl = "xpsb-glx"
+PREFERRED_PROVIDER_virtual/libgles1 = ""
+PREFERRED_PROVIDER_virtual/libgles2 = ""
 PREFERRED_PROVIDER_virtual/xserver = "xserver-psb"
 PREFERRED_PROVIDER_virtual/xserver-xf86 = "xserver-psb"
 PREFERRED_PROVIDER_mesa-dri = "xpsb-glx"
-- 
1.7.10


