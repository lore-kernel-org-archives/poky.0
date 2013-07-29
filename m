Return-Path: <ross.burton@intel.com>
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D656E0156C
	for <poky@yoctoproject.org>; Mon, 29 Jul 2013 09:23:14 -0700 (PDT)
Received: by mail-wg0-f44.google.com with SMTP id l18so5003718wgh.11
	for <poky@yoctoproject.org>; Mon, 29 Jul 2013 09:23:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:x-gm-message-state;
	bh=jm4j8yA2c+FlIHq+fNf5FIN1O3l+0I+qHr8761O0eoY=;
	b=CFx2CzdUyfyCAcQ2xR3Mwq5HbQ1VHPxQvgIuet8xzy4ujax5u62m/OM36brV3pIiZb
	AgGYQSTlVMyaQAKCGs6xqWXR/tyO7l1OPJ30DWAS58nV7oOgPfPay1AXveaGxsidO3Pg
	/4wQIyoHo5/1Uld1pSFX6Eguh9v3ervZF3iiEly4rr15ISJ4IRHKiTQ4AbIuIEAMJ2Gu
	R8SveNiHYHD+sYtp+jIgHa0OndJ7jK5oKEszNPzy11sdBluwiAxn2ZQz/UNoNGVS5ny2
	XUEO9BjoAw8qPfx8yoQpN6hHl5HwK1fkHfYX7ctlqMjWz1YRk4if+FL4LIADBIQSfn41
	AW9g==
X-Received: by 10.180.75.16 with SMTP id y16mr7789553wiv.59.1375114993990;
	Mon, 29 Jul 2013 09:23:13 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id e7sm3679164wiy.4.2013.07.29.09.23.12
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 29 Jul 2013 09:23:13 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Mon, 29 Jul 2013 17:22:57 +0100
Message-Id: <1375114978-28831-5-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1375114978-28831-1-git-send-email-ross.burton@intel.com>
References: <1375114978-28831-1-git-send-email-ross.burton@intel.com>
X-Gm-Message-State: ALoCoQmzak3g7+WcmqV3LDhiqGTDfmomeau3/R+EseuY3iHzXGGKTz7j7uF0kL3MO8x3d7oDq+hl
Subject: [PATCH 4/5] genericx86: disable rootless X
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

Not all video drivers support rootless X and this BSP aims to have broader
support than atom-pc.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto-bsp/conf/machine/genericx86.conf |    2 --
 1 file changed, 2 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
index 19f5f75..e37f3662 100644
--- a/meta-yocto-bsp/conf/machine/genericx86.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86.conf
@@ -36,5 +36,3 @@ APPEND += "usbcore.autosuspend=1"
 GLIBC_ADDONS = "nptl"
 
 EXTRA_OECONF_append_pn-matchbox-panel-2 = " --with-battery=acpi"
-
-ROOTLESS_X = "1"
-- 
1.7.10.4


