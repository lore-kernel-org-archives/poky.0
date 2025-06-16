Return-Path: <alexander.sowarka@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03B38C71136
	for <webhook@archiver.kernel.org>; Mon, 16 Jun 2025 18:46:23 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web10.4964.1750099577298066572
 for <poky@lists.yoctoproject.org>;
 Mon, 16 Jun 2025 11:46:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=oqpmLWSu;
 spf=pass (domain: linaro.org, ip: 209.85.214.172, mailfrom: alexander.sowarka@linaro.org)
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-235ea292956so43793525ad.1
        for <poky@lists.yoctoproject.org>; Mon, 16 Jun 2025 11:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750099576; x=1750704376; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lnSYj/Feh+RKWHFvgEu1AqKcDTHjdE7lHB2yqF/Lz7c=;
        b=oqpmLWSuJMaEfAHf0mO7DJKDGf4mm/kH2orQ6kUkbRCLaEmLSJNO7Pn62+qMl9Qq2p
         NfSDvqMMSFruGdRdgAU4iTAyRVv42UWaA1D7/+I4m+H08JLtNSza8E4VpQ06JA0+MKex
         BT7D/yKmx4BRUEFwV/Qke8Blib7AbjFpE8dzMlaqMEroyjkE5zj6L40ULS9qWIIYPFoT
         GVt8ltHjTF39ATcH9ftOYJYdk+eNb3yw68lb6sZnJGd1BtacD8i+QCvzBVEpW9A50qQJ
         yOtdu8BIylXNggn5g7lA6WGiRmwiaFOqw3Vm7e2ONOk31BapUHwmDDFJULJkagPjxjot
         G94w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750099576; x=1750704376;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lnSYj/Feh+RKWHFvgEu1AqKcDTHjdE7lHB2yqF/Lz7c=;
        b=dDsvSCgD/HOJo9IV0wGkUsudCkA8EK7rgRQY0wBrCwGz63Wp6b5kQQyA38amIaA9dC
         I0ARaGYlm9dG7OfJXszzQ0caVkRfYYqZqkA3ukKa8vUHBpYqCuO3+lb182+rBWEjHZyj
         7QJx8aQBJkIJccfgNrZ+NX0XUJQ7d3sT1TpxAU6bavxZDEgeQChcC+Mp66CrSJQWdhpo
         acZqdR2AIaHQt6MDvtM9oNebfN5Oct5dg1sneK2afPOyDuvxhca40eR18+55ONgj2+WK
         sVTLX+m20pfbRCR0gh0UVYwoxoviNUOPfYR35F+jQrBq1StwJWx/8KmltTXqsA0Jx0Wy
         Cesg==
X-Gm-Message-State: AOJu0YztQa90SeTiADnxh/H4OQyANsZFXATrhUDugI9c83ND2GojP1ln
	TSzfX/vFXJTmjmUlZEPGcoGlvLlEWZLuLdFzfGWCXiREhm2AIV8cW0SLpIKX4Gqbh5tg+9DOWlU
	oM3yFkIY=
X-Gm-Gg: ASbGncsAVTD9SjfdaAoK/gPH6AML2jj3HBpcibsL/fAjbzQD1coPXoaTOglngcmI/zL
	WzBvqos5AAItXaNllFWA8p+R16crCF1cG+ig6uiN3Iy/KGrAN2T4vJgM7PCg45P4Qg8QiNPXyOj
	xrOQHsDxbuUCYgGMpkOLWzTVOzKyLy9hdWxI1fSkzv5UJWMiSN4mC1U6aR4P8gjmG+/+u9qk9xQ
	oO7ZjRrNjnENDNO/a3jrPPKpazS0+uo+znLd5fXOEkoKJq37YQuYskqrI10G/JQrmKtm13B9wL/
	TUER5U7sPtIwuKQcZCT4xQApkQxtVofRbBDaedsdiRd+07JSZT8YzxzyRUWFPQE=
X-Google-Smtp-Source: AGHT+IGYiiptWRz0pHPcMOHy9YeFoVjLiB7qRxHFDYBuE62JAT7NVW9fsNuRwdlskvtN90ARUpN5EA==
X-Received: by 2002:a17:902:ce8a:b0:234:d10d:9f9f with SMTP id d9443c01a7336-2366b14e571mr164275095ad.40.1750099576324;
        Mon, 16 Jun 2025 11:46:16 -0700 (PDT)
Received: from fedora.. ([2804:14c:117:3195::1009])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365d88c0b3sm65193175ad.37.2025.06.16.11.46.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 11:46:16 -0700 (PDT)
From: Alexander Sowarka <alexander.sowarka@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Alexander Sowarka <alexander.sowarka@linaro.org>
Subject: [PATCH 1/1] linux-yocto: Use in-tree config for genericarm64
Date: Mon, 16 Jun 2025 15:46:07 -0300
Message-ID: <20250616184607.92039-2-alexander.sowarka@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250616184607.92039-1-alexander.sowarka@linaro.org>
References: <20250616184607.92039-1-alexander.sowarka@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 16 Jun 2025 18:46:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13650

The genericarm64 machine should run on most ARM SystemReady devices.
The arm64 configuration in the mainline kernel repository works stable
on a lot more devices then the poky internal one.
Switch to using the in-tree kernel config to run on more SystemReady
devices.

Signed-off-by: Alexander Sowarka <alexander.sowarka@linaro.org>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend | 2 ++
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
index 5b1b736b1c..5b3c31f530 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -3,6 +3,8 @@ KBRANCH:genericx86-64  = "standard/base"
 KBRANCH:beaglebone-yocto = "standard/beaglebone"
 
 KMACHINE:genericarm64 ?= "genericarm64"
+KBUILD_DEFCONFIG:genericarm64 ?= "defconfig"
+KCONFIG_MODE:genericarm64 ?= "alldefconfig"
 KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
index 3f33ec991d..2159717cd0 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
@@ -8,6 +8,8 @@ KBRANCH:genericx86-64  = "v6.6/standard/base"
 KBRANCH:beaglebone-yocto = "v6.6/standard/beaglebone"
 
 KMACHINE:genericarm64 ?= "genericarm64"
+KBUILD_DEFCONFIG:genericarm64 ?= "defconfig"
+KCONFIG_MODE:genericarm64 ?= "alldefconfig"
 KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"

