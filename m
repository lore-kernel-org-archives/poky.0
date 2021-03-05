Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web12.12704.1614955079584835267
 for <poky@lists.yoctoproject.org>;
 Fri, 05 Mar 2021 06:37:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=XvnRj3FR;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.175, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f175.google.com with SMTP id w34so436513pga.8
        for <poky@lists.yoctoproject.org>; Fri, 05 Mar 2021 06:37:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sSQC75ipp2MlONNMu2sMeJwlyBjXMgMIGnpmVj22HLQ=;
        b=XvnRj3FR0/Ci80oVaPXmtz3lek/G2XCm3JfuwB6EJRx5Eqo4ZpVxrGkeM9K0ekVjzJ
         6J0KIzTNMLOwfV1qHBhwtX7df1HZIqSt05lI4hfKOofU/kpeJiwNr26pz1VEB15ml8hZ
         nyHwLiP/CGEBo7Fd/SJG2nRyqhYEhhG3s2uNgdTVhebelq1tpt69I8h+JgQpgdj5fZ1E
         fOq7PuQ+P+boljT8JOIlY4L60RCRS3wom1Ymw2QOV5+w9ZcYIUUfKuRJZs7cE7KilQ6N
         4zfhddC6jIwAoM+zx2WUQ2mAcCmeT8fL9s487JsajJN/WVsMR+nLJNB73po04E17FVyz
         dXbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sSQC75ipp2MlONNMu2sMeJwlyBjXMgMIGnpmVj22HLQ=;
        b=SYXMqbYKGNMVgOFrRIB+Yb2k+sx2YXnGjJxYVoDDrEK6iCi/CrFTI+4/REGiZg7X6x
         IIjj6NHER4KWJUk5qHjMkMopbM7jkcCbbFPsy9IsS7Tl7aa0w8uQwCWeyUnf+sXSLJS3
         CZEX8muCpW2zY9qU9VXcqYzfG6MWt6xi0SMT85dNbffo5q5uUNFHqZA3OdOIXEPGJOoY
         gGBevajzzibzUashd73JcgfQf1YANkLZWLrweqOXg1zCmggkxpxmSHCrYVeIMI6hxv94
         leAERGcZ3HQRq6Zt20t0Gi3UOBV+Bnh/Pi/rc4Jxc+svpoTlsyOe3AG69sWrFvRVcu5N
         zcfg==
X-Gm-Message-State: AOAM533x6bmE/v3z/TyYPLsUAewYPBEs6mjy9Relu/KGlfGWYxQbH7TQ
	IORw+SIqj877fuWl7cTsWKfN/zbC3k1KlsTF
X-Google-Smtp-Source: ABdhPJxS0stldoDfaBWN96EgLOUUWjaD1bPGpZ4zMfHvHm72Y7xtIMQ68esUmuNUcfelVFlyTA8TZg==
X-Received: by 2002:a63:fb18:: with SMTP id o24mr8670252pgh.55.1614955078039;
        Fri, 05 Mar 2021 06:37:58 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id i10sm858416pjm.1.2021.03.05.06.37.55
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 06:37:57 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/6] Patch review
Date: Fri,  5 Mar 2021 04:37:26 -1000
Message-Id: <cover.1614954239.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Please review this next set of patches for dunfell and have comments back
by end of day Tuesday.

Passed a-full on autobuilder:

https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/1943

The following changes since commit 7972a9b48f61af7ac10d1881dcaaf9c5f48bfb87:

  poky.conf: Drop OELAYOUT_ABI poking (2021-03-01 03:55:33 -1000)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/dunfell-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/dunfell-next

Anuj Mittal (2):
  linux-yocto: update genericx86 to v5.4.87
  linux-yocto: update genericx86* to v5.4.94

Naveen Saini (1):
  linux-yocto: update genericx86* SRCREV for 5.4

Richard Purdie (1):
  local.conf.sample.extended: Bring back into sync with OE-Core

Vivien Didelot (2):
  local.conf.sample.extended: fix double 'of' typo
  local.conf.sample.extended: prefer INIT_MANAGER

 meta-poky/conf/local.conf.sample.extended     | 46 +++++++++++--------
 .../linux/linux-yocto_5.4.bbappend            |  8 ++--
 2 files changed, 31 insertions(+), 23 deletions(-)

-- 
2.25.1

