Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B58CA5FB1
	for <webhook@archiver.kernel.org>; Wed, 30 Sep 2026 08:12:11 +0000 (UTC)
Received: from mail-wr2-f27.google.com (mail-wr2-f27.google.com [74.125.225.91])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.8521.1790755930431527290
 for <poky@lists.yoctoproject.org>;
 Wed, 30 Sep 2026 01:12:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=gpzSBgrZ;
 spf=pass (domain: smile.fr, ip: 74.125.225.91, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr2-f27.google.com with SMTP id ffacd0b85a97d-4843796e373so2924508f8f.1
        for <poky@lists.yoctoproject.org>; Wed, 30 Sep 2026 01:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1790755928; x=1791360728; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=OSLL9EiYzDEEAL2XFICvG2RaQaGPRX1G2LjfP/bbkOM=;
        b=gpzSBgrZSZNg/UF30hGh0nujxxqXEYis1FNPSUE6mWNzasUBioO0phYfDNVfmtAXay
         x883t4NtSWP7JxeiYwOE4FuHh0O25u3izh60RCnt1uZVPiDj4ozwOZFsRAljAPNaiLq1
         nZlb10tu7g2Avc1u6/6e7/IKfz2cH88Qd2ymE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790755928; x=1791360728;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OSLL9EiYzDEEAL2XFICvG2RaQaGPRX1G2LjfP/bbkOM=;
        b=HzbL15T4uXcOVNGh7fdLlkcLmvzaM/foXNG7vuxfvVEqazWWYzuI/byzpGtvf6VdO7
         7rkmCEr5GNhLfTHspSQnyYVlxZdzZHilLNFPREMDD0GKZEtU/PFHybsy1i7TeIAE29Pp
         LkwgVQIbbnP3J7GsOT8oYV/ia5zTRX1YCto0ACELrxEboHbRPHgBAbsoDkAe5tjShhFZ
         94VGKMO0tnujvohjVPre5E93+gUEnP3To22sjIrlAydcKh5B7WW0Cnn/+Y/qzybweAhu
         rd4JSI+WE3Rjv8Vur3GOOw+1+PBEJjPkXty5q+nSwD1b0fTQUumxP01DV5EULo6aisI7
         WswQ==
X-Gm-Message-State: AFuF++kv8xVGj7ELwdbMqRSgQgqZtV3C7IH7qtK4BBkHrNfFN4CN8Nf+
	eM5wp9UKoyDYAgSudX3BopeEFSoj0nB8ZmobTClHGI368pGGAJ8dqcNIbh6possXGnYPWpCIWeu
	7+8P6Kos=
X-Gm-Gg: AYBFou3JXwqCxeWh60+Ja2yAwXOSpRrCW49pOAwNspPq1alB/PbmG+bOT+KfaouDw5c
	ICA5IcTxrCQNjt3Tw+AjJLfchbvVF7AgbN3NL/3pS1t5YdSldAzOTQrrFQ8BJmepzHztLaz73x5
	vNSqvNUfEBA3CoI6y+verM/0M+59MmozKkP1GqnV1tp8xPbQhDwABCms+G5neWVRywjB3nah70C
	JATgAbHWaCGUF3LnUYOv4Bf/EmdfB5BbqlxY5vKwTn119O/SpGXU87s+fw8I8lQG8d4NbHwLPWW
	4K8ASKTNkqvWmxp5/RlAciFOMO6H8+09tj1XtIfshoZEOYLoW9whIdwy63o2m7AhhuVkNH9PQfa
	jvwEI9P0uagAvbUt0ghnQrK871oEeIZ2LmY7ADSUGClBDn9mGJyLO8naf4T2Ah67odU+WoDeQ9w
	dQklqlXluTfA4damGuIAwntI/o82UtuA6haYKvqI7njKCZSl7hWJRIrIqHQ9uZ8tSpAIVle38UO
	PQMtGRGqzrOSu/1+JGpmwF6y9zwpjZmP36Umb2B5hSt9JT2Tg8TJSONhC3RTLFZp5BkW091wHbp
	aHMxcA==
X-Received: by 2002:a05:600c:474f:b0:49e:6e7c:d895 with SMTP id 5b1f17b1804b1-4a01aff4fa9mr8792525e9.26.1790755928523;
        Wed, 30 Sep 2026 01:12:08 -0700 (PDT)
Received: from FRSMI25-LASER.idf.intranet (static-css-ccs-204145.business.bouyguestelecom.com. [176.157.204.145])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a0174d5191sm37748075e9.3.2026.09.30.01.12.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2026 01:12:08 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>
Subject: [meta-yocto][wrynose 0/2] Pull request (cover letter only)
Date: Wed, 30 Sep 2026 10:12:06 +0200
Message-ID: <cover.1790754952.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 30 Sep 2026 08:12:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13970

Those are the patches from the last patch review:
https://lore.kernel.org/all/cover.1790495081.git.yoann.congal@smile.fr/

Passed a-full on autobuilder:
https://autobuilder.yoctoproject.org/valkyrie/?#/builders/29/builds/4811

The following changes since commit ddeeba423ff0565b8f1192f16072b5993d5ea6a0:

  linux-yocto/6.18: update to v6.18.48 (2026-09-08 11:47:08 +0200)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/wrynose-next
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/wrynose-next

for you to fetch changes up to e84a6c2922e8782961ddca05fa27f3be0078f5ad:

  yocto-bsps: update to v6.18.52 (2026-09-23 17:33:17 +0200)

----------------------------------------------------------------

Bruce Ashfield (2):
  yocto-bsps: update to v6.18.50
  yocto-bsps: update to v6.18.52

 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.18.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


