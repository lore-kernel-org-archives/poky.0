Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web11.1082.1636563953093875704
 for <poky@lists.yoctoproject.org>;
 Wed, 10 Nov 2021 09:05:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=iBO1QEqy;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.46, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f46.google.com with SMTP id n15-20020a17090a160f00b001a75089daa3so2387185pja.1
        for <poky@lists.yoctoproject.org>; Wed, 10 Nov 2021 09:05:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=rhhe04X3eIBTEaGpjPrlNiB7CdgdcRloTmtMttWP1bI=;
        b=iBO1QEqyTH+a3lURANCN0pLSABqBOcQ4fQ0PIZ4sdB//NM2CbnnkABRBdmaF42z7Tz
         gBtowCqI6R7PZYbkPyZWdnkPUaEAx/YpDvYya3kbsnvI/6lPdeHkS5qGRDrG4hu6AiTI
         9FvXNJvkgBghZ6AzN9bsUH8q56IOmW9JgketNqyI1Rl/4NPM51Xn3swXR6hCkQ//10Qj
         r8sIPPLqSvhEvkVyYhir4eNyBCRG3IQZ0SmDj+VYmEzflTZTwm5zUKpkgRwNOg2fvKsp
         qPukVpNDZzdc+b3QqIrgh3sBjjkZkzksuDVlWWsOrLv4zux0iSefys7oUjJLzhkyqCmA
         fhMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rhhe04X3eIBTEaGpjPrlNiB7CdgdcRloTmtMttWP1bI=;
        b=Z+ntx4HPEzUqi79/6r+XpRf2q4EPAglKav6UYrle2VxZiCrUrHvAbf6jamF+2PHtbR
         3EHbUVjE9x2yqh+XN6ovThCbToFPtTZI8pJ67++0xZuaf8i9jTX+r01QeParGeHMV+qx
         XPzzROSMi+XykP/nY5vLrOJmflEICVgaZZW1b/OHyc6FbrHC+86sG7KF21S+aUIUMUCA
         X1FLkKlFWnE7fwDzATmzNuXoIoJf27VTcMS05Gwla1FDB3rgD3s4CHd3VbROOyS744Hu
         zdJjF6QxqfpAtchcQLNSYmm0JhozC2EkEFFPSqTsI81dwzebvhFROVGBVRx+FFtsvBe1
         zhyg==
X-Gm-Message-State: AOAM532ElRBbeNuIp0+NGf3OwjnCCYEj7XdhfJ+NV4Xbcuh4cetWEVZ5
	lun2BfhQqzQEiGUbc8LW06gHCPkqXwdC1I7eT+Y=
X-Google-Smtp-Source: ABdhPJw87VVDx7FfYo+S8gy0kgZJYBUCgSfVZX3NaskkGXWukCPswJb7MqDertzmCZysVQvzHiQKpQ==
X-Received: by 2002:a17:90a:ab17:: with SMTP id m23mr410361pjq.194.1636563951879;
        Wed, 10 Nov 2021 09:05:51 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id g21sm241947pfc.95.2021.11.10.09.05.50
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Nov 2021 09:05:51 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 1/1] poky.conf: Bump version for 3.1.12 release
Date: Wed, 10 Nov 2021 07:05:41 -1000
Message-Id: <4f698bef0b2c87fc7643b834e6565de1f5b30e7c.1636563874.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1636563874.git.steve@sakoman.com>
References: <cover.1636563874.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index ed4cbae..bc22b75 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.1.11"
+DISTRO_VERSION = "3.1.12"
 DISTRO_CODENAME = "dunfell"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.25.1

