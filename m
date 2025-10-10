Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48ADACCD190
	for <webhook@archiver.kernel.org>; Fri, 10 Oct 2025 13:53:07 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.9591.1760104379694517900
 for <poky@lists.yoctoproject.org>;
 Fri, 10 Oct 2025 06:53:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=frs7oHvE;
 spf=pass (domain: linaro.org, ip: 209.85.167.44, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-59052926cf9so2255626e87.1
        for <poky@lists.yoctoproject.org>; Fri, 10 Oct 2025 06:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760104378; x=1760709178; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DUfGZB8qdUu714MMQiDLUz4gUTnPDnqWd9PYRGBJJgw=;
        b=frs7oHvE1af683H0aosjzEp3X+kUwxpwCPXi1BVJYjW/JGAwqXHkCKxE6n6XGlVjBX
         kkdwpMJR/2rD6CV8+6QhxMkiMOc/bav+APJ3yDuY6c/MQTawkZ78LJn+bO/h6A9QU4+O
         0KVBlxN4nDHGr14pz5yxyRJOW22CGpip5DLn/A2m49ZvttgjyUF++OUgNGOhP+4c6zSB
         FU8JyyVcldLGwwUKjBrdRy/5l1P0QNAmALqWVmA2uZFI7Ylkto5FgnUZpUAOMndlR/k0
         /ty7C6Y2Lkv7R8xZkZ+B8Do9iUihff8M9lAMzOUV/KpyoIGU1YM3pH4SmrQ1IvOhszn0
         xdlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760104378; x=1760709178;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DUfGZB8qdUu714MMQiDLUz4gUTnPDnqWd9PYRGBJJgw=;
        b=UZOcgZ8NxyMU5ZJTZHxTQS6l6uEcWjG7fwFki5NyfK5AHoFgLYXSfrPgS4Jk+gwzlv
         vGHDwGTfUegrUr8n84BiNqmk12PgwdmJz0CArocaone7xT0nwwYqsxrkukRjgJUAqCH5
         npS8oO/Nets3grDqPSwg16/aqJlxZDlN2tWpPHsE6jRqKWqHd4KV2dPNmCWnGig2e68l
         uL9DMP/PC2yFSugBJeXyRxPzMN8tC6IR9RofgCOUTxItDvI3L31TFaKLlFT7oax5qqWv
         okPA4U0BPO2gJMWTaW+UyU6hvCv3BNCavIQT/SCX/7eQkv7f4MnUtAW2u06FcEWwFZMh
         aiaw==
X-Gm-Message-State: AOJu0Yyv89iyTIlgKhIFeInCqbO6Vj7HC0cQ7q6iVf/S3w7syt+1XxGD
	mkDQ4cf+oxpupXYyJpZck5UBPMwOQcXENuP/iMhlpC5ONbxfrJPx5KdR0FpWp2EVrzKuRos0AEz
	q4k3m9Wc=
X-Gm-Gg: ASbGnctmmdiuSmFyE95MGI66jZrbmAcqK9xh72BuQa0Y7Ayt4ei9zDnnmsIz7CHKEqc
	FiNJBvqtgi7P2yuh6Cradt3MiRoLTW3U/z6wC4mfaGD3CIpiH0HWADyDrVcf5k0PUCqgvNOHO0e
	Ya+/xU8ijVFw5TTUIhIqs5Zd+OGzlMEeaPVyJeW8Me7dJYOupWJuTjjzLrI7AZvUyB7lrQccHYg
	ABSLT9bA9AhDuoJ7gzoWKpx5cwufP+rfg8OwkqvBDRNPDJyv31wMSNgfX5RmF3CONGKyvPK+0Du
	a9ImDm+1+Uy5RdX2tYunnBMTcYRYvWnGa6Wtt4oeePxBgI1aaaRzPSGIzS/0U0vG3BiRz2lKwFm
	L9Kx/Y7JOP7LksYwfYf8x2PR/YczyBgzo9YYaYHGYVr82uefvIOpBu+QSz2u/wT0khDtn+W1NCc
	e1mrnFrf0REzYgIQ==
X-Google-Smtp-Source: AGHT+IE1FJpltFbUmfapSoA/4+NtZBpbhT+ZHvBocVcg9uJelgkRQUZq8j8pRKt0tLb/1my4kdERNQ==
X-Received: by 2002:a05:6512:15a0:b0:560:8b86:75d9 with SMTP id 2adb3069b0e04-5906dc29095mr3453680e87.14.1760104377842;
        Fri, 10 Oct 2025 06:52:57 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088563844sm897594e87.69.2025.10.10.06.52.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 06:52:57 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH v2 3/9] parselogs-ignores-genericarm64.txt: add workaround for TI K3 am62p5
Date: Fri, 10 Oct 2025 16:52:32 +0300
Message-ID: <20251010135238.1182991-3-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251010135238.1182991-1-mikko.rapeli@linaro.org>
References: <20251010135238.1182991-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 10 Oct 2025 13:53:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13767

With u-boot 2024.04 based firmware the board firmware seems to
have one small issue which kernel complains about. The board
works well and passes other tests so ignore this for now.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 .../lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
index c1e471f14c..2c96ac0651 100644
--- a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
+++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
@@ -26,3 +26,7 @@ optee firmware:optee: probe with driver optee failed with error
 spi_master spi0: Failed to create SPI device for
 # PHY clock not correct
 deferred probe pending: xilinx-psgtr: Failed to get ref clock
+
+# TI k3 am62p5-sk with u-boot 2024.04-ti
+# small issue in devicetree
+OPP table can't be empty
-- 
2.34.1


