Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D66CCCD18A
	for <webhook@archiver.kernel.org>; Fri, 10 Oct 2025 13:52:57 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.9587.1760104374442876435
 for <poky@lists.yoctoproject.org>;
 Fri, 10 Oct 2025 06:52:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=RykivCrb;
 spf=pass (domain: linaro.org, ip: 209.85.167.44, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-59054fc6a45so2692194e87.3
        for <poky@lists.yoctoproject.org>; Fri, 10 Oct 2025 06:52:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760104372; x=1760709172; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oAWU99t/y8eu+q6ZEuIbdVX1kSbdVZkeyKmLc1uOZkQ=;
        b=RykivCrbKJsnEM3e38pd/cLGaFXp4TTsxt2wCTVhBFwVbIIH1G49ga0AehIQZqmaQF
         M0+kz3vym+Bl4uYbg5ll/55JxyZCrdRxLDE21d4PaoNmQEEzvE1Fkexe5n0nlmbZMT85
         +A6QNyokwz3Ji1zyxx+4mwBepFOhSbfWNQRkm8X0YLEWkh5AV3/QIWZF2VQe49HtZ6lU
         PxRG9mAmZumNatTvjNmRUTbqpKz/q+9tyFvtvEZJiIM2M80pomwHKZpnSZBT4+aRwBdj
         AWNxkE5LfgPZBnqPHq97h2ZYK+pKNTovL/6ytpUGKGL+4KSbNZObbSxdOJXUtJ6uWK2x
         WbZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760104372; x=1760709172;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oAWU99t/y8eu+q6ZEuIbdVX1kSbdVZkeyKmLc1uOZkQ=;
        b=aqsnKU4cOmkPDq9NpjR7f/31npAp+5pvDysj7C90VWyZpr+7KoVId8tOK5Vx/Hqq/r
         prlyKUrSxHtiNfqGGvBSThLlVnwF2NhqU3kG/C8MQFvjddSi5lMF+y4NbCCzI1bTH2k3
         ikHuHnBNUxEh3EouUZsByxtpNtlcc2wmKFwjoo2AKqqyxfRBiMBXTAaPUycijvOZnUJf
         S9by6W37hKplqErOZrKbni5KU3htUZS+rSE1tC6aAMYp9kOP3L4k11i7tO4oWa0GqAsV
         Ga/z8S39KQ/SbzgHNS+cpiEXJENMToPWL4ewgt85EwKnIJDUWQwH8Il2fZvaATJp8PAp
         zVrw==
X-Gm-Message-State: AOJu0YzK0PixZPmhp4e2hxCyEDelzuAqVGtp3Q35X8wj658Nq97fnX4W
	u3ng63gNjXF96r38352LaY18+hKoheYikbmef53pmv4EYKKk8UZrwtIkWrfFHDtw1FIXdIj2Bul
	waP0FREs=
X-Gm-Gg: ASbGncsB0+2gmNRnVv+RFxaHe+0UymT/4Fp/HwiQ43qUkZeb+N+3RiBUy3JzPYfAs/X
	ZKxJyB/HNX6sqRGhr98QScfo+9uP3zvKtGuwnuBGbX4EFJpWbAJBnIncRJQqCsl/q5RP5/cSa1F
	zhbKo/7xLj8aEQZcQThyzSbK1B9AMWalRcTyfZDgMzTH/suDbxm41q8XcV67sM+a5mAFfRDH02R
	E2R+HLu5fYHIoSWkmny4cE2L5uAiCapxithASSx9TgXtu5BVdAFcaz1X0+c65IOQQIywyFWjVFC
	itLMT134PZ+EGxYX4HLKAm+nStSPPAAMU0lw+8e53B9+ApQjI1ZwasZZq5ea6RyN2a1+AiFBrZJ
	R/2UjQBTAmSTbglO0smmhfLti1hXpHCDmyNKN6ZLMZ1SDFae2lHaTpWvQqLAOF0qh03lEtdLb5k
	TMgqw=
X-Google-Smtp-Source: AGHT+IEtw2FFE9EkPmq6b5klHuZ9lBwFYzuJZ09AoSzxhERAJHhn0+h2c2vtooTXrqCZoKdy06cYgw==
X-Received: by 2002:a05:6512:3ca4:b0:57b:96c8:6620 with SMTP id 2adb3069b0e04-5906db040a7mr3099760e87.3.1760104372252;
        Fri, 10 Oct 2025 06:52:52 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088563844sm897594e87.69.2025.10.10.06.52.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 06:52:51 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH v2 1/9] parselogs-ignores-genericarm64.txt: add error messages from rockpi4b
Date: Fri, 10 Oct 2025 16:52:30 +0300
Message-ID: <20251010135238.1182991-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 10 Oct 2025 13:52:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13765

Rockchip rk3399 based rockpi4b with u-boot 2025.10rc2 based firmware
from meta-ts https://gitlab.com/Linaro/trustedsubstrate/meta-ts
triggers some non-fatal errors from various drivers.
Ignore them for now since all other oeqa runtime tests pass
since in genericarm64 we don't build this firmware.

https://ledge.validation.linaro.org/scheduler/job/119422

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 .../runtime/cases/parselogs-ignores-genericarm64.txt     | 9 +++++++++
 1 file changed, 9 insertions(+)

v2: documented firmware details, added similar workarounds for other
    boards

v1: https://lists.yoctoproject.org/g/poky/topic/patch/115308656

diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
index 3e96a172da..48e3a25f59 100644
--- a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
+++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
@@ -1,3 +1,4 @@
+# AMD KV260 with u-boot 2025.10rc2 based firmware
 # safe to ignore minor firmware issue
 zynqmp-pinctrl firmware:zynqmp-firmware:pinctrl: failed to set: pin
 zynqmp-pinctrl firmware:zynqmp-firmware:pinctrl: set mux failed for pin
@@ -9,3 +10,11 @@ Error applying setting, reverse things back
 Can't lookup blockdev
 # X11 fails to start without connected display
 modeset(0): failed to set mode: Invalid argument
+
+# Rockpi4b with u-boot 2025.10rc2 based firmware
+memory-controller: probe with driver rk3399-dmc-freq failed with error
+probe with driver rockchip-pcie failed with error
+platform hdmi-sound: deferred probe pending: asoc-simple-card: parse error
+deferred probe pending: rockchip-spi: Failed to request optional TX DMA channel
+platform sound: deferred probe pending: asoc-audio-graph-card: parse error
+platform sound-dit: deferred probe pending: asoc-audio-graph-card: parse error
-- 
2.34.1


