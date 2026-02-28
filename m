Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8684FEE4E2
	for <webhook@archiver.kernel.org>; Sat, 28 Feb 2026 09:24:48 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.116232.1772270686272820564
 for <poky@lists.yoctoproject.org>;
 Sat, 28 Feb 2026 01:24:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=b5fl9cwc;
 spf=pass (domain: smile.fr, ip: 209.85.221.52, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-436309f1ad7so2308509f8f.3
        for <poky@lists.yoctoproject.org>; Sat, 28 Feb 2026 01:24:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1772270684; x=1772875484; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=P6A7ID26YVgTQA9MRbCpB65scNMv1vPlOMOfZ+jvQqc=;
        b=b5fl9cwciWCv4XqPRNo/9F/VsvFNTwLogQSCgk+Rp1ZNQHgJ6odiggN0Ntgqt4mwFj
         Q6RcLoCMJwIHnXurWQwjPl/nMAfERdS1PXP6WDFFOFCdr9+cT8Na8F3eU4C+6mU9n58F
         WXd0TBkTEdAnLY2rHWPjBfs49lhXtxhg4qIWc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772270684; x=1772875484;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P6A7ID26YVgTQA9MRbCpB65scNMv1vPlOMOfZ+jvQqc=;
        b=XW/uf+ppU+kSC/sc++M0CnJT9ZPg3pGkQ2SShTUaQzuNhiD5huPtdM7x7p1OXPWYAS
         BIz1FmTahmQLduTkZbIIISCQNCCn49nsBQ+WjJXQZn1HaBLUHjQwSkahy6fcKjcm9Cjx
         HzaF/Lpuhp7AkDyMYsHZa6if+//PAbMzOsQr9vVv4IqrcAhBYHxa4WwxShSfHWscTXYm
         vFIEp+w4CvQYAM4eN5hqfm4Vd7NFVPXOmm1f/D+GJ8ZtveovDbVLnsZaVkjZot7xJmRt
         9tFjUbyrW2HCKnLIU7dmyj6o9Kl+qiqc5m3cuV3eAmKlQHLBl5mYEMF13usR2A+ekquv
         KPzw==
X-Gm-Message-State: AOJu0YwFGwnZ2cx+CVmy0UDUeOvF0Dixr9ILy3yfRLGZMnK8Eb9J2j+0
	FCJ82dhnCyvSgG9fhi/tF1aoTU18Jzbb8hgT4NuT6xKK46K4HO45x2i7h8p8XWJ1DlnYeO7MUci
	m0Uf6
X-Gm-Gg: ATEYQzxW11+VXNIGxoUUvtE+iAvKxPcB9CrNeCY0M8ioWiY7tjCeblJpXq+70pTEJiR
	zgNgAxPsX7V8LgYbpsrzMfQs3W/Ln50DPQrxV0Whn6rZupNwHFk9bIiAw5or9pThVyLFhjo9e0x
	JS3/Nt8ORie43DBvdOLfDVxuPxcRAP0dIKrjZ+kdnODj9mm90iFz60iJtvbuw1BmPIBHVowSci+
	0FJHYzFYJPnFXXZK5qLjOoXclSMrbOX0huhQRmLo9YAKacj4gGh06kJQcw3x63ex9Exk/vUfVAZ
	9XpJUbxdixdM6kgF96poL3DhHuxAzzHeZA0DOPHgKeSb+kzUUNomOfyPkBK2m2tyUUooqlL82VL
	4EfLJiHKYQTubjW/JfrVCUB16oZNiX+AF7rGcKgAleqkD/Bu1RnYKFfHQHXDtz4bgJXor2hijW8
	6R4sR9+rSwVn1vT7y/EZEMY45WmSoC5PqyA/e+YH3wYjgHzncRLmsqNkrJIcdaegLWsCn376B1l
	23MzupPmOhHLlKt+VB9GNUCAyvT
X-Received: by 2002:a05:6000:200b:b0:436:3707:2bf0 with SMTP id ffacd0b85a97d-4399de20aecmr9419844f8f.35.1772270684419;
        Sat, 28 Feb 2026 01:24:44 -0800 (PST)
Received: from FRSMI25-LASER.home (2a01cb001331aa007f1b644d71d78354.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:7f1b:644d:71d7:8354])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4399c71ad07sm13031868f8f.16.2026.02.28.01.24.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 01:24:44 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: Poky ML <poky@lists.yoctoproject.org>
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [scarthgap][PATCH] poky.conf: add fedora-41, rocky-8 to SANITY_TESTED_DISTROS
Date: Sat, 28 Feb 2026 10:24:31 +0100
Message-ID: <20260228092431.176077-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 28 Feb 2026 09:24:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13842

From: Yoann Congal <yoann.congal@smile.fr>

Those are already documented as supported:
https://git.yoctoproject.org/yocto-docs/tree/documentation/ref-manual/system-requirements.rst?h=scarthgap#n65

Actually support them in sanity check.

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 meta-poky/conf/distro/poky.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 59d8f692..9db4de91 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -42,6 +42,7 @@ SANITY_TESTED_DISTROS ?= " \
             fedora-38 \n \
             fedora-39 \n \
             fedora-40 \n \
+            fedora-41 \n \
             centosstream-8 \n \
             debian-11 \n \
             debian-12 \n \
@@ -51,6 +52,7 @@ SANITY_TESTED_DISTROS ?= " \
             almalinux-8.10 \n \
             almalinux-9.2 \n \
             almalinux-9.4 \n \
+            rocky-8 \n \
             rocky-9 \n \
             "
 # add poky sanity bbclass

