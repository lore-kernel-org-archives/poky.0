Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web09.26127.1605883890313092447
 for <poky@lists.yoctoproject.org>;
 Fri, 20 Nov 2020 06:51:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=hLNuXHyf;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.169, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f169.google.com with SMTP id 131so8053676pfb.9
        for <poky@lists.yoctoproject.org>; Fri, 20 Nov 2020 06:51:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id;
        bh=t3cTUMHn7IrY8O6JJF5v9GOoB8OkVeKV2qZHdmAzf5U=;
        b=hLNuXHyfDP84lzOCFNvWLi1jL4ZojU7OhZ8FOEWzutYrJ26M8/GIPMXAKsdzkuu+sa
         NNBQD0OOdIejWFhq2gd9k3fIU7Z7WZR88z/8+s38jyDcE1gWxq0kZOPLkhlP4KrnPeIr
         +5n8KsNlPNDyVNsE9HSIKFxMMmkO8vklNoh7moOGOEgMbENFidXmkZKZF8j5jnz6sQ3U
         s8GKr38uUS5Z/gCMWTUMNbRAVi5NVAj2Peo66KfqBp2YZOnyQwLRp5mHrPh5Nk1Crl5n
         DGXgF4vn73rJ32PYBaGTbYp0PRYSSejqu7ngu7EYhqWAfA62yCawdMCskIodeoMfoBXF
         ca9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=t3cTUMHn7IrY8O6JJF5v9GOoB8OkVeKV2qZHdmAzf5U=;
        b=qjIGaRYJ7VTY8Yau5+zxncj/TfVgkT33BXnzcasIuxJRPUyaxXJvM9K2kPHySqDTz9
         tCNMAO1V+vKZ6+xtEoWJDg4WpIIEvx5XB5gkou7dPCb4l0+j4LLfGkIPIvO8D+DoUJAJ
         Unlt9WHDKDC6elMEHKcNzcurvAaBHhaNRtOzqvhhbV+mEIvVTmeVOHeximZsNzCZWh5V
         Q+dsvhq8T9QKCAF0slEYuPtkh9caTQZEzQWMLP3MeUmfbd5Shp0pmVsYnq6fF5hNHfSd
         AIebruC3qZr++fpO7Vnm3aLrw3RbuHsN6As+Xk3U9tgTo9tNW6Hu0Pzx2/PM62BiCVKZ
         13Fw==
X-Gm-Message-State: AOAM5330D2tuctHw8VvmQGZ7RxxH4Mf7Y50eeOic7Qi+wcEYYMshsfBO
	sxIFS1AkNZfLlPNEzXYSIEz4cTr1MaAUyQ1h
X-Google-Smtp-Source: ABdhPJzcL1N3JqvrBEV/5gJH9K7jxOKKhpIJtyi5Mw4d8STKRnmnEcoXHVFIx4f6cM2YSYMCVF15sw==
X-Received: by 2002:a62:fc8c:0:b029:18b:572f:e6fb with SMTP id e134-20020a62fc8c0000b029018b572fe6fbmr14919357pfh.20.1605883889022;
        Fri, 20 Nov 2020 06:51:29 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id z11sm3921082pfk.52.2020.11.20.06.51.27
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2020 06:51:28 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/1] Pull request (cover letter only)
Date: Fri, 20 Nov 2020 04:51:15 -1000
Message-Id: <cover.1605883783.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1

The following changes since commit 492e345b5e01e59f1f4374388005f81b860db636:

  poky.conf: Bump version for 3.1.3 release (2020-09-14 06:02:54 -1000)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/dunfell-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/dunfell-next

Steve Sakoman (1):
  poky.conf: Bump version for 3.1.4 release

 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.17.1

