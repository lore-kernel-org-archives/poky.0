Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F39E7E00D11; Mon, 25 Sep 2017 23:55:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.177 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f177.google.com (mail-wr0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08FF5E00C89
	for <poky@yoctoproject.org>; Mon, 25 Sep 2017 23:55:09 -0700 (PDT)
Received: by mail-wr0-f177.google.com with SMTP id m18so11675353wrm.2
	for <poky@yoctoproject.org>; Mon, 25 Sep 2017 23:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=QjzlIHPyx41RsZyCJzqwQQCRLGNpyMnidTYqrNHZa58=;
	b=1xfczbu5RUGw7dmy3NmRNWprK2tYfTAxlCnzK9qHzd53PPECfK94c/MhraxFkkl2yc
	9C1jW3hdwtKb7pmMcwULdEVGvXr5Ff712ZwW3nSF03TGv15vQMBkWIjGcGHwVM3Cv2IB
	cHAGgE2dn+P3Tbyhfj7cRaOTfvZa6WfKp4CRK/nqlGJwDEe+YTWz5i/6pLedM5qu3pjz
	66n0siyqjvSe4UfhE1qNvc/MKgA69//cWSge8X+7AGLOJT4EkQlRPu0CZHbxHBSNPgNj
	Xzgts2HJDDEh3DeTiHSrtbkWVHnSzGeKdhKBnVdZZ2Xfl3c/0ErumTSdOofjqKogMEdQ
	9r0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=QjzlIHPyx41RsZyCJzqwQQCRLGNpyMnidTYqrNHZa58=;
	b=mjLLgsT7fEpNlKZSkkB9yjSGE5/QZQwwcxnJK5+le+qexJl3gDVQ8An+7IBqdApfOe
	UO26wNmqhmoWdYjWJzx9cgPS+WJ54IC/569HDF5WDTpldTCPcq2Czx6iY9yPFBzuGJuO
	XZ673sSocUwvkwJjZAyolDkCJU/91NWo4C7n+jeI6c9lBCYvmrDOYwcrwOnc5AjKQEr1
	pUjHcB4e0n48mCOh6UYgqnmZEIR42DEcZwxtTtVBMRIhXpXyd+xGd6rUwjMIq1f7sqXB
	xPiMKScrSiT2kw+Wu3Z41ie+WNwtY55O56hB+kLNnzEK5BOSMKJHTPlxqETq8YOPthf+
	7nvw==
X-Gm-Message-State: AHPjjUgMpkUymhLiJTvDNeWw3H/xv89yHg1mn7a/W3aWKXzFjbuhUJGc
	OLuq7vHA0nU294GDRKovJkOi+dBKyrI=
X-Google-Smtp-Source: AOwi7QC6Y02ekW/wmT9BUbv3ZzZZfNc4VT5/O1Sjbs8QY4T17eQb0J8QCIOtk4Zs/nPDCkw+1L1HKg==
X-Received: by 10.25.221.206 with SMTP id w75mr2607039lfi.211.1506408908515;
	Mon, 25 Sep 2017 23:55:08 -0700 (PDT)
Received: from localhost (h83-209-191-235.cust.se.alltele.net.
	[83.209.191.235]) by smtp.gmail.com with ESMTPSA id
	t125sm1219671lfe.73.2017.09.25.23.55.07
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 25 Sep 2017 23:55:07 -0700 (PDT)
From: Anders Darander <anders@chargestorm.se>
To: poky@yoctoproject.org
Date: Tue, 26 Sep 2017 08:54:48 +0200
Message-Id: <20170926065448.28361-1-anders@chargestorm.se>
X-Mailer: git-send-email 2.14.1
Cc: Anders Darander <anders@chargestorm.se>
Subject: [PATCH] yocto-bsp: add BBG dtb
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
X-List-Received-Date: Tue, 26 Sep 2017 06:55:12 -0000

As 4.4 is the lowest kernel version in oe-core, we can add the dtb for the
beaglebon green to the list of dtb's to generate.

Signed-off-by: Anders Darander <anders@chargestorm.se>
---
 meta-yocto-bsp/conf/machine/beaglebone.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
index 4a90ba5..1bdd4df 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
@@ -26,7 +26,7 @@ PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_VERSION_linux-yocto ?= "4.12%"
 
 KERNEL_IMAGETYPE = "zImage"
-KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb"
+KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
 KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
 
 SPL_BINARY = "MLO"
-- 
2.14.1


