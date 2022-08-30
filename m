Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web09.12391.1661869865565266023
 for <poky@lists.yoctoproject.org>;
 Tue, 30 Aug 2022 07:31:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=SYVRJe70;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.42, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f42.google.com with SMTP id j9-20020a17090a3e0900b001fd9568b117so8372555pjc.3
        for <poky@lists.yoctoproject.org>; Tue, 30 Aug 2022 07:31:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc;
        bh=+8uP7SoBcsNB9ShvqI2l1n8ZUOiRe/QBiYnVO3qQoSk=;
        b=SYVRJe70eO0ne+8qKYv8ucawUMftc+pddpIYEXnYozuRGd+slc0DepnEwYulMU8SQz
         BNBROsXR7+dP3EYF9mc4iI8zgc1hf8jt2TXOvnkCtjVahvEtRujU+QrWThXrfIOLkHDO
         5GxYJRoLm4KLBr0jheCb1lxXII/nr76KI8Io6K89OjP6+yhhx8d2bFahuDegbGtIywq/
         v0OD67Bn7zL55TU7+I7Mq/xBlFdF5XLWXaR2pOmnRoN0KJN193OWwFh1+pyeYHP7JGcx
         yL9UAbO+hnOHCAKVj5IwupuajErjzRgWy/tz7nXwh2C70ITTR5HGWI3DrIJi0DPHic/4
         QeFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc;
        bh=+8uP7SoBcsNB9ShvqI2l1n8ZUOiRe/QBiYnVO3qQoSk=;
        b=52reziHydZ63Igdksk9S7rmzOlCmxQAPnQ7gZRBsp4ZAfQ00MLXoYj9mUMom81I1KA
         FdIe2mD3RuhW9Wo+hgi47Ym/Tv1Td94bVMc6o41Y9y2X8k5xZVtpX0GcN6WL8+MT5RTV
         IF/1YfCX5xGQsfSGjTpsL6E3voaY6Qn5UyqamiOGMZn9GcysGls4jtJ1N62PHyV/YGqa
         pWgm1K18pWr0ta+yYbojTqPgjlw2Sw5IflKkQqvkKyNNCGPA5nYaoMdGid/VFgmBXuHZ
         7+fGP1A1+x1rTtnHA2q8gh5RfqT1xPQ76ZDuE3R9YANDqQl1WyMQMfG7nIErCr7mUoit
         JEDw==
X-Gm-Message-State: ACgBeo2NlrIRzP0ubToebA91svSQ2Q3PDM3Cmj/Izc2wjfBXyUwUJo/6
	OY6pqPRbgJTN+ZfVvO0lCAJ1uEL1eBFfLWLS
X-Google-Smtp-Source: AA6agR5GSjBdzE0STMbmn73HMvTiSduaeKYM40TTZ7724JZb+iYDNsYnTu+iwkbYtxwyNSMaC0gXLw==
X-Received: by 2002:a17:902:7845:b0:16e:ea31:3354 with SMTP id e5-20020a170902784500b0016eea313354mr21088700pln.17.1661869864162;
        Tue, 30 Aug 2022 07:31:04 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id y134-20020a62648c000000b0053651308a1csm9347199pfb.195.2022.08.30.07.31.03
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Aug 2022 07:31:03 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 0/2] Pull request (cover letter only)
Date: Tue, 30 Aug 2022 04:30:54 -1000
Message-Id: <cover.1661869783.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following changes since commit e95bbf710c397bf643c66a6454d57628d2c723e5:

  poky.conf: bump version for 4.0.3 (2022-08-09 07:12:08 -1000)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/kirkstone-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/kirkstone-next

Rajesh Dangi (2):
  linux-yocto/5.15: update genericx86* machines to v5.15.59
  linux-yocto/5.10: update genericx86* machines to v5.10.135

 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 .../recipes-kernel/linux/linux-yocto_5.15.bbappend        | 8 ++++----
 2 files changed, 8 insertions(+), 8 deletions(-)

-- 
2.25.1

