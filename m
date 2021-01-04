Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web09.16973.1609781894973986230
 for <poky@lists.yoctoproject.org>;
 Mon, 04 Jan 2021 09:38:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hNZnaa6i;
 spf=pass (domain: gmail.com, ip: 209.85.219.49, mailfrom: vivien.didelot@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id et9so13373465qvb.10
        for <poky@lists.yoctoproject.org>; Mon, 04 Jan 2021 09:38:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vlyuV5d/RYfGJdD21OxGNAo4e5B8P1iX2xoVn/8pkdQ=;
        b=hNZnaa6isT8/na6FdfDLEVrc++gxzyiW+vbP2ASeYrI6CaHMgmPALJVrotT3wtrz6i
         5PvDsYV9NOUPkU8bzJimOYRRYtcjMw5U1OAJjd0sO2qu7puvQrvHYH6mAQKlR4n3t+Bj
         HpO5T+8jgf3UgSXA2+lwcwjANKr50Kkv0/CX8sjUFTp2AYbDYQQsA49KXC7kg0PIJv/u
         NCeWh/V28gW6jbCLASVlIwhhmDkjM/s4J4F6d+c2j//xreGXv6KkjmIclVCsrK8fsPYY
         tQiwqWQi/hBJ4hMvUVpndWMaGGQ8zUoH8HVVhuK6DEpN6JGMDbzA65/EJPHw1kqX5eSC
         l2WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vlyuV5d/RYfGJdD21OxGNAo4e5B8P1iX2xoVn/8pkdQ=;
        b=TwzBE8Zt3x9I2wemeZZlsOq+OOfDCsd4oGjLHwkLBTidz1CfArh54lr2UygXrksMw8
         pRKZBE58pIT1Msz5UG26+d17LYK/y6RTnTJGtFYVg1yFlH18G42DTFBXMZNfmBgf7YLf
         GHkh0UXaKccSRTxAWbK6LKAeY0tNRSZpCkH4a9hzx1HYos5bHY1tLYdx4URRNEf3OMAa
         V4GwgAmNvQIvEz5LVNWqgxd4zR4jQ7OMW+XafHyjLrUA8vCPGYDo10baO0mHDjSK4lGw
         LfWP8BqopfHHg2b3CXskVaibCiFwapH2oTSheyM1HhxsA5SYSKyKCDYklx1PFi1do5CB
         zYuA==
X-Gm-Message-State: AOAM531LuR8zfd868YoHOYtQKOk96gG7MlY8SOibaU3NC8Oe5wZ0jszt
	jGWeStqD+zOEmCLMXaMwt5zCimP0DEI=
X-Google-Smtp-Source: ABdhPJxAIvbZ0X91kYEX2MUM3x1VrmB+/EvUBYx4vXfiycb+AhU5jyExgAMUXgjHoeydyBCtOw06yA==
X-Received: by 2002:a05:6214:d05:: with SMTP id 5mr76787986qvh.54.1609781892396;
        Mon, 04 Jan 2021 09:38:12 -0800 (PST)
Return-Path: <vivien.didelot@gmail.com>
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca. [184.163.105.249])
        by smtp.gmail.com with ESMTPSA id a35sm39018205qtk.82.2021.01.04.09.38.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 09:38:11 -0800 (PST)
From: "Vivien Didelot" <vivien.didelot@gmail.com>
X-Google-Original-From: Vivien Didelot <vdidelot@pbsc.com>
To: poky@lists.yoctoproject.org
Cc: Vivien Didelot <vdidelot@pbsc.com>
Subject: [PATCH 5/5] meta-yocto-bsp: use mmcblk0 for root partition
Date: Mon,  4 Jan 2021 12:37:41 -0500
Message-Id: <20210104173741.1070515-5-vdidelot@pbsc.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As for the boot partition, use mmcblk0 for --ondisk, not mmcblk.

Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>
---
 meta-yocto-bsp/wic/beaglebone-yocto.wks | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/wic/beaglebone-yocto.wks b/meta-yocto-bsp/wic/beaglebone-yocto.wks
index 97bd480a08..701ae0b3d4 100644
--- a/meta-yocto-bsp/wic/beaglebone-yocto.wks
+++ b/meta-yocto-bsp/wic/beaglebone-yocto.wks
@@ -3,5 +3,5 @@
 # Boot files are located in the first vfat partition.
 
 part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat --label boot --active --align 4 --size 16 --sourceparams="loader=u-boot" --use-uuid
-part / --source rootfs --ondisk mmcblk --fstype=ext4 --label root --align 4 --use-uuid
+part / --source rootfs --ondisk mmcblk0 --fstype=ext4 --label root --align 4 --use-uuid
 bootloader --append="console=ttyS0,115200"
-- 
2.30.0

