Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web10.6217.1663082590035009728
 for <poky@lists.yoctoproject.org>;
 Tue, 13 Sep 2022 08:23:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=6pOhI6sx;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.48, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f48.google.com with SMTP id p1-20020a17090a2d8100b0020040a3f75eso11674569pjd.4
        for <poky@lists.yoctoproject.org>; Tue, 13 Sep 2022 08:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date;
        bh=wM0nB09s6oFqAxA2x6yZ95mF0A8FxUGsyiVANijPFwY=;
        b=6pOhI6sx6Y6padxd5mxnohthTWH6zRruvhFv65QQNlHYxdutkGtS7JOlPT00W2mce4
         OLBVfEn9PoEASD0dJXNkV0nWX9qLd2a8ICO+f/pVtS9lSa+Ihwr22ZGOUEiGgZShsWTg
         BRbiewC7l/8HyPxLriVPA4zpTkyU316AjpWGQnialtdNupuC775XZNUSc7hxYFfEzeWo
         UbtgUl9IWmfK3JbcutUeHJIknr8coot8b211MqDKzIpYJEKI+XRpy4m8N02HT1rARBcn
         XRN+5Y6P4mnvN/CpTWERGRF6aScojuwh5ocACzCSPTXhX6UGmsPR0SLfDHDsle5OHrit
         mF+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=wM0nB09s6oFqAxA2x6yZ95mF0A8FxUGsyiVANijPFwY=;
        b=osH5UomrOXEUvhPCv72zkqI0MZCcTUWI32WDoE5+2EHLA/AWA5KanqHrN7gOdQi60K
         06nQPyX7WD1Nwo1I1vDddHLdadGOvAEx6xEloLu6cS87BqrKwUvtkrru9eGtTlRzw9I2
         nTFv9ZlRsmuWN9d38BG5ipDeQZX6H9UYKjIDXu8PTFGfc3Qsmi218HEuAIZPIyzdcSrG
         A3zy7MIv0KAJJIHdWMUEBIp7n2BOkv4hJ9TKe67dKAenGcWT4np84Ixch5lxbS+181l8
         gDTWm+WiN/otRf3r1P19hz09cc42RvLi6saqCTatMquRTan/GZKP3Sq4CivYrkZqMKZg
         criA==
X-Gm-Message-State: ACgBeo1SyQUXmFC3zFs1ztl9bBx3h4YOlUUFlt3xm90ysL/tMOXMQiJU
	rgTuIcqNZ5Wqc9G3ECVDghMfJbc/KYJzIVbs
X-Google-Smtp-Source: AA6agR6c5egP9mHnjN9bXRX2LdPuOrpL4qlnZ6UpeQvVafMe9CdBdGgaH8335jUSBE+H4xTF/aDt9g==
X-Received: by 2002:a17:902:8f81:b0:178:1276:59e6 with SMTP id z1-20020a1709028f8100b00178127659e6mr19623512plo.94.1663082589098;
        Tue, 13 Sep 2022 08:23:09 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id u7-20020a170902e5c700b001782977fbcdsm6097358plf.206.2022.09.13.08.23.07
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Sep 2022 08:23:08 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 2/2] poky.conf: bump version for 4.0.4
Date: Tue, 13 Sep 2022 05:22:50 -1000
Message-Id: <ca9c465e37b693ab768ee8e21a929d1c18956e98.1663082471.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1663082471.git.steve@sakoman.com>
References: <cover.1663082471.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index ff47fdd..5b9e5d7 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,7 +1,7 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
 #DISTRO_VERSION = "3.4+snapshot-${METADATA_REVISION}"
-DISTRO_VERSION = "4.0.3"
+DISTRO_VERSION = "4.0.4"
 DISTRO_CODENAME = "kirkstone"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"
-- 
2.25.1

