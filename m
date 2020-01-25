Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
 by mx.groups.io with SMTP id smtpd.web10.1516.1579940695238528795
 for <poky@lists.yoctoproject.org>;
 Sat, 25 Jan 2020 00:24:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sab6RR2K;
 spf=pass (domain: gmail.com, ip: 209.85.210.194, mailfrom: sivakumar.bs@gmail.com)
Received: by mail-pf1-f194.google.com with SMTP id s1so1690442pfh.10
        for <poky@lists.yoctoproject.org>; Sat, 25 Jan 2020 00:24:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=BpY3EPzNvD0mJF4GZmTTe+hhU5yrnA306TZOkZZo8kw=;
        b=sab6RR2KAyMeYZfCNm0geeDlno1hJIUhNN567HNGF1Dl28v1in3T9kqEJh+Db+/hGG
         BYlZSZoKOHmWAWsFWC+3jjvJmtMuvSGtjxc4H87M0yEy+bdXpiDzgg5S/Ms5u7z8Dgao
         icPSC+KatELaEVYyQh0+aq87iyh6xMKcTEYUCwXat7IwEx8g9ojDunmeQ76m9xXHQgt8
         8Jz3XM2xZB+FtT54sqRPZgoxv8DlSQKfb5bq+K1fF/WUyv7lu+BBWhwvP+6jYFJljdY6
         2qCghWnApuuQnvkNX4I6JRSuQ1rbLp0+VZutkkPpOrVibAp1xcFQ48bZMt+s2AqqgYZK
         fCaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=BpY3EPzNvD0mJF4GZmTTe+hhU5yrnA306TZOkZZo8kw=;
        b=c9kPMQPuUhTwOUv5VG179JzPQ/t1s6jwCGjbRVSHYCeXdO00OAP409hAUfhJzEzEgM
         w326WTvTrHX/AgmDRV58yaHgMlut4F53m9tuDoT/GTzp3VdItz9kIv0gi+j0Kpi7us3U
         n3RgYunR1w2cwHJJ9dDkwMatMw59FINCZsBqozfVdz/ZcV3lwRKTtr7mMDEtbI8SR/Tq
         LF4wo5ZGvIjWlAjvtHi1zoItOK9AMu9x4hGQda1ZEAZdEXerLbnInPhSY0+d2O+lnlaF
         YNc3mX5eemKjotWSzfk34TZ4J73WWzNEQ9xjJ4zkPyY1SL0UiQpUDzBk4y6WqepV9JLK
         v/YA==
X-Gm-Message-State: APjAAAUVZUh3hsGPfqB77oLamy7GsjpVi3gYYMfvu5mAcyCAk0TWQXm7
	vBtDk2FppP45srsxdeXNUZ4N8l2aq8g=
X-Google-Smtp-Source: APXvYqymOnFgk8AEqIbMa5PljBJfddtNSSegPl8gsiJtGoaZ8wcI39GEZYILqE/LQpfdzRYqWqGToA==
X-Received: by 2002:a63:646:: with SMTP id 67mr8621466pgg.150.1579940694420;
        Sat, 25 Jan 2020 00:24:54 -0800 (PST)
Return-Path: <sivakumar.bs@gmail.com>
Received: from devel.timesys.com ([49.205.139.80])
        by smtp.gmail.com with ESMTPSA id m15sm8838760pgi.91.2020.01.25.00.24.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Jan 2020 00:24:54 -0800 (PST)
From: sivakumar.bs@gmail.com
To: poky@lists.yoctoproject.org
Cc: Siva Balasubramanian <sivakumar.bs@gmail.com>
Subject: [PATCH 0/1] sudo: update to 1.8.30
Date: Sat, 25 Jan 2020 13:54:44 +0530
Message-Id: <cover.1579940252.git.sivakumar.bs@gmail.com>
X-Mailer: git-send-email 2.7.4

Updated sudo to latest stable release
The following changes since commit ca3993cc4b13d4e661228cee6fb9448adfd0a4ba:

  bitbake: tests/fetch: Allow wget upgrade tests to run against a local server (2020-01-22 15:56:39 +0000)

are available in the git repository at:

  git://push.yoctoproject.org/poky-contrib siva/master

Siva Balasubramanian (1):
  sudo: update to 1.8.30

 meta/recipes-extended/sudo/{sudo_1.8.29.bb => sudo_1.8.30.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-extended/sudo/{sudo_1.8.29.bb => sudo_1.8.30.bb} (91%)

-- 
2.7.4

