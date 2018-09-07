Return-Path: <tossel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C74FE00953; Fri,  7 Sep 2018 05:47:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tossel[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 446CEE0090C
	for <poky@yoctoproject.org>; Fri,  7 Sep 2018 05:47:38 -0700 (PDT)
Received: by mail-wr1-f67.google.com with SMTP id j26-v6so14874602wre.2
	for <poky@yoctoproject.org>; Fri, 07 Sep 2018 05:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=66R9kiKsNmQaFXh0b5Pj9PH9Q87xLqvSF/g1VdXn1WA=;
	b=tGGiUQIKTXQxke9xtvuEYFHBbhzFPZe2KCSJo7v0gpKhRPhH/ebmc0uAmrbUdX8ttL
	4Seu9QvxlW7D5bgKhnAFyhKKwD0H19DlkwvTVJsEKgXqeJGnb8RH4wvlkylDtj/qHGUf
	TzkfoXMdoYJEeSTlrgQWEU96YzhkI3WxJJTm2JaE/47HzEqqFDPZpI0fsPq2AqSpjfOI
	koJ/uY3nmH91CXmMRACoJ1186Ij7P4VXNXGwFPw9SbCwkHvT2pJH44PSEA6b1SjhsoiH
	piz1OKKiMp2evcW6UmzN1LDXZ2+rQqrtv5jYqBbVFa4BT1+/6Q4/T8zzvCVIHlR45ju9
	cNCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=66R9kiKsNmQaFXh0b5Pj9PH9Q87xLqvSF/g1VdXn1WA=;
	b=l1QuleXqRp50iknAcX77QctCnGY7GjdJeoVYVOzFhBN4jyiU5CcPC3cbGcUOTJ75c7
	smPY8Ec3AX5MEIv9Sjd6syNmTAocsizCt2nUiVuQSuJwEEqZie6gO7kuFq2S8Wyt9oCD
	NrYrfQSfkFUM2nFBPBMH2tX/Tzgtv3w6Jm5YExS0qSeiSVv1inhVrtCu4brTda06eipx
	Uk3inw8hmhIeqFO1iSYn+8YhIm8zoFDRJE8jn7EnKh2EH5IJja9vq3pej56Ne//I6A/1
	m34xYIxbArnDJXIBgsVZsbSLyX8qW9nmLrCsxB9KzFdCwxsxPaWJ78/gHkLzrH4IdCQo
	LH2w==
X-Gm-Message-State: APzg51C9/S9VL+ckwUFQM1kWy1D1et28SThJPuST6Pd0O50BRkI/x1Ud
	5Hv7o1MRkYDp3U140/4QMCo3RALh
X-Google-Smtp-Source: ANB0VdaFLdcFYnZYdVSYf2VkvNboeGkH7qa/8sHxtS97AEqCDl/Ny/RAvv9zs2Z5BU+csx+Z1nGwtw==
X-Received: by 2002:a5d:4684:: with SMTP id u4-v6mr6367874wrq.76.1536324457174;
	Fri, 07 Sep 2018 05:47:37 -0700 (PDT)
Received: from marvin.internal.advancedtelematic.com
	(p57bf9f95.dip0.t-ipconnect.de. [87.191.159.149])
	by smtp.gmail.com with ESMTPSA id
	w18-v6sm16230586wrc.38.2018.09.07.05.47.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 07 Sep 2018 05:47:36 -0700 (PDT)
From: Anton Gerasimov <tossel@gmail.com>
To: poky@yoctoproject.org
Date: Fri,  7 Sep 2018 14:54:00 +0200
Message-Id: <20180907125400.5398-1-tossel@gmail.com>
X-Mailer: git-send-email 2.18.0
Subject: [PATCH] systemd: set split-bin to true by default
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
X-List-Received-Date: Fri, 07 Sep 2018 12:47:39 -0000

Not doing so will make meson chose where to install init binary
based on irrelevant features of the build machine.

PACKAGECONFIG option is defined to override this behavior.

Signed-off-by: Anton Gerasimov <tossel@gmail.com>
---
 meta/recipes-core/systemd/systemd_239.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta/recipes-core/systemd/systemd_239.bb b/meta/recipes-core/systemd/systemd_239.bb
index 84906f97b7..55e3986935 100644
--- a/meta/recipes-core/systemd/systemd_239.bb
+++ b/meta/recipes-core/systemd/systemd_239.bb
@@ -168,6 +168,7 @@ PACKAGECONFIG[time-epoch] = "-Dtime-epoch=0,,"
 PACKAGECONFIG[timedated] = "-Dtimedated=true,-Dtimedated=false"
 PACKAGECONFIG[timesyncd] = "-Dtimesyncd=true,-Dtimesyncd=false"
 PACKAGECONFIG[usrmerge] = "-Dsplit-usr=false,-Dsplit-usr=true"
+PACKAGECONFIG[sbinmerge] = "-Dsplit-bin=false,-Dsplit-bin=true"
 PACKAGECONFIG[utmp] = "-Dutmp=true,-Dutmp=false"
 PACKAGECONFIG[valgrind] = "-DVALGRIND=1,,valgrind"
 PACKAGECONFIG[vconsole] = "-Dvconsole=true,-Dvconsole=false,,${PN}-vconsole-setup"
-- 
2.18.0


