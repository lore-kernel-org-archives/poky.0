Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
 by mx.groups.io with SMTP id smtpd.web11.349.1631026254849605450
 for <poky@lists.yoctoproject.org>;
 Tue, 07 Sep 2021 07:50:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=JLejyxmN;
 spf=softfail (domain: sakoman.com, ip: 209.85.167.175, mailfrom: steve@sakoman.com)
Received: by mail-oi1-f175.google.com with SMTP id w144so13047671oie.13
        for <poky@lists.yoctoproject.org>; Tue, 07 Sep 2021 07:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=rKnhZqOSXGUaYkKwMaqB0DG3OlrlBuTqXNoSVOBdeas=;
        b=JLejyxmNp4XErqaoe2gG9j0cd1CFTAaaCVlMRjvY9iC/MuUBq4avbmzafSLT9ZngNl
         lss1tgpRxuSSzz+FyYCJoooe3Xhh1pbfw38JoEUTYFr+JMQigZIOktVvNFQDI4Ek+Ssq
         HRXU6rPl8O0eM7x4Wz64c+txDaYjuhA/gDitBCqTyoDaA515lUyqNchWQXObijawLg2u
         wFI5IRr9oE1eCYOO9Ai/IWA2vgM3MsFhNkubgtlec3Zo3Lr4KiA3Rama82JrN6onPEEK
         p080W9CwNpsv3CmD4AEks/MAHdOZdDBow+6Hi08UI4S3W8EcrF0xrtXJznK2q974hKDK
         sC0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rKnhZqOSXGUaYkKwMaqB0DG3OlrlBuTqXNoSVOBdeas=;
        b=ABNfZrHrdjVUIKhFEEISNFjeBTA4VVboJXb+LMaIZNXEQuUzUVIEeSAjZ342drmKu8
         qcXS52l+LW1rJZgkfJkxaO9xlloZHID5Lel4l/+b1u7tkuMUksNCD6jTuwWHefPdVQti
         E9araLo4Z9/X8w5NffsCuow7OwJxw/Q1f/tu0ELSZECJuG8NYd/iNIMdFo5dWTfmZAj8
         QxVhj51v0kG6chES2yHulA5VUT7itQMRW9FR3CtpAWWFFMMO899MJV4hGmDP0fW25uTL
         Ze0xhu8prORM6WG9ABjLGbobPjf1jhK48t9Qeqf+4ZvENkKUWmONfXPaQrjSzY+4nM8d
         Lj6g==
X-Gm-Message-State: AOAM532L4ecIH5vg9/lEy4fwz6g0xPmSeo/Tq+nmC06eQMtqhW1Sql5J
	bbrW5bOvkc38Zow3ggZ/rb9bLbgH61XOCXdR
X-Google-Smtp-Source: ABdhPJzEy16MICu8Lq7TAinVB3WT86Wq3RgZhIPAqkDVGiqSyWiqp6ywt4fJqdvxdqlP8xbFBVLi8g==
X-Received: by 2002:aca:3049:: with SMTP id w70mr3335781oiw.114.1631026253759;
        Tue, 07 Sep 2021 07:50:53 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([172.243.4.16])
        by smtp.gmail.com with ESMTPSA id r26sm193421otn.77.2021.09.07.07.50.50
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Sep 2021 07:50:53 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell] poky.conf: Bump version for 3.1.11 release
Date: Tue,  7 Sep 2021 04:50:36 -1000
Message-Id: <f5006af2de32217353e688306c3ed9b8afc03d57.1631026164.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1631026164.git.steve@sakoman.com>
References: <cover.1631026164.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 11897c7..902861b 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.1.10"
+DISTRO_VERSION = "3.1.11"
 DISTRO_CODENAME = "dunfell"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.25.1

