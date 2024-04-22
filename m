Return-Path: <m.glembo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0FD24C4345F
	for <webhook@archiver.kernel.org>; Mon, 22 Apr 2024 13:56:03 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web10.19115.1713794158176046405
 for <poky@lists.yoctoproject.org>;
 Mon, 22 Apr 2024 06:55:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=g+TqHa/f;
 spf=pass (domain: gmail.com, ip: 209.85.218.41, mailfrom: m.glembo@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a51a7d4466bso472634466b.2
        for <poky@lists.yoctoproject.org>; Mon, 22 Apr 2024 06:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713794156; x=1714398956; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7uHp37Nq/0JUnW8dqw1rmN8CZdcY6lZ9RgNxNhC0TZI=;
        b=g+TqHa/fvbasG0o7is5fvAl63xd8o3WkaoK5njYbncvJZaHBP0X2pnxsa8NDY+MyzK
         TAqHdOMb3WgF0pijk7EuDGe1p41mOuiZHFHHQfvKmHoeQZXPFfXRlNcVrk3qg20xSGBw
         8aSsZbIMXpRSd4wUwL/pq4WOCLHAHo3iPz5mktMOT3K1+3opuyQ2BKl+8WMTFLwFF1ri
         HfPgQWNC8m8d+tG2i77GgLqjmiHjt2nR17h8W3wKs+hYfgTZZlnjee3ehVXb4B8c7iCz
         lJiJRQeYV1ed+H3Wlarn6Cn5qu9Er3rGtPOF24EqSu/5JREyvKFkog7RpBWNJxjUsSyL
         2Sjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713794156; x=1714398956;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7uHp37Nq/0JUnW8dqw1rmN8CZdcY6lZ9RgNxNhC0TZI=;
        b=pAcHZyJFhgKW+t0rBThso5rNwQPs6M0ijr+qtqFZU9iEz9Vw7o706Z7EA0xehQ0/Bp
         nK1ugARmdCT+7YZWJaYc4oZhv2MLu0Ahg+ahqz3AswWUcVZzRzaRnXsnWiPi8bizRgc7
         Myg5DTaDFOm4DqejmY3j2hGVmojnigXCSQBtHs54ACAPui/MMXxS/zLw2a/jfraTLV/X
         BfCONpiGzNeBNFICpZG3+Mo0xeOWp0tDPXNy7yPlR89mnZo8S5vEF7a8oP17L6AetwjB
         jMvqqY2l7gW3tuyWaM4S24n7U9mbP6NMAllyuoZe1eFeADc8n0ZnfgsON7j2EJ9Hv7RV
         jC5A==
X-Gm-Message-State: AOJu0YwLVKhr6kRDvgXZvUSERB4y4bS6vLVFf1kptm22A4uzUivvOLB6
	+uigUWbQUKwhVGIqSwM4V1qxyAVIFkwaqHsVrGuzKWG6GqC8ndgPlwUEBw==
X-Google-Smtp-Source: AGHT+IH79+Cfj/uYJhYKh2FG0e8tTUX4liW8vwp7j630pDHBdSTMPmOqwtFgqXenJWM9vbCyEovYfQ==
X-Received: by 2002:a17:906:a10b:b0:a55:552d:965e with SMTP id t11-20020a170906a10b00b00a55552d965emr6771416ejy.6.1713794155724;
        Mon, 22 Apr 2024 06:55:55 -0700 (PDT)
Received: from PC-2635.irisgmbh.local ([2a02:8108:96c0:76fc::9c30])
        by smtp.gmail.com with ESMTPSA id h2-20020a170906398200b00a4df061728fsm5771592eje.83.2024.04.22.06.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 06:55:55 -0700 (PDT)
From: Michael Glembotzki <m.glembo@gmail.com>
X-Google-Original-From: Michael Glembotzki <Michael.Glembotzki@iris-sensing.com>
To: poky@lists.yoctoproject.org
Cc: Michael Glembotzki <Michael.Glembotzki@iris-sensing.com>
Subject: [master][scarthgap][poky][PATCH] rootfs-postcommands.bbclass: Only set DROPBEAR_RSAKEY_DIR once
Date: Mon, 22 Apr 2024 15:55:52 +0200
Message-ID: <20240422135552.83928-1-Michael.Glembotzki@iris-sensing.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 22 Apr 2024 13:56:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13331

If DROPBEAR_RSAKEY_DIR has already been set before, e.g. by overwriting
the file dropbear.default, the line will still be appended a second time.

DROPBEAR_RSAKEY_DIR="/path/to/dropbear"
DROPBEAR_EXTRA_ARGS="-B"
DROPBEAR_RSAKEY_DIR=/var/lib/dropbear

Signed-off-by: Michael Glembotzki <Michael.Glembotzki@iris-sensing.com>
---
 meta/classes-recipe/rootfs-postcommands.bbclass | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta/classes-recipe/rootfs-postcommands.bbclass b/meta/classes-recipe/rootfs-postcommands.bbclass
index e81b69a239..920da94ba2 100644
--- a/meta/classes-recipe/rootfs-postcommands.bbclass
+++ b/meta/classes-recipe/rootfs-postcommands.bbclass
@@ -206,7 +206,9 @@ read_only_rootfs_hook () {
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


