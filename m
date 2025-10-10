Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1709CCCD18A
	for <webhook@archiver.kernel.org>; Fri, 10 Oct 2025 13:53:07 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web11.9590.1760104378253153959
 for <poky@lists.yoctoproject.org>;
 Fri, 10 Oct 2025 06:52:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=Uu2leL7b;
 spf=pass (domain: linaro.org, ip: 209.85.167.52, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5906665139cso2691824e87.3
        for <poky@lists.yoctoproject.org>; Fri, 10 Oct 2025 06:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760104376; x=1760709176; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pTFwjvIB42icRvGA2RCfmjhIe2QBL3m0rQ54dkwaZb0=;
        b=Uu2leL7bfgaAfOmxc/kk5u7JK3NaPixhFtHIh67Xaskra4BEsSKe1lZQkzlno+Vjjw
         LaGTHUgoSOIL3JGhX7TNfNcjNzBeVa2HcyX8rzipkB38MBONvgjQpf7Zw9RsP0VrBaH9
         YPMKHzMQMTnPaSn7i6LNd2dMrhrYKuXvq5h2n9+dSoSKX2O4YrWCTto5K8k5vVp/1UDt
         GrLepr7iUM4zC0H+rq0tH7ke7DuQGjxTGtHpUqT2GNFwFm+Vzu1npmKjCCkQScGVBOfp
         eXPoBEFaC9lPNqUGRBj3u0pmhnyhM/zlv2BsERKEBiIws87fv1rP4Zn9xyhOOrEzI3Ba
         iAtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760104376; x=1760709176;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pTFwjvIB42icRvGA2RCfmjhIe2QBL3m0rQ54dkwaZb0=;
        b=Kfw+P4qPtOvxVwiWEHKmVvZ2IPCrjPlGRkf1BMWJSj+49kIAztBUmKtm/tn4AiCmZR
         q32dGu35rsR6RgdIKKeNq/wgCg/dA5Lo4Fj3PSrIOHURfwY2hK7NeSaGLg1qNbFh+dBl
         blcpUv6QZqvmPqzaiEKjAwKwB3WtSvWazAr1ci9ScTbZ33WtY6PrBl2Hjh3xa5kiEjSL
         T+1sdTZtWZituLhLjQGucb90jYc1ayMaBEWbzupTJo7NZRgKg8xuUrlqDdsY3WkrcPNd
         OLxmWZaG09y9m/lAomC9KVuxjlo8YprMQiMJIx11XTF7vthu0+/CNfVbGo8NsHcPdbK1
         qwOQ==
X-Gm-Message-State: AOJu0YyHXHRvjCU48br3/lfWIOrv1S5zJ2TcPLAjDOsgz6mRkDc25B7b
	UXYjjbPKaj32DKYlsxecXXxD8zPYxHRxcAuh1ZJ0OTv/SI/2eb0iea0OiSZlSuo8+YFbS3APxX+
	N+MBkRms=
X-Gm-Gg: ASbGnct+yoJKQaAVq8yjqK2K+oKMN3VFPTUTBZU/xfsnLcRoaW6i+EeZhZ/DH0OKTp9
	6+C+oj9JpBYDXIZhB6YmGvFtsHD4YygmvnOTF8APyF73aPs7MjiXHTWl4Ds4ric7UmZs8BjJQgC
	e+STOh/TAt5fUQfnBBUyNWDAWgJomsD/d0/3K232fJHCOzgMFmnBZxNWNo8RreIcFQkPrcezdn4
	0K/rwpDCTr+nn76PNoD+D9C4eoENbTeMV5sOvSqT2+2HMHL/5uxZwhbRuXeMIDdqznE7pSBaoWg
	LVYBRhPJjIbka2DHNCBqTH5RdGae0TKxISPTksxEyMxVzY8n4iuKPImEvYaT09e1iqKYLTS1B0T
	o4Dj5KL0h0HQLRoueVQ206rpR8KxgJrMdXgmb+F/XtgUp8M7y+oe1dumquwhaUrSlx2Te/0IDrv
	MotQHsqpBUqn+RNA==
X-Google-Smtp-Source: AGHT+IHy7ieVXQ6U7gmyDO+wO8NZTZmxxmpYgG9brO4xeVt8YnVJ0AZLojyInJRAbFfzZAtacmfuAg==
X-Received: by 2002:a05:6512:1110:b0:590:656c:d116 with SMTP id 2adb3069b0e04-5906dc0d479mr3633612e87.17.1760104376334;
        Fri, 10 Oct 2025 06:52:56 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088563844sm897594e87.69.2025.10.10.06.52.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 06:52:56 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH v2 2/9] parselogs-ignores-genericarm64.txt: add workarounds for AMD zcu102
Date: Fri, 10 Oct 2025 16:52:31 +0300
Message-ID: <20251010135238.1182991-2-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251010135238.1182991-1-mikko.rapeli@linaro.org>
References: <20251010135238.1182991-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 10 Oct 2025 13:53:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13766

u-boot 2025.10rc2 based firmware from meta-ts
https://gitlab.com/Linaro/trustedsubstrate/meta-ts
triggers some non-fatal errors from various drivers.
Ignore them for now since all other oeqa runtime tests pass
since in genericarm64 we don't build this firmware.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 .../oeqa/runtime/cases/parselogs-ignores-genericarm64.txt | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
index 48e3a25f59..c1e471f14c 100644
--- a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
+++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
@@ -18,3 +18,11 @@ platform hdmi-sound: deferred probe pending: asoc-simple-card: parse error
 deferred probe pending: rockchip-spi: Failed to request optional TX DMA channel
 platform sound: deferred probe pending: asoc-audio-graph-card: parse error
 platform sound-dit: deferred probe pending: asoc-audio-graph-card: parse error
+
+# AMD zcu102 with u-boot 2025.10rc2 based firmware
+# optee not available on all devices
+optee firmware:optee: probe with driver optee failed with error
+# SPI device probe error
+spi_master spi0: Failed to create SPI device for
+# PHY clock not correct
+deferred probe pending: xilinx-psgtr: Failed to get ref clock
-- 
2.34.1


