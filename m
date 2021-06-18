Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
 by mx.groups.io with SMTP id smtpd.web08.1507.1623975692016374369
 for <poky@lists.yoctoproject.org>;
 Thu, 17 Jun 2021 17:21:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=ZKYmeJmu;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.45, mailfrom: steve@sakoman.com)
Received: by mail-ot1-f45.google.com with SMTP id 6-20020a9d07860000b02903e83bf8f8fcso7950934oto.12
        for <poky@lists.yoctoproject.org>; Thu, 17 Jun 2021 17:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sMR+HrcPbWUSX5yXpzbiqAIXydu7UHaTwR1zD5kPcUE=;
        b=ZKYmeJmu9Fx8qzV14caU6g4+Y3Ceby7s0Eii/96s9uUBVK3WVrJ+d1Ub9oVzLjUyGN
         8PGX5uQcerw4IYg94vBBBom5PN+D9Xtqw3qWuVXgAnOimDMULXLbN3AQks1RkLLOL5Pu
         P7npDjtptK2Bd19o72Euz/nAdN0R+gw4KnXYQa5uwhPWO+lCt1Vy27lXW91aSK6be4Jh
         8fsYYxYYmMQmIgbj5GJFzNaYjASxtrMqPb4mzJd0yVRjkpoKn6WT8iC5T+pNa096VdQC
         JcwBh1Li2vhpN6Bki+vdZvbIgHxXaGF7r/ZvIV1RU51vesnLc5RK28GyyladtDURdF2x
         rsMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sMR+HrcPbWUSX5yXpzbiqAIXydu7UHaTwR1zD5kPcUE=;
        b=fklpV4FFdPFDT8t3Qpxftig3krLBngm+86xIAnUguyxv1tcTGOLJDPcl5cVwOiD2GR
         qoqPB1MCNsNs3yVhCjzFfAXL7IEqPrDZMcAt6BfQdCCecFNo2U/2QXGmPWkdetElbmbJ
         9h9IcMF3QbaC7Xk23opDKMCp4geYTt8YF5Au/VZ9ayoYU9gTplfJtn9xyHWosDUTTiZl
         dIeN8lmnyhsMxH9/GZsv7m9Ag9B73o2OJkTZtp+jb5o+H1QgAX+SnuYhhHawt5ZpVf/m
         60bOueOYsnoWed+rsU+XMqyNHmvpgKURWFJkxlPu6O4iUouSrocp1FbaWcfd/aGelb9p
         lHFA==
X-Gm-Message-State: AOAM530CROSN3jhexdkGBYJtHxw8lyz8jSz9a09Z1F5vx/FwX34y0T/G
	Ln1kh8wmVrAXv6675espf2iRbgeReYRXGlrMbhg=
X-Google-Smtp-Source: ABdhPJwVMFhgN5QcDOkmIUJ5hXOle74vAsXSR26Pt4e/apuGLwlB/IjPijNDjt8v8w3s22Clh2AGCw==
X-Received: by 2002:a05:6830:1ac6:: with SMTP id r6mr7040844otc.198.1623975690742;
        Thu, 17 Jun 2021 17:21:30 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([172.243.4.16])
        by smtp.gmail.com with ESMTPSA id s187sm1471837oig.6.2021.06.17.17.21.27
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jun 2021 17:21:30 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/2] Pull request (cover letter only)
Date: Thu, 17 Jun 2021 14:21:09 -1000
Message-Id: <cover.1623975583.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following changes since commit 134c1e9902148f907d4f9e78435fa3a827c6df03:

  poky.conf: Bump version for 3.1.8 release (2021-05-17 04:19:26 -1000)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/dunfell-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/dunfell-next

Steve Sakoman (2):
  poky.conf: Add openSUSE Leap 15.2 as a supported distro
  poky.conf: Bump version for 3.1.9 release

 meta-poky/conf/distro/poky.conf | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

-- 
2.25.1

