Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41E68C88E4D
	for <webhook@archiver.kernel.org>; Fri, 11 Sep 2026 21:51:28 +0000 (UTC)
Received: from mail-wm2-f12.google.com (mail-wm2-f12.google.com [74.125.225.140])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.50458.1789163483944023413
 for <poky@lists.yoctoproject.org>;
 Fri, 11 Sep 2026 14:51:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=L9+6zCaz;
 spf=pass (domain: smile.fr, ip: 74.125.225.140, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm2-f12.google.com with SMTP id 5b1f17b1804b1-49cc9f581c4so1184865e9.0
        for <poky@lists.yoctoproject.org>; Fri, 11 Sep 2026 14:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1789163482; x=1789768282; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ioTXBbuQfCw5n8bFe4I70C7WT3GkPzevaKr8qHbP7MI=;
        b=L9+6zCaziOwiChi9sdaYGGDNgM08IG2Z5gyqd3TKteR8E86o2Bt1GWSpSpLfqp9JU0
         i1lY8RoWqPQb4rmbfuMRZj89aL40y2MUYlVKZRxavaeUflkDA2+W7pxSHvWtD/z9NPEh
         W98fH46ugqeTCt4phrmLvnETBicUWzJzOljiM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789163482; x=1789768282;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ioTXBbuQfCw5n8bFe4I70C7WT3GkPzevaKr8qHbP7MI=;
        b=ZWxLgdeySg1/4qJgDcsfFVVMLqe5WnOmybJ/myQmulF8czLnG1SElKnQZZJp+tYAlq
         +B1qcAATFoOwINDJK1kBPPOdtEL3uiKVpJcZqNPo5gw+ebBg7PkPa1/yNkTLfJDSgL8C
         V3M37q/hApKYS4KG1LmZgzr9LWgHtEQeAZvAgbwxg7le7ngkO28Oxcu7+6Pq3Ni+ooeo
         mlopnjrvwIuv18K10yHWjqqoOPKyE2faf42I/Gdxy/wTGrWr0PyQvZBkP4lTUSpKaeQY
         PDufgBmc5b7zTyqaYTl3Kf2D5P2eSY/p8XoxvO225TssfCn03VDpoPgYo05YSZ8SnRJW
         AlDQ==
X-Gm-Message-State: AFuF++k0zWq7C6DpM5YklLTZhlhnNwqlQXR0ReOxgqwg3V2uzgcxs3tY
	UHlliVHsZ9t34Y0L9dZPqrIrpSIooCb8MyuyX/iNzJhZCgvlBMvW5hbl+S8CqiIQVqHPTiTM1lD
	2h9fIOmQ=
X-Gm-Gg: AYBFou22m16yFTKxC1IzrqJgpCd2B6LEdMxda0ZbNt8bzC+2uYCoBsBNqCNukxlVjvf
	PSr79morU6hU+0L5NuoeroDDLE/HKJV6+CzvzJm8DsM4LZAeg7Dt+PBMc3M2RIHrkAkrQuCAItl
	qv43PKJ4RWAv0y8qMwVNSWhNm5YjK3RvdZMIMy+2HXWO6tMBx2Z+YwVtuCGGSgzQFP0hdc3DTnt
	hsj9ATjchP74LcL/m4vv8C62O8zTv7aInDfXnV3jRLrL4PeHveKCnUvBedNo6wMWA0p8W50p8vZ
	/g/8yAIwMrh0tyTdksZhnF4gMXo7JJVSbVoM5W3WQmPYbDZ1jFrQn/UwJ3Sf0Gs3aIm34LMRXJ9
	cJAkRYueuzk+WqkIKM8Rb1Js6uVhKUEzFT6sOg6ZRFStYJ/vG1ALuQ6qhIItDWDhz60vAvsn0iW
	lI9Xg5z2Fo3SAyD4YTDgsbaQuK9OxWbMOS22tBAZa38F0eQa+uCOgSEOmVuTvOKlfZymb6nPV8V
	XMQNu+2pPj+kxbEqbdW76pKE6+iOXI5rRI4bf87M2pPisjx4AV42xnmSyvJ1JNNFbGnwTlJP7g=
X-Received: by 2002:a05:6000:4608:b0:485:8224:1a44 with SMTP id ffacd0b85a97d-486e988ef46mr7948804f8f.21.1789163481967;
        Fri, 11 Sep 2026 14:51:21 -0700 (PDT)
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-486eb33fd3bsm8776445f8f.19.2026.09.11.14.51.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 14:51:21 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: [meta-yocto][wrynose 0/4] Pull request (cover letter only)
Date: Fri, 11 Sep 2026 23:51:10 +0200
Message-ID: <cover.1789163335.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 11 Sep 2026 21:51:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13966

Those are the patches from the last patch review:
https://lore.kernel.org/all/cover.1788939085.git.yoann.congal@smile.fr/
(No review, no change)

Passed a-full on autobuilder:
https://autobuilder.yoctoproject.org/valkyrie/?#/builders/29/builds/4704
5 builds failed due to 16421 – AB-INT: SSL UNEXPECTED_EOF_WHILE_READING errors
The builds are fine now:
* oe-selftest-fedora https://autobuilder.yoctoproject.org/valkyrie/?#/builders/48/builds/4646
* qemuarm64 https://autobuilder.yoctoproject.org/valkyrie/?#/builders/36/builds/4628
* oe-selftest-debian https://autobuilder.yoctoproject.org/valkyrie/?#/builders/35/builds/4839
* oe-selftest-armhost https://autobuilder.yoctoproject.org/valkyrie/?#/builders/23/builds/4874
* qemuarm https://autobuilder.yoctoproject.org/valkyrie/?#/builders/16/builds/4664

The following changes since commit 1b132647002eea43a2c7a7f857f63f42dacbc26c:

  poky.conf: Bump version for 6.0.3 release (2026-07-30 13:24:18 +0100)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/wrynose-next
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/wrynose-next

for you to fetch changes up to ddeeba423ff0565b8f1192f16072b5993d5ea6a0:

  linux-yocto/6.18: update to v6.18.48 (2026-09-08 11:47:08 +0200)

----------------------------------------------------------------

Bruce Ashfield (4):
  yocto-bsps: update to v6.18.41
  yocto-bsps: update to v6.18.43
  linux-yocto/6.18: update to v6.18.44
  linux-yocto/6.18: update to v6.18.48

 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.18.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


