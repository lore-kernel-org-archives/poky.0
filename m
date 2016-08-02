Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26D87E00F6A; Tue,  2 Aug 2016 06:06:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB2AAE00F61
	for <poky@yoctoproject.org>; Tue,  2 Aug 2016 06:06:19 -0700 (PDT)
Received: by mail-wm0-f49.google.com with SMTP id q128so408690971wma.1
	for <poky@yoctoproject.org>; Tue, 02 Aug 2016 06:06:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=f1Ix22SuN75OiLu3obROk3Emuhtx6qPmewMFyFQ82A0=;
	b=s/TDT2TOEDbmJ3Ua6nXEaQx8WSBbsGkAevXV5MKB6CWeqL3JGXCIEVzNkhF9qKV/F6
	0I0YUwiaFELcvX+YoB8t2deliEU/nO1mm2Vw/+JDfiah/4IxT07T8BixEmtCx6+u6hpF
	vg5UhQkPH8b09gYPoTbV5M3ir+authVlGH9aqQmISiMePbuUAC/7ZB4ecrWoA7zfAgBq
	phDyLqWregtRP59QbOoduQoiCYjQnzxSWPLFGYBlpNPZ1plaF2YA7HGP9H/+cqGkfiKE
	dUxCkKQNaUpYslaB6epad+BulrJNq7UsKfqk1nIWdU9gQrGRpTXONbIea4PykCGeb6uK
	gCtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=f1Ix22SuN75OiLu3obROk3Emuhtx6qPmewMFyFQ82A0=;
	b=kymu6JbsX4Ht9Yy74Zy2cD83YIR71pjm1got806o7az/+OWhD8bVWTk6HJLBEj6xQ6
	WEUTPtjZ1v7gZRSkpitKwhjckij/7f0QB9x4VTLmONFITF2TSu1lTQ80OdbYiDJkZZN8
	23E2Fi5bjr0hokWYTFV2MPBsLv2oTrlgAd4X8nnAxzGummFbTmICwCNYLIMhe/z2YUJ8
	aBuWuRfXzEVGQVkBKUTDvu1BkU76OeGLiDhxEtqJ9WZK/mCt+Lat+muGCX4radGgnl2W
	LPGr4rRSvPW6uBKkodf4x8Zqal/M7Wbv5hlOV7e4uR1AEkNnr6iGtE6d05F7dZwgAW+C
	B8pQ==
X-Gm-Message-State: AEkoousVeRIkRGLKldnu9xQXhkUu3gHtBxdKfmJdFLwIL03e6SeWVH7tXp3QX26v98YOPKHx
X-Received: by 10.28.156.213 with SMTP id f204mr18147712wme.86.1470143178273; 
	Tue, 02 Aug 2016 06:06:18 -0700 (PDT)
Received: from flashheart.burtonini.com (home.burtonini.com. [81.2.106.35])
	by smtp.gmail.com with ESMTPSA id
	r67sm2969468wmb.14.2016.08.02.06.06.17 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 02 Aug 2016 06:06:17 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Tue,  2 Aug 2016 14:06:15 +0100
Message-Id: <1470143175-16752-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.8.1
Subject: [PATCH] maintainers.inc: remove augeas
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
X-List-Received-Date: Tue, 02 Aug 2016 13:06:23 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-poky/conf/distro/include/maintainers.inc | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
index ac11501..f264440 100644
--- a/meta-poky/conf/distro/include/maintainers.inc
+++ b/meta-poky/conf/distro/include/maintainers.inc
@@ -48,7 +48,6 @@ RECIPE_MAINTAINER_pn-at-spi2-atk = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-at-spi2-core = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-atk = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-attr = "Chen Qi <Qi.Chen@windriver.com>"
-RECIPE_MAINTAINER_pn-augeas = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-autoconf = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-autogen-native = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-automake = "Robert Yang <liezhi.yang@windriver.com>"
-- 
2.8.1


