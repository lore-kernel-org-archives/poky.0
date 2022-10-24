Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
 by mx.groups.io with SMTP id smtpd.web11.19941.1666622343532886604
 for <poky@lists.yoctoproject.org>;
 Mon, 24 Oct 2022 07:39:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=UospuFj7;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.180, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f180.google.com with SMTP id q71so8833375pgq.8
        for <poky@lists.yoctoproject.org>; Mon, 24 Oct 2022 07:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a2GAb2wf+Lcu2yjkrYvG+FcoKi7ddwNOoldPoq9RnT0=;
        b=UospuFj7esH0+HL7LB9WuIgX5svjS/dQoBDGIJR+CivcmJ414SgMoEqcDiy0wqQKga
         VCA9K5NplCKVoja0Inn45Kj2b9DYqqbyxRTnrgxP29aD9kQCYP+qF3Z6C+k2AMiwWW8d
         MkYmf0yT/AIP8cTP2F4XG6SedveqZpWOb4nUU08zR5cH7WkE1oNRpmgrtJN0h1X7dqBh
         TaLFLKNnWzLl2HnTlwjxg2ZdVwhkaXCG+EYSP/mXnd5Cm1Tu5C4IPzGFKlvaxzD0s/tF
         eI8InDiEltPrI2Y4LEdqiJ1JVg7O4VRhi82k1+IB6RihM9dv2cM/A6YzBwH4f38o3GsW
         TPdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a2GAb2wf+Lcu2yjkrYvG+FcoKi7ddwNOoldPoq9RnT0=;
        b=SbDU2frqf+jpHpPUs27y9QBfVuFilO4pbp9XHpNfuuL2jTFwUkqU5KNPTLQnEHRAxH
         CRY7RNESFIMq7RPE8EDC09HWbQAzCw69MJr5ZGkd3VNgPyIqjPUaLr6eCm0nS1J8dTqL
         wsqyM/auhHSaJznmQKctOMjFUdNVR07vBGy8JmEPuUkwMCiOvJGYGPV7vK2wyBD2YvSX
         UAr6fdMKbHabFnO33VQtUlO4UKc7vIpAesZHLbf2pwpU0HXJJ6gmePtxMGFUpRTyGbAd
         TcEDU+MBSYD31zgEQykgQs9B3OrikCdRL4BgRr3UmuUPgla/aOWRJ1B+o99Ra0bfjVad
         1s9Q==
X-Gm-Message-State: ACrzQf3oS34/NcodcjMTqQW6uJ1t+ya3MA1iA/9I3gWsJt73kY8l1Zsg
	mp2GRx2xrGWPZjUxG2p1u8qzU8O8utJ+HdQg
X-Google-Smtp-Source: AMsMyM5wHgxufO+Z6T2ensp9X2XFCIBmIzdqSKxyWwXxYoaNE2oxC5W3GvOL2lSanmG7qtupVCvozQ==
X-Received: by 2002:a05:6a00:22c3:b0:56b:f793:5ad1 with SMTP id f3-20020a056a0022c300b0056bf7935ad1mr2541972pfj.58.1666622342392;
        Mon, 24 Oct 2022 07:39:02 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id c27-20020a056a00009b00b0056b8726d2d3sm4142524pfj.157.2022.10.24.07.39.01
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Oct 2022 07:39:01 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone] poky.conf: bump version for 4.0.5
Date: Mon, 24 Oct 2022 04:38:46 -1000
Message-Id: <8f216dca2fda2c8862f81dacdcf11df3118b31b7.1666622273.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1666622273.git.steve@sakoman.com>
References: <cover.1666622273.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 5b9e5d7..98c243d 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,7 +1,7 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
 #DISTRO_VERSION = "3.4+snapshot-${METADATA_REVISION}"
-DISTRO_VERSION = "4.0.4"
+DISTRO_VERSION = "4.0.5"
 DISTRO_CODENAME = "kirkstone"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"
-- 
2.25.1

