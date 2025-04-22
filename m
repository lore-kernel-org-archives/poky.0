Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9B1EC369C2
	for <webhook@archiver.kernel.org>; Tue, 22 Apr 2025 14:46:16 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web10.41787.1745333170744523103
 for <poky@lists.yoctoproject.org>;
 Tue, 22 Apr 2025 07:46:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=iJteIzbB;
 spf=pass (domain: linaro.org, ip: 209.85.167.51, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-54298ec925bso7698056e87.3
        for <poky@lists.yoctoproject.org>; Tue, 22 Apr 2025 07:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745333169; x=1745937969; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vVpsXTohc152hYkidOUqMjAySOP1W9akjeQTQyAFQOk=;
        b=iJteIzbBbeX6Fqn1KPqFdvKVLYEcuH5Haqmd50nm0BmezWMr//Kmi9H1sPFVH+NNFG
         PiasavtQbjQ1q/QH8E330pWyIdNg0uVx3kVpvaG5yPS0iITCKOhgIi+CRYxt7D8aZAwv
         yY4roMEpnNEq4a6fvVFSLU5Z3XeuQysTcEd2HIQj/yd/AbbLl96jkGq0QJMMyQz6xaOm
         Sth66GcJ6XoJgJ60z91NEkuun7EmwGn0dLWryFvZmHoaTsPtD/POdouGgeNVAjMVPDl1
         mkrRmhrfZEZWzMUYOCkoRHF6zh5dPyyLoaEvmgwg9JNCljSUeVd9SeRdrycdwHPuBzrV
         WaBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745333169; x=1745937969;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vVpsXTohc152hYkidOUqMjAySOP1W9akjeQTQyAFQOk=;
        b=ehBMtnDGOW6aiEEOajTtEoadfSKSICnrKuQxVTNIWCZVJqDZ7QgzdbP0EsrufjSKrs
         hYJsQH6DfcEmZmQGU+ggdigMIkR+dCRdY2KMBSSl9fj/XURKNskBxfI6wPFIVT7Urj5x
         DEchCQ2aIdny9p0Bz1uC0Dtf0j4UsUUjhN2h/5kLNKMM2hWD8YXBU5q4+2n9bNj73n7E
         gpDtuKgowMKuReADw1vXD9xwu2R8/zLYodNdle9rWhW8B85HFLF4i3b2qru7mRrbcVtB
         JWWa768A09yGss07zr0VSSutsEq+oVQPZPv2r8/MUDxpG4QRGJMQWHvwtfUsexZA2qxZ
         pGVQ==
X-Gm-Message-State: AOJu0YyEV3X6mucB3yXFMIOX1BzkTNIbphzaQBHR98uxh2h4ZIdTMH8M
	/LC533kta39FarE/oPwEsdxB7i1MB7naf6wPNTzpHEKzh0gAXbBcj9uyGpmjMLJNf7R3vNXIghp
	HUeY=
X-Gm-Gg: ASbGncsBm75rK6LJoEvsUzM01jaOAxg4WwEKNZg2w+KqCVV89bbzYeKUG5j2Ph25ev5
	DHaH+IWFsmbhB68ETXDxGEsGy0Amr+ntzkTr5jWpa9km0vTydY7lgCkjUl4yZel4oBwXP829hXx
	FQlK1p+sIhEkC/WZVnlzdyP274kbu9CoNUMzuUaNVcbx3/hw/bRUCK0EYYfD0c6sL7619rC02Y9
	8AcO50+HZSp6+rii48zMoaSWsPqTLBsagFjzE5W0o6g9VuLPzTRR7oWfyjrNicv3Hxw75QbLbdD
	7trauXlxdJ9RWA3bOf0CvD/COpRQmRppWa3r8fFHuGMUkuruX5HRgmIEODidJsITO2yq4ELrW+/
	WGDnvn8PuN3ozm+/V3g==
X-Google-Smtp-Source: AGHT+IEI0wzw1ctMDcmduW2E76JKoXq2+6LxWLqMq248m+Yk9JmRZJbk6ZgTzLIB7NdIjdRfNRnPUQ==
X-Received: by 2002:a05:6512:2395:b0:545:2efc:745d with SMTP id 2adb3069b0e04-54d6e658a45mr4321272e87.46.1745333168920;
        Tue, 22 Apr 2025 07:46:08 -0700 (PDT)
Received: from localhost.localdomain (87-100-218-141.bb.dnainternet.fi. [87.100.218.141])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d6e5f515bsm1244639e87.222.2025.04.22.07.46.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 07:46:08 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: linux-yocto@lists.yoctoproject.org
Cc: poky@lists.yoctoproject.org,
	Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH 2/3] kernel-yocto.bbclass: support modular kernel configs
Date: Tue, 22 Apr 2025 17:45:46 +0300
Message-ID: <20250422144547.101765-2-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250422144547.101765-1-mikko.rapeli@linaro.org>
References: <20250422144547.101765-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 22 Apr 2025 14:46:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13596

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


