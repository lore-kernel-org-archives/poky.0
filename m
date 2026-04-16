Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C137F88092
	for <webhook@archiver.kernel.org>; Thu, 16 Apr 2026 07:03:54 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.7966.1776323026671932653
 for <poky@lists.yoctoproject.org>;
 Thu, 16 Apr 2026 00:03:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=MyG7w5+7;
 spf=pass (domain: smile.fr, ip: 209.85.128.68, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-488aa77a06eso124774445e9.0
        for <poky@lists.yoctoproject.org>; Thu, 16 Apr 2026 00:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1776323025; x=1776927825; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=WTtaY59/+3NhLKStWfK1BeDQLagHADovvooqn+Xg3fI=;
        b=MyG7w5+7qwYXRaUlRAUolDUOnZ8Wu21QfO+MzZxtw76Ddf4BD5CLXT3eDIknLI+K/v
         yNOzoOPHX58SCnmFoZaUPlVMLsF5YjFiW92P1F8NOCa9hpKmT9gC5IzquOHGBR/IEM7D
         cx9Yp8EVYSPocYsHyq5rTaP9KsWH1NaJTZhrc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776323025; x=1776927825;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WTtaY59/+3NhLKStWfK1BeDQLagHADovvooqn+Xg3fI=;
        b=RW1j7V7pOM1wmF1gsTcpfjLoLdvhjosTtLrAC19hxrnxqSZuvylN5abQ+VxTsPMb/C
         PKAzYxdeYo4YzezgopPSlPaFM9GcNN+yg60fGaOd4G4QThhU5p5eio12TaCjkD171cOs
         wxkorqghBLwCoCctYVhbFDTaO/6Zh0uOlG6JetT+C2EocpCUnW4iWRfgw3NMjRVAWo+U
         ADjcxh4GISLTdbrK54neOiEkyvnOmbAmoiMYfg1TehF2PUs44+brZefxXTdXgspli1HC
         5Tp8CtLaQzD9/X+CH60g8/yCVW9RKEIfWlVVsUJU0aRyVk2eZo0NitJfUpbg4qv4bEL7
         vVwg==
X-Gm-Message-State: AOJu0YxaVFxkkClc0tnJTtRMzOdggyYA+WSjJOVSmP+aN1uarwMS3Dvc
	Owrg8HW6lPD0LK7xdOdan7uddPPw5ar4ZMa5sZBHU+j3FVeWnbONxggsJDwl9Z/NbN+rowimz2W
	m2JrvbbTOMi2h
X-Gm-Gg: AeBDiesg86NtsXA7X2aFnsq6SPvnL0niGHjGhCPX1lvnuK8/Y+8s1Ajsdibsmo/jvog
	ceTQ509RmKoxq/F1Z98usLsze4qqEmE/RDtZMeNDhgYNS37HgRJfuemaq9ujPXIFyAZhxVkz6dR
	xo04QsTo0eTB/hNr+kQk/i6k9d20cuYL98RN3kb+Iaz8OJrFo6itM7gxXUrdVhjr/hO3bI5jROP
	5hSMUuF+RuJJ7hWxPKz6sOUt09gUdcLgTsDymdXswGWBIZKy7EjC3EO2j/HUbI+jJ2thkT+f61F
	ODAunN73LbozwSdROn1WtNNd0yBZvBsY+imFqJpM0xIP8HV54HS4P+nT/NHbPkDczCi/1h63vpc
	rBcZTFsoBYeERtY8TQT480jYLBEfObNFuLt/r10GNfDEEA1wFCNcIixBLIC4zCOcEAMLjaldNpb
	me/xpX05SuCoIQvmZr98Gs7KuigIDnvOVhMjrRb/wejEgIJbfOmeKreR1YUz00iu5WxiuWE5nyv
	jpslsuEMhcSAFz8PRrYXHHNLB9k4wb5DR5yapXPXdJCXGW0
X-Received: by 2002:a05:600c:c088:b0:487:338:b4f3 with SMTP id 5b1f17b1804b1-488d68431a9mr248550535e9.17.1776323024345;
        Thu, 16 Apr 2026 00:03:44 -0700 (PDT)
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488f581652csm30803515e9.3.2026.04.16.00.03.43
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Apr 2026 00:03:43 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][whinlatter 0/1] Patch review
Date: Thu, 16 Apr 2026 09:03:38 +0200
Message-ID: <cover.1776322970.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 16 Apr 2026 07:03:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13900

Please review this set of changes for whinlatter and have comments back by
end of day Sunday, April 19. I plan to do the release build on Monday.

Please note: This will be the last review cycle for whinlatter.
If you expect a patch to get merged and it is not in this series ping
me as soon as possible.

Passed a-full on autobuilder:
https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3670

The following changes since commit 9b98ec5e6cfb6c9dc74d3c2e6304eeb274f7c487:

  poky.conf: Bump version for 5.3.3 release (2026-03-16 11:04:02 +0000)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/whinlatter-nut
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/whinlatter-nut

for you to fetch changes up to 612d2774ce53cedf828db4bfd35bd5772e520dd0:

  poky: Fix CentOS Stream 9 distro name (2026-04-14 10:08:31 +0200)

----------------------------------------------------------------

Paul Barker (1):
  poky: Fix CentOS Stream 9 distro name

 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


