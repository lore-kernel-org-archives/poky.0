Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2ACD5C77B7C
	for <webhook@archiver.kernel.org>; Fri, 20 Jun 2025 12:06:57 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.6223.1750421212850439292
 for <poky@lists.yoctoproject.org>;
 Fri, 20 Jun 2025 05:06:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=TeqYy4GX;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3a54690d369so1582914f8f.3
        for <poky@lists.yoctoproject.org>; Fri, 20 Jun 2025 05:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1750421211; x=1751026011; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=0af3nYpQJzmVLwSOgSLfswAVx4c3zX0kdnzA/+Phr70=;
        b=TeqYy4GX/lbHagE5GN3HsnMQOmf+oDKOR3c0VqIR6SLe4kWmrJCfTLll40zviYu7T+
         QyJ8PORAGHDQqv+JFBTNNYTB+iCu2KXpyTvRdHYYfoP9l9TgQaabfBs8xfBOIR3sIqu0
         u8FOxjR3+lJSjibqmzsTndFz23I16fOdhccAo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750421211; x=1751026011;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0af3nYpQJzmVLwSOgSLfswAVx4c3zX0kdnzA/+Phr70=;
        b=vXwc24SH/DT72RRNQ6xEi8azWThKme+NMs5NBOECJ6OrQK9ky5LGpQJeQptPv0vAJk
         HHiwRJt8vkMhtrmbLgJyMZKSvuOkxMD/turi5ilfKe1hUVjzcU39+eCasQMC+BV1PLGr
         2SAJi086NYGdsmlisBhj/Nxr1Ckt9kru26YUGnsxyhRANuBu9+tnMFocYLhK8SjFUQSc
         nMFpLRN3X7A+phfqHzAumjK8bYvvBYoreT3/Q50ZEthFhmH/J/4NzKXqG8TZ0nThaZeB
         1Yc7JkGGe5UeQ9Z6PLtmu02VuTY76ydLJoW7awK+B026wl0ONMr3OtNhyFAqka4++yq4
         kW8Q==
X-Gm-Message-State: AOJu0YwvhrD/2ag8EZWJV0p5Uy0Z36CsFCkFQc87HRmewXJGi30NxEro
	w3ATkZEdwEFGsoeYrDZ8zZXSEE/+Lc3JQO7A0EIYjc6cbJDaCltbyVF4ROuqBglpmw7pPe6tRYh
	Ip/YFzQU=
X-Gm-Gg: ASbGncsFyr31mu/ZZqwiVJank2/DE4RljUCz3xZbriIHQIYrCQHK1aOFCnh3K5cgYKV
	+y36EdubBambzuHlJZHaidEECw5nGvJv1oqZjFSu0KHisG8Wy9eBsgnYOOgqJZop71MBYnwvL1V
	8EeHqfShzPdITxYgfoaR91zfoDh9xaApXOpGjtbERqIaF2m7EcAO/254JYXjRdlj0jNXKrJzYm7
	oyeWUJUav8GS/S1vp6FDijcwaU6TFvQfAKrQUWWD3x0IfCByqUX8XxCQeY+G5hd9OZBUmzjTrJe
	E+DsgeMAz2IYSIbPtEXIgJvVayepHz4UhtPFeQrECJwYIFUhwIMfDaRgWz03Nl8tfJ8WcMiCl1y
	90UY8auuqc+av5vGzeIEqrUEt3w==
X-Google-Smtp-Source: AGHT+IG/PbW7UIphlC60PwUOxQh80RDOAkvXeO0KMZ00b63G384WHwDU9GeTwN11dMeRfcrTfp+wtA==
X-Received: by 2002:a05:6000:4a02:b0:3a5:3bdd:6cfe with SMTP id ffacd0b85a97d-3a6d12b128dmr2288942f8f.26.1750421210615;
        Fri, 20 Jun 2025 05:06:50 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:b606:370e:6752:7b3d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4535e983c97sm58321735e9.9.2025.06.20.05.06.49
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 05:06:49 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] layer.conf: Update to whinlatter release series
Date: Fri, 20 Jun 2025 13:06:48 +0100
Message-ID: <20250620120648.2479025-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 20 Jun 2025 12:06:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13656

Since there are currently multiple breaking changes, update to a new
release series for the next release so layers can show compatibility
correctly.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/layer.conf      | 2 +-
 meta-yocto-bsp/conf/layer.conf | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/layer.conf b/meta-poky/conf/layer.conf
index 483046b6d36..90576700889 100644
--- a/meta-poky/conf/layer.conf
+++ b/meta-poky/conf/layer.conf
@@ -9,7 +9,7 @@ BBFILE_COLLECTIONS += "yocto"
 BBFILE_PATTERN_yocto = "^${LAYERDIR}/"
 BBFILE_PRIORITY_yocto = "5"
 
-LAYERSERIES_COMPAT_yocto = "walnascar"
+LAYERSERIES_COMPAT_yocto = "whinlatter"
 
 # This should only be incremented on significant changes that will
 # cause compatibility issues with other layers
diff --git a/meta-yocto-bsp/conf/layer.conf b/meta-yocto-bsp/conf/layer.conf
index f229cdec5ee..cb36037aa23 100644
--- a/meta-yocto-bsp/conf/layer.conf
+++ b/meta-yocto-bsp/conf/layer.conf
@@ -9,4 +9,4 @@ BBFILE_COLLECTIONS += "yoctobsp"
 BBFILE_PATTERN_yoctobsp = "^${LAYERDIR}/"
 BBFILE_PRIORITY_yoctobsp = "5"
 LAYERVERSION_yoctobsp = "4"
-LAYERSERIES_COMPAT_yoctobsp = "walnascar"
+LAYERSERIES_COMPAT_yoctobsp = "whinlatter"

