Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8776CD98CC
	for <webhook@archiver.kernel.org>; Thu, 11 Jun 2026 13:29:06 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.45452.1781184539983231177
 for <poky@lists.yoctoproject.org>;
 Thu, 11 Jun 2026 06:29:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=nIJyxz4+;
 spf=pass (domain: smile.fr, ip: 209.85.128.47, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-490cdae130cso29984505e9.0
        for <poky@lists.yoctoproject.org>; Thu, 11 Jun 2026 06:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1781184538; x=1781789338; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4lzCrc+kspljURLKONLgJYQjFgNWdjSwxE16AqXUF/E=;
        b=nIJyxz4+mAgrRVrzCV5mpxbrVO5HIaCEBXPJeJXNis39pqjjsyQUmP0eMapbi1fmCY
         OmnYhArmRvp2ccyNd4X9Spuanmwra+tofN2HNUws0Q5buuI3PmpMpkEYDHkOq4sn2nSw
         nhA0VNxyIsqt7/7Ps6lJ85BVW+hKK2YAMXQeM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781184538; x=1781789338;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4lzCrc+kspljURLKONLgJYQjFgNWdjSwxE16AqXUF/E=;
        b=N84EGBOefC9jpLrIQxB6Tv+PMmxleCMGW2tVaXvRPhDB2b4U89/B+V6BoZ62LOx5mf
         jgrq6OxNw1ZYUgGT6aD7pF3U7U8PY6EmRWMrt2Ha7yr6CiieWTQBMv9+hcX+ounqQmpR
         Pro75UiDhP+hKBBhQ24OkXU4RZIgwHV6EPPwENeIAUQNEFv6H+Co3lFWV2wcbmONnrZ9
         RLHeHltljB8o09aXH3KKaRcAkQGT6QiWQpUjoD8u3LAfPcIFrs3wM97w5CdKcqrcwAVd
         QYKZ+HuqgaPmDDuSuOcIDdW3WHrmxIKMgwvDcP2Zi+frMIN0ekVoIkYxIzD9bDfQXlA4
         iRbQ==
X-Gm-Message-State: AOJu0Yx90xwP8R59jU22yVUk8eaxn9SFbwLbtjqUPGyXBpS1XE+RZrvY
	c+I3bB81e7o3Q9130JpVKMKYqRMx41dlPKu4n0wFcWOLCRJmb97rB4tmYr6pskMbL/6EosWDaJw
	aZ4Sg
X-Gm-Gg: Acq92OFEiBGg1wOoUOgduMlZdMYZDCkH014xhTCtOmDtF73elP2HSM4h5UC+nNYvB0G
	zpIncpsOPiYY0ia8g39SiKxl8KTuwYGDcofXnc8kD/erMSaRha398t4kqrSNh+qQHfBPGzc9EaX
	r3yApR4ptKPZAl9CGZhMEjNvalDFLBTiakKMyvAX70CrCXt+D/Qn18oUogtStT1GCnWkNDt7g23
	oYF6TptfObgLogB5XPTg3+0mPex97HVlRp3Wy1q63ajZyPWwWNGLgG2aUsCYLrPT9PlPoDuIBu6
	zWXAzSUQShjwkXsmg8U7l56+NqZ8Ziop6Ve79op2JGZf9ZnVSa0IbMLtMlwVi51JwVNfco6GCgP
	77oELY8pxCc3N3bZg6gs/Na35NYDL0pmY/SeWrmFgN5ckhx1/hjrSZ/iMPY1H76qTr/M4OizEjy
	cJa3lDcoLanrtLKKSu4ZK/sAwqBYmnx1/IJZBiWlrFQsifL0c4sGdt+M0Fk8H9ou/f/JsPH3jrO
	lyLxINuL++SHneJO79+eo7cjUsSMuQEluQKZhc=
X-Received: by 2002:a05:600c:3547:b0:490:50eb:b777 with SMTP id 5b1f17b1804b1-490e55b6febmr36605225e9.5.1781184538138;
        Thu, 11 Jun 2026 06:28:58 -0700 (PDT)
Received: from FRSMI25-LASER.home (2a01cb001331aa0084744357c26c6744.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:8474:4357:c26c:6744])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490e2cf582bsm72067125e9.10.2026.06.11.06.28.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 06:28:57 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: Poky ML <poky@lists.yoctoproject.org>
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [scarthgap][PATCH] poky.conf: add Ubuntu 26.04 to SANITY_TESTED_DISTROS
Date: Thu, 11 Jun 2026 15:28:36 +0200
Message-ID: <20260611132836.489169-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 11 Jun 2026 13:29:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13921

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

