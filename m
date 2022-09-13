Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web09.6250.1663082584277105559
 for <poky@lists.yoctoproject.org>;
 Tue, 13 Sep 2022 08:23:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=AW4ydW45;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.169, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f169.google.com with SMTP id e5so12096137pfl.2
        for <poky@lists.yoctoproject.org>; Tue, 13 Sep 2022 08:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date;
        bh=oCP3oOamqvMOxiXEsmf6WB1kNnZiJWa291xzH8HPHZI=;
        b=AW4ydW45czLjne7rGVq7LhQpDq3Yy86HwYaGj7UWuPe7UoUoVlo7ZMu/d/xPWTNKtE
         NKLc30LcGRk/9HpQyIZs9rSpo2QuBaGKvJzH5vBYP31tB9rGR26hBP+B1wXTdUzE57XH
         EctwZnlmdGLWWVNZXViIDiOg7zGgwiPXIKhG/YG8fdvOw1SrEc3k29Mj7yuS8BYYhEsN
         Il57ijf9xE6LoXrqQObyvEapnJrM3x1Bs3LI6j9KqAyQnON97VeAHK8X7LZw5UGCdKGF
         cs0Mvs31sy13gtZkr9F8wfAdW3TjBJQpiZ5SJFZgSy82L6RKkORRQK6QUPab5cOV5wCY
         PbwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date;
        bh=oCP3oOamqvMOxiXEsmf6WB1kNnZiJWa291xzH8HPHZI=;
        b=B/W7OTM83+hPUcYNX8lB5hfpGS5boHynzTDQ/NTudj8Pe7IeiJefUoCEgIjXVjCrDX
         s7ZwMDMZf0X7WoeePXb9JGBGE3HYQlHTXFDpQafrdZci1y0J/Gb88G9V3gIP5P6JLVw7
         KS99uoplsK23aHVrZKUxUK9QE/RyOKobqnxMpu/fmRv6WcbhD1Xa5gISzAYw/RqjcCxf
         70maTALuftTb5eXcS+REhut6UAGfCPSMpv7JakuRI/Ag5alN052a2lzYfhpIBTYC48zu
         WYaeigeex3yhLxummBjmgXrwqOXVgOgPSOGcnmZZPUgxp27lw5NsiyxjAPa/ZDxOyhSx
         3yGQ==
X-Gm-Message-State: ACgBeo33Z4cEDfVxHV5GOEinT+8g7JE5itOl+TSJpkRdImg3BUxK1bFK
	qIcGSxpO5Et6bx0s8m0sYUATwaqlm9RdHYtb
X-Google-Smtp-Source: AA6agR73ym/n0wLjOad0MGL2b+6OnpoKkgCqGYJf4vr8qcDkhznHvplvaqdD3ie3Gl9JZRAw+A+9OA==
X-Received: by 2002:a63:5b4f:0:b0:426:9c52:a1f with SMTP id l15-20020a635b4f000000b004269c520a1fmr28235989pgm.511.1663082583044;
        Tue, 13 Sep 2022 08:23:03 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id u7-20020a170902e5c700b001782977fbcdsm6097358plf.206.2022.09.13.08.23.01
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Sep 2022 08:23:02 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 0/2] Patch review
Date: Tue, 13 Sep 2022 05:22:48 -1000
Message-Id: <cover.1663082471.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Please review this set of patches for the upcoming kirkstone 4.0.4 release.

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

