Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 763CEC7EE30
	for <webhook@archiver.kernel.org>; Wed,  2 Jul 2025 07:26:22 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web10.18009.1751441177821208597
 for <poky@lists.yoctoproject.org>;
 Wed, 02 Jul 2025 00:26:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=XN8rSKdF;
 spf=pass (domain: linaro.org, ip: 209.85.167.50, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-54d98aa5981so6083055e87.0
        for <poky@lists.yoctoproject.org>; Wed, 02 Jul 2025 00:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751441176; x=1752045976; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CU0Lo3AnxyPPQVGnkO3H1wUDTR89ba2Nud8RN2C4dos=;
        b=XN8rSKdFl4Sll5XatxIwc1zbZTrDQWReNwSgBSJOL67DPW9eekuifJf+lmjQawp53O
         IiWBRgLgdC4tPXfxyB5nJ5QVhFAJnXzM+jKiDJSqtadOp2IbJfc8R0p6JslEPT+yl6PS
         iqqtbPLYYzCQfS/x87qD8HPaNleB9V9DkhzE+Q7Vq/nZcfiVNBW34VfsTdIkFFI7bZ5c
         Hdsv4e8k8IBqSE+9C1gM8meGMBpR6B0abXNlJdI5Kj692DxPDK941nkVaB8W1PSpQg/4
         N6Xq5d5G0W45e5u6W/JUdhKuwYw9D4i50+U/Sd0U2evRq+s6A6P1dBS9OlPlihsQiXHl
         q64g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751441176; x=1752045976;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CU0Lo3AnxyPPQVGnkO3H1wUDTR89ba2Nud8RN2C4dos=;
        b=ncieYbv3Hxp/NdCieXFo4NxV9Fo4ZE60CQaGm+uCxWijZDlcSVMGuw4ML3NcRO1CHD
         KQxdcuN4+2WcFpwOcLkCUkl4TCgw+VrbSJ7HCMGtQ6wlXuduBBW1lrjHDOdbP2m1qeTE
         FTSQ32YX5d8ifHPOnOmBJ+cZJllAgn4y7wyhb8EAATG30sdNAdpvYqDK+gsTZDBc+MAK
         DG241FN4XryZv8I2cXwVjmGHc258hZtyc7uXTKROGpypB4VDeJ1OXt2GTHfnWoeIx2Vd
         UitHnMNT5n/8beo2r4Ezppkt/fLQKWEr4mi62eqPJAdQIHJWgNUe+KxR6zKEbpbv6ptl
         s+/A==
X-Gm-Message-State: AOJu0Yw1eJHR4vHzZQ/Dc5m0L38hIjClkbl0xHirVemhTCbiVWGqZ3hQ
	UPOqFcQaeqdKr2IPZ8bAgVSTEgoLJRE2eWqtRkzZoF5MrUK4YdhWNyjueoUxsZHdFn/qB7btXM9
	uzpX0
X-Gm-Gg: ASbGncupNdI3WXiFwe3d3OEWuYwwofmz5ESWttmPgiHxQ6amqwndzIb5lFFR8L6CHQB
	bt/VTZsylJeMWjplF+5cXN+uLHD3v+nCeTkoAlz2zoP37oO77A+NWHDuU3IpJ1pGa9oNm5QEG9y
	UBQioeZcEP20Nx1SIdKrHp/zhcSmvjbc4pysVNBt8hNKfufcqC4IDBok++XkquShTE4iXBbymlU
	RBdRdasuzapl7YE6Pbz4Nrn+BFaEDLyo5cpYq+/ffveM6OB+lmyu4CWYoiXQTrEg6zvlUDW/RN3
	GT87XKJRDYtvkOUfQRGFjlc24kMZLDtH6OBAPoATJngdT4QM1Ttltlp7Y7+9cw+YBDAHleH5a6B
	8/42FyS5Dlo/fpCH7D1IpudpkLtLxiuatnhAlmoQ=
X-Google-Smtp-Source: AGHT+IHCzMuqU6mBRjJjFFCBuGI1WVQD1UrjNWzYZWg/hgkn4Mm3SBGeXv8rUCityQ2dKfopFrGCwA==
X-Received: by 2002:a05:6512:3050:b0:553:cdd7:368b with SMTP id 2adb3069b0e04-5562833b618mr537308e87.43.1751441175736;
        Wed, 02 Jul 2025 00:26:15 -0700 (PDT)
Received: from localhost.localdomain (87-100-218-141.bb.dnainternet.fi. [87.100.218.141])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32cd2f17cd6sm18160101fa.114.2025.07.02.00.26.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 00:26:15 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH v3 5/5] oeqa parselogs: add parselogs-ignores-genericarm64.txt
Date: Wed,  2 Jul 2025 10:25:59 +0300
Message-ID: <20250702072559.1075561-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 02 Jul 2025 07:26:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13690

With safe to ignore pinctl and initrd warnings from
AMD kv260 boot.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 .../lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt | 4 ++++
 1 file changed, 4 insertions(+)
 create mode 100644 meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt

diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
new file mode 100644
index 000000000000..1e8b1f4b7d1b
--- /dev/null
+++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
@@ -0,0 +1,4 @@
+# safe to ignore minor firmware issue
+zynqmp-pinctrl firmware:zynqmp-firmware:pinctrl: failed to set: pin
+# safe to ignore initrd warning
+Can't lookup blockdev
-- 
2.43.0


