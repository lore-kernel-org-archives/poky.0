Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web12.1321.1594161140012760801
 for <poky@lists.yoctoproject.org>;
 Tue, 07 Jul 2020 15:32:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=hhPyNII7;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.49, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f49.google.com with SMTP id md7so296094pjb.1
        for <poky@lists.yoctoproject.org>; Tue, 07 Jul 2020 15:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id;
        bh=4RavQt7A4qUZbVKzeynawUeFhuyPVIpMMs7aDfcL0Zg=;
        b=hhPyNII7MPSGFr21YCGahE67GyHJW/W/7gM9V2TxXtdHQebZFWD1IuTUe93HZMez4p
         KMEEUThTr2//Ehyld9y8UZd6rnAJkkDe/twqPHwzYmUIkYxk47/HXVShIhYtQzZFTSrc
         Oo0z7xOBrkPpTw9/UtCyeushk6N3ecHezZoXN1zW7X5XnItyJUOhSZkDNEJH5ApDr92+
         2ldU0f4h50sMUplicSaQxkKC/Ni5SNhx7ut+7w9FftRaTVDwJHg1KMbR7mv7AcqhCNs6
         gpixa7rRF3P3jFRYv/1X7wKsYCN2I0G1Ejea9AfFVWrvCa9VHDk2/TBWR1WDrLdZu0B5
         +oxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=4RavQt7A4qUZbVKzeynawUeFhuyPVIpMMs7aDfcL0Zg=;
        b=W4e6zMfULvvtz2FZ5fIF0U0fHAefcHGohKb/ivaSs1xsgaBpzt9RBdWohhqRc9Fs5V
         DRDMhRaEs4+Dkd7QzqR2HVxIM2Q3PxeLzmQyoNcL68JcKcGlol/gpXs/ihg/Kq2tRYh3
         NYtx3uM5WbcAPzbuZUIFINYkOy3dGSDIUYxjCncS/wvcnSOuuX47tfOuQw7spW22XyKv
         zlRoweY/xJGrhpVX8I9rjEr8WUtIJk6ZGnMHKUSeN8Edmu2cytot33rkSC6WpIUYex30
         YM3lf0Z44ZEJHR1PsaME6P733JGuxLVjZQxGfds5vTLbUKYaixuCDGJIN2HD0nGJI0jL
         y+/w==
X-Gm-Message-State: AOAM532BGSEcn0uBuSaRqVgK9c8j1thkhrI6inJ5Qe1wyn2neLaGwSMF
	bfx3//qSFIg3YcPlcJo4bOn/TrGnQZymgg==
X-Google-Smtp-Source: ABdhPJwP/P9LbN/X5R1kpLUyahrHlW0FdO6/vqQO4zN14zIu1OV/cCA5f67rpolKJm0P71h9XhsLBQ==
X-Received: by 2002:a17:90b:300d:: with SMTP id hg13mr6906197pjb.212.1594161138862;
        Tue, 07 Jul 2020 15:32:18 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id u19sm24439179pfk.98.2020.07.07.15.32.17
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2020 15:32:18 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][master][dunfell 0/2] Patch review
Date: Tue,  7 Jul 2020 12:31:48 -1000
Message-Id: <cover.1594160917.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1

Please review these changes for dunfell and have comments back
by end of day Thursday.

The following changes since commit 9d7966cf2fb33d827c999fbb88872d8437d8f0c7:

  poky.conf: Bump version for 3.1.1 dunfell release (2020-06-08 21:28:24 +0100)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/dunfell-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/dunfell-next

Anuj Mittal (1):
  linux-yocto: bump genericx86 kernel version to v5.4.40

Bruce Ashfield (1):
  yocto-bsps: bump reference boards to v5.4.49

 .../linux/linux-yocto_5.4.bbappend               | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

-- 
2.17.1

