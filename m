Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web12.14560.1600179294146285763
 for <poky@lists.yoctoproject.org>;
 Tue, 15 Sep 2020 07:14:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=cEPJ1o7G;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.170, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f170.google.com with SMTP id w7so2028146pfi.4
        for <poky@lists.yoctoproject.org>; Tue, 15 Sep 2020 07:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id;
        bh=KrP8BedQyCF2oe8CvalY/peEYaptmDf7SlChvaMILUY=;
        b=cEPJ1o7GhFJ6/8is+xwsALmy6niUJrpmPYs61pUDCz5GfHwYa0Lxyh9+fJTMi4Hc1Z
         /PjLXpI7rLnL/yQnngoVZqLquPM5TW991vc1isrkuTTSp/4sfIUjwZW1JNv5ekIJhKwu
         4A4hewO4cuPfPG8xkFEw7QIOiqJtdBnqgIn7BOY4pWp1JtC7xNOTwNlsa7NlQYiRAUf7
         ffrQfPa0rf0/hMOgxykUAxXkqsTuglayyeo7azm0uriUaIRN6qu3qtBXsgMKfAsPXWuL
         ixDMqisdkUcDmy3faIkEaPag2HjFhQeTSkydFpEDIrk0wouNZUlmswg4QqYbX/9VYRlL
         0wfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=KrP8BedQyCF2oe8CvalY/peEYaptmDf7SlChvaMILUY=;
        b=EqpZ3AU0zlZ1Ub/5o+EjGmXVgiRsoZRxc40l7Cs+Lv/aCS5v7NBzMDt6isfqxIu3p7
         Mj6HeIe+VxyAsVp2zeHutIXh6AdgaAML5PGk6s6DujVk/yJUGQ+Ih60jGh8ZWg7exF5v
         a7Q3KKPWMBykC10wz1CB8dnscY+pbBM6CxKqI1J2fmbpGgeOUiG/yZ2BcbN0me4YIBfx
         ndkNKTVl7LfKHeQVZZgOw93V6Dwjlu92JFjutRj0ucvS8PsGx1GPz4wwfJ6tAWd/JwVt
         SC4ySlcuK0SyoqjWKGT6SvkD+ETsRJdC6l+tpNT0lPx2eZCuPpJoapRmTLQihUNH1K7j
         Y2HA==
X-Gm-Message-State: AOAM5315/6b+a8Xp5Pv+dHtTLfUdfOugKHe9CICVdjf3QJE4noU58XO9
	re8Kp46lCYIcgXKQdiM36+Gl58x+JxGGHkO7ePI=
X-Google-Smtp-Source: ABdhPJw7HVkY5yA50CCf/C1u/PZjvIAY2YkDUFFGNwNfPq4uHny0ZNFxlq1cTi/eFbaYRHXbCZ8M0w==
X-Received: by 2002:a65:624d:: with SMTP id q13mr9548757pgv.237.1600179293204;
        Tue, 15 Sep 2020 07:14:53 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id hk17sm11157064pjb.14.2020.09.15.07.14.51
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 07:14:52 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/4] Patch review
Date: Tue, 15 Sep 2020 04:14:37 -1000
Message-Id: <cover.1600179148.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1

Please review this set of patches for dunfell and have comments back by
end of day Thursday.

The following changes since commit 432b365f48f58ec0d9692a93607b65edd098ca1a:

  poky: Add fedora32 as a supported distro (2020-07-19 16:30:17 +0100)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/dunfell-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/dunfell-next

Bruce Ashfield (3):
  yocto-bsps: update reference BSPs to 5.4.54
  yocto-bsp: update to v5.4.56
  yocto-bsp: update to v5.4.58

Steve Sakoman (1):
  poky.conf: Bump version for 3.1.3 release

 meta-poky/conf/distro/poky.conf                  |  2 +-
 .../linux/linux-yocto_5.4.bbappend               | 16 ++++++++--------
 2 files changed, 9 insertions(+), 9 deletions(-)

-- 
2.17.1

