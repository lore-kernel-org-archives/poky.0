Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961DCCD98EE
	for <webhook@archiver.kernel.org>; Wed, 17 Jun 2026 08:06:14 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.10624.1781683572710328046
 for <poky@lists.yoctoproject.org>;
 Wed, 17 Jun 2026 01:06:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=3hUmfJ0/;
 spf=pass (domain: smile.fr, ip: 209.85.128.47, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-490b64c8311so53152695e9.3
        for <poky@lists.yoctoproject.org>; Wed, 17 Jun 2026 01:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1781683571; x=1782288371; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4lzCrc+kspljURLKONLgJYQjFgNWdjSwxE16AqXUF/E=;
        b=3hUmfJ0/b9SOUMko506mtKVMhnlXsd+NUL9XG3AtQw74Z+Sn5vnZnmzLVMRu0U37Ie
         aPkpTNgEitxVUtF+ctbRsui1NYiNsqJH18/AVnVmK8d4+Fmwi4/VqRh7C0o1+KuBX+ci
         gBoWeL2vEjeND3l/ee9DP6ImEuzNN1YJK/gGs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781683571; x=1782288371;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4lzCrc+kspljURLKONLgJYQjFgNWdjSwxE16AqXUF/E=;
        b=AI80gUS78ghi9C6XiYVt6/nDdNSxmpWkm5EjwxVJffygrWMioBYi+HvXZNGKvO3GMS
         lcRS0BWBxqoZkY9K9vMz9x3YAQ/uhCYYzeN94CMCmpQ9y9DtVKwMSySoFA6qf5Tlac3A
         WIwLkowKz8ccz/TtYkYdoLtWs5BNbNzMXQDUDqimhj55mWbAL/mbxPm53doBshEO8WxD
         Ev0cHSdjUbgyzaJUd93Hv8IWoI8d2RsPvDvwI+QuX5frlC4e1pmtlKDQAsI1TemA9OMR
         chck3q1TA7sBil2AY8WdCZ8h3puPgKnX73IylV7ftSBDcZVzCjgr93h4yx/tG6mHArsX
         ZcJA==
X-Gm-Message-State: AOJu0Ywe8HCpO+vanRiL4FtEsRT/r652bOuRT1R8iKBkZhTL/HW/Q/D/
	lMdg2BuDiea1Jg37q86dck1E6nrx2HAIO9QN6ZONQIn6nnEjlgUFPPEIxzLVO9/Y2pSpBvCuIC+
	tmNwt
X-Gm-Gg: Acq92OEkn3zrjrKGjC4s1oQDWXDqj5ShrZdfXMAenLLIa3vyaS0KQlMX+2Br++UBXs5
	S6hAoKGe2dLnn4VMdhvLklKQtVkPY2AER4o+Am+uQ8/0shFto7/lEPVVm02tn9FL6k72MQX6OLc
	d9eSnMcQkDuZuoqTdhyYw3LKDkWoFznHH+n4l7op5hhwL7u4ge2dRQuX9Y+KI6juxi/6BxvggUz
	3EO/OQHpyKHU73j3oN85inx+wHquQPB+Ro8C7pa/umnMuDS2YXndFgguWNZBStJDywR4w21yXYV
	7+65Xr8gHGWdX84zHccSN2Rtw50md8EO1XdIrav3+VpgjOoo4XxAebhLnGUDb0DIVt7szZ7ZcBe
	xHerlYR3VJimVxVVQ+XSfPL1RgypQl7CipFWKMrSc7euQTLNXHxReKRFlbQ9r2MeP3YovDgwBSe
	NmPE/RDFEcI6IYBhKumheInBZf5lALElWNJJkYSgPmpXN1GH3dQJxFm6kav5KDQDrX9qi27M4/X
	RN5aRp+RSTzqEKz
X-Received: by 2002:a05:600c:8287:b0:490:9782:3eb8 with SMTP id 5b1f17b1804b1-492333d785dmr49360835e9.25.1781683570901;
        Wed, 17 Jun 2026 01:06:10 -0700 (PDT)
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49230a4fd31sm133704365e9.4.2026.06.17.01.06.10
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2026 01:06:10 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][scarthgap 1/1] poky.conf: add Ubuntu 26.04 to SANITY_TESTED_DISTROS
Date: Wed, 17 Jun 2026 10:06:07 +0200
Message-ID: <8221a532ed3dd4fdb47dffa35f82a1d20ae425db.1781683469.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1781683469.git.yoann.congal@smile.fr>
References: <cover.1781683469.git.yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 17 Jun 2026 08:06:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13927

From: Yoann Congal <yoann.congal@smile.fr>

A Ubuntu 26.04 worker is available on autobuilder and ran successfully:
* bringup-fast https://autobuilder.yoctoproject.org/valkyrie/#/builders/97/builds/22
* bringup https://autobuilder.yoctoproject.org/valkyrie/#/builders/96/builds/34
  This one was from the -nut branch but it did not change during merge

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index a7dc4046..177e5e04 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -39,6 +39,7 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-22.04 \n \
             ubuntu-23.04 \n \
             ubuntu-24.04 \n \
+            ubuntu-26.04 \n \
             fedora-38 \n \
             fedora-39 \n \
             fedora-40 \n \

