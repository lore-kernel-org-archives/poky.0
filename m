Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C75EDE9A7
	for <webhook@archiver.kernel.org>; Thu, 14 Sep 2023 11:25:17 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web11.9519.1694690715831341471
 for <poky@lists.yoctoproject.org>;
 Thu, 14 Sep 2023 04:25:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=RguOghYR;
 spf=pass (domain: gmail.com, ip: 209.85.218.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-99bcf2de59cso117589766b.0
        for <poky@lists.yoctoproject.org>; Thu, 14 Sep 2023 04:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694690714; x=1695295514; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mxsz/CLfdnBzX/2UAzFFI4ytRarjwmXbmrVO5fn0V9E=;
        b=RguOghYRlV0CvsDZN6ukcpSlmidHKmRZWjFsyZjcExMRMuG9lBTJEHlRpiFfRw1iBB
         YfkNssbxHgcZhXwBVdrgq1409JQToLfWA5uhCBlvUadmnuObJk/3CLJ9hk7jEgdPMvtw
         nG8gi8AZFi+p+rwBRfNh4Z29/j4zBtE3/iVe+IAnuDFrVF2BOzk0zsm3BGa5shwD74EA
         wJyj0fS+hXrJ8q4MLX4e5kd4yNeu1liY4Oqg8dfDitEMy10GZucXTVoLyjpc8sb2XJl9
         2HSjpZxTAn4imW9NKB5kA1uoRXeCuUfgxBGEw7vy1877n9H+OCc5eikZJdDLdMHpZtaf
         f0ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694690714; x=1695295514;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mxsz/CLfdnBzX/2UAzFFI4ytRarjwmXbmrVO5fn0V9E=;
        b=d0BxKvXp+ZFD2JIigaxMtdhi+tvWyOQifNDvjgZD9bD8D9nkxjzT3+LaoJ/onNMKbD
         Bph8FTaJgzoc7cIEdMBepV7eVkHu3jYMizt1lqbq8yZbBspgIS0/uSCE3Njb8FlcKkXo
         hFQS6ovMt5meTm1gZVWFjdY4XVYPuF1mpJR3YvOAMRBhbopmGPXtSBRm0CZsgtXnnoiY
         GCXomml5Vg5eIPAVxm4VTX28etrW2Nrf97v7jXqqMVDxQ4ONftG0UkC4qDBDFyQSkr8d
         AQY5rj4D2YFtYnWD6x0/+dnjGrT5AiRi8x0n2C/5CWcjFUrfEwrK0MhhcTcsEzte+h4J
         ddGg==
X-Gm-Message-State: AOJu0YybRrVKJFtgKJAANYrXrrInolyqL90FOudPGMH0E1eKZ24RKDuh
	RiRHTxCxizMwhpRBj3HQ3nVjbGNmIpY=
X-Google-Smtp-Source: AGHT+IF8jR1i9vWBmKz+5Hz5MThJXOrczYfMoENSGz2aZLRKygkw6ZmCV0upZtmuqqy4fTpXCX0DuQ==
X-Received: by 2002:a17:907:2cd2:b0:9a1:914e:490e with SMTP id hg18-20020a1709072cd200b009a1914e490emr3845089ejc.53.1694690714028;
        Thu, 14 Sep 2023 04:25:14 -0700 (PDT)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id y13-20020a170906470d00b0098884f86e41sm858587ejq.123.2023.09.14.04.25.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Sep 2023 04:25:13 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH 2/2] meta-poky/conf/templates/default/conf-description.txt: add a template description
Date: Thu, 14 Sep 2023 13:25:03 +0200
Message-Id: <20230914112503.2214003-2-alex@linutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230914112503.2214003-1-alex@linutronix.de>
References: <20230914112503.2214003-1-alex@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 14 Sep 2023 11:25:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13161

Existing conf-notes.txt is not adequate in situations where the user
needs to select a config template from several, or get an overview of them and
is interested only in a brief explanation of what the template is for,
but not extended multi-paragraph instructions for how to use it.

Such descriptions can be provided via conf-description.txt and
this patch adds such a description for the poky default template.

Updates to the tools and a tool for selecting templates which
will make specific use of the description will follow.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 meta-poky/conf/templates/default/conf-description.txt | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 meta-poky/conf/templates/default/conf-description.txt

diff --git a/meta-poky/conf/templates/default/conf-description.txt b/meta-poky/conf/templates/default/conf-description.txt
new file mode 100644
index 00000000000..8fc03030c7f
--- /dev/null
+++ b/meta-poky/conf/templates/default/conf-description.txt
@@ -0,0 +1 @@
+This is the default build configuration for the Poky reference distribution.
-- 
2.30.2


