Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 706EBFF8849
	for <webhook@archiver.kernel.org>; Fri, 24 Apr 2026 21:06:05 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.32810.1777064761021488455
 for <poky@lists.yoctoproject.org>;
 Fri, 24 Apr 2026 14:06:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=rxeEDfhz;
 spf=pass (domain: smile.fr, ip: 209.85.128.66, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-4896c22fcbaso54091065e9.0
        for <poky@lists.yoctoproject.org>; Fri, 24 Apr 2026 14:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1777064759; x=1777669559; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DFZPb3n51VNjktRvbz9c7axaZ8zQ5m1XhxoXAERfk20=;
        b=rxeEDfhz8YA0KuNCOWgcfPudXmYnCkGr9nniPi7HzZ2n813qg/7CPO/bHWyPLrqfJT
         dIUTHtcIw/ggJLsaXU+N7PzfCCNoJQ9/tlkCUwi+JfOzAHIrK1GRreyMbjsI+UR2B+Je
         FX8otb/0O5tppcpCsqtoU1JnKSqHAOYh9IUsc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777064759; x=1777669559;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DFZPb3n51VNjktRvbz9c7axaZ8zQ5m1XhxoXAERfk20=;
        b=W8WKaXbigSHsFysxNPfZ9kJzhTdpUfUvq1+Li3+oq9YGdPMvlZrxto/a+hykvLhqM0
         KdvW9iEsn+xs0j2phFjlOWJWVJelyN2skaUGKpkRz4r1aEPDoAMlvf91QKS8gRWrAI/H
         a7iQKgiggOGTAvT3B3l4mhZvfvZ7662RoOANMRdcbLZB3IR4u8pV4tJBoJISt5cLmZgl
         m9qG41xagXo9vu35rufjmtKObygWbIkF5kIwpSBGV3hclTCqn/CLCpiahxpjnT3Q9sIN
         LuKiu/m4Hrh6gsDNQhkQrTiFuANcOjJbAsWaGqqSQQwKUeTfDzDKp/bWoUDEMT4kLIXa
         WzLA==
X-Gm-Message-State: AOJu0YzDX7aSXpdlOP2D36DSUNNwOx/vXX8U4QrrGnzqUewDxS91Mx44
	xK6LL9u/ap/0KM0QszFb3vj1UbTpF5jdVYhXhDRpSr2UpBvT4VrR2ZQ/t73DAs98f9bPk81Rj/6
	UqUc/gDRohKPY
X-Gm-Gg: AeBDiev5LUdM/TzDhFqmBLxKiEN7BuJog9037+7a7O54GkyzAGdb/unp2r3Qf8trE4K
	xFau6vaeNa0FkNS30qOw4+eYB9fOgOYtZF8Cn0ltVCBVxk+SExTZkfmWDua1odXTKa1vOLk6Dq5
	C7oPeIcitPc20iKMlzfjrHfkACZwSHmkzFckx+EX3gUX9tkoUl9SRmblpLK91vgc+FnGlGJyiMN
	9MgwjBIdQ/nPYyYAvWaK/TCGvOvRTySaaml4zlt465ZNL/ltzk0VSCUMBMNsxZWqYBAHQbqQGiY
	hoSDYtieBFkegexEnB/47qgqFR7qXb+LGZ1zdGVhhktYYgeyXOkleKu04bwysvTZkqrItys6spR
	qOA+pr0tonTLjxCkUqTpPG9IxjTC4TPocjUGZ3eN6ksAnSKFWgnJD53ZqcwjSm8Q90aYrMONzG9
	FALUoTue1yV7idnN2ZV6r33VEcS9jgR2t5DM3gCVduj2D+NwhBPb9xxOgv5FmK9BofAXdG/dtJ0
	O7Aqbfc2KA1XkYR8cwglbAhEO/9zBjKgugd2g==
X-Received: by 2002:a5d:4b81:0:b0:43f:e721:76ca with SMTP id ffacd0b85a97d-43fe7217864mr31396426f8f.45.1777064759106;
        Fri, 24 Apr 2026 14:05:59 -0700 (PDT)
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4e4eec9sm58794567f8f.34.2026.04.24.14.05.58
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Apr 2026 14:05:58 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][scarthgap 1/1] poky: Fix CentOS Stream distro names
Date: Fri, 24 Apr 2026 23:05:49 +0200
Message-ID: <0845965f1d81d22d47dcf28c525c7463fafe5245.1777064702.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1777064702.git.yoann.congal@smile.fr>
References: <cover.1777064702.git.yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 24 Apr 2026 21:06:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13916

From: Antonin Godard <antonin.godard@bootlin.com>

CentOS Stream 8 and 9 report as `centos-8/9`, not `centosstream-8.9`.

On our stream9-vk-1 autobuilder worker:

    $ ( source /etc/os-release && echo $ID-$VERSION_ID )
    centos-9

We don't have running CentOS Stream 8 workers anymore, but from a local docker
container:

$ docker run --rm -it quay.io/centos/centos:stream8 bash
[root@c33732bb804a /]# cat /etc/os-release
....
ID="centos"
VERSION_ID="8"

Signed-off-by: Antonin Godard <antonin.godard@bootlin.com>
Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 meta-poky/conf/distro/poky.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 2c2e7bed..177a637e 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -43,8 +43,8 @@ SANITY_TESTED_DISTROS ?= " \
             fedora-39 \n \
             fedora-40 \n \
             fedora-41 \n \
-            centosstream-8 \n \
-            centosstream-9 \n \
+            centos-8 \n \
+            centos-9 \n \
             debian-11 \n \
             debian-12 \n \
             opensuseleap-15.4 \n \

