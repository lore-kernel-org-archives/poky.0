Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web11.4683.1670539620674252459
 for <poky@lists.yoctoproject.org>;
 Thu, 08 Dec 2022 14:47:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=EAQtvW81;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.47, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f47.google.com with SMTP id u15-20020a17090a3fcf00b002191825cf02so3052034pjm.2
        for <poky@lists.yoctoproject.org>; Thu, 08 Dec 2022 14:47:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=9pVD1A/hHsvyT54qjTrpX1bQH3bEb9+9XFfuzxgFM/0=;
        b=EAQtvW81IAvTdGh3kA2tu0q6d/U5CqUbOAd9oqAlVFeLyb/eLT2dtyECXunVJYHZyQ
         TAuS5r+pF0qIkSEcFSws22PVbBly1XulNfjGjMbPBd6Dp1RLU8BOFzzU9Q74Iz/ur25y
         1Cu0UyLr0br4eeSj3OkoIbggbj27QHKJSNjaembtGzOE9BhhTSP5zqVEtdOh7ltXz0VU
         1tMwKEZfX7qHaK99J6kGM1WYRlLx2QPT2KVmTzhUKq65pv+8cSQvbNhZpGpTwKZquQ8U
         xBixIrOmZ2kiP8fcSDH2RRNrwTeBNk3ye/vKyb5SjcGuh/pJt/GNWXKKLjeZkoO1uM1O
         7gKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9pVD1A/hHsvyT54qjTrpX1bQH3bEb9+9XFfuzxgFM/0=;
        b=buiNh1nUxEjSmi7hTVZhNeMALKAXJSx0hyGzzwSo9/LMzAHSJs5728kRJS8tpUNHMn
         nwS0KwTsQyiVI2tTN5q7mQE9OTasHyoXhQ7ajh9UhQ2vzBLqd+QSAMHWK10zcxXc4B49
         0/sRih2nUH06eTBDZlA9YF5JcaduKYXWNTJ90W9xR1joNr5QiewBBtZA1woL2QcWx2B8
         jskkiF1vsQ5Akb/044e2ub1Co5p4zk5oyA9LARtzTA1Gix87aRYaNto255WiCbndAT1F
         V0eUcCGI9OD+O/t+FZnDKARFKT490ERTgj1ExQrNiYOEAkrd/tS2NR2ZGZiu/tpM1AeY
         KGWA==
X-Gm-Message-State: ANoB5plYeiLj1DsZdEuA2SpPsG5FWN6AJtz+L9ouWAAYFbGW1Gl6ykrU
	A38WAEzjg0iqhmci4Crb/WmsfnAfn1mlDUISdJw+Ew==
X-Google-Smtp-Source: AA0mqf6mqySOb7ruoaMFK99a6QdflI9sVD7wJg6dq+9fzMm1/dYIiQLP5lF5B+Eqp1+ediisq3WALg==
X-Received: by 2002:a05:6a20:c6ca:b0:9d:efd3:66df with SMTP id gw10-20020a056a20c6ca00b0009defd366dfmr4062246pzb.38.1670539619354;
        Thu, 08 Dec 2022 14:46:59 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id d24-20020a631d18000000b00478dad38eacsm5067304pgd.38.2022.12.08.14.46.58
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Dec 2022 14:46:58 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 0/3] Patch review
Date: Thu,  8 Dec 2022 12:46:50 -1000
Message-Id: <cover.1670539434.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Please review this set of patches for kirkstone and have comments back by
end of day Monday.

This should be the final set of patches for the 4.0.6 release.

Passed a-full on autobuilder:

https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/4600

The following changes since commit 8f216dca2fda2c8862f81dacdcf11df3118b31b7:

  poky.conf: bump version for 4.0.5 (2022-10-24 04:32:55 -1000)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto contrib/kirkstone-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/kirkstone-next

Ravula Adhitya Siddartha (2):
  linux-yocto/5.10: update genericx86* machines to v5.10.149
  linux-yocto/5.15: update genericx86* machines to v5.15.72

Steve Sakoman (1):
  poky.conf: bump version for 4.0.6

 meta-poky/conf/distro/poky.conf                           | 2 +-
 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 .../recipes-kernel/linux/linux-yocto_5.15.bbappend        | 8 ++++----
 3 files changed, 9 insertions(+), 9 deletions(-)

-- 
2.25.1

