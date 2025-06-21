Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA04AC71157
	for <webhook@archiver.kernel.org>; Sat, 21 Jun 2025 14:10:13 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web11.7942.1750515004468252195
 for <poky@lists.yoctoproject.org>;
 Sat, 21 Jun 2025 07:10:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=hQiNxn/u;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3a536ecbf6fso1579405f8f.2
        for <poky@lists.yoctoproject.org>; Sat, 21 Jun 2025 07:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1750515002; x=1751119802; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=kFPXzh/G2kvuS3mkm+SvfyrQ3kzjLmB6iSE25MOF1AU=;
        b=hQiNxn/uY0xYxb5NdKv2yy3Q11ZvfKuIz26IyNfKA3CIdKUK7c7zqa67eS+RQ6u9r0
         6XKggRaLULB2nqXNAmSsVSg1b1OPraZHvhTFnJQIKMQWS1/TveeAUbqSoJ7KLVsrZ9a6
         MUFmOZvZmw/vz8L0mJ12TVPDq/oThapxf8qU4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750515002; x=1751119802;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kFPXzh/G2kvuS3mkm+SvfyrQ3kzjLmB6iSE25MOF1AU=;
        b=uE8A6R4WKrjiDivLSQScm//gkTQwNYhwXW/yt2QR4G151jvLxiDeleg7+db6hl684g
         GqQUIU+XtqzUBhNIepnmTUWbBnGj8si9EgTnQ7//JRq3AKkw54jqwSQau+DKXN/jvAFC
         BO/jwvuazea2GKMSvrNfdikEtvzfgiUkRTDMJ3sUCbEDRitB5asm6U2u3Hpuv+AQ3Qzd
         lRCdg7m/a7cpulXQjD4HVAaqR1xJrY6KypTLXQGdKR+UNdPO4XqF3kl1SnT2Fzga9Djy
         5lS+BictS53ql8q7BmKUbny4qA83B7JrpFr+nP7rnmt82T6NtlW1tVmoSBxIcAJBUu85
         2c9Q==
X-Gm-Message-State: AOJu0Yzh9Y4kYdoUVpVL/ILEebxYE6AuUfpftRomXKj2BZK/wpwNI9uG
	9KQOo5hng3BlKBSzsrQ6A+xwp8hF2vj2TCUIyOCpkm8TmF0IAgqYM7CSpqP7gmeSEk+HgWwHCl9
	jhkyXbjU=
X-Gm-Gg: ASbGncsFlmK0H9MTrB74Sv6WTQoUWG0QtMdKeti1uvglgWTKXauAa+TFLV8wjFq6vmI
	mETs4xsPCoLGTxqkeArUzI/yUgRH0kWvKPxKiuVtkBKPkKW6QUSg6cYMrqnuDTS46dIQ4jSUhgk
	JGKh6PxF5Z4hZDpsYKGexbHxzVWhKU3LZ+lUo+z3O1U9Z5sM68uDz3kUr86CiqNAK3/MGyXeiGZ
	ZVJw678KaJsomEl4hZHeFjVOF05gGRMZWprkXg859fTgUfrC11MFvCd4tZ2Mor3BCdISpsNPFCa
	B9naujGxn5gcNH72wKjyC/jU2e6+nm+cV+v06g3GacR+ZrLNBEpZwDZwg7uLgEHn2mKQR2b3nhF
	MLy6KjZ5daPozgQ==
X-Google-Smtp-Source: AGHT+IE9wWtkI+1D+YaKvODDldMtCHMREnpqoi5Gog+twvZ7ehAniQJCaDE8ymXvdTLmxMWPL6SvRw==
X-Received: by 2002:a05:6000:2d0f:b0:3a5:2d42:aa23 with SMTP id ffacd0b85a97d-3a6d1303b54mr3548967f8f.22.1750515002428;
        Sat, 21 Jun 2025 07:10:02 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:3287:1ee:865a:f13c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4535e983c97sm90548535e9.9.2025.06.21.07.10.01
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Jun 2025 07:10:01 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky: Update version/codename post release to whinlatter
Date: Sat, 21 Jun 2025 15:10:00 +0100
Message-ID: <20250621141000.2660511-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 21 Jun 2025 14:10:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13658

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 56817450a69..483684ccdfe 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,7 +1,7 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "5.2"
-DISTRO_CODENAME = "walnascar"
+DISTRO_VERSION = "5.2.99+snapshot-${METADATA_REVISION}"
+DISTRO_CODENAME = "whinlatter"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"
 SDK_VERSION[vardepvalue] = "${SDK_VERSION}"

