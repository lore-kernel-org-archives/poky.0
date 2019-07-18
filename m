Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F530E00DA9; Thu, 18 Jul 2019 08:28:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.68 listed in list.dnswl.org]
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE53CE00D45
	for <poky@lists.yoctoproject.org>; Thu, 18 Jul 2019 08:28:16 -0700 (PDT)
Received: by mail-wr1-f68.google.com with SMTP id n4so29214335wrs.3
	for <poky@lists.yoctoproject.org>; Thu, 18 Jul 2019 08:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=from:to:subject:date:message-id:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=F0aXcMDIJw4tKqwHhrbr2yDDi9nYQz+uu3gPE9aYHAo=;
	b=Smy/pYigwDYqMWNpUB/nZ5tYg6ubydjCX1tFhb2bJZfXQNzc27YL+XCxa5o/Ntsc1M
	TT+Fvsw81rDJQbYZ5QDyV9FPjJV9kfP+Rzkya0LkTC187xh53igug2lGGZ3bnyPYtcnd
	1IeXADScePBIQMw9lu7PbRCicGO5FZtxA96FU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=F0aXcMDIJw4tKqwHhrbr2yDDi9nYQz+uu3gPE9aYHAo=;
	b=tz15tHuzuK6MLYnES7oDRDN+45cdjcWxylbel5inim+OMHcl8Fz9+3kO1IzZhM2GHX
	79Ia2j4mw0tc+xMUGFUSGuvEt73AsGOziXOi5rLUx0ZVkpQ3qV7Adi3tyon68VRW968Z
	J6nNvOY39T33ByQBKkHwKKzCD5C3p3iqltNdIgm+XAn1Snmn6o1nDuXPmgVs/Ett07AS
	LhO3pUfMCZygFpPVqvlHM4aY78oeTBOWUUsP5O+DqsAHhrR9/+Gz9McXkegAMd6f2GuN
	8DAke0Kkb2x7UyMIXqdbZHVI5lRttlg4cpa+FSIECo5AwaxqYzSA8klO2WcgmBUAOuim
	pC9g==
X-Gm-Message-State: APjAAAVdQ4ZPyqsTlHBcEwNrvMOKP+HZSHbN+/4PrNu8af9qbZJodcH+
	vTRJEWix6tX4lr9M+j4YENYgBmfhoiA=
X-Google-Smtp-Source: APXvYqy9Fbe1Q+pD3SviEGPMIbHo5rTJu9p9jCYbOpyApdarpYnX4r70+zOtk6SLpZsi2hlomVQS9g==
X-Received: by 2002:a5d:4a02:: with SMTP id m2mr49871691wrq.78.1563463695657; 
	Thu, 18 Jul 2019 08:28:15 -0700 (PDT)
Received: from hex.int.rpsys.net (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	o6sm51236868wra.27.2019.07.18.08.28.14
	for <poky@lists.yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 18 Jul 2019 08:28:15 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Date: Thu, 18 Jul 2019 16:28:12 +0100
Message-Id: <20190718152812.29264-3-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190718152812.29264-1-richard.purdie@linuxfoundation.org>
References: <20190718152812.29264-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Subject: [PATCH 3/3] distro/include: Add poky-distro-alt-test-config.inc
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
X-List-Received-Date: Thu, 18 Jul 2019 15:28:18 -0000
Content-Transfer-Encoding: 8bit

In order to phase out poky-lsb, move the alternate test configurations
to a separate .inc file. This is necessary to avoid maintaining this
configuration in the autobuilder config (such as kernel version numbers).

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/include/poky-distro-alt-test-config.inc | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 meta-poky/conf/distro/include/poky-distro-alt-test-config.inc

diff --git a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
new file mode 100644
index 00000000000..081584f397a
--- /dev/null
+++ b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
@@ -0,0 +1,2 @@
+DISTRO_FEATURES_append = " pam"
+PREFERRED_VERSION_linux-yocto_linuxstdbase ?= "4.19%"
-- 
2.20.1


