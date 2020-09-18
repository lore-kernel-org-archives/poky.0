Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web12.1955.1600389204346385282
 for <poky@lists.yoctoproject.org>;
 Thu, 17 Sep 2020 17:33:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=WR3laYq1;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.47, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f47.google.com with SMTP id u3so2083858pjr.3
        for <poky@lists.yoctoproject.org>; Thu, 17 Sep 2020 17:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id;
        bh=utWUqiYu7fzrjvSNhh5xvyCTceFnpZ4umhby+J8raX8=;
        b=WR3laYq1N8sLtvpXN7YTIQTZEmC30DSbunE2aQ/T0YerTl7tjXIXDpXCmEXTICYFr3
         Y8h3bLURc3NS77RzIadtpBDRkpZls1dN7cFbdcR++Jt3v2MzCCkZCnwhMtneUbhmvXWp
         clzaTSMUv+L0jJEz6XrdL7b9hnQZZr9xUAS4tdFbwST8gLfvhY1C8bHFwcPCyezHRim0
         ymihA/mgPgkboI0xjFa2WbbfiaWtqSong8kPMzqxzcEwAINbG8mFFrJHLHlslGPdWh5V
         YzadSPv+dm26XyWb+UbAPApKSLDVLBX9wHM3SJJ5QXG6dfy0sIbib8R8GQmRN2uJlQ4b
         0VUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=utWUqiYu7fzrjvSNhh5xvyCTceFnpZ4umhby+J8raX8=;
        b=qkKUmMpwaFUZQyBK44sYvsqAlIA4SkijIb/dkOsUBG5KlYh4KbB00BRsdNTT/GUnS6
         1JhIx5TZNfLCHKY4aIc82+/n05a7LmgY5IzQjaWDxJHDi/g7v0OdM3fnPxTloBni4iqM
         7Ewwc5H8y5hVNt7f8i/dnr/tCJEhj7NTYWrxDrJfv2un1IYDU4w5Ty45JY5sJTmHGxck
         pVSAdeKyLGGGydhiKjM2XnKMWn57ncR/x2Uop9Rf00FjoIhR8BhmampDglZRMBIUUeq1
         c4Z/6x8PlZ6485R0SKL6SJiNhjfDnkaO35DrZwPtowqEzOGNtfcYpFtmuc1/xNTZWK2T
         8waQ==
X-Gm-Message-State: AOAM530E0ClFtXag23jva1P7EjpR3CnpJsm1VPmvdJ7cVROX4H1jsKSn
	o+wAWnsqzGeGJz5ZPGzormPZtJmtAk8F1FlIGRE=
X-Google-Smtp-Source: ABdhPJyifSs4hwK9SNHIa5pwIp178geIIqmmnnIll1LVhZ0G0ZRKkMMPAz2OKzJ9m012t0XhfAKw7A==
X-Received: by 2002:a17:902:d70e:b029:d1:e626:d12f with SMTP id w14-20020a170902d70eb02900d1e626d12fmr13236922ply.74.1600389203215;
        Thu, 17 Sep 2020 17:33:23 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id y25sm833059pfn.71.2020.09.17.17.33.21
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2020 17:33:22 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/4] Pull request (cover letter only)
Date: Thu, 17 Sep 2020 14:33:12 -1000
Message-Id: <cover.1600389106.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1


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

