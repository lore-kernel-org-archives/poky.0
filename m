Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web10.14723.1673015372007240444
 for <poky@lists.yoctoproject.org>;
 Fri, 06 Jan 2023 06:29:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=M/G5Zncu;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.48, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f48.google.com with SMTP id gq18so1470057pjb.2
        for <poky@lists.yoctoproject.org>; Fri, 06 Jan 2023 06:29:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W6WhNn6OSq9rq0TxJufZSXWRKo1EcGyUheaPwHlhBzE=;
        b=M/G5ZnculV1EfzgukulbfeO7hvHDj3tE/D0ulnt9+0AuajTn0BJBPh9cRXq/cKGoqM
         kLS+7vhJVxIMD9ZNDCvsDlG2yDzmyDAtMLYO9O9mbErWgvG48GuOh16UagaSnsoP/8wN
         wA37DxZhybRPlEcxt5OdW57sDjZVKjTGsR+sek75VuIkhqSJmQ10U+9jVEHkxXennKO/
         8HD/rx53BWqy2mC8dFG2tKS9pD/n45SWkC8pTZyWqXkDTi0L+zG5yDnrMoNTsejSUfXr
         wDm51bgCKSzDlwD9/bDIO+tH6S0l+OwfW9XZ0X/Sc5tnxyKJ2zpMUijCG2GrWiRiltoY
         u0MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W6WhNn6OSq9rq0TxJufZSXWRKo1EcGyUheaPwHlhBzE=;
        b=CqZ6/C488buu6UlYf9QWcROsUPb3jGfGCLMB62848Llrlw+CHjUuokq76I5tlAe/Qt
         f0lkIpjCzbUGYl9d8oGAihWi9Ok7mZRRnlbVVsGfwIH/PZ7lEF8qPlEw53yGwM2oRSMA
         j1YOQbO5ZBRaowFBkXVcbNObd1bT6Cigf9d8M0dXVxDLyF/vYYOWfFAiLyzGD2Wqna2g
         hpSf382ZN/kYgFswY5ZskQ+DYjcxPtF+Uhmh3kHpYDJDRABIlA6IKZC0BcWxaR5nmosL
         EWacQQu+cmxIVe0W2IkFOFyvafWrtXr8Tl5vDLwD4bJfyC32uuV3Dto+5URKIH1OGyij
         OmNQ==
X-Gm-Message-State: AFqh2kpnb1FzofH7Lm2TlJNoFXE+aLAydPHptewsz1K9IyRF6YS9l2vo
	IYiqC4LxTEtdOzOloRNpGV/HVLlKUzxo+fPE1hY=
X-Google-Smtp-Source: AMrXdXu8a7bVa9QEsYh/vtv04XikmymMwd6FlN2UDCilpZd0WEY7dGKJB4SWVlwAYqyeCbP2egvAEg==
X-Received: by 2002:a17:902:8c90:b0:192:a470:2c0b with SMTP id t16-20020a1709028c9000b00192a4702c0bmr25277578plo.49.1673015370636;
        Fri, 06 Jan 2023 06:29:30 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-5-74.hawaiiantel.net. [72.253.5.74])
        by smtp.gmail.com with ESMTPSA id q1-20020a170902dac100b00185402cfedesm980801plx.246.2023.01.06.06.29.29
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jan 2023 06:29:30 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][langdale] poky.conf: bump version for 4.1.2
Date: Fri,  6 Jan 2023 04:29:23 -1000
Message-Id: <38cf7e70ff67ec3cf20c0e8fb4dfec094d7b62f5.1673015170.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1673015170.git.steve@sakoman.com>
References: <cover.1673015170.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index be7d9f9..299618a 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,7 +1,7 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
 #DISTRO_VERSION = "4.1+snapshot-${METADATA_REVISION}"
-DISTRO_VERSION = "4.1.1"
+DISTRO_VERSION = "4.1.2"
 DISTRO_CODENAME = "langdale"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"
-- 
2.25.1

