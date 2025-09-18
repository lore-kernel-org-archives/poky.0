Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 569F6CAC59A
	for <webhook@archiver.kernel.org>; Thu, 18 Sep 2025 12:13:03 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web10.12224.1758197573049507637
 for <poky@lists.yoctoproject.org>;
 Thu, 18 Sep 2025 05:12:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=JVp56L5N;
 spf=pass (domain: linaro.org, ip: 209.85.167.51, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5797561c8e0so323523e87.0
        for <poky@lists.yoctoproject.org>; Thu, 18 Sep 2025 05:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758197571; x=1758802371; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5d50OWCVUJgD/iGaIYJ/klK/9bGqheelHLwqP5r/Clw=;
        b=JVp56L5NxHXuxzP/vny/4SgICaLygjPfPPyqqizSXM7G34AsquhfBx4/WfdqLnQw3N
         UFstybEKA+2v+HUUE6LuEIPYsfl4awIfrWCUNt5bkk3OsrcC574ghDJJlqkNmqzdMj5p
         W49c5KuoGbuXmR4zOh4p1TlQ8gkU0QjHZlcFhitCotciLke3LbjRAUX/qLUX8e60Mf3N
         gQyqP7hEYwAXa1YO0+BvyKBcN/+3Lgo5dfaDlMoHd2z3nDlB4aEQRG911AoiDbXdaFOP
         2U2VueuquTMfqghIzlhHlBE0IXzEvHSNYjO4F9mEOfbLZ3U3+YmURc9XuEn+cdVk0P4q
         K94A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758197571; x=1758802371;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5d50OWCVUJgD/iGaIYJ/klK/9bGqheelHLwqP5r/Clw=;
        b=l5PKC2Nth5QsuYJJAVp72c4weODw79adJVo6sdIO4kh8j8Wph/ZODYRX0dK8dUhRdR
         pLdpKwyvHJ26PYHr2dEk79SqpXfmx++etPqoT0CdLMHWAArJ1bdny1qlBSnETL8d4u6N
         xOlYz+ilzEWUG1WkrShZHLIJ+JzjW7T6F8+5DYmIo5ZaCHjPIvc5Fxof/xUk2iKdctrO
         Ov5psYWrIIncap5MRtazbZ5XSJr/3sNril105gFuL1f+OxDfqBPWHltbjJkKI+dyGq0U
         4bAfyzvUb7PADSB/EJyk78prfPm3g2MUiDeQys5kSlFSdbGNBqM6XgVgrrsojziLwZ4u
         Iwnw==
X-Gm-Message-State: AOJu0YynbxeFooXytzLOh8KoBPvm4k3TGMySjRMtx/yW6QIBvRnyCNmr
	nVF2p2cHgrM1VfdTtWk6ZBDmaamp47HaPjFXOlyTP93aOqG8yUadAdV07Ib3k1SXZeknDplyWr+
	CwpWWJto=
X-Gm-Gg: ASbGncsPgNPX0/AEo+VWfXGAxqX+ARtzWd1byYXDNqIOLibQUk3VtvRFQMPllTth+Kg
	PRcTTnMEEEz92XB3aHP77aiXUzjFgjVFu04alf2T5WZCkF0FVXtwo4k8/GPauxNLuRJrMIH581L
	FyveWMn6Dv8A7HerSlsMxcHt5WNqZDr4Yk6iVk5qTcQhH/gZ/OqS9j6+kpPWzXqStppPktsf7L4
	OjLfFU35R+vIaIN1yj+q9rmrywtDO1qfTTbtF8fpYbm7K2QX3bHp8VFHLzN07x6Rnr5iyXbwMRc
	yBBvnK66WOCpAeFSnOD5RmSvhsBuEoQm3le1TdSck9Ui1ZLL65MZrUlDR4tTBXIXtR5Qh/7pLmM
	gzOkiq3jPeEnDjV0ZosRKRFI25Z/YDv9/CVy/2V+i33QAGUrWbUW35JnN+2S1rqbpqLtati/xiw
	==
X-Google-Smtp-Source: AGHT+IFcb526anpCn1nYe2gYjibd4tWbB2t8vHA6qJ+CxKkEdaflGArHGZMTqqUVOgmlDrgEmQakrA==
X-Received: by 2002:a05:6512:2384:b0:55f:6601:ed85 with SMTP id 2adb3069b0e04-5779911502cmr1884870e87.26.1758197571035;
        Thu, 18 Sep 2025 05:12:51 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-361a1e077c5sm5491161fa.10.2025.09.18.05.12.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 05:12:50 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Ross Burton <ross.burton@arm.com>,
	Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH] parselogs-ignores-genericarm64.txt: add error messages from rockpi4b
Date: Thu, 18 Sep 2025 15:12:30 +0300
Message-ID: <20250918121230.3264352-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.50.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 18 Sep 2025 12:13:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13750

Rockchip rk3399 based rockpi4b with open source firmware from
meta-ts https://gitlab.com/Linaro/trustedsubstrate/meta-ts
triggers some non-fatal errors from various drivers.
Ignore them for now since all other oeqa runtime tests pass.

https://ledge.validation.linaro.org/scheduler/job/119422

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 .../oeqa/runtime/cases/parselogs-ignores-genericarm64.txt   | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
index 3e96a172da..7d360bdbda 100644
--- a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
+++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
@@ -9,3 +9,9 @@ Error applying setting, reverse things back
 Can't lookup blockdev
 # X11 fails to start without connected display
 modeset(0): failed to set mode: Invalid argument
+memory-controller: probe with driver rk3399-dmc-freq failed with error
+probe with driver rockchip-pcie failed with error
+platform hdmi-sound: deferred probe pending: asoc-simple-card: parse error
+deferred probe pending: rockchip-spi: Failed to request optional TX DMA channel
+platform sound: deferred probe pending: asoc-audio-graph-card: parse error
+platform sound-dit: deferred probe pending: asoc-audio-graph-card: parse error
-- 
2.34.1


