Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEA5BC624D9
	for <webhook@archiver.kernel.org>; Sun, 22 Feb 2026 10:19:37 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.11136.1771755574849454538
 for <poky@lists.yoctoproject.org>;
 Sun, 22 Feb 2026 02:19:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=MbCOfI6I;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4837f27cf2dso28835075e9.2
        for <poky@lists.yoctoproject.org>; Sun, 22 Feb 2026 02:19:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1771755573; x=1772360373; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=3qAZxfY0v5cs3U0IwiRgHQnnulBsiPSTj/Ii3b32uNM=;
        b=MbCOfI6IJtkp+ybPdMDHnfso8cMhWYOUjasqQjuGV3sudrvoS7GHVEI8ffSZJc8ksv
         z3Kul98BAStoRalq5XaleRbjHW54vBhrMh8FlhxU0wEuIAxidzL76W7gKKpeejKQsLUr
         nf20kbZmqgv80nqjfB3YtQIRn9s4OxkWozOjM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771755573; x=1772360373;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3qAZxfY0v5cs3U0IwiRgHQnnulBsiPSTj/Ii3b32uNM=;
        b=gtya/qp1QjUsr+OjHjPXmZXelzq0NSPwSPSHs7qkivmRdsw/cEQd1H1XVYgNNwzKlz
         OginqH1TJW/fBJmuy7jKxyrGIZQhELla/wzGwbRkYH2W9xn6KHP4q4PYmMlDDRAOcSOb
         6Mfp+OycFydORgAecIGYAD0iEPNR8ewScPgYdfDZRwI5xDs6GW6dswE0Ki5cHS36Wis2
         +yEUTEgBmuSwd1/qwrWJdZN+zTk+FCKGSO9wIo+rAWumMj6D0G0wWaZzWvnMKos2w5/V
         MbAqs8EFGRV9o4ts7sBGXoxTyGzcuKdXsgxod0M/1nWmfJIJ6s3EBdVica0Lg+PrLyMn
         QfIQ==
X-Gm-Message-State: AOJu0YyB+QyWfBQqij04P/+QQ7orRqkG7I83ThL+xoPePqofEkCo9QaY
	xpq676DiliZxb2Xe4A9HU7Wet1Aobm8rDDz2yzeO6S6/Vy99NcXKhJ8twWiAyh6eoFoM8zB0pSr
	B/1lwXIY=
X-Gm-Gg: AZuq6aIC4/ShPptUbvKYSGxkKluB0hUlo5YKJcBuZiAMCCtAw3hDE7Dy/2/IdegrN/o
	8eTcojCsO4M/TI8IAqXNaEr72eTT4lkvX6+oHiGZ56VIw/JF86x4Rmz72C+g3H9iyYr933VMRWD
	ssxpOYE8vZLO1XQk/cB4dc4VNIPQ9jDaoABKPZSzPmD9p/x3gjbaxipU6Td8OMwzBXY55grWoBJ
	Bl1tdvCSVb09RXe62jTlqjxHJ0vy5DL5PABvGoLI84jiuNbgBdBKARBUq8cuFSI94miat+KhcTd
	0Cq1QHzmbdEGLboiMN+Rh5RZydIw4VivyrDpJKR/RV1Nolg9EaeEleRGBPpz5B1joBOfXB85o8b
	jP3lo8W8X9Ofb3axv632Y4TYEFKIcJGQ64N91U/usgZATUDL8tAv1Vb5DWY83gPFdMcARhqe76h
	WcqH8OhWQU/tdg7Zkd//gS60tDPw5zm8ZtueWUyIF7zBI/0/Qc7qkqbALAhf0cuw==
X-Received: by 2002:a05:600d:6409:20b0:483:78c5:d743 with SMTP id 5b1f17b1804b1-483a9637a19mr57340405e9.28.1771755572525;
        Sun, 22 Feb 2026 02:19:32 -0800 (PST)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:9947:54dc:f0e6:4b7b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d54760sm11280274f8f.35.2026.02.22.02.19.30
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 02:19:30 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky: Update after core default changes
Date: Sun, 22 Feb 2026 10:19:29 +0000
Message-ID: <20260222101929.3396560-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sun, 22 Feb 2026 10:19:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13839

These changes were moved into defaultsetup.conf and therefore are no longer
needed here.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 68e7ca768fd..93759c73f44 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -13,7 +13,7 @@ TARGET_VENDOR = "-poky"
 LOCALCONF_VERSION = "2"
 
 # Override these in poky based distros
-POKY_DEFAULT_DISTRO_FEATURES = "opengl ptest multiarch wayland vulkan"
+POKY_DEFAULT_DISTRO_FEATURES = ""
 POKY_DEFAULT_EXTRA_RDEPENDS = "packagegroup-core-boot"
 POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
@@ -62,11 +62,6 @@ INHERIT += "poky-sanity"
 #ERROR_QA:append = " ${WARN_TO_ERROR_QA}"
 
 require conf/distro/include/poky-world-exclude.inc
-require conf/distro/include/no-static-libs.inc
-require conf/distro/include/yocto-uninative.inc
-require conf/distro/include/security_flags.inc
-require conf/distro/include/yocto-space-optimize.inc
-INHERIT += "uninative"
 
 BB_SIGNATURE_HANDLER ?= "OEEquivHash"
 BB_HASHSERVE ??= "auto"

