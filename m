Return-Path: <andrew@fernandes.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA742C27C75
	for <webhook@archiver.kernel.org>; Thu, 13 Jun 2024 19:54:39 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
 by mx.groups.io with SMTP id smtpd.web11.2170.1718308469811713254
 for <poky@lists.yoctoproject.org>;
 Thu, 13 Jun 2024 12:54:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fernandes.org header.s=google header.b=euM3CIj6;
 spf=pass (domain: fernandes.org, ip: 209.85.214.173, mailfrom: andrew@fernandes.org)
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-1f44b45d6abso11768695ad.0
        for <poky@lists.yoctoproject.org>; Thu, 13 Jun 2024 12:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fernandes.org; s=google; t=1718308469; x=1718913269; darn=lists.yoctoproject.org;
        h=date:message-id:to:subject:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rTzzDW70R0gI4XFXkozQK4lo2zcILYVp8d04abXo49U=;
        b=euM3CIj6SlDxMGpyJUJ/EtAnOrBSbNJMQ7mpzzs1RHIweKBo0ZUPXL3r0cWKxmEkMD
         6Qy16ZLeCAdyXSOo8uVryJ8Q7LK+b4rl9WPynze56sDUm/YsX10cYKWXbID/yyBjoRh4
         M0XXTI6gn5o2LHF0N2QTd41qvAGUPcTEg0Cn4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718308469; x=1718913269;
        h=date:message-id:to:subject:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rTzzDW70R0gI4XFXkozQK4lo2zcILYVp8d04abXo49U=;
        b=nUfqToxC8muVNubcuKRTx87tsfQCqfPptXNpsVuAqJKgQyYPFlsMnqghK9zKRG5Ibq
         IpSAmxWMKF7MJaW993iQpZI9+5CJUbi8FAiJoIi29x9G3duVP75pqsbLspQ6vdRbFkDd
         m6tv6S332nNRwN6MWMvAVC17VoQqJBCJw6RqjqF7vzZtipNls+SCAX1DrWrI0+Ar5dYb
         bNzVUn0hmy/QQ4343+UTEKNzT625lo+VgmdoMQTE7wuZZVrUntF+RgmxvlYeNZhLBqnF
         h0hfPWwYaXhL95TAwYbA6uLhmB1NibRK2AUe+VxogoWzsnfQhO6Nhc11mC95px6nULuV
         U8hg==
X-Gm-Message-State: AOJu0Yw5lAfqEhUjk/2VnehPUtHRTvm6bfdXODwTxGIUwIBXTBUjJMRq
	Nf4qkqQvH2Mv0bk1ZNRW4P8/JzOwQ1L+69AyuigrXZUJzXnpEzqRvMIIR/RFiuEQg0gcWgAwISk
	=
X-Google-Smtp-Source: AGHT+IHUF8e0Tg45aX0PDdCuHeRnQOdGOBAh/uTnbMqdyKr7jZkRii6ZBPzPb7uwAXl5Cviaxi/Y3A==
X-Received: by 2002:a17:902:f603:b0:1f6:4d2f:c44e with SMTP id d9443c01a7336-1f8625cf02fmr8305545ad.21.1718308469220;
        Thu, 13 Jun 2024 12:54:29 -0700 (PDT)
Received: from nexus.fernandes.org (nexus.fernandes.org. [192.155.81.65])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855e7bf76sm17858925ad.105.2024.06.13.12.54.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 12:54:28 -0700 (PDT)
From: Andrew <andrew@fernandes.org>
X-Google-Original-From: Andrew <andrew@nexus.fernandes.org>
Received: by nexus.fernandes.org (Postfix, from userid 1000)
	id E771AA847; Thu, 13 Jun 2024 12:54:27 -0700 (PDT)
Subject: [PATCH] gtk+: add missing libdrm dependency
To: <poky@lists.yoctoproject.org>
X-Mailer: mail (GNU Mailutils 3.4)
Message-Id: <20240613195427.E771AA847@nexus.fernandes.org>
Date: Thu, 13 Jun 2024 12:54:27 -0700 (PDT)
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 13 Jun 2024 19:54:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13369

Fixes [YOCTO #15513]

When built without the wayland feature, gtk4 does not
build due to a missing explicit dependency on libdrm.

Signed-off-by: Andrew Fernandes <andrew@fernandes.org>
---
 meta/recipes-gnome/gtk+/gtk4_4.14.1.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta/recipes-gnome/gtk+/gtk4_4.14.1.bb b/meta/recipes-gnome/gtk+/gtk4_4.14.1.bb
index ce733769a5..ae6fdcf604 100644
--- a/meta/recipes-gnome/gtk+/gtk4_4.14.1.bb
+++ b/meta/recipes-gnome/gtk+/gtk4_4.14.1.bb
@@ -16,6 +16,7 @@ DEPENDS = " \
     graphene \
     harfbuzz \
     jpeg \
+    libdrm \
     libepoxy \
     libpng \
     librsvg \
-- 
2.45.2

