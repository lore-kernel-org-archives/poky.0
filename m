Return-Path: <davis.roman84@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBF4EE00D6F; Sat, 15 Jun 2019 20:33:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (davis.roman84[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.195 listed in list.dnswl.org]
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
	[209.85.222.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B466E00994
	for <poky@yoctoproject.org>; Sat, 15 Jun 2019 20:33:50 -0700 (PDT)
Received: by mail-qk1-f195.google.com with SMTP id b18so4216631qkc.9
	for <poky@yoctoproject.org>; Sat, 15 Jun 2019 20:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=ka7Gf5UeLvDbF8nln7IoH8T2vRUMRYUwLh4DfO6h4/c=;
	b=SCP/jLaECleTOVEazBlg8GqnNgqUd9NO6NPBzp4NR5O4dYsK6kg1v26GCCGbHTlhv2
	kGznExrDNzpYQbY6MRs07KlEJQR4RF8/snDdwWYpl/5n7zjDvVUzksdZ6R8mti88/OWA
	lIZgxEJZCBou1ViqvXy5EKq0tkxceWDMCe+xfNnKsHjkUeNMKe9Qir9eAV8U5mnyGrx8
	uox5wcjGZ4VRI6fD6dG2Krcgu4UMMLGz/fadAH+pqO+kNfun3VZTg4Bz59mGBmjO+zEP
	ZU0PX33J1HoIlEPe8ycBTgZE2pNHjMhivj6OWUqLM+gy/QOT2Z8UGBhcFJyO9guHMeQc
	+Chw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=ka7Gf5UeLvDbF8nln7IoH8T2vRUMRYUwLh4DfO6h4/c=;
	b=UCTSyJlVUAP7em6N1CnECjlLKKTBlV2At0lCguaH4U5TY7F16ctZmGl9PgmDl+335F
	1YOePOsRZHZ6umJ0AnE1UKIaKoghOIUWjnB2CANuBFWv1kEHUede8jVR2Bf1Wzb4VPtS
	0F8hccVK2ox7TJZD8uocZr6oMqtRWZFfh0DTpsb4RvP2CngsSnfLNQIzwkqiATdPYBP1
	XDIs7DqOsRAkQsgdvs18DmpRuHE7xshF2scFxcFAF5NTey/gl7AAk8hoyVK1EcQfcxXT
	5zbhrohqrOdHCiSiMv/nbL2AF+XRbDB5IikRHs8/cJu3mfT8LqP2Dpf+5VfJhVsgB8Ak
	Bzjg==
X-Gm-Message-State: APjAAAUKmq/ldz21IsmiSDgL1EK2n3CBE5+4wZP40y5MP4fKI78idGEF
	FJ/OsKNWT0WLzb3I0lMWxlGiPbR7
X-Google-Smtp-Source: APXvYqyE3JJXpXkKArG68COkIBmeIKweWYrVfU5iMZOSlCABuYtrPuonLOh4zPRalQnxBpVD+FJHAw==
X-Received: by 2002:a37:a413:: with SMTP id n19mr30078189qke.98.1560656029461; 
	Sat, 15 Jun 2019 20:33:49 -0700 (PDT)
Received: from localhost.localdomain ([149.4.68.110])
	by smtp.gmail.com with ESMTPSA id k7sm3375130qth.88.2019.06.15.20.33.49
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Sat, 15 Jun 2019 20:33:49 -0700 (PDT)
From: davis.roman84@gmail.com
To: poky@yoctoproject.org
Date: Sat, 15 Jun 2019 23:33:46 -0400
Message-Id: <20190616033346.27898-1-davis.roman84@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Cc: davis roman <davis.roman84@gmail.com>
Subject: [PATCH] include: Fixed spelling mistakes.
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
X-List-Received-Date: Sun, 16 Jun 2019 03:33:51 -0000
Content-Transfer-Encoding: 8bit

From: davis roman <davis.roman84@gmail.com>

Signed-off-by: davis roman <davis.roman84@gmail.com>
---
 meta-poky/conf/distro/include/poky-world-exclude.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/include/poky-world-exclude.inc b/meta-poky/conf/distro/include/poky-world-exclude.inc
index 1a2dea5859..b0edc120ca 100644
--- a/meta-poky/conf/distro/include/poky-world-exclude.inc
+++ b/meta-poky/conf/distro/include/poky-world-exclude.inc
@@ -1,4 +1,4 @@
 #
-# Things we exlude fromw world testing within the reference distro
+# Things we exclude from world testing within the reference distro
 #
 
-- 
2.20.1


