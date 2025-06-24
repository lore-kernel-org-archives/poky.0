Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B5C7EE30
	for <webhook@archiver.kernel.org>; Tue, 24 Jun 2025 15:00:37 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web10.535.1750777228748611374
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Jun 2025 08:00:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lBhZpmMi;
 spf=pass (domain: gmail.com, ip: 209.85.208.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-606fdbd20afso1113664a12.1
        for <poky@lists.yoctoproject.org>; Tue, 24 Jun 2025 08:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750777227; x=1751382027; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mv9l2LqSnHcAaG3gz1qTTCL3NfqsIerGaahS15zU6mo=;
        b=lBhZpmMi6ReCjJu0jqUXjrTYOFUD0J53PvbFVzCyoV6lp2Wj+Stl9+FqH+6pRm6gwT
         TwbOVLjzZmzjHdDWFE26zfdBCK4sLP98YvhUDuzRVdNAIycecvMxv6uRYzYmVxEgvQwV
         58T0JfCCc6kRdliSysN40JOZWNruOcCZhyCKcmDeURB9oIwieEQ131D60ZYM6+XPR211
         2dxLj9aInrYM/ko04LuDZVt75r5sla/x7s/suxING+vFRDhE5CpQhThcN316hqCX/s/N
         psijD5dbwN4azmcL8wi4SsbsNqQCUgIQXDnnzo/x0/40NDm+yjRYsUN1wcC5KmFAFSAD
         cfnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750777227; x=1751382027;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mv9l2LqSnHcAaG3gz1qTTCL3NfqsIerGaahS15zU6mo=;
        b=HDCnCnSxs4UA/rRCwdyLpOyar/EtLf25Wmn1gQHrLPQ2FK7QHCM+Crbg/deC6etk4j
         x+vjt104OKoFK/ErVEy0RIyQWxGsrTgBTe886E4lEyKiRLrASzGPL2EEyhvHws/KN8C+
         SpmWVLXARYlP2qr7PRYcyfBmTcKgILcT0ooLoZEId/YWeOvQ9DW1q22M2Hszz69/Econ
         WdZIao0Etvv1v7dQ1Ys933Zwgynii1v5eMqLmiJ98pIsk2SSKv4GZwRcpKo7QOxRoDe1
         BH2ZvJA+gdgPFPfyn9GdZWmwUuGOdjIk+4NK9Ch2bHK0FjYSCedYz4RoBuYv+Omfitbp
         f1bA==
X-Gm-Message-State: AOJu0YyiHZhv5Eq8P87rWc1yO1bbwV0xEl2J4NMV+NYMPgld4oAudTey
	QuQpllz2LIvPQxzbTI8uy22AT2yKlUIQa9RQNyW68sGaKC6T/rRHXy+phi7+eA==
X-Gm-Gg: ASbGncu9Ow0gB4uliRvVCKrJYyKd+5OuQ808y2wpiRK8cFiJ9Gnae1nv1hOPjS29jR3
	T0es8DkN4VbmD5FuDgZ0sCZhGtwaKAKfQANQNb9f7EBAiE2CfBO+Zm3ka62L6/C6/sVeZK+qlJV
	PHljl6au1cVRgjBUeylrTCkWs5CJ/pDObCpCtAat5C13G4AfzAYNVOUAMAb0NmK4MxD5g33rMVk
	TyfZ734BCWgBRyXFtWx/WixBt+tsJPtlLhpeU8JfGl5TDR8QjRHo4Yqhz6A4tSU1wDwKJuPgyME
	BcUyk2uQwafpXrhcVg1qRbjfKaReOhwAJVOZAR8oA1AHRxCVdQrb+ZstAG8kGtdznK7xilNEmeM
	QjGAZoNLgjBACzHYyWeRXShU=
X-Google-Smtp-Source: AGHT+IGjQBtSdj8PI2x8kqYNOPlqKWtMSYIgKqzg8ea/ixO+zqE+Jg9pYLS888NQGYAvDFl3848aOQ==
X-Received: by 2002:a05:6402:2548:b0:608:f493:871e with SMTP id 4fb4d7f45d1cf-60a1ccb522fmr15718803a12.14.1750777226938;
        Tue, 24 Jun 2025 08:00:26 -0700 (PDT)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c2f482e81sm1163476a12.53.2025.06.24.08.00.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 08:00:26 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH] selftest: move pokybleeding selftest from meta to meta-poky
Date: Tue, 24 Jun 2025 17:00:21 +0200
Message-Id: <20250624150021.563937-1-alex@linutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 24 Jun 2025 15:00:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13674

meta/ is 'owned' by oe-core and meta-yocto repo should not be
putting files in it.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 {meta => meta-poky}/lib/oeqa/selftest/cases/pokybleeding.py | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename {meta => meta-poky}/lib/oeqa/selftest/cases/pokybleeding.py (100%)

diff --git a/meta/lib/oeqa/selftest/cases/pokybleeding.py b/meta-poky/lib/oeqa/selftest/cases/pokybleeding.py
similarity index 100%
rename from meta/lib/oeqa/selftest/cases/pokybleeding.py
rename to meta-poky/lib/oeqa/selftest/cases/pokybleeding.py
-- 
2.39.5


