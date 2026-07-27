Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94140C531D0
	for <webhook@archiver.kernel.org>; Mon, 27 Jul 2026 22:54:39 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.43763.1785192875843831036
 for <poky@lists.yoctoproject.org>;
 Mon, 27 Jul 2026 15:54:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=i7vrDmO4;
 spf=pass (domain: smile.fr, ip: 209.85.221.54, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-471eeac43bfso2797008f8f.3
        for <poky@lists.yoctoproject.org>; Mon, 27 Jul 2026 15:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1785192874; x=1785797674; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=4KEUhulYOdrGdrHtv0ewf/Pny654ZsdZoMXfZ6fmlSk=;
        b=i7vrDmO4BIn0G9q0Hp4mjYjOPsOUJNtmFgcxX9hFYektkPbK9dpUAS7FsnbDU5tLPL
         j+nbEseFfbQcP135Kab6yH9fumkNfaNCijNd5djV7BZUIpg3IMm3ESjvr/Dq41BVxOYQ
         m+0JXINBrhedppvuo0oOvEIIyahrJE1W236CM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785192874; x=1785797674;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=4KEUhulYOdrGdrHtv0ewf/Pny654ZsdZoMXfZ6fmlSk=;
        b=PMm2QvcQO5wUS0O4BvEEhm9Y42Ql5ChkaxXvK+SYxA6zNPApSAiIyl43zANnt5tYSS
         sUdJphmbq8syWZn1eL69Hzj8KDZkJfacdYD6DYJAGC4pj2OnZabEM0TiklthRIIoW+Le
         ClXylpYNqDgE0ZFLNstFwcSFp758fHfFFMAc91rS9+3Xl++sSHaUYWIRfW0LLvkStOYC
         l1wFRWfPIKQSWAG+77vUT6/pdfBXQ3kNgLuXqf/2m0ytprbljk1gWszBf2wG+pNXOfc1
         ty+Ri39UfGVtK+J6SyT2gh29EHvNFmFglO4Y75uEUZ1ScXJ1wAt8euXwlYiGZrMD5qdt
         Mzbw==
X-Gm-Message-State: AOJu0Yz0Fugl2HldtRebmTJSnwDf0q0kiOEtzpRDmZk+hS4QWzSjLZ1f
	+2jLRpDY96/A+Eicd9qS1PWUeFtlfIq7jx2kFfi39MA4VaeAe82Hf7gR8Vk3cnpqzekUUisWq4W
	oyGUApTw=
X-Gm-Gg: AR+sD108fn8mRA148i3IkqMaFSH8w2myj6A7MiDVXxneUDwYdUEhpFgq1O9L9AI/RfT
	uFX71rpkTZsFwceIN14NkjMfMBHZL6MQ0UxPSvynIsO//qSnlsoQzbdJOvLDFZeyW3mwE9p7JmS
	N37fEImecY/zUXlUb576hy7Kf9JVd3F3Wgy9KP17wf9mJcVF6oBBliQKqbcTNeAL0Lgh5wmZrU1
	/SsVg8ng4+GZIK607ot5Ocve0fiVoFCkoEuPRakdLXiZkWXwNZd4tzXNkX6AadhKJAU/dmwLpja
	jX2zgG/eUVDIxUzgQFdi/3B4F3ojqI87ZfJK8NRPOb04Ytz0lw4GKzEHbSv9HZmCoRxG0Le5mGk
	8rDCDPa9DZkK08XILaUGqE0hc84+PjZA9IPL4jntw7omfbSxGGFzKIrJsvRcGDcqkAAekUtdEe1
	Lfj32urbKax9oao6VATSWSQpomfic+0qgu1SLiU1RTL1QtFYdsTRW4HFh8dQM5TFUkOTnZFm0+L
	M66b4p1pipUOedf
X-Received: by 2002:a05:6000:1847:b0:47f:77a8:7e8f with SMTP id ffacd0b85a97d-47f9fec1b43mr12438279f8f.60.1785192873855;
        Mon, 27 Jul 2026 15:54:33 -0700 (PDT)
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f864305f5sm51588584f8f.17.2026.07.27.15.54.31
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jul 2026 15:54:31 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][wrynose 2/5] b4-config: add send-prefixes for wrynose
Date: Tue, 28 Jul 2026 00:54:10 +0200
Message-ID: <3dbb0e96766d0fef2f1da5e206afe478aad930a4.1785190768.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1785190768.git.yoann.congal@smile.fr>
References: <cover.1785190768.git.yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 27 Jul 2026 22:54:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13951

From: Yoann Congal <yoann.congal@smile.fr>

That might help new users send correct first stable patches.

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 .b4-config | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/.b4-config b/.b4-config
index 6368f100..dc7484f9 100644
--- a/.b4-config
+++ b/.b4-config
@@ -1,3 +1,4 @@
 [b4]
   send-series-to = poky@lists.yoctoproject.org
-  prep-pre-flight-checks = disable-needs-auto-to-cc, disable-needs-checking
\ No newline at end of file
+  prep-pre-flight-checks = disable-needs-auto-to-cc, disable-needs-checking
+  send-prefixes = wrynose
\ No newline at end of file

