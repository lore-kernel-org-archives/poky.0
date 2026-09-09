Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 514A4C79FB8
	for <webhook@archiver.kernel.org>; Wed,  9 Sep 2026 07:32:35 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.6366.1788939145127929353
 for <poky@lists.yoctoproject.org>;
 Wed, 09 Sep 2026 00:32:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=t7dHs3J/;
 spf=pass (domain: smile.fr, ip: 209.85.128.45, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-49cf4f81d86so43117365e9.2
        for <poky@lists.yoctoproject.org>; Wed, 09 Sep 2026 00:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1788939143; x=1789543943; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=s8dqEhKt3kOdDn+dpkwbRRtlHxd3i04fVX5kkjhgDCk=;
        b=t7dHs3J/lG41Qcb9Eik5jniIIkEdXbVQAYQ3EQvcexCMpHqGFojfWyrKICQJbowVgk
         SsEgl501Sphlxu4gr9N3C1kXoTd8GWWCN9iN0u43YEoR7jt2F4giu3dfdl+9gXwvYj9y
         6DXVXSmsLAeFVG8vjF6S+AY3NrTa++q8mxnn8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788939143; x=1789543943;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=s8dqEhKt3kOdDn+dpkwbRRtlHxd3i04fVX5kkjhgDCk=;
        b=csqO6ZqgcqTI8P6A0U/WqNXacT3h/5kc12gLfWX0dILUZTauFz1Rd069VRBv5bHabg
         1IieIEk0oymWMC8ngbRjELc2BvwG57Pn1j6EbOCpNNuMcd30HUHLleDv9JkKV91RPNg1
         /fAQvH1AaQPZE16tQ9RF581ATQMgcSZq7PbrNMT5kgpW2fMi84px8whKZ7IJKAlnI2FE
         dImguTcTsjtX5Zcizzp4C7mbvNX9yc0YztQcxIi9F8mtWiXaTAbCNftn6FaimGIahuey
         DuLe3vgiKIy27J0ETjPfuc/MChRHpnBkqfTbk8jW244prz3sp2rRwOdp08W7ox8M5HqD
         q2mQ==
X-Gm-Message-State: AFuF++nwib92QmE7cCDCyRPPUCR74/GA0bgTXpFMTM0CDMo9W5mwSGJN
	YTzz2gce8vXX4e04JG7Wc9vTgZeVWzV+dnNs9Kd+g2f7kfqwgabcABhKTevuVNSwiFCVuo7hM/m
	eno7Txsg=
X-Gm-Gg: AYBFou2oMHGQbXmW5xIY0dmOhqxH0vIJRdEZj25jVBOysIJDV0h5ieQ+DF+ezn8OFMD
	ETS+ua9n3DZZUta+0w+3M+NuPa3aU3XvjRDA6uxdWZqW8i3MV0/+/0Le8mq60NVHWqbx+l7cqOy
	nX6wI+VpfO4BOeUJZa/6qArsR0jM2+vsond5qnVYln1iwenQQvTFIigWpc3WJf6E9m+yXjnYW8C
	VPTgFCFzbrpnHqly7CSAZj8JcJyOLr2TiJhSAizC/nvzG5aZiumyqdeLltf9leTcRfywmIORXfA
	hWN6ozq14wA4SUEi1ebbmz+xkYLGtr/g294w8SKRrSWaHvGIDXRjWEpTtYw9c0YTUz3Wem+6svk
	dfq/2udkIAoigCd93uVxUk9YZ4oMkzZq5/IqnrKPfBO5eiUbQVVQ58zm+vdJklXdKlrVtx2ylXF
	6uD7tyc+vfqUo18mJTJKNT/y8teeT5Vg5PJ2oyx/CiTi01mDsNPpmE+yZbNW0aQQHn2UHh1EaFV
	G+Lb+z04pGeFleMBNR4kmyjbTA4ReBQRbru7SzAn6lft8xw2suoPEDTC7tc4xMG8XcIN6Fh9rc=
X-Received: by 2002:a05:600c:8b88:b0:49c:db20:da13 with SMTP id 5b1f17b1804b1-49cf822a707mr358414685e9.5.1788939142719;
        Wed, 09 Sep 2026 00:32:22 -0700 (PDT)
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-485885b1320sm40931457f8f.27.2026.09.09.00.32.22
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 00:32:22 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][wrynose 0/4] Patch review
Date: Wed,  9 Sep 2026 09:32:15 +0200
Message-ID: <cover.1788939085.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 09 Sep 2026 07:32:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13961

Please review this set of changes for wrynose and have comments back by
end of day Friday, September 11.

Passed a-full on autobuilder:
https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/4697

The following changes since commit 1b132647002eea43a2c7a7f857f63f42dacbc26c:

  poky.conf: Bump version for 6.0.3 release (2026-07-30 13:24:18 +0100)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/wrynose-nut
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/wrynose-nut

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


