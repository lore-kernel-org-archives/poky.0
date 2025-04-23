Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31C38C369D3
	for <webhook@archiver.kernel.org>; Wed, 23 Apr 2025 08:03:25 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web11.3478.1745395403412394767
 for <poky@lists.yoctoproject.org>;
 Wed, 23 Apr 2025 01:03:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=l9PLIG7f;
 spf=pass (domain: linaro.org, ip: 209.85.208.178, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-30effbfaf4aso59924801fa.3
        for <poky@lists.yoctoproject.org>; Wed, 23 Apr 2025 01:03:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745395401; x=1746000201; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vVpsXTohc152hYkidOUqMjAySOP1W9akjeQTQyAFQOk=;
        b=l9PLIG7f2xZQK0JigZmr6mJG+N4cP/gjiMrWHsrLH8KLPajJ/LrJoWCwnSU4CS+R48
         FFlhAeWjYrsXfTz1ksnk0dNWCcrojyRTkF4Mtf3gm4MA9qQ71upjmVvWOUhk0eVVAxO4
         VqDmTyDjndVAddzMr/3Je+HAEzZ1+LmAzzA28XUyqWHxCJfymeJFrMpWMYYhOgAYRxle
         g3ALFbd4fXQ0PLWT6ocV/k9FX5X1jydlN8BpwfeICgKvBTmKRqZxMxWt0Hd7P1gs0Ap/
         SQfR1MqCkdaO54Vqa75rm7NetvJORUSTbzzO5ADiPiYU91bXeBjS1pgIRcJA+3DEn5qw
         WIyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745395401; x=1746000201;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vVpsXTohc152hYkidOUqMjAySOP1W9akjeQTQyAFQOk=;
        b=C6FuYY6WFlWm5rpxfLD8r/YBNGMg7TDkbDES4jOW5UpbZf0u41xX8zbysjIRBSi59t
         DLw5VahTKFaaJT9Vag2IMoE4VVfDw9oorXnqueAYdb/VuFH294ZXpOQ446Gwsza1der6
         aaypZFk+GbOQrp8FgBGyGJhMnmr3E+rSXq/6fMiA8oGjj6t7R4MGXsq6LvqQR0geR1xj
         X+Bkk79en1qTmsECKoWDl3iVBa9z2y17I1CmsiM85UJEfhXW8ogywuUTyODwcGhh4te9
         foQcJtGz/0eiuVVI4rMhAVbOXz/bTuqRqRLZh473dnWxnWFrFNr8WyTo+OVPJA8KjBdp
         /GSw==
X-Gm-Message-State: AOJu0YxV6qT6hY1GhKuay2dvFA1ADfNZKryCWM9tNre5yEr7ZiiaC7j3
	j2JkR0fNXk/fhs47gVgs6ZeIuu1wd/b59qZEWZXFQp+oFjtOvYDcjUpAw/r/lUUCSpsd6OXcBzo
	QwM0=
X-Gm-Gg: ASbGncunnCaPZ1bf78UcvQSO2YxAMPdcMSNSyNXKF5V1H4b72cF18RsMqgfuCcYAFhk
	s7/wYjzVAqjA/HiXl2R5BMDu9bf/5F88H63nm6esYAcUnnkYNKT842CF3dlVA0M5Zb50nuk+u7C
	HPj2TDMDa+bxEbxBWm+DTkFrXYxHKZlwSIPZyLCtY0FLp+/SswyEfQ6uFWn+eIeO5lQpAVhx+fd
	QqHBTFppVyjLvhFV33BBkp77jqt8gl2k5CDioAo5f7fAa30LANShmV5opZiMFsaUEnd7Ld3XLex
	nF3+SfwZPkceYbw3hI4iaCxaVPgIXZJFvcX5q4/sjJi6QzU2EXpskuWl5ylGQ84LWriHhWPIsDJ
	f70rKad3PJx7AAovZrA==
X-Google-Smtp-Source: AGHT+IGuMhc2JdThrnSy57+oee34XOWET8K51MV8zGH6H9Q9IRWUlxcd7Cpcxf81dsxwv6o/QwJFWw==
X-Received: by 2002:a2e:bc29:0:b0:30c:1002:faa8 with SMTP id 38308e7fff4ca-310904c63eemr47848231fa.7.1745395401487;
        Wed, 23 Apr 2025 01:03:21 -0700 (PDT)
Received: from localhost.localdomain (87-100-218-141.bb.dnainternet.fi. [87.100.218.141])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3109075f2aesm16951581fa.23.2025.04.23.01.03.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 01:03:21 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: openembedded-core@lists.openembedded.org
Cc: poky@lists.yoctoproject.org,
	Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH 2/3] kernel-yocto.bbclass: support modular kernel configs
Date: Wed, 23 Apr 2025 11:02:45 +0300
Message-ID: <20250423080246.128723-2-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250423080246.128723-1-mikko.rapeli@linaro.org>
References: <20250423080246.128723-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 23 Apr 2025 08:03:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13599

Compile many kernel drivers as modules when recipe sets

MODULAR_KERNEL = "true"

This likely requires support for initramfs which includes
kernel modules needed to mount the rootfs.

SCC_OPTS can be used to add arguments to scc kernel config
generation call.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta/classes-recipe/kernel-yocto.bbclass | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/meta/classes-recipe/kernel-yocto.bbclass b/meta/classes-recipe/kernel-yocto.bbclass
index cef6b9ec3f..f98720bcec 100644
--- a/meta/classes-recipe/kernel-yocto.bbclass
+++ b/meta/classes-recipe/kernel-yocto.bbclass
@@ -26,6 +26,12 @@ KCONF_BSP_AUDIT_LEVEL ?= "0"
 KMETA_AUDIT ?= "yes"
 KMETA_AUDIT_WERROR ?= ""
 
+# most drivers as built in (default), or as modules
+MODULAR_KERNEL = "false"
+
+# options to scc
+SCC_OPTS ?= "${@bb.utils.contains('MODULAR_KERNEL', 'true', '-DMODULE_OR_Y=m', '', d)}"
+
 # returns local (absolute) path names for all valid patches in the
 # src_uri
 def find_patches(d,subdir):
@@ -298,7 +304,7 @@ do_kernel_metadata() {
 		elements="`echo -n ${bsp_definition} $sccs_defconfig ${sccs} ${patches} $KERNEL_FEATURES_FINAL`"
 		if [ -n "${elements}" ]; then
 			echo "${bsp_definition}" > ${S}/${meta_dir}/bsp_definition
-			scc --force -o ${S}/${meta_dir}:cfg,merge,meta ${includes} $sccs_defconfig $bsp_definition $sccs $patches $KERNEL_FEATURES_FINAL
+			scc ${SCC_OPTS} --force -o ${S}/${meta_dir}:cfg,merge,meta ${includes} $sccs_defconfig $bsp_definition $sccs $patches $KERNEL_FEATURES_FINAL
 			if [ $? -ne 0 ]; then
 				bbfatal_log "Could not generate configuration queue for ${KMACHINE}."
 			fi
-- 
2.43.0


