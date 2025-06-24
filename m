Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45E52C77B7F
	for <webhook@archiver.kernel.org>; Tue, 24 Jun 2025 13:50:29 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web10.8629.1750773022970144703
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Jun 2025 06:50:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LOcEglwm;
 spf=pass (domain: gmail.com, ip: 209.85.221.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3a548a73ff2so464707f8f.0
        for <poky@lists.yoctoproject.org>; Tue, 24 Jun 2025 06:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750773021; x=1751377821; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TrI24y/vg3TgoBt4LRhm0p4L4qcY9KBcWQoE4F538Mk=;
        b=LOcEglwmyjS8RcaLc58i0rpzf+QCK+ftUAZfnrALRJzvsx2tmtACWrz5T5OuueSSmt
         Gqd0H35I3Ku2bPWZkcOIuz17tILcCo8fP2UWZUchPRg272HcEPELKGYSPcnwrQ2WfyLq
         m+ld6iulNe841N3H4enQTfrXly2YXMN9ZuahYhANcEfgWcDd0O/OL7QY0IGUBcxGqNy+
         zJXDsSkEReDkqSJ6CIW8bHY4wv7foN7V9x6pyAh/xChb0fo6mQz3SXONvaYJDlYRucii
         x9gae1Z56HIhu0Riptisaf8HHcfhgpv3Bwfh6zfDL+iyF2XV3supQKpDJF8IULGu8wvr
         t6Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750773021; x=1751377821;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TrI24y/vg3TgoBt4LRhm0p4L4qcY9KBcWQoE4F538Mk=;
        b=OgOBuRxggP6cW3h1BcGbH/Txre/L3egOU6POkflQXrMtDIwYMHVc+YNWgE5CANX8Qo
         CBYUdI61j+LD+g9u26ppeVlEoSsUu7qsfZ6wLcVAQezfJJGrjXRezkXrm1c/+7thQUh5
         9AcKgBOnu9i3fC/NS9N/b6FyAoYnDSRaAgbZWpFSSwLfX9b97JrnOeUeHc1+IgjUTAX7
         FKpndbhVbCzk3GkU4Bsop1fYsfJUpBP/53buDUHaNndBwUmhBDtjVSSP2T2u09Y6as5m
         7TEyHnrs2gfQfIOCcfkJxsc/vEQbjSTIvNvzsKOt4mG/5rsOe9vu6LyYNJxWYTAqzjGL
         GPxA==
X-Gm-Message-State: AOJu0YwnmtFmm5rZCXwGfMkUtsGopPlIqUjg3sEOmJFYv1g2zTYAHsct
	oozPDgv9PRoEcEvCHpR0UUct3TWw1QP7fF2f4Gy+wp4XYgoNDEyQ6Tt0dUSgcQ==
X-Gm-Gg: ASbGnctrDDNQs6tO3Pcob1+Up182xwep93Icjoq1q2awmPl0q0pDLPavvqG5H+ED3PC
	ZxIvvtVa/8NBmTcbjFJ/ulpfWvm3pIOKIt65Ifyu1EEIiT9fxWMNjEwUyeCHoxDfTGV5LdoiqiK
	jy2CXskvHPKppsmlnps0gAwmWWUfhf8LbNaxVGnea3cIxDmbVgHFzItkPgmjOg5ZY52EAyDXc7p
	8Xp21APZz8iVBT6Q2d39C752AolzNU6MzKIwJZAzEYOw4UdJdaR/bNMqtIp0/OpuieVtG2Ueuhz
	g4vvyBQ1TN+puXAYdrd87mO+YVTKLiNRW542tYYEl7Zlv4Xpu0clSW6HyeglnC87VHoiiWS7eKQ
	pMwYlueCUFkhD6S+RZ1v3XNM=
X-Google-Smtp-Source: AGHT+IGqI28lOZPTuVw5xd4lyLaVp5M3Qo+RicuiwWs8r3ObtCHuWMjaV5XM5MLzJOAT8/zCjjkLLg==
X-Received: by 2002:a05:6000:4201:b0:3a4:d53d:be23 with SMTP id ffacd0b85a97d-3a6d12fba04mr12081484f8f.30.1750773021129;
        Tue, 24 Jun 2025 06:50:21 -0700 (PDT)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4535eada7adsm179256815e9.35.2025.06.24.06.50.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 06:50:20 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH] meta-yocto: remove erroneous poky-bleeding selftest in meta/
Date: Tue, 24 Jun 2025 15:50:17 +0200
Message-Id: <20250624135017.539280-1-alex@linutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 24 Jun 2025 13:50:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13668

This was added to meta-yocto repository by mistake,
and should be in oe-core (which is done in a separate patch).

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 meta/lib/oeqa/selftest/cases/pokybleeding.py | 32 --------------------
 1 file changed, 32 deletions(-)
 delete mode 100644 meta/lib/oeqa/selftest/cases/pokybleeding.py

diff --git a/meta/lib/oeqa/selftest/cases/pokybleeding.py b/meta/lib/oeqa/selftest/cases/pokybleeding.py
deleted file mode 100644
index d0940d6..0000000
--- a/meta/lib/oeqa/selftest/cases/pokybleeding.py
+++ /dev/null
@@ -1,32 +0,0 @@
-#
-# Copyright OpenEmbedded Contributors
-#
-# SPDX-License-Identifier: MIT
-#
-
-from oeqa.utils.commands import bitbake, get_bb_var
-from oeqa.selftest.case import OESelftestTestCase
-
-class PokyBleeding(OESelftestTestCase):
-
-    def test_poky_bleeding_autorev(self):
-        """
-        Test that poky-bleeding.bbclass sets SRCREV to "AUTOINC" for recipe
-        with a single scm in SRC_URI and for recipe with two scm's in SRC_URI.
-        """
-
-        self.assertNotEqual( get_bb_var('SRCREV', 'pseudo'), "AUTOINC")
-
-        self.assertNotEqual( get_bb_var('SRCREV', 'hello-rs'), "AUTOINC")
-        self.assertNotEqual( get_bb_var('SRCREV_hello-lib', 'hello-rs'), "AUTOINC")
-        
-        features = '''
-INHERIT += "poky-bleeding"
-POKY_AUTOREV_RECIPES = "hello-rs pseudo"
-'''
-        self.write_config(features)
-
-        self.assertEqual( get_bb_var('SRCREV', 'pseudo'), "AUTOINC")
-
-        self.assertEqual( get_bb_var('SRCREV', 'hello-rs'), "AUTOINC")
-        self.assertEqual( get_bb_var('SRCREV_hello-lib', 'hello-rs'), "AUTOINC")
-- 
2.39.5


