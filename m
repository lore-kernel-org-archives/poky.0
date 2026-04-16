Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E6BFF8808E
	for <webhook@archiver.kernel.org>; Thu, 16 Apr 2026 07:03:54 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.7967.1776323028141402703
 for <poky@lists.yoctoproject.org>;
 Thu, 16 Apr 2026 00:03:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=Y95K+qSi;
 spf=pass (domain: smile.fr, ip: 209.85.128.47, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-488afb0427eso89808735e9.1
        for <poky@lists.yoctoproject.org>; Thu, 16 Apr 2026 00:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1776323026; x=1776927826; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ldz0SE/hqysPpN7OnqZptaA1xYDOXMZxlMmsxs6aFCc=;
        b=Y95K+qSiUVhVG9kQFzo/VIausAi376+RSOGVwO3xzLI5PdkNgnpSwDf05esu750vIL
         Mo78sLUQz3wiyzebcDHgo6u+H8DkMfPwVcrR3asSIM+mHcCg/FDAdWms7ooseCjJA9HT
         QFMFfBbDxwCl5semb1dhN/0U1XPVTppCtahJc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776323026; x=1776927826;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ldz0SE/hqysPpN7OnqZptaA1xYDOXMZxlMmsxs6aFCc=;
        b=JFcqiwi8SroAm/yZlcqd7886NA8ZfYMkfgqVeVdSoty7SK7LMJ92gNALIswipjy/zZ
         P64mdld+DF6nmNy6XRBZe8TlK6AebyjbFgU5M2nI+TxpZvPDYh8nkbivt8weBf8cWXMQ
         8Om/HIPiFwBRxbNHDlM4W5HHU9x30DOqXmgCNzknQcc0MtmKULLt5p3c+m1GiJQAmo71
         IEEopQLM7X9dQJWwpGIjw1VbFy97uFuH1Vh0VTlULvNDDtPhjqAk6we4vtWQVENlqeDL
         CZSZ48gaXkLie30itQQAtcDPMW+DD1UA1k+U/v7z6CIM6RrrpY5fv/RhRvjI3T22rns4
         pLPA==
X-Gm-Message-State: AOJu0Yyr3kNAihWOm7B8cL4oq35LIjuOdLAv4pCxvIC3+Pyu4AORdZn+
	hSfb4LOViBhikBl57HQId62L5V3KktZOvpvwlpzTWz6Ukk1gCkVrBi0NnobjvFDmknh96TCte7x
	FL7LPnTtZdg==
X-Gm-Gg: AeBDieu+ejKsMeZoawESo4tbMnngp/p5kQM38Gv6ZvcilXVNaqwzew4RXYnkmewPbLd
	YquG2pUFbdwjrJ20DKYm+Yn+QUEkk/Pkhrq2iPB2TdAd3gBJkWCnBjoTTkiSMpIavNuCjxn33ll
	HuKzI5IcBYFV50gLEYRzyMpwSoHlFbdzGr/+tw5R6ZyDSke5SpjJzXXI8dFVqRAQ1uij90JbKgO
	PhGfdI+RrVsgf0ofkzeJcLpfES7sVEB0BuyCgRUohL41jDApgPOLIHkOUgsAMStENg10KNc4wMk
	jR8IWdLp3UYXaJcjmwDoiEkXpaKNJtppO/RyFCI5h1MaSrwmPfwFe+fz9mpVsgNONhW9ul/MMMS
	mpDYVI6oA64RUqux9//OXgXaWjdNcYTjGOi8g16oiLbr9DeDXs41/1s9Sun5fW5tOIvpGrZ6/xs
	PyQIeCvWtKUEL7Iy93ro88+CWEASGYfz+nSngsvIgsT3uayU6A1mQvgUP0qfpFrEqpN29Yamq3i
	9pSJqiBCWSLByh/C8uPzKkZb4YDWCmtkeNUyA==
X-Received: by 2002:a05:600c:c0cc:b0:488:8840:e5ae with SMTP id 5b1f17b1804b1-488d686dab1mr237597115e9.24.1776323026058;
        Thu, 16 Apr 2026 00:03:46 -0700 (PDT)
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488f581652csm30803515e9.3.2026.04.16.00.03.44
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Apr 2026 00:03:44 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][whinlatter 1/1] poky: Fix CentOS Stream 9 distro name
Date: Thu, 16 Apr 2026 09:03:39 +0200
Message-ID: <612d2774ce53cedf828db4bfd35bd5772e520dd0.1776322970.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1776322970.git.yoann.congal@smile.fr>
References: <cover.1776322970.git.yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 16 Apr 2026 07:03:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13901

From: Paul Barker <paul@pbarker.dev>

CentOS Stream 9 reports as `centos-9`, not `centosstream-9`.

On our stream9-vk-1 autobuilder worker:

    $ ( source /etc/os-release && echo $ID-$VERSION_ID )
    centos-9

(cherry picked from commit 2ed5aa3ac9eb7082b2534f12fb6b2f7fc3dc4bee)

Signed-off-by: Paul Barker <paul@pbarker.dev>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Antonin Godard <antonin.godard@bootlin.com>
Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index c09bff13..e50d9ea1 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -41,7 +41,7 @@ SANITY_TESTED_DISTROS ?= " \
             fedora-40 \n \
             fedora-41 \n \
             fedora-42 \n \
-            centosstream-9 \n \
+            centos-9 \n \
             debian-11 \n \
             debian-12 \n \
             debian-13 \n \

