Return-Path: <ross.burton@intel.com>
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49AA2E0156D
	for <poky@yoctoproject.org>; Mon, 29 Jul 2013 09:23:16 -0700 (PDT)
Received: by mail-wi0-f174.google.com with SMTP id j17so2712333wiw.13
	for <poky@yoctoproject.org>; Mon, 29 Jul 2013 09:23:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:x-gm-message-state;
	bh=ZgD7TcWd700Sy77cwbzO8r5vQ55CrOzIwwRyCjSZmqk=;
	b=N1XhMnB1UzNlrKnMBdHym6AOXK2o/Qf8icuL19UFaE0p6QR03n64O2F/W2Dt0eLtO8
	1IFzd0u991Qy13wYgpbH0V8n8wJFHmS1WLJLYKuaZAYEZmCzSC3yKPgxusUYfTEUl2jR
	FbANOhQcvctER7LK/v43XGxeJuP891W1L4TeX1K9+5avx0retoYSniZe2/idPsqtahpz
	CBdZQsVTUwNYu34WP+BM0HWWgSvy+e65395mSmVnM9MrrJSDwboonGU0jq6+vdx7rPUf
	y6TaL/IOFl0Cvm4NimEnsTtqhzaMuA01UTecGyv9LAkkWdlBQNmaKBymCuI9VQ8EjRgD
	42uw==
X-Received: by 10.194.83.74 with SMTP id o10mr15385800wjy.95.1375114995508;
	Mon, 29 Jul 2013 09:23:15 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id e7sm3679164wiy.4.2013.07.29.09.23.14
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 29 Jul 2013 09:23:14 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Mon, 29 Jul 2013 17:22:58 +0100
Message-Id: <1375114978-28831-6-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1375114978-28831-1-git-send-email-ross.burton@intel.com>
References: <1375114978-28831-1-git-send-email-ross.burton@intel.com>
X-Gm-Message-State: ALoCoQm8c9SzOVdae+EL+kX3ZzphVY2uEx+6OkQMe21YzPseY2++BeTvOH2wM4AI6QJjwTT3gyTa
Subject: [PATCH 5/5] genericx86: ship all the driver firmware by default
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

By shipping all firmware, hopefully more hardware will work out of the box.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto-bsp/conf/machine/genericx86.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
index e37f3662..88464fa 100644
--- a/meta-yocto-bsp/conf/machine/genericx86.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86.conf
@@ -27,7 +27,7 @@ XSERVER ?= "xserver-xorg \
 
 #MACHINE_EXTRA_RDEPENDS = "rt2860"
 
-MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
+MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts linux-firmware"
 
 IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
-- 
1.7.10.4


