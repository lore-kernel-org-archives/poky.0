Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB511C7EE2A
	for <webhook@archiver.kernel.org>; Fri, 27 Jun 2025 06:55:54 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web10.7668.1751007345295717744
 for <poky@lists.yoctoproject.org>;
 Thu, 26 Jun 2025 23:55:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=h1QrNACO;
 spf=pass (domain: linaro.org, ip: 209.85.167.53, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-553b16a0e38so1988659e87.1
        for <poky@lists.yoctoproject.org>; Thu, 26 Jun 2025 23:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751007343; x=1751612143; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CU0Lo3AnxyPPQVGnkO3H1wUDTR89ba2Nud8RN2C4dos=;
        b=h1QrNACOHuo88m5ZQhGggcAfMgPYhRJcQ90u9vvLqjwBYWsUSNQsfkBWad+0VFRo+b
         kolyfkbiKfSYph/dXoRAmY7qiXJFf+gC3RMVT6/N0grGxg65Um+cDD4gf53h9/Xnf/QJ
         v1uwNiU32cEthleec+VY+2PoZ9e6FCAz0eivD+NLCtHyunkYqWdUm7bhjeLNSKdrzpMp
         9a22cqsPZe4xVQOE2aSRd/chSlf1AD6R38eyzNiOSwYvp0hwtSOtk8mPGtOxzKjvc6/r
         MWvxDZ/evvpBks39Vq/2/pdrojcJi/IiGWTp7+5lfx+HcVVkMDJO4FZ5r+IlOerWFkAI
         4Bqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751007343; x=1751612143;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CU0Lo3AnxyPPQVGnkO3H1wUDTR89ba2Nud8RN2C4dos=;
        b=C62jHh0Mb7MFoPifnM3HNFykAo+lxAn45ffHd/N+ohh7QG4+ypkIYYrRUpw5Aohq+U
         U84yB/VaFrp2I3NzZ0E8Amhi5ITYI3gYOdvdeA3HxxHmgSHCD2ELBBn6BIMJpPB2lcnh
         mDA2WMgdoWi3p9APU5VFLVQFRAv1pOlpYL7DC8m4Sa35sxwlU1jZZSsNmniKfSG8//5G
         iCuzvO6TVUK+wkRhkzkcqSr8k+5NBYnsGE/nUZ/mgKRbALB6ffmC5S4Biy7dclwkths2
         6SFhJWZFZxGWTuK/AWtrgRIVJgwPIMTAwVOOxhIl1SdMaYtWDBSaiASbFKQCCzzJPb0c
         Fumg==
X-Gm-Message-State: AOJu0Ywsw904QkF9l26ca7QLzVVxiwF+5dLm5X8CvMiQ243NYNt8iJxu
	Z0xqCT5N4QFW1vNsUrJo70b5eP1Jlv+m7yujBdBnz1jZcRbxA4/m1PfZFE77iZkEAAx31/ZCEbJ
	Slw2SdRM=
X-Gm-Gg: ASbGncv5e0G7ivejXXYi8re5Mirhk4mLMf1ERUwg8ltT/Rv48pyYYRQOUQWwX1EFvh2
	T0dvm5qrIZgwh5OMcJYIpxAow2x/C1hlOtpdjyjyYRZRYrNuWGK3n99NRSeLNRF5ozYtYtKEQ/r
	9cUyFMi7LllEvjaMIhm1oV0LzWX3t7iC87psoo/SlB7s/llqeFk4Zv66AKNwXJATsk2tfwBXM8o
	4PD9y5D7O9ZEXKSHkbQjpAAqudd/WDbWmkyvluBiZdS2W4rgR4VW5MgfQZlqds3Z5WtrYpuAMhX
	EdQJsynZjBXUR98L3oRBqXm7UhdNYtSuwMlg/ml/2ogfLUKTzgqAB4rU4cIqvesLgLs6bS6rc2T
	RILtTcTzgsXBRuMimwN+ge6/dZTSNZM0XPq9OHtM=
X-Google-Smtp-Source: AGHT+IEf9JSWWrZ88hYorMlYesT4ctce4R0DdWIw9kbZYl9xBkwqhHJCURiuYDIC1OGDnqTqXN0EEg==
X-Received: by 2002:a05:6512:b99:b0:553:3945:82a7 with SMTP id 2adb3069b0e04-5550b7ea366mr683406e87.12.1751007343080;
        Thu, 26 Jun 2025 23:55:43 -0700 (PDT)
Received: from localhost.localdomain (87-100-218-141.bb.dnainternet.fi. [87.100.218.141])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5550b2a83dfsm328150e87.92.2025.06.26.23.55.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 23:55:42 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH 6/6] oeqa parselogs: add parselogs-ignores-genericarm64.txt
Date: Fri, 27 Jun 2025 09:55:24 +0300
Message-ID: <20250627065524.790721-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 27 Jun 2025 06:55:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13686

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


