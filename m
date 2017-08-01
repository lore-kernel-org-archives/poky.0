Return-Path: <drew.moseley@northern.tech>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF478E00BF3; Tue,  1 Aug 2017 08:37:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.174 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f174.google.com (mail-yw0-f174.google.com
	[209.85.161.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CA2AE00BB6
	for <poky@yoctoproject.org>; Tue,  1 Aug 2017 08:37:54 -0700 (PDT)
Received: by mail-yw0-f174.google.com with SMTP id u207so12307451ywc.3
	for <poky@yoctoproject.org>; Tue, 01 Aug 2017 08:37:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=northern.tech; s=google; h=from:to:subject:date:message-id;
	bh=1Kq4OY1d6G6eAyyIAd+M9dlNpxthzl0IM7WoDCYDrOk=;
	b=dvl1mTiGWMet0jv3hSA/XqREj34zs83HZampijf87UQAUKYuZQ9HUQbYzMw+LxHOeQ
	BdTMmGsmahA+Cuqb/bRlofZgC+mmhREyJkvvak4HasuDTeUY0wP4GaX3N+2o62jjtMIo
	+JMa+IuTXgAxEI7/8FDPONHxbMBD18uqz/r6ASAylFX7TtWRd4GqvC+Gzf4AZRUF8jew
	JwF5N2hql/9LvQADjz9c5VQcXkD7JDaXZ1+jJbQ/FHgufwAYuv80eeDqgxMnjLYUTACO
	KiK9Sl/TAdqgmPP3j5DTDflsnrem3ahO8xTS5GV+dAFjGmyD+Az1Pix5GBGs7IIuKftu
	Zusw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=1Kq4OY1d6G6eAyyIAd+M9dlNpxthzl0IM7WoDCYDrOk=;
	b=KObQbfc82gOvgJ96+l76lfeV/PD94Zc3MIfmrL51xsMIoPYWEd1fhvs3z5DZCAwD42
	8xs5uR+VUZhAhej1YVvylzoJBtvCfwaAKYM24ssUQagbEH3a17y3OqV/Lniv6zxq5k3s
	TKofLdXLTh0ApEJS+3GIdkjWJ6kODjye9Ybr6Ep/Zk+sZDIGYeIfirUTkfSjvCaNnGec
	FPP8HcIBPtwhOYDINyD+1JasBM8ImNGAg8jnaX62L0TB7YJHryDaAu6g7T6EFwLKYYyG
	BlVMSH8QEWOCMtrOKDQ+sFE9X3bXgjY+xqDQeiLXEsQMDonAY7V3OGDejbPR09MxG0gO
	5a0w==
X-Gm-Message-State: AIVw110tok149O+ZXadY7dNaylOzVGpLC4zREb8QX6XHXiTF17fVkeKE
	OaGT9eCmBlU7DX9IzB/1lQ==
X-Received: by 10.13.193.132 with SMTP id c126mr10170342ywd.13.1501601873771; 
	Tue, 01 Aug 2017 08:37:53 -0700 (PDT)
Received: from tobago.home.moseleynet.net (653240hfc152.tampabay.res.rr.com.
	[65.32.40.152]) by smtp.googlemail.com with ESMTPSA id
	x11sm11324345ywa.80.2017.08.01.08.37.52 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 01 Aug 2017 08:37:52 -0700 (PDT)
From: drew.moseley@northern.tech
To: poky@yoctoproject.org
Date: Tue,  1 Aug 2017 11:37:42 -0400
Message-Id: <1501601862-1962-1-git-send-email-drew.moseley@northern.tech>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] local.conf.sample.extended: remove references to image_types_uboot
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
X-List-Received-Date: Tue, 01 Aug 2017 15:37:55 -0000

From: Drew Moseley <drew.moseley@northern.tech>

This class was removed with commit:
    OE-Core rev: 65f27122950a35a67ce39ae4cfe93d0dca6b0dab

Signed-off-by: Drew Moseley <drew.moseley@northern.tech>
---
 meta-poky/conf/local.conf.sample.extended | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
index 0560de8..331fdd1 100644
--- a/meta-poky/conf/local.conf.sample.extended
+++ b/meta-poky/conf/local.conf.sample.extended
@@ -168,9 +168,6 @@
 
 # Additional image generation features
 #
-# The following is a list of classes to import to use in the generation of images
-# currently an example class is image_types_uboot
-# IMAGE_CLASSES = " image_types_uboot"
 
 # The following options will build a companion 'debug filesystem' in addition
 # to the normal deployable filesystem.  This companion system allows a
-- 
2.7.4


