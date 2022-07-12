Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web10.10011.1657637037171885309
 for <poky@lists.yoctoproject.org>;
 Tue, 12 Jul 2022 07:43:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=D7MaRAnp;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.182, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f182.google.com with SMTP id 73so7736989pgb.10
        for <poky@lists.yoctoproject.org>; Tue, 12 Jul 2022 07:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=KQYAB0DD3OQ6VuHmAQ3qQRGWN4sWBhVbEEVSauKKddY=;
        b=D7MaRAnpTqN/0uUCElK06va2F3Tnwt9FVL9VdcZ9TzI69gihrxpIIrBM4FK3mXsev8
         H6N3jFeB1jrcTy0RbO/cJAR/iBx5e9pAIMaXYHweGzv5ofbUuHVcM+qDinkKKHXxCGiU
         D6Lvez3QN3kiGjmafV6S0CGE9oOGSZLivVol9dDPBeHjd8nX1jEMKNC8y/jPNUvWunkH
         g1O+qWSsiEkaMCSeHaocl6o6gko2XwI44JyNmVJg3tm+TcHR8KkBABVIwC9trb9tmw4C
         h7mLFOyzw9iTDVaGtdnjFJGyKK4SD6O2gtTLIK/UHBX6p1ltmRZ8vC696sK28t+Ctn9/
         L7tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KQYAB0DD3OQ6VuHmAQ3qQRGWN4sWBhVbEEVSauKKddY=;
        b=VSt2d+TwROAmUI3h935KlkEeCBgJwSQ4szD2t6OaavVsUGM0sVGP2Vve/DCaXw2gVQ
         ZOUkpnb7qSFq3h+yqhMwg7y8ZxgNGBS5UVPeJx84zToxApj2L1Db5orTj/2SnS/og8bn
         mGahzQ0TBQ7qXG+Emoq4/3p4ShZqKuTNKFqUmwluhTYst52D4lkwronaogP091QNxFRM
         z/EWNeceLy2mUDqAh3J//fg21LYssoDCwRnNKvGgpBa7yS99i6DZq3LUNElWe1l9OcU3
         sZ1vZw9J2aUKXnlKV8kn63cKbq2njKLIWNL3pYdEb+MSicqjZXn2VIyL/7M1U+vqHiuL
         btXQ==
X-Gm-Message-State: AJIora8WEtLhw+z3Ke+LkA/kcjAqMvjxIH5+GWb7gFky7d7Uwt7HAQIe
	95gT22c1hXfnp7KFtZaRCvKJSr3nfRaUK2yJ
X-Google-Smtp-Source: AGRyM1t01hVtpX6GoXN2kJRiwo7RDaAdcDqkvTpICdCVeraplax0YhCsmixkqmuHJhwpkZm7oB54VQ==
X-Received: by 2002:a63:3fcb:0:b0:40c:4da1:555a with SMTP id m194-20020a633fcb000000b0040c4da1555amr21076283pga.3.1657637036204;
        Tue, 12 Jul 2022 07:43:56 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id q13-20020a17090311cd00b0016bf0a78f02sm6964496plh.111.2022.07.12.07.43.54
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jul 2022 07:43:54 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell] poky.conf: bump version for 3.1.18 release
Date: Tue, 12 Jul 2022 04:43:40 -1000
Message-Id: <1a7c77770cf672ba0ac1dd4cb3597fcaa6361167.1657636875.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1657636875.git.steve@sakoman.com>
References: <cover.1657636875.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index bd20e84..ecf4813 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.1.17"
+DISTRO_VERSION = "3.1.18"
 DISTRO_CODENAME = "dunfell"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.25.1

