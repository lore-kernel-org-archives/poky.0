Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F75C43458
	for <webhook@archiver.kernel.org>; Wed,  8 Jul 2026 09:59:03 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.5063.1783504738038945331
 for <poky@lists.yoctoproject.org>;
 Wed, 08 Jul 2026 02:58:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=ECFYk+k6;
 spf=pass (domain: smile.fr, ip: 209.85.128.47, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-493b691cb44so3169045e9.0
        for <poky@lists.yoctoproject.org>; Wed, 08 Jul 2026 02:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1783504736; x=1784109536; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gxGQ7Ul/dReuAgrKq/1xyxqtshWnsBzPIwKYcHQmwLo=;
        b=ECFYk+k6s9Ztsqv/lgGdMF1tc0+NXJFs+XNx7yuT60GlcADF4GCcd9889TS/g4Jsd7
         gNuUIvRfm0IUq9plY9Iqj98pjv1troKsWIC4w0oHIPXBjnIsbw4ukKS1vQ6n4Aaq6Vwh
         aPFnhe98pc5G9mx2guqnpgso+0bcgtjk1nvpQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783504736; x=1784109536;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=gxGQ7Ul/dReuAgrKq/1xyxqtshWnsBzPIwKYcHQmwLo=;
        b=WpEqoSwFtWpL5TPNP89TfayOPER5Gjq627w1vMo5i6YVDRZGbx1Z+gU3J3DsqNuZC+
         BlGU6CC2H1ZeN05L8leP8ufy74VhaFtbsLrukAIWV4Zvzr8CiMbeNOQy/14WcCsFEOcE
         lF6Ciu0FeWLeSbluBKjGaRRIvS9ziWf6PvIb1yveACjLehkdvpMv6TIvrKmc2Rm11Elj
         wrln1oyJKCN2dZSOyurnr3qdvYAX286RAG0qoPCu+lixoKAwaliJdSiqRMN/Qh7s/oJN
         wLTAK1edJ4RoEhyXrllOGniEuY7nofzGWyJnnPz8zkQdR8fgqtrsmpnlrQvkZu6c+wIz
         xLoA==
X-Gm-Message-State: AOJu0YyEnytPayBRCtoMGbSRQyuOQiwOWw4+W7JqOe1OSIg2dI2Yw4AL
	1CdzMZU/sNKPfVXzOYMd/ok3FSv7ZpADnqtO43C/K5vARRbIDtx99Uc+Rgb9UFlFSKwEboCi06N
	s/5ZL0dI=
X-Gm-Gg: AfdE7clJ+e0QGrtGm60cZBhyiC6sPL2tH6mVr000RSZgMj5PGI2aakZsqm+r/OpfcC9
	8goxUlBDiQlBLi9+9/CEN49Mg8DjM+BJbOxHRX0+z+yfNTOx46V+GDif+SDZZg4m8CN/StIW/G1
	LRp7kRbxbMu4AMxOvaWz3CdqcG8OChVHuaijgbx5HMERLhh3bFX07cpN7FjbxEbAuSDzoylLNBD
	UiT2mXKwgcnvytRAzHBqd9j8gYolKeVpvm8vvUxyX/RhNb9hoGIqL6FV/erx3yK5FlUCdhEwvCp
	QWOt7diDC09wYDKi49kdwgewEAlrnbnewx1XbcJ1gHXS/VEvxtBC59ANey3JKKUR3Pc9wgs3Ay7
	d6Q7e6p2iZ6LXIqnV5ZBIOgz2x4BCG/+NinLjb8iIjohxX9VHRsH7TOYVGLkrdyORBSVpgTcrlK
	f+69BEgxnCwgydtuegXyfa82WqznqCHjQKRGwiM//4oEw2NUCCjuu5hAigH0Gy7htcHpJ0a7dHe
	u5/kpJrjNR3zrRrlRj5HQ0zlZ5WGCwFYA==
X-Received: by 2002:a05:600c:c3dc:10b0:493:a6b7:cae5 with SMTP id 5b1f17b1804b1-493e689a981mr13099145e9.28.1783504736042;
        Wed, 08 Jul 2026 02:58:56 -0700 (PDT)
Received: from FRSMI25-LASER.idf.intranet (static-css-ccs-204145.business.bouyguestelecom.com. [176.157.204.145])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493e0faee30sm108334595e9.10.2026.07.08.02.58.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 02:58:55 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>
Subject: [meta-yocto][wrynose 0/7] Pull request (cover letter only)
Date: Wed,  8 Jul 2026 11:58:46 +0200
Message-ID: <cover.1783504645.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 08 Jul 2026 09:59:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13937

Those are the patches from the last patch review:
https://lore.kernel.org/all/cover.1783291504.git.yoann.congal@smile.fr/

Passed a-full on autobuilder:
https://autobuilder.yoctoproject.org/valkyrie/?#/builders/29/builds/4156
* failed in qemuarm64 with 16295 – AB-INT: go-runtime: do_create_package_spdx: No SPDX document named .../package-go-runtime-staticdev.spdx.json
  rebuilt in https://autobuilder.yoctoproject.org/valkyrie/?#/builders/36/builds/4073


The following changes since commit 24c24cef5d1523fefe43a3e3d34667b37ae551f3:

  poky.conf: Bump version for 6.0.2 release (2026-06-24 14:12:57 +0100)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/wrynose-next
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/wrynose-next

for you to fetch changes up to 824795b885b25e074a2880fbcd54e1a6c875d47d:

  yocto-bsps: update to v6.18.35 (2026-06-30 19:19:52 +0200)

----------------------------------------------------------------

Bruce Ashfield (7):
  yocto-bsps: update to v6.18.25
  yocto-bsps: update to v6.18.26
  yocto-bsps: update to v6.18.28
  yocto-bsps: update to v6.18.31
  yocto-bsps: update to v6.18.33
  yocto-bsps: update to v6.18.34
  yocto-bsps: update to v6.18.35

 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.18.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


