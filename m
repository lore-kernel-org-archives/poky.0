Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B71CBE00DA9; Thu, 18 Jul 2019 08:28:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA646E00B8E
	for <poky@lists.yoctoproject.org>; Thu, 18 Jul 2019 08:28:15 -0700 (PDT)
Received: by mail-wr1-f66.google.com with SMTP id n4so29214267wrs.3
	for <poky@lists.yoctoproject.org>; Thu, 18 Jul 2019 08:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=from:to:subject:date:message-id:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=8sjXPEdhhgPqpoX3LvIeH0B5zTpCg/t1b8QAzj0lviI=;
	b=ie7NHGfGpjt8rzoM6FcpGYu5kh1jge3bwGG8EVSKARIat4P/hD0GZ7oGyTgYdbSkmI
	eh5mE40rHrpdeTxkkr9VKQn3VaUnzN5P79/BemVA5V2QkBa/5bjRqgeW3huhBCk2RWah
	4FCrjgc9j4Y8T6FMxJLKv0tWpfmzzoQD4VCN0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=8sjXPEdhhgPqpoX3LvIeH0B5zTpCg/t1b8QAzj0lviI=;
	b=Hs1cnc2XyuPDIl8FF3zSpr/KTsWpRwh+i6qAszXOKUDycHeCkF9UKSYbhZlZdhbUgY
	0VAtrOeiWNZo6/RV4Q935BvtvcRMUHNxHL7C3c4VNLAsfiIPJeKPGDUS36r4nrr1jDsY
	yT84lctHT5dnyTu62QNuMw/+R+PjiDOdilsyK5Wt3QZfGgbB/TbFQtXhmSJAkFC/Nkaf
	EjP6v06da1PGV81L+hxPeFtWblvTHtNGM/4mxk0KtGWf385/0Rnd49TjZatLHfp483L5
	BpGszeXcEl0HjXtBYVKwJMjoT8/RlXQuuDfMjsmu5ROpICPlW6zX7ma06viJiUu/M2AW
	xS1w==
X-Gm-Message-State: APjAAAVZYDcq7fMSHak5qhmBYH6LVuNoeX5TyY6G3Ni0nTgimtmLR836
	3F0vdRSY/JPfr1c3ED9qnwdOs9gQnpU=
X-Google-Smtp-Source: APXvYqyXWjXlLUTZA5mz9zs4l1WaZoBfceupRmfoZw9kgYif1d7rhPXjbUcBgL/GMFBu7+/KDQ81HQ==
X-Received: by 2002:adf:f088:: with SMTP id n8mr7065362wro.58.1563463694690;
	Thu, 18 Jul 2019 08:28:14 -0700 (PDT)
Received: from hex.int.rpsys.net (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	o6sm51236868wra.27.2019.07.18.08.28.13
	for <poky@lists.yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 18 Jul 2019 08:28:14 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Date: Thu, 18 Jul 2019 16:28:11 +0100
Message-Id: <20190718152812.29264-2-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190718152812.29264-1-richard.purdie@linuxfoundation.org>
References: <20190718152812.29264-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Subject: [PATCH 2/3] poky-lsb: Drop libx11 PREFERRED_PROVIDER
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
X-List-Received-Date: Thu, 18 Jul 2019 15:28:17 -0000
Content-Transfer-Encoding: 8bit

This is the default since -trim was dropped back in 2012 so this extra
configuration is pointless.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky-lsb.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky-lsb.conf b/meta-poky/conf/distro/poky-lsb.conf
index 48ae2d373cc..9b36c87c48d 100644
--- a/meta-poky/conf/distro/poky-lsb.conf
+++ b/meta-poky/conf/distro/poky-lsb.conf
@@ -5,7 +5,6 @@ DISTRO = "poky-lsb"
 DISTROOVERRIDES = "poky:linuxstdbase"
 
 DISTRO_FEATURES_append = " pam"
-PREFERRED_PROVIDER_virtual/libx11 = "libx11"
 
 # Ensure the kernel nfs server is enabled
 KERNEL_FEATURES_append_pn-linux-yocto = " features/nfsd/nfsd-enable.scc"
-- 
2.20.1


