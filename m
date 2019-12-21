Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.2032.1576959876970961224
 for <poky@lists.yoctoproject.org>;
 Sat, 21 Dec 2019 12:24:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sledApQC;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F247E012F8; Sat, 21 Dec 2019 12:24:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.214.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DE85E01250
	for <poky@yoctoproject.org>; Sat, 21 Dec 2019 12:24:35 -0800 (PST)
Received: by mail-pl1-f193.google.com with SMTP id g6so2615069plp.6
        for <poky@yoctoproject.org>; Sat, 21 Dec 2019 12:24:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=eO10m01L/tkpf/gw9Dadd8YXmFkiA2LNww5KnHLYk+Q=;
        b=sledApQC761nLfQDTLWlXAyPD5YdQRvu4hhKE1C8YRibIXH4EUCZhcltuEPhF1d8vR
         8cQprbAg8BGA1UO8olzQRLaxEt7GieSowq+W7OqBMCWqZgv9BizrmElgpRCsF/x+lfcG
         xXVEvec8RWY/6fe88vhaZQ9Ldlb7J+XNOj13p/wE4raOsM7o+KNO8aSU0m6Pex37MDQQ
         DEdJbFwKpfa9U5y15jPPg2wvVDoPrnjbv713wNPZEkXJKVDDtGVrsxJnUqTOokX0drsm
         g859Wg0itr2kV1y1Z4V/Wj87dNjZ0wcj+nv946o7m9RzxKlwQT61uvmdLnOKndcBHKhM
         PWHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=eO10m01L/tkpf/gw9Dadd8YXmFkiA2LNww5KnHLYk+Q=;
        b=BHm/dZMvF4SrFueKTmxWlvcFNZccyHEXBppF8oxNSxyCULHHpht2ZG+qvOFr5munoq
         ITC5TRDUS1s70B7I5/G9vMJcpE2pG6GezhJCANKjSQvzIwGPcA6u2g7xHMi0ZkXIS2G8
         Ns7hAXJgsjjzRUVmBhglY9LKBKDtsQE9JAx3epJfmmcoEHXyLzEPJXPiNuKldUCNbs9l
         BVbrOvnW/sSd9Sne1h51/5WIb0i9EHPiGq3NMxaSlcUR506T3E4noHPDXK1aPvkLbC86
         F3gtrF0q3u08xeGPGePGDryWqNLLmGwRLHGw/jWti8B2BdAeudC0k+pUcknarFEEKh5g
         b7XQ==
X-Gm-Message-State: APjAAAWJsyFcZ+ASLDYviv/zVi7S7cJbuPUDY3H4h1A72/pey9Hc0uCt
	cIyTFmWEcggx/lYpML+ZELuBa9SSri0=
X-Google-Smtp-Source: APXvYqwP3hVQsFMPinIaMxHu+HVL6rXWNyycrRL9eYwwyh2HUPMnyc6fHSNl+RsW+DIKuXxyv41QVg==
X-Received: by 2002:a17:902:8342:: with SMTP id z2mr21675815pln.181.1576959874646;
        Sat, 21 Dec 2019 12:24:34 -0800 (PST)
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:44f3:9abe:c0b2:9d4a])
        by smtp.gmail.com with ESMTPSA id a69sm17314885pfa.129.2019.12.21.12.24.33
        for <poky@yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Dec 2019 12:24:34 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: poky@yoctoproject.org
Subject: [thud][PATCH] linux-yocto/4.14: update Yocto Bsps to 4.14.154
Date: Sat, 21 Dec 2019 12:24:32 -0800
Message-Id: <1576959872-23877-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-kernel/linux/linux-yocto_4.14.bbappend   | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
index 6449538..bbe6eae 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
@@ -8,11 +8,11 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "b53319c5302a195ae3c156dfa2dc1a6badc91d30"
-SRCREV_machine_genericx86-64 ?= "b53319c5302a195ae3c156dfa2dc1a6badc91d30"
-SRCREV_machine_edgerouter ?= "326e296f237347e965a38acb34f09e594430b0c6"
-SRCREV_machine_beaglebone-yocto ?= "1b8c86329c9dbb10b8fcaeb2dceb75680994cd84"
-SRCREV_machine_mpc8315e-rdb ?= "f26672ec1f164b0f2a15d629128a91093f971bdd"
+SRCREV_machine_genericx86 ?= "57278e88a6b0f7c6230f7429cab7e74229f2b7ce"
+SRCREV_machine_genericx86-64 ?= "57278e88a6b0f7c6230f7429cab7e74229f2b7ce"
+SRCREV_machine_edgerouter ?= "16d624ede7ca9f71331b626685435ffee022dd32"
+SRCREV_machine_beaglebone-yocto ?= "2e7b9777f352f70e2e9a82d8c403d3ea88d0bde3"
+SRCREV_machine_mpc8315e-rdb ?= "9ff346785bdf42767b4002c41f5692f0a98b7480"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.14.143"
-LINUX_VERSION_genericx86-64 = "4.14.143"
-LINUX_VERSION_edgerouter = "4.14.143"
-LINUX_VERSION_beaglebone-yocto = "4.14.143"
-LINUX_VERSION_mpc8315e-rdb = "4.14.143"
+LINUX_VERSION_genericx86 = "4.14.154"
+LINUX_VERSION_genericx86-64 = "4.14.154"
+LINUX_VERSION_edgerouter = "4.14.154"
+LINUX_VERSION_beaglebone-yocto = "4.14.154"
+LINUX_VERSION_mpc8315e-rdb = "4.14.154"
-- 
2.7.4

