Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web08.8379.1646749781413920655
 for <poky@lists.yoctoproject.org>;
 Tue, 08 Mar 2022 06:29:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=CO/dKJ09;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.52, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f52.google.com with SMTP id b8so17321938pjb.4
        for <poky@lists.yoctoproject.org>; Tue, 08 Mar 2022 06:29:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=F7dNllbX+L/RYzBkc3LlhiER31HXFLYV8Ud+i4VmN4c=;
        b=CO/dKJ09A0EsosvKnr28014j21hL/HK358rhPXPDvSl/rHcJiP4TP3pybIwqACSc4G
         unQM/eCNhg+8x8ayHwkxjIV+OXCb17h3/OnGjATFb9DZp7+UlJNjHn2dB0zJ0tgeGBIX
         FzXKMwaqkuw24O4Eb6dGGT7XgN08hJTtKazRey+hsRsq4yRGisagT+VKgcZoVuLepHd4
         S7uErr4e9NvPrc0ukAKyqFR5rV8IC/hNRn91WZZA+lTBZC23aBD5osPZzzQPBZ6XHz0Q
         QEgRv6/7kTjGS141kLMyl1Yn12O612dmNtIhkDX04n3JQlTMjPSBvRCgF+fLpxUAkYqD
         PJsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=F7dNllbX+L/RYzBkc3LlhiER31HXFLYV8Ud+i4VmN4c=;
        b=JMIScXk6bO9T9lG9WQehlcsMSLreSgZo3R2LS3lD1AmEIPLoKCVtaXbpGnN2aBsJvt
         jVBDT4ym+3f/KM+3kf8k1/iI3TraSeatgLkAdpVhjm8HhSNPLtCPHSr/RzKg4IFjoisG
         EI5lc9FYDSMVl1v3pdC6Qd+ee8B35LnveTlNWPtLpRq8g+Rq7cZJsJsUj0v8z8ZRs8Si
         9A3Np3XIfb4AkNfn12VCW2sgUkiuTkXbwxd0GGDojvBMbHKCTHW+YlxXRb5SKtzDQb+Z
         lMAPdpAWvz7KG6JqNPP0evttydSwYM3wxsB61aYAvRfGsTkwdaJokpA8C2vNDUolWaqx
         2EiQ==
X-Gm-Message-State: AOAM533rzwPN0XGXuEkIGu55M3iIU6YhoZxqDj2YYuxmHkceCuf0lDt2
	2YB3CRea/6zawrr3sF+P31w2VqvfTOPBdA9VYVM=
X-Google-Smtp-Source: ABdhPJxiPNh2L8ZTOdE0v/muaHNY3PkE04hbWr/InlAYD3xWa1qiWsqTVfUEUEMAYfWjxK3/QqUyNg==
X-Received: by 2002:a17:90b:17ca:b0:1bf:6188:cc00 with SMTP id me10-20020a17090b17ca00b001bf6188cc00mr5069702pjb.2.1646749780273;
        Tue, 08 Mar 2022 06:29:40 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id x190-20020a6286c7000000b004f6bf60b958sm15286829pfd.125.2022.03.08.06.29.39
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Mar 2022 06:29:39 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/3] Patch review
Date: Tue,  8 Mar 2022 04:29:24 -1000
Message-Id: <cover.1646749124.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Please review this set of patches for dunfell and have comments back by end
of day Thursday.

Passed a-full on autobuilder:

https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/3335

In addition to testing a-full builds with all new distros enabled over the
past couple of months, I ran these addional tests on each of the 3 newly
supported distros (AlmaLinux 8.5, Fedora 35, and openSUSE 15.3)

oe-selftest

https://autobuilder.yoctoproject.org/typhoon/#/builders/79/builds/3262
https://autobuilder.yoctoproject.org/typhoon/#/builders/56/builds/1783
https://autobuilder.yoctoproject.org/typhoon/#/builders/86/builds/3232

reproducible

https://autobuilder.yoctoproject.org/typhoon/#/builders/117/builds/466
https://autobuilder.yoctoproject.org/typhoon/#/builders/117/builds/467
https://autobuilder.yoctoproject.org/typhoon/#/builders/117/builds/463


The following changes since commit 8124e73de7fd319d96cdb6f556d6b1943fbe41e3:

  poky.conf: Bump version for 3.1.14 release (2022-01-27 16:15:55 +0000)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/dunfell-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/dunfell-next

Lee Chee Yang (1):
  poky.conf: update tested distros

Steve Sakoman (2):
  linux-yocto: update genericx86* to v5.4.178
  poky.conf: Bump version for 3.1.15 release

 meta-poky/conf/distro/poky.conf                           | 5 ++++-
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 2 files changed, 8 insertions(+), 5 deletions(-)

-- 
2.25.1

