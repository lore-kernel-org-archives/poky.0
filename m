Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 534191091938
	for <webhook@archiver.kernel.org>; Fri, 20 Mar 2026 00:24:37 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.2566.1773966266895153274
 for <poky@lists.yoctoproject.org>;
 Thu, 19 Mar 2026 17:24:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=11qg70V8;
 spf=pass (domain: smile.fr, ip: 209.85.221.52, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-43b4915161fso72919f8f.2
        for <poky@lists.yoctoproject.org>; Thu, 19 Mar 2026 17:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1773966265; x=1774571065; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=wP9qIbEUEcEsIjPtRKJKCeTD1HeQlf6Qq4i8ZpuREXg=;
        b=11qg70V8w5/Do8oyQYaKPfX9NHPGRrr7kTcPUttIkBs8/IW/+4eXA5vvlWgRZVI0XG
         HbazmvcOLQMvuT1zMQfbbQx1l25l/McR1N49UBPMDMTUHVX2Lb3PGrgXJb2NZ4Zf1AlU
         hE5Wo5avMZNFJoXt/vdVY+Szt6MYFypTR2pak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773966265; x=1774571065;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wP9qIbEUEcEsIjPtRKJKCeTD1HeQlf6Qq4i8ZpuREXg=;
        b=TKE/oOViHgsHDEokfzFKV2+y1+R69q2x4LlJmz2eF5MwHmgzNnf7wjjGCry64jk6QM
         +vJzBDP+Ic53puoqpk/ck3VaJNhIKtrrJpsckQUSpFNJEpv6AnvRoYk+aBn1pT8ODMNr
         KV9pzb6rLjpmoo4BiyJ2FE/NezMIcajG0chqWxCzr3UhtXdlRlQAJ0FRv5vtUat218Pd
         xSHxyFOmV2e+MHARqQeogDbICtKHsTTISx7dNVxID9e66NqvlbFA1chsYyvL+QKqKFKW
         a0iWdNHJ843wOOwDJTSGGeG0sFmp1OrgomqZzS+flKf8WxDZ3IyjmxGCZMEETXO3W6ZP
         pXmA==
X-Gm-Message-State: AOJu0YzntZnHKT5IAPRaYo5tVQKXYt0jUf9o7p4HuZZcmsZWLdvWO2J5
	A5Pp0kJKW9pBCz7MLm+ZZo9SNHSRdqz1gzAFHGnSAa2/iNeLCReHLNRsVKZeztukRktWK8ivlnF
	v809p
X-Gm-Gg: ATEYQzyGONHh+CPTYtqvRhq8BGOMBdhKzn8HSOt+64X7eejhYBINjeuWqqqU9MtPFhE
	2MXd3+8bRX3YDlhpu9ACVrHUdP0hSNedKystkT4yZJwv5M6XtinmFnq4FAKL1sfBaXCa6MS8ECE
	SaxEUUSsybOOe7IpMFvRn26jQhySaDHaMVv5eLKo5ZT63qPlL1CrKOnGsZ+1g9opn+20GI3/LD+
	k5HcUpZ1+5aw4fD+3q2bf3g7mJDzETtcCps2kJHbNc3BhKB9mu9Q05RkYNdZ+PeQViwmmrE7MB9
	w43iYttx687hcerI0zL41Se0Hw7yQU7mgRuPapN0bOVrMzjtjKKVKUY1gSfuGT9894eaLq9cIfZ
	0XO/4bzwxnyy1op/Mf25xeoRB6naVwF4qfk7g4Nz7v839zh0wHicjPLQUSf4McOyw35xJoaBWox
	qQKmeozm3MlHSOQ7HcOxzOgVquqKVvyLI5vJ0VQqWFwxmoX0yfl0D0Hspjp3xa6bkEcgXWgq7zK
	oLlErNZlsfiER25oh0d+2gdkzc=
X-Received: by 2002:a05:600c:1c16:b0:485:39d4:2dd9 with SMTP id 5b1f17b1804b1-486ff04fb4cmr16891395e9.33.1773966264638;
        Thu, 19 Mar 2026 17:24:24 -0700 (PDT)
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486ff1ce05fsm5846275e9.5.2026.03.19.17.24.24
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 17:24:24 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][scarthgap 0/1] Patch review
Date: Fri, 20 Mar 2026 01:24:10 +0100
Message-ID: <cover.1773966064.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 20 Mar 2026 00:24:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13865

Please review this set of changes for scarthgap and have comments back by
end of day Monday, March 23.

Passed a-full on autobuilder:
https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3457

The following changes since commit 94d19f9d8392f8a125764df0f8eda04205c7e76c:

  poky.conf: add fedora-41, rocky-8 to SANITY_TESTED_DISTROS (2026-02-28 10:22:25 +0000)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/scarthgap-nut
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/scarthgap-nut

for you to fetch changes up to f87e76ef6bd6745038616876af07c6a74b49f8c9:

  poky.conf: add Centos Stream 9 to SANITY_TESTED_DISTROS (2026-03-20 01:13:41 +0100)

----------------------------------------------------------------

Yoann Congal (1):
  poky.conf: add Centos Stream 9 to SANITY_TESTED_DISTROS

 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)


