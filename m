Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web09.3629.1641403440912073478
 for <poky@lists.yoctoproject.org>;
 Wed, 05 Jan 2022 09:24:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=OjPADCfD;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.49, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f49.google.com with SMTP id c14-20020a17090a674e00b001b31e16749cso3540956pjm.4
        for <poky@lists.yoctoproject.org>; Wed, 05 Jan 2022 09:24:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=umoK20/KZPgbdoaPwazPpdTcBbs4a6+TcIq9zdIMGAU=;
        b=OjPADCfDgBq24Ff1rQTgfE7wqolR8hckiaA6OPdjJ9LHW5h1h1JWkrAPzmeKuigj0i
         ldnsDblgITb/ZVddVW+/P+BVi8tnPjjrUO1WKrcvJXIus9CiPVIp11k1qXwqXHq2mY3Q
         psvcFm7sHppDmzodWwjL8anL7cc1F2cl3AVxQxdBPrhi/ASr61gC4SnsPXuv6x/PrLu/
         NM1zV6lJHeJ6r1v2w5VP9/9jvu8NolSSZRP+Sr9lBxf8nqApYLPrQVNVD8Ij62hCnV55
         55MN9FqJ2OdJDYeEgRdUfNB0Fen/vBX+wO5zyXNU286601GxSSF888slxnFWCd6M2Czd
         pjQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=umoK20/KZPgbdoaPwazPpdTcBbs4a6+TcIq9zdIMGAU=;
        b=YUQqKZTKnuXuzK3girTEs8A9KPm9HIFH85f+tnsO8/F+WcvoDUuGl6BsZL9kfpwwLO
         IcfvFNOzH2S+iFcNUBK1wDJjUiPdDi/r8PUolWH1MfCkP1IvuwE0DsazS+hF+OFhL968
         AphyoJkikgZSEEEmFTyFWzf/593L1qBs6MAFeaipewYzYjMPcd3cDONgDjAXN9KNjsFE
         rh/wiNAgkn4MyrkzF7e5NcDrBflMa5FuNUm946cTylG/QaSX3dhZIuLPCfRMaHjn7SV9
         S8tPF1zaPu0kIl88Ye3knfW7GUhnTptbpECiz9vxAKv8Zdf8vSIvbgdKUMnBV+qkXD51
         s+Xg==
X-Gm-Message-State: AOAM530EuqW8Qx8GGHwOY/JUkInXVafls0MMRSEjlOxjFCMvTq+Rb6rm
	Z3xknOk8bP78T6RDPqyWP1PyX73wkLaKCAyvL+0=
X-Google-Smtp-Source: ABdhPJzfdLz/9DIlROi5Z1aWg/khOsTHSKVscndT7DuGLL/LSFb7yjiuN8F/fvH6ieCQVx0TKacLdQ==
X-Received: by 2002:a17:902:ce85:b0:148:dbf5:193b with SMTP id f5-20020a170902ce8500b00148dbf5193bmr54996810plg.114.1641403439899;
        Wed, 05 Jan 2022 09:23:59 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id a3sm48382813pfv.47.2022.01.05.09.23.58
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jan 2022 09:23:59 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/1] Patch review
Date: Wed,  5 Jan 2022 07:23:49 -1000
Message-Id: <cover.1641403315.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Passed a-full on autobuilder:

https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/3078

The following changes since commit fab607a8c53b419fa7109394edbf4e2e9d3c8b8a:

  poky.conf: Bump version for 3.1.13 release (2021-12-13 23:28:45 +0000)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/dunfell-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/dunfell-next

Teoh Jay Shen (1):
  linux-yocto/5.4: update genericx86* machines to v5.4.158

 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

-- 
2.25.1

