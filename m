Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3EF2E00D89; Thu, 18 Jul 2019 08:28:17 -0700 (PDT)
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
	*      [209.85.221.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA753E00B1B
	for <poky@lists.yoctoproject.org>; Thu, 18 Jul 2019 08:28:14 -0700 (PDT)
Received: by mail-wr1-f65.google.com with SMTP id 31so29211532wrm.1
	for <poky@lists.yoctoproject.org>; Thu, 18 Jul 2019 08:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=iKydbmCfdrI9Hw1zyqRDr8JBFRE3KO6Kl+aKtRRmnEc=;
	b=FEaNxikBbFdLYINgRql5trlH83TTSWACbSYd0/SEd4sC1hvjFfUxeSBcNSShUQoCrA
	1Iscqb4izeF3g4rzu27gVsDpgUD86g93BZGsFq0FPXNrY5xnFOqQKFw4KoaKIN0kuvmQ
	AuAai/D3jazAGxljCrG4WMpMJwK8VE4vz1GvQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=iKydbmCfdrI9Hw1zyqRDr8JBFRE3KO6Kl+aKtRRmnEc=;
	b=PBv89WZZZRD6hdtf/5l4f8BXAh6m0vgo2kjnowdrc0C107VvozykN7GAjSWpasIMaY
	7TH7k3KQSaDkUvdZf5lzAc1NbaQCcNapmDlWY8IIuDjJVDdUwjE/LIWxTviXYWH8d3rE
	ijP9I6zgjWYf/IrhGtmENf9sUPF6P9zf2Bt80qPIJvG6JRWv11OHMdtuSeo+cBxhTx9s
	Kui6cERqR3GzZLEhoWbLro4HB0UXZB8Y5O09oTn7q8286vnz4n7XFOVwqA24f59bR/QV
	J+vbsAoAMdLJ/j/tAOXGlBGvSAFVDt+V7bQYvrk5a8GySMlJmZ7CDeXfMzl/D1MUFa38
	2LcA==
X-Gm-Message-State: APjAAAULzfIXacDG6sASWisc18lbWOmAyS9nzyxlmqrlHiDAppPq1Fc6
	kYL2AIvFmNCQwWa+vXN1E8PioHyD8r8=
X-Google-Smtp-Source: APXvYqwud6GiWpX49tODdsumCnkuOlpWoEUOs+3v1zDuDjG61vWWEO2bcZYIxnyYPpRThOtREkwo3w==
X-Received: by 2002:a5d:42c5:: with SMTP id t5mr13289281wrr.5.1563463693929;
	Thu, 18 Jul 2019 08:28:13 -0700 (PDT)
Received: from hex.int.rpsys.net (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	o6sm51236868wra.27.2019.07.18.08.28.13
	for <poky@lists.yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 18 Jul 2019 08:28:13 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Date: Thu, 18 Jul 2019 16:28:10 +0100
Message-Id: <20190718152812.29264-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [PATCH 1/3] poky-lsb: Drop features already in poky
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

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky-lsb.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky-lsb.conf b/meta-poky/conf/distro/poky-lsb.conf
index 5c7e2720aba..48ae2d373cc 100644
--- a/meta-poky/conf/distro/poky-lsb.conf
+++ b/meta-poky/conf/distro/poky-lsb.conf
@@ -4,7 +4,7 @@ require conf/distro/poky.conf
 DISTRO = "poky-lsb"
 DISTROOVERRIDES = "poky:linuxstdbase"
 
-DISTRO_FEATURES_append = " pam largefile opengl"
+DISTRO_FEATURES_append = " pam"
 PREFERRED_PROVIDER_virtual/libx11 = "libx11"
 
 # Ensure the kernel nfs server is enabled
-- 
2.20.1


