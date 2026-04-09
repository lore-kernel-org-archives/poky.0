Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41021F364C0
	for <webhook@archiver.kernel.org>; Thu,  9 Apr 2026 21:35:25 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.143112.1775770520172738966
 for <poky@lists.yoctoproject.org>;
 Thu, 09 Apr 2026 14:35:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=de/lB26g;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-488ab2db91aso19534745e9.3
        for <poky@lists.yoctoproject.org>; Thu, 09 Apr 2026 14:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1775770518; x=1776375318; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=y8dgC6A/YyWRrrwFEj1STOiwgNv7qbwMR+nFjLiIlU4=;
        b=de/lB26gZ7HPKQi03gddWzxhfoMeCl7uTKz2RQeUulOFhv0yLK6o+AEtHy3QXN8zkp
         bt3+bBLp4DozjXfYId5ljrp78bCarsXHWXlu3OqUA3dr3oQJNqZ66k+9QXvYZ61h/New
         viEb1ytRPJtFh0YLTb8Y3PB1Gd955CXIIZNUU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775770518; x=1776375318;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y8dgC6A/YyWRrrwFEj1STOiwgNv7qbwMR+nFjLiIlU4=;
        b=qpol//wMc//Dd1ZIl+BoCBFGb8+HWTnuCMRYy+pwBiWWqoIHEwlds7wsk3Egv1dtli
         jBDcjyAOviNUs8Pz99XJRaWj/rMHeaK0qdrtzcYd4dgo0QH6voLN6ThGRLEiJV9pN2+X
         CEl6kf3uInbW76FzwBFPL9HBjWaNSbA/0NiYXPLPF+gqnYu3mQXhwiZyMCFJDtaJv3np
         X6Hdy7hwXw1KPyOuDK4YHnKBDCuWySZfzvISssqH/cWJmb6vzNA0gyeIRlentyKz5K7K
         fqPXwcFHmhsdd2bnNxMam/ZIg0pRbNoEJLxg030Q+ig7KlYr8tF0XFcUjmK/wznlQVn5
         u1vA==
X-Gm-Message-State: AOJu0Yzq1OpBaaV5hlmtuMbfXOUCOlxLIZPnXYMXPzU8JJAz0u5IggLI
	J2WDu89lpRyBnpqDbyaIam1p6xut2uW7s+MbJfNL9lNfmK9HOSJRMpmBE1Ryx23xQY9VR1BUzkH
	QhD7usVE=
X-Gm-Gg: AeBDievYbT47eh2b9QKVKc6FL5om/7hOMOaHq9hRviKWmAV09kkqZiaLX0REYeFnsUf
	WewgFfjHDbAcgYPs9aMweYqTfFX67LsoxLi9uK4pT1HM2pg/o9Nm0bJkyDQQVuEpvKq3f/tTAu1
	d2vRJJQcSQRATV06PjkI2y7sFrIOc8FlTsD6DQKbOmp6PljeD3CRtW/f/i6kPmGXgJ1V34CM/9j
	N1kMGG70JB4OmRUss0QsTyC7A5oVrUio1XJtMsiR6oLtRx24NVcbwbGt8cwQa6GyCBwN62UAvGY
	qoHh9vnD23492q3NNnjunecKQ4uyiV7niMYPgNmW7oH/SsUcqJO0E28+0v/FeIUn6bJ0UUyAHow
	5mpTPv9fxMJRHg+Tc4/EODJEL02jzEkePrak5Tq1GzCUsNSzR7wMy7dv/ZLBpMBorZUBVsUS65L
	cFTxARRWK5GQRcZJPuq+k63BzAHqs54SBUZIsoht77IOMgtsdZ4hgG
X-Received: by 2002:a05:600c:4443:b0:485:3a03:ceca with SMTP id 5b1f17b1804b1-488d686c044mr4555675e9.23.1775770517827;
        Thu, 09 Apr 2026 14:35:17 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:c642:6c74:9bb7:e65d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488d58a8445sm18991215e9.6.2026.04.09.14.35.16
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Apr 2026 14:35:17 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky.conf: Add Ubuntu 26.04 to the sanity tested distros list
Date: Thu,  9 Apr 2026 22:35:16 +0100
Message-ID: <20260409213516.3746112-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 09 Apr 2026 21:35:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13890

Add Ubuntu 26.04.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index fbdedc176a4..d86859ac926 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -37,6 +37,7 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-24.04 \n \
             ubuntu-25.04 \n \
             ubuntu-25.10 \n \
+            ubuntu-26.04 \n \
             fedora-42 \n \
             fedora-43 \n \
             centos-9 \n \

