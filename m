Return-Path: <ross.burton@intel.com>
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F55DE01564
	for <poky@yoctoproject.org>; Mon, 29 Jul 2013 09:23:13 -0700 (PDT)
Received: by mail-we0-f169.google.com with SMTP id n5so3449501wev.28
	for <poky@yoctoproject.org>; Mon, 29 Jul 2013 09:23:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:x-gm-message-state;
	bh=t1sKRhac4lXwDSKQL3VPbbtwnUFiLl2AnnaAxG89mMs=;
	b=GYX9y6F4JaHj4e6uLw6xk0BNUi5xlYz40q3GeOzoLDh/wjgblmTA71G+eAEeHRgTcH
	Mdt8MMhWTxGWLo+jsErDniU9keDVHQRLZz968lftjE4R9Lbtt7KkbJeB5IM9xhfj45Am
	QrQqsrt4LbKE341RPxC5haLlFCQYNz9llc77rrKeExV5jwdwxy253zN6Vkqe7xhyR9Z+
	GCgMpkd3ShNMt8jmZvsDJEfBHrRZM6B9nPLpQSJUx+44eh3x81sKQdHWLH7T6qLbU7xg
	SFRZWT84NHBhTGhn89QJG7Zz5d2phk3aooYeQPbtywBtQD2bmK2lQidyeB5aezIDqR32
	Uv2A==
X-Received: by 10.194.249.231 with SMTP id yx7mr44304983wjc.13.1375114992541; 
	Mon, 29 Jul 2013 09:23:12 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id e7sm3679164wiy.4.2013.07.29.09.23.11
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 29 Jul 2013 09:23:11 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Mon, 29 Jul 2013 17:22:56 +0100
Message-Id: <1375114978-28831-4-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1375114978-28831-1-git-send-email-ross.burton@intel.com>
References: <1375114978-28831-1-git-send-email-ross.burton@intel.com>
X-Gm-Message-State: ALoCoQmvsdM1Ty1WRt3lbtekUxU5WHjmW2ZMQfMNP4ogjO4m1/mRMml+P9ZxowwOgAFlGXpRaiQI
Subject: [PATCH 3/5] genericx86: add fbdev, modesettings and vesa Xorg drivers
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
X-List-Received-Date: Mon, 29 Jul 2013 16:23:16 -0000

This should ensure that X can start on more hardware.  The range of hardware is
still small as the atom-pc kernel only has limited framebuffer devices currently
(e.g. no nVidia).

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto-bsp/conf/machine/genericx86.conf |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
index 5cb2b5b..19f5f75 100644
--- a/meta-yocto-bsp/conf/machine/genericx86.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86.conf
@@ -18,6 +18,9 @@ XSERVER ?= "xserver-xorg \
            xf86-input-keyboard \
            xf86-input-evdev \
            xf86-input-synaptics \
+           xf86-video-fbdev \
+           xf86-video-modesetting \
+           xf86-video-vesa \
            xf86-video-intel \
            mesa-driver-i915 \
            mesa-driver-i965"
-- 
1.7.10.4


