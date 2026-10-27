Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.16039.1793098009360157952
 for <poky@lists.yoctoproject.org>;
 Tue, 27 Oct 2026 03:46:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google2 header.b=nbYPQ+WH;
 spf=pass (domain: smile.fr, ip: 209.85.128.50, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4a2d6d01ecbso19961415e9.0
        for <poky@lists.yoctoproject.org>; Tue, 27 Oct 2026 03:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google2; t=1793098007; x=1793702807; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=YDwVFqWZa09FpFVLym6n4wswt0BU5andz8yDr/Zf5Mg=;
        b=nbYPQ+WHNaAaCYLRxpRHy/gR+5akY/o4w0mYa2EdP99YfsmfwOxtEZQb8M56XeXX+C
         lcPFS66elHLEW7x7LrZhI6jsYvl8UqJP3SMKtnXre/UQ3jKubAvkzex6DvCHsrmkXdWa
         I4jmGd0rggVnIxSUNtWhgZidIGZgKr01b4c9cHSWBxJkJeSF3ouwI9d9gzdJgxb+weYT
         33TYuLY3vOTA9yJMsW53AEDR1tMNg80KAMZdvDqtt3Flp5fRrEed4+BVEeGp+/+TjzpZ
         VcaC4Y/IJ6wD7sfqFqD1ilpIQwNG6vNrOaceyKzDmoiWUp3PNWpTxZ1E9ANGOpW1WslG
         cs/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793098007; x=1793702807;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=YDwVFqWZa09FpFVLym6n4wswt0BU5andz8yDr/Zf5Mg=;
        b=BDHSVAo+nl/ja/OprrCRuzlMgF06aWifgA3DVdq7IAJY4GB6tR1NigpZCyIh8SO1cT
         FquWfBT4dfC4wuAJElSZ8ClaWUf8xFEhamcFj8WW1fhvSP0rLO+pC45PvVBmwbU3wZkQ
         Ip82LEJjrAMKU8dyXRZ3CfcIb3n5iU69ZUjcqV/cgg+6tADqQYqrmG06lscwQ3zLgZep
         j9bve9xHqtpIpGyXoOGe3i3C2T6NADpNn4w3gj6SwR5ynKNJf434sgOJaPgn99ZECw5z
         JEezQVH/tblGSIoGAKpyaieqpysX5IE36++duKq9CEdqOuQf/72hhQmPBec/LdkgiNPp
         Ncaw==
X-Gm-Message-State: AFq9FYJO0B7a+Sa2TK9xd47LFbIwc7bIc1K84bY52jZ6eruuoyQrI2gw
	RrOLdC/Y1LARLxuAxUJ8zTTUkLe3ds2kb9mEYxbyu1wm8o4vpoqw3AnMmYRha/ChU5lrjxXJupr
	qvh7F6yRbGw==
X-Gm-Gg: AYBFou3O8HA9y5nJvneS5au5OGw7MDA0fbsHj4p8xwKKbThX8FWwnKSxg5RLtpzgUig
	ju58biYedQQPfd/noq+qkAHsfsjKAF6MggIfXJba+L0a0oXVMp7scITn8dQ5Zze1nB3EkuX98F9
	y2GUVGAT7RRean0XvMKg1DaqSqmd+8ji3V6E6Vi68AuUvRA2s/R445rn2ZceFEAujHLctRnQ2F4
	1YiRxgdARhL9hPoogYSQVy1sKDrcRbA2zJ0eV99w/SEM/orB6rlhbJQjAUJdP/ZsTVvVg5/hFag
	WpkszLnX+cOF4GgHrzK8tq7XbWihl0wwRh91dA4iPUMd840MxRj5InG4z0LCE4ffv+BXpfu3D4n
	SkmlKwwg4nhwolo1/iKTikzwsFAxIKxyXaYJaG3m/EDYkuT8RfYJWJTlP8wZeEmHQKt6llkI+MK
	AWn5PLXxmgRZz4A9wlcHCqRBdcP2J/W8nhDm0z7ugo1Nx2R7dtBD6rgaMpU4i1rjWKeR3+Wcvvk
	YgXufl5CcgvbR0uYqSbzl6zK8v62Nke4mtgEtE7R6wxB1L9QbZ/IeL4pHTmq4DEGwbiNybHwnCE
	jo1t/HQd08bevoRcX1SxcnW9PCzcz3zNgtkByYrdT1d7+vhlROBKgiY=
X-Received: by 2002:a05:600c:c056:b0:4a4:4d57:8487 with SMTP id 5b1f17b1804b1-4a44d57864amr115512225e9.5.1793098007250;
        Tue, 27 Oct 2026 03:46:47 -0700 (PDT)
Return-Path: <yoann.congal@smile.fr>
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a359fbc718sm217971105e9.2.2026.10.27.03.46.46
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2026 03:46:46 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][wrynose 0/1] Pull request (cover letter only)
Date: Tue, 27 Oct 2026 11:46:42 +0100
Message-ID: <cover.1793097938.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <poky@lists.yoctoproject.org>; Tue, 27 Oct 2026 10:46:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13977
Content-Type: text/plain; charset="utf-8"

Those are the patches from the last patch review:
https://lore.kernel.org/all/cover.1792537853.git.yoann.congal@smile.fr/

Passed a-full on autobuilder:
https://autobuilder.yoctoproject.org/valkyrie/?#/builders/29/builds/4961

The following changes since commit 7c25b11156553145fa6b241a2d4f65d94438f804:

  poky.conf: Bump version for 6.0.4 release (2026-09-30 10:48:47 +0100)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/wrynose-next
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/wrynose-next

for you to fetch changes up to 79b6d87030178bed0088ad3b00aa6dfbabac37c4:

  yocto-bsps: update to v6.18.54 (2026-10-15 16:28:52 +0200)

----------------------------------------------------------------

Bruce Ashfield (1):
  yocto-bsps: update to v6.18.54

 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.18.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

