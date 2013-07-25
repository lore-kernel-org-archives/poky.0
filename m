Return-Path: <ross.burton@intel.com>
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53396E0152B
	for <poky@yoctoproject.org>; Thu, 25 Jul 2013 09:42:04 -0700 (PDT)
Received: by mail-wg0-f50.google.com with SMTP id m15so1868329wgh.17
	for <poky@yoctoproject.org>; Thu, 25 Jul 2013 09:42:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:x-gm-message-state;
	bh=Kn3w64oErr5H9Px9R+dGnlV2uq4jpCFfnh/VyDamzbc=;
	b=UB5ITMsS2y4rnegPbI6QLa7m3BV73CBGCaTUSVPDyw7hii8s+3LrH2Yn3J5s0YWUWJ
	zS8LSClivCHqMV7l9rG837KpfZvJN+rtcOPQtT9L1XikjcfVwAW43x33gytIDF3ln4++
	rRQFPlyR5dri20YwJAd1U7ZytYlgM6cPlrONPXAo06W43X/coiIfn1lwv2qdU8zyBMEQ
	KrOsQn2SWV7zT6sUSZUIDBF8UFszWo8EB6YguwbLAp445RZWjWDsBgsJIQBVryIAY1vb
	YkAvzxdJ8JrcfIIsCs1PBvwd48zGHR8d6ET45arEEW15IzzB4OlHH1fWmud/W0GfGBbo
	fpXQ==
X-Received: by 10.180.185.84 with SMTP id fa20mr1998477wic.49.1374770523740;
	Thu, 25 Jul 2013 09:42:03 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id l2sm4909463wif.8.2013.07.25.09.42.02
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 25 Jul 2013 09:42:03 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Thu, 25 Jul 2013 17:38:02 +0100
Message-Id: <1374770285-22235-4-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1374770285-22235-1-git-send-email-ross.burton@intel.com>
References: <1374770285-22235-1-git-send-email-ross.burton@intel.com>
X-Gm-Message-State: ALoCoQm5E+SGb6kGGq3puLjOPB8dJbVv6hXIz5KcajX7T7nIRF0+kPZj2un6kmBRxUtE6qE3mM39
Subject: [PATCH 3/6] genericx86: add fbdev, modesettings and vesa Xorg drivers
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
X-List-Received-Date: Thu, 25 Jul 2013 16:42:05 -0000

This should ensure that X can start on more hardware.  The range of hardware is
still small as the atom-pc kernel only has limited framebuffer devices currently
(e.g. no nVidia).

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto-bsp/conf/machine/genericx86.conf |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
index 6318d60..2154943 100644
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


