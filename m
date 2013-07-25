Return-Path: <ross.burton@intel.com>
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72068E01363
	for <poky@yoctoproject.org>; Thu, 25 Jul 2013 09:42:07 -0700 (PDT)
Received: by mail-wg0-f42.google.com with SMTP id j13so4309563wgh.3
	for <poky@yoctoproject.org>; Thu, 25 Jul 2013 09:42:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:x-gm-message-state;
	bh=XfaPtk6ib00Yl9zl/q5AD97p2NbN9rKeSJjHMIXaLJA=;
	b=VYGh7XnbYa0oSzvBF62ZMIx2wv7tpJGf3IEYDh6tBOOK+zsExTl0VuXqTkELz60SAm
	T5n9xRoMqlYR33ermzO881uGfy5K8MYndh/WMGfvF9jKwKrm4kKkZdVTKKCir9eUD2Eg
	mVTigvsIHKiRhiYcABxJVw9R7pb61U9AjHCQqnf4gP7qByErpgcXVIv5mpLJiPls0EPn
	rb7B8yGMg77soS6TGt7I8pixt/6Vp1L5au/h4jTol7ElDycCdBTNS37T0qLKtrdq2PWw
	RBai9ah8KWkVdKsH2u9LopxIOq+gScuePN6s3AkeE13NR0/I1KPhGryTM/ZeKm1WIc/M
	Xoqw==
X-Received: by 10.180.89.101 with SMTP id bn5mr2699651wib.45.1374770526849;
	Thu, 25 Jul 2013 09:42:06 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id l2sm4909463wif.8.2013.07.25.09.42.05
	for <poky@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 25 Jul 2013 09:42:06 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Thu, 25 Jul 2013 17:38:04 +0100
Message-Id: <1374770285-22235-6-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1374770285-22235-1-git-send-email-ross.burton@intel.com>
References: <1374770285-22235-1-git-send-email-ross.burton@intel.com>
X-Gm-Message-State: ALoCoQl2FO9rR4+EAME+zyzjPdMBVJwvaiUqyqPDblOjeYErxBuhUsFZHPG2PFhOa0SY3TiBOpbs
Subject: [PATCH 5/6] genericx86: ship all the driver firmware by default
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
X-List-Received-Date: Thu, 25 Jul 2013 16:42:08 -0000

By shipping all firmware, hopefully more hardware will work out of the box.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto-bsp/conf/machine/genericx86.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
index 572a480..fbe818c 100644
--- a/meta-yocto-bsp/conf/machine/genericx86.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86.conf
@@ -27,7 +27,7 @@ XSERVER ?= "xserver-xorg \
 
 #MACHINE_EXTRA_RDEPENDS = "rt2860"
 
-MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
+MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts linux-firmware"
 
 IMAGE_FSTYPES ?= "ext3 cpio.gz live"
 
-- 
1.7.10.4


