Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web09.8536.1663346821538152428
 for <poky@lists.yoctoproject.org>;
 Fri, 16 Sep 2022 09:47:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=P4HvaX+N;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.169, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f169.google.com with SMTP id s206so20885626pgs.3
        for <poky@lists.yoctoproject.org>; Fri, 16 Sep 2022 09:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date;
        bh=enmMcBf9K21erSbVnuGRp6o1qNelZSCYoupyIvaVRKE=;
        b=P4HvaX+NLUwZqjr2J9fHAekJB7z2RZ7sUUIC0XoZQjLqeveG/vVv0MHudQ9FQPRPPI
         /zgZ1FSRJmGoSmm4FJsLw8etsefJ4V1Q3xmtYIq2Sy9A/bsHpqJYEMMbBL3Yn2JV0Q7y
         rhcPjaIzOIQU2TgxvSvY4eVY7RTLl1mIMiA2Jc7n522z10Rsa6tjs2YDK1DFhkrdubil
         CAHifTAlyznVsxbthFeyjDaAVh1VdklA6WfvIVwNz9LLSpZnORd7XFgk0wNzCth35p7a
         +NnYqR0PBPbwA4dovl6kZoLtOQhMFRTxcuGlAvnqtWFLWkYEWCIf8uuEEKcQ6euIicbt
         hpBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date;
        bh=enmMcBf9K21erSbVnuGRp6o1qNelZSCYoupyIvaVRKE=;
        b=X0HpVxfm88u1gWumBIYNRbPQnXEn4sgVu21Lbc+Zz6yqhtLk8j7uM8yOHJXVyJ6oMA
         8PqmcO9Z3JIIOI31T5WgKUE8wkrfeW41WneIMklZwkin+iEIzGbkKcL8pBU2vNhV6toI
         NDLMXeFWt6V4qXTpPdmK/yKhhtARmfjXP1/6y3xI/NnWD/fPv5KMseJg2Rec28PpunWq
         F+yTHZJZLLb4slZ54ZXZLo+KJYzfzgHttjLbK7Za3Rku1hKnxH5Hm15A4PEIqlNdqsrg
         9QJi846aPUj5Qgv/r+ZdunnEOe/r6/v00mZxvjOJJkIz4/5hZee/0keJIVEPDImurRzj
         mfwg==
X-Gm-Message-State: ACrzQf3Z7cobX49k6UdYzexjqQglX4AGXtibAJiEbCvcAP2JGRtA9lT6
	RAry2I4Sgo4NxVwf1JKowp5xDPUzByI2CYo/
X-Google-Smtp-Source: AMsMyM4iDkWNcej48NoNT0WGtaCCX9iFtXrP+aOBGXajf3V0tbvcCb0AQStZVkhZ8ITsF88GdyTZJA==
X-Received: by 2002:a63:5a05:0:b0:434:23a5:a5ca with SMTP id o5-20020a635a05000000b0043423a5a5camr5328218pgb.515.1663346820326;
        Fri, 16 Sep 2022 09:47:00 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id i21-20020a17090ad35500b002005c3d4d4fsm1717167pjx.19.2022.09.16.09.46.59
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Sep 2022 09:46:59 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 0/2] Pull request (cover letter only)
Date: Fri, 16 Sep 2022 06:46:48 -1000
Message-Id: <cover.1663346757.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following changes since commit 5e550e79ac133e520e042662c9bef486cbfc26db:

  linux-yocto/5.10: update genericx86* machines to v5.10.135 (2022-08-19 04:54:11 -1000)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/kirkstone-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/kirkstone-next

Anuj Mittal (1):
  poky.conf: add ubuntu-22.04 to tested distros

Steve Sakoman (1):
  poky.conf: bump version for 4.0.4

 meta-poky/conf/distro/poky.conf | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

-- 
2.25.1

