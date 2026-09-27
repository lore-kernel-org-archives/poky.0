Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 764ACC98324
	for <webhook@archiver.kernel.org>; Sun, 27 Sep 2026 07:45:18 +0000 (UTC)
Received: from mail-wm2-f12.google.com (mail-wm2-f12.google.com [74.125.225.140])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.33607.1790495117042718255
 for <poky@lists.yoctoproject.org>;
 Sun, 27 Sep 2026 00:45:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=cxeVAsS9;
 spf=pass (domain: smile.fr, ip: 74.125.225.140, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm2-f12.google.com with SMTP id 5b1f17b1804b1-49e6598dd44so12112555e9.1
        for <poky@lists.yoctoproject.org>; Sun, 27 Sep 2026 00:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1790495115; x=1791099915; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=bzjIgz/CqxjLhKYfcc0WwiwDgSBDH86HRrwbyXW9Pgc=;
        b=cxeVAsS9vTRCtyjBtttW4b9+F6gaeifRDDAhsvNSLZ3S5KSej5eAcClVew4Xb/4FuO
         tQNTHmGh5zpUl6cZXGq/yW6dtlI+XmDmuwWJVAC2xiRDOgVW/MMT/dOrF8B2JjfDEG+O
         ow9OCdEz3G8rFT/3IbqQCaxvM6ioARc9diIuY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790495115; x=1791099915;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=bzjIgz/CqxjLhKYfcc0WwiwDgSBDH86HRrwbyXW9Pgc=;
        b=A9Y9XkJIJQgPHf809kPHVixlUrCq62J0pcjUBTnFaKHm9fOgpolAg7ow0zeI5quVLD
         0v3+f/WMu4VmqZDb2Or+1XPAO88D0moO34y6g+rjRcfdLYrkIsx13ToWIb599nyoxRHS
         Y296a+noQ0DC8Jur8VVTboeXcLIpb8gwiQap+iCeVUqDKBI2jgijJdSTz/4ZrVE7o0+N
         NyC/bbRuP4+TuEjZYu+F1wmuTh9E3T+hKj9BV1m0wrYp58eyzywsvSFay4O8pyEA1G1Q
         MBZIfr6WA/W7oJKvD+zR4ypsGyz1Xf8V8dNkzfXAoZJ1Z48v/PQF+0XszazuGAEJEj/Q
         f8Ug==
X-Gm-Message-State: AFuF++nb5sNKZGvmjElEwu5WEUT0XsjdBjmGPPZiGR6Xzp996nIRC1ti
	L8uY1sFW7NJwttseh76yQVePojhQKNq30AyQ+AYqADqGZu0qtHTT6d5OX8VfSk2T7wNxrdsKVEC
	8duA3o+U=
X-Gm-Gg: AYBFou3dXKRCk23mldRO9pOXE7C91jZ3DJ/0Eh1yh+/ong6Qyz9G2DQUXG2uUn4Qs0w
	22EzU0Hmi3Z7lj3T291X0f0vfagWJx5KG3NIwO11Ske5dCE9ZYPeb0j7M2lFTjsJ8PcE2Ge0Hy/
	HsJKFYoN54j+V++6+oubyG5KLMeREpQmFZyxiwIajKzDqiAZycXUIhPyhIZLqA+mv4XZ6xKNEaO
	VI3y81z8U3dIsBYPIPiJ6fqFvFUSpkSbWRD9JHD9l5crubIpBgEsq23dL06KEmu0fvvlyLHIG4p
	xwVxpnjSPSy4XREPE28L5cZCT9ceinEvRW/9mOoU8AXq3nz3HhipCPD3th5sqZpBszkYqHyMMpC
	HkBJEtLrxYMCgv/M4wdtv1LIs3SDufGwPZowb7ySejdXyCbYwejt9gpjOV4b9W6Hr1fo6lGUgJF
	nGgg2qd8ZNLxp5X4Mvss2GKhvgv1kNRvmjEL4fKaTwPb/a0lLfPelx8kH0Bz7d9AnioTnjc3VsX
	q9RVv1QWoUYsFIYc5M/6IoNysroUdA5SrHxWNazntZuL0uonqupZn1Yp43QLk173UgmSz1i1wI=
X-Received: by 2002:a05:600c:4594:b0:49e:6249:268b with SMTP id 5b1f17b1804b1-49fe6707f69mr197905405e9.32.1790495115167;
        Sun, 27 Sep 2026 00:45:15 -0700 (PDT)
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a0019057cfsm45786425e9.11.2026.09.27.00.45.14
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Sep 2026 00:45:14 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][wrynose 0/2] Patch review
Date: Sun, 27 Sep 2026 09:45:10 +0200
Message-ID: <cover.1790495081.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sun, 27 Sep 2026 07:45:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13967

Please review this set of changes for wrynose and have comments back by
end of day Tuesday, September 29.

Passed a-full on autobuilder:
https://autobuilder.yoctoproject.org/valkyrie/?#/builders/29/builds/4811

The following changes since commit ddeeba423ff0565b8f1192f16072b5993d5ea6a0:

  linux-yocto/6.18: update to v6.18.48 (2026-09-08 11:47:08 +0200)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/wrynose-review
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/wrynose-review

for you to fetch changes up to e84a6c2922e8782961ddca05fa27f3be0078f5ad:

  yocto-bsps: update to v6.18.52 (2026-09-23 17:33:17 +0200)

----------------------------------------------------------------

Bruce Ashfield (2):
  yocto-bsps: update to v6.18.50
  yocto-bsps: update to v6.18.52

 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.18.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


