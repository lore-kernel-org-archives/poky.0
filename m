Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.2152.1793745924096514390
 for <poky@lists.yoctoproject.org>;
 Tue, 03 Nov 2026 14:45:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google2 header.b=GmlEslWV;
 spf=pass (domain: smile.fr, ip: 209.85.128.44, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4a2000d5fb1so396935e9.1
        for <poky@lists.yoctoproject.org>; Tue, 03 Nov 2026 14:45:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google2; t=1793745922; x=1794350722; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Ug06ATd8HtVmzoWGTlnGHEfED2upMc+j4BVUpcwV5Qg=;
        b=GmlEslWVbVnkkgV6Y0o4BW5zVJuCrMe61RmOlY8TMjzN4ghTLdazqSQIYqS2lqYefG
         UMOLPj4aiwWL/xjcAlKbL4ZHGMTkOvfSqUVZZ7EI6gtuhCMterAv8z5AyYkxE9W7iR7K
         vbfnIFjkAJrVUdCgjuEHhQXORe1fZqqoAa+CzBEr2T7KUDVpYngkgEKQPuSmf90C68jW
         FFH4G8fXgwB+o/Zi7Edh/UGXOdVbpoB6LGAk0Yl6DVcQwLv2LklgcyIBD9yq/XqCYGpe
         NG7XftQeKWAM298j1i7tuH7runWhMytNr6VB3Oje/917sGRrfqB9EbKTiKS8yCTX0rfj
         cjhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793745922; x=1794350722;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Ug06ATd8HtVmzoWGTlnGHEfED2upMc+j4BVUpcwV5Qg=;
        b=fa/zlArkVkg/jGu8d3JiL3v8qz23twZR35TaahsaVdxOFAverF5UY4Kt573hEIC7Xr
         kHtGX8+GAF1Wo9+S1eRDZQ0HGRIA4ZUNos3pyFQtrYFAOPmCzD9r5hYAPjHKh45DBbt/
         kUefod41iNt2v4AcR0wwnzl6E/5u5EFZuDGnwhE0MiezF5gVbyPruyj6d76MgWzcXgaN
         xDdx5AjjRquCipkoFBphBVjJ+ZZLwbX1WsKZJ+TpBE15cZoSeVg4UPQm2/uMuQdwjJ3Z
         MMu6Thd1utNvJiN58CMWC7PeOesnKDmdekB4pMTDxa41jYNAyLewDulbreZvddY4RLxW
         WXow==
X-Gm-Message-State: APuU4Z+UZl49f3O4Ez82h2knQhTEEGsp8Y7akPgoUHsAvxVw5G1M69up
	mulTwLRPI48Bk3qeN3CnlmROlj0SwBgK4pErPtIHZ7I/OMiErqeYrmsEoOUhf8TjmUhb//hFW0M
	w7Q+f9NA=
X-Gm-Gg: AYBFou1qPQ+l46ob45oqrS7hWrfQHy336YQP5RqxYtTjjoYEceJza/2vExg7T7K7Hsp
	RXgiwyhql0U+R4E+aLV10efT1u9BaTkkknyWymIsSWUh0FvRfk38oh7rM/l1uVTpdgvIJD7cvFg
	eMrwQ9u3q/dKFTbuM+YgAjsANGIlmp9IR/ObykNPafGIsLoOdv98A2jRJuORhn+Gs83QtFbXegs
	Kbxy+xxIsH39z8AFjeeFBf2zX4WMR/8Sb8hF3DBSgqJZnC+C4T/V8Js/EjT8eswL1Xsg7luaxiZ
	yYANT/MqHLnEXQcRdickqUw1PQKI8UtFcNSMm4u7WaYPykAouvsXbcWPVi5YkpIuozp6ndNHFNy
	zs3dHBCrzVQPrtwxEgv8eVr2htbApfk9ZcQPJhJuPgUjFA+Ol3drQ6wFMWV5VhiEx9tD9rFzU/i
	STqlwPiaz1obA2/lLrwZn27RtDyPfTR/ze7rV0RnywX7vyXltcIdAih5OenysH9oKiIxjVTg+fw
	VfxnPH2eQ/Z54+60JYAQwusHdzNBavgNWavnSiXfoitoOQB8DAXUaseL8/RvsA6tnz1QaNp9qAU
	DTBrSdqd+esGoGzC1WxzLNaBlpiv67ntJRPJ0EOaq/D2Oe//6rEOs1dUMnBPTuulzgkWAL7pqAd
	w0EyD7IYfIHu61riIMepnrwnUnMMI6Q==
X-Received: by 2002:a05:600c:871a:b0:4a6:44b:2593 with SMTP id 5b1f17b1804b1-4ac18d68babmr305373435e9.29.1793745921936;
        Tue, 03 Nov 2026 14:45:21 -0800 (PST)
Return-Path: <yoann.congal@smile.fr>
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b2ab3ea6a9sm131348055e9.15.2026.11.03.14.45.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 14:45:21 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>
Subject: [meta-yocto][scarthgap 0/3] Pull request (cover letter only)
Date: Tue,  3 Nov 2026 23:45:08 +0100
Message-ID: <cover.1793745796.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <poky@lists.yoctoproject.org>; Tue, 03 Nov 2026 22:45:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13985
Content-Type: text/plain; charset="utf-8"

Those are the patches from the last patch review:
https://lore.kernel.org/all/cover.1793405889.git.yoann.congal@smile.fr/
(no review, no change)

Passed a-full on autobuilder:
https://autobuilder.yoctoproject.org/valkyrie/?#/builders/29/builds/5029
* qemuarm64-ptest failed with 16267 – [scarthgap] AB-INT PTEST: python3 failure (test_wrong_cert_tls13)
  retried in https://autobuilder.yoctoproject.org/valkyrie/?#/builders/61/builds/4818

The following changes since commit 8183b55783d45dd45691983bc0b407752a3449f4:

  poky.conf: Bump version for 5.0.21 release (2026-10-07 16:04:08 +0100)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/scarthgap-next
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/scarthgap-next

for you to fetch changes up to 34e15a437a792db6778fe1bf62617b307c7f9945:

  yocto-bsps: update to v6.6.160 (2026-10-29 10:01:25 +0100)

----------------------------------------------------------------

Bruce Ashfield (2):
  yocto-bsps: update to v6.6.159
  yocto-bsps: update to v6.6.160

Yoann Congal (1):
  README.hardware.md: Add scarthgap subject-prefix to git-send-email
    suggestion

 meta-yocto-bsp/README.hardware.md                    |  2 +-
 .../recipes-kernel/linux/linux-yocto_6.6.bbappend    | 12 ++++++------
 2 files changed, 7 insertions(+), 7 deletions(-)

