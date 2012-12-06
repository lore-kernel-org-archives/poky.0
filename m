Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A155E0144A
	for <poky@yoctoproject.org>; Thu,  6 Dec 2012 04:16:07 -0800 (PST)
Received: from mail-wi0-f200.google.com ([209.85.212.200])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 06 Dec 2012 04:16:06 -0800
Received: by mail-wi0-f200.google.com with SMTP id hn14so558255wib.11
	for <poky@yoctoproject.org>; Thu, 06 Dec 2012 04:16:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=610D83gB0sGoCIsHXcP2eYNcKbsA9OXymoFPwcXT7T8=;
	b=Di5aX7fUcJyT7jQoJATEWWL16/yBO0lYFh1+xn3hRD5mSHp6AeqkVMBi2jpbiNbEYt
	x2MvWkBlaWmHg0uao8nQsEIYZlAJQmhOdRJ7qYpiXL09GkIDXwzMHzmpJxxqG5vyThkW
	jDEVRytn2Qs3rp0fAK1twkTHSU9hwkZE4QPDBn2ofOMKSe3Rk7j7U+o0u+VeDcw9I4YE
	sxx0cTyu+jukYHHoQgzrLPwrQhYe8coO+UHUmejEtNRvAkSIQ6wMByFhjcMnhQFumkHh
	xyqgtCG7F+EUL2mi8MJ335csUYTOOgqOOtm8PqWiv5oT8uoiOaHcSFaVURCRikgkBS6Z
	7vlA==
Received: by 10.180.98.8 with SMTP id ee8mr8747318wib.4.1354796164919;
	Thu, 06 Dec 2012 04:16:04 -0800 (PST)
Received: by 10.180.98.8 with SMTP id ee8mr8747307wib.4.1354796164685;
	Thu, 06 Dec 2012 04:16:04 -0800 (PST)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id t17sm10764318wiv.6.2012.12.06.04.16.02
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 06 Dec 2012 04:16:03 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Thu,  6 Dec 2012 12:14:26 +0000
Message-Id: <1354796066-17284-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQkUHmQu1fvdPNaFBZiMzh8vwVKb1AC2b3z6TPsvxthVBVkoLytgJFgy1my039b2BwsuGdmuPXOaiWOkaqDqysME6w1mFxzOUc7vqUHNSkbthryBTkHpgV9nWvsaLswzZSOnOAYEYtmqAhSGBR5D4D0JaOLveQ==
Subject: [PATCH] mesa: remove atom-pc specific overrides
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
X-List-Received-Date: Thu, 06 Dec 2012 12:16:07 -0000

These bbappends were used so that atom-pc would prefer mesa-dri over mesa-xlib.
We don't have mesa-xlib anymore, so these are not required.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto-bsp/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend |    3 ---
 meta-yocto-bsp/recipes-graphics/mesa/mesa-dri_git.bbappend   |    3 ---
 2 files changed, 6 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend
 delete mode 100644 meta-yocto-bsp/recipes-graphics/mesa/mesa-dri_git.bbappend

diff --git a/meta-yocto-bsp/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend b/meta-yocto-bsp/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend
deleted file mode 100644
index 7e8e773..0000000
--- a/meta-yocto-bsp/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-# Atom PCs have DRI support so use mesa-dri by default
-DEFAULT_PREFERENCE_atom-pc = "2"
-
diff --git a/meta-yocto-bsp/recipes-graphics/mesa/mesa-dri_git.bbappend b/meta-yocto-bsp/recipes-graphics/mesa/mesa-dri_git.bbappend
deleted file mode 100644
index 61d3891..0000000
--- a/meta-yocto-bsp/recipes-graphics/mesa/mesa-dri_git.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-# Atom PCs have DRI support so use mesa-dri by default
-DEFAULT_PREFERENCE_atom-pc = "1"
-
-- 
1.7.10


