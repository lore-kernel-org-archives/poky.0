Return-Path: <m.glembo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C207C4345F
	for <webhook@archiver.kernel.org>; Mon, 22 Apr 2024 13:55:23 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
 by mx.groups.io with SMTP id smtpd.web11.19144.1713794119684773134
 for <poky@lists.yoctoproject.org>;
 Mon, 22 Apr 2024 06:55:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YPJVvjRA;
 spf=pass (domain: gmail.com, ip: 209.85.208.49, mailfrom: m.glembo@gmail.com)
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-565c6cf4819so9417044a12.1
        for <poky@lists.yoctoproject.org>; Mon, 22 Apr 2024 06:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713794118; x=1714398918; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8UwGo8unKUzUPApfb7t6WYN56LXF9iUajRJ9owdfdxo=;
        b=YPJVvjRAD9mtUmiDCkqheYOi6oLP4os2H1kUtD05jK0gGl7QF4XQV9jsTPJ13jRDtP
         lFnWaoYlSyBghEkuyWHa6QkICwvqQEv8sy2iBzwkrTVJ4hTU3sNxHcS3/tjczDe7kx55
         2zXjbgblwiOSPSurBnRNzevBqpFBXDj8TT4zFJT1CqYFfPlKcVmZyYNQyZYWguOuPHO4
         LICVN95dMyYm+sXNySil2zXYKTedBcQHzznUz+YDhZfHRujTNF4Iuy8p2oQ3Quo/c1QI
         dM+7/WuSqdj9c3KGl++icbpiVNfz78TWg/Rv6GXOfTaiC+RSTmUOHGDgWxwD9OPq3xgV
         pnWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713794118; x=1714398918;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8UwGo8unKUzUPApfb7t6WYN56LXF9iUajRJ9owdfdxo=;
        b=S9/oSAiF/I1iKBPPt1FWnAM6zC772QU+IpTldCBRo2tjz28hMte76TJFDyCW43PSVv
         mCCG6b3LDW0hD2N4O0ez16E72+lP+PIlmZB8hGQXrqOtwKfIsU7+8hZqiTTF7isv5uRZ
         UKo8zwavbzF4y/ggHVrHmQQHiiwLJ5jRPWYbaalTNdeKai22Xk6D7rfKSpLvUlgSdJ3y
         SqvmpoCK+sWfLODx3wxcTQSPuoX3IO88gG1GOybTBf7XoIvkcN/yBHselhBR0OPoKuia
         /2Efc4CaxMS353qPxszVGYP2784U42DS9i22RmYJruFCosp52XrMCEMmoSNnsH3hKSfq
         EIxA==
X-Gm-Message-State: AOJu0Yx1jD4bbOGSai3aQYv3PwgqlIMUzwBMZ8kPbJxGVlI3w+VuZaEc
	RZ/GccU7/iABG5eE2/OY37lOsWvC1quNNjN6hBTyqh+uLxrEp6JqigaMVQ==
X-Google-Smtp-Source: AGHT+IGI356ivCwoM1L/pSpjSICjTA7brFhz1FDfXiV8mP4VXNsfBsN0wgia66VnpUUljBZTcLdjXg==
X-Received: by 2002:a50:ef06:0:b0:571:bc22:e32 with SMTP id m6-20020a50ef06000000b00571bc220e32mr11511641eds.8.1713794117376;
        Mon, 22 Apr 2024 06:55:17 -0700 (PDT)
Received: from PC-2635.irisgmbh.local ([2a02:8108:96c0:76fc::9c30])
        by smtp.gmail.com with ESMTPSA id b10-20020aa7dc0a000000b0056fe755f1e6sm5506411edu.91.2024.04.22.06.55.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 06:55:17 -0700 (PDT)
From: Michael Glembotzki <m.glembo@gmail.com>
X-Google-Original-From: Michael Glembotzki <Michael.Glembotzki@iris-sensing.com>
To: poky@lists.yoctoproject.org
Cc: Michael Glembotzki <Michael.Glembotzki@iris-sensing.com>
Subject: [kirkstone][poky][PATCH] rootfs-postcommands.bbclass: Only set DROPBEAR_RSAKEY_DIR once
Date: Mon, 22 Apr 2024 15:55:12 +0200
Message-ID: <20240422135512.83806-1-Michael.Glembotzki@iris-sensing.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 22 Apr 2024 13:55:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13330

If DROPBEAR_RSAKEY_DIR has already been set before, e.g. by overwriting
the file dropbear.default, the line will still be appended a second time.

DROPBEAR_RSAKEY_DIR="/path/to/dropbear"
DROPBEAR_EXTRA_ARGS="-B"
DROPBEAR_RSAKEY_DIR=/var/lib/dropbear

Signed-off-by: Michael Glembotzki <Michael.Glembotzki@iris-sensing.com>
---
 meta/classes/rootfs-postcommands.bbclass | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta/classes/rootfs-postcommands.bbclass b/meta/classes/rootfs-postcommands.bbclass
index 5c0b3ec37c..f7517c66dc 100644
--- a/meta/classes/rootfs-postcommands.bbclass
+++ b/meta/classes/rootfs-postcommands.bbclass
@@ -119,7 +119,9 @@ read_only_rootfs_hook () {
 		# Also tweak the key location for dropbear in the same way.
 		if [ -d ${IMAGE_ROOTFS}/etc/dropbear ]; then
 			if [ ! -e ${IMAGE_ROOTFS}/etc/dropbear/dropbear_rsa_host_key ]; then
-				echo "DROPBEAR_RSAKEY_DIR=/var/lib/dropbear" >> ${IMAGE_ROOTFS}/etc/default/dropbear
+				if ! grep -q "^DROPBEAR_RSAKEY_DIR=" ${IMAGE_ROOTFS}/etc/default/dropbear ; then
+					echo "DROPBEAR_RSAKEY_DIR=/var/lib/dropbear" >> ${IMAGE_ROOTFS}/etc/default/dropbear
+				fi
 			fi
 		fi
 	fi
-- 
2.44.0


