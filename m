Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web11.8201.1641912136146406180
 for <poky@lists.yoctoproject.org>;
 Tue, 11 Jan 2022 06:42:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=1m8mSzcM;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.48, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f48.google.com with SMTP id y16-20020a17090a6c9000b001b13ffaa625so5645956pjj.2
        for <poky@lists.yoctoproject.org>; Tue, 11 Jan 2022 06:42:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oRqtqwO0XBLNoqMoJzk1FuN3jGyi1OhINAL81WLCtas=;
        b=1m8mSzcM0ouk3XGs8Tlmm90uf1JeraEV79CLuHGzsHNorTEYpnHOqVSQPZ6eLTk2mF
         72ocCZ3Scw7TJIVrKUdpUjjyMgTnW//naAIOR+aLCQ3oGERRVvyEH85lCWkYvqNJRKTb
         T3acZmdhOqzKRijf6RdFAmx1Vt8KlLS9+V6SUscn+PG+wbF7t8b3pVO6ZRsm5wJKDrbs
         1STUXKfuBDAOdpnKyNS4behLUPzKiFlILHikBLPiFpOU7NkjCjZSYBJ2S/TLpPiMldV1
         eP5m9wzl+hoGj0MhdZFukfL1DVH9ivK2kw3m6O28lC6cJ2u/AQUbSysfDeuDGIKmfZdK
         8b+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oRqtqwO0XBLNoqMoJzk1FuN3jGyi1OhINAL81WLCtas=;
        b=OkqFj2hC7chobE7HMBFFels8GPn59J9NQjjYXZellpLWTT9JuPZmnGVdGkH7cSqTMo
         yxyTKE90k0wzT4qGngKxUCKIW+84hn2sVNc6cL++TEkkTFTaVu/W09Wf2jaM1GbIkwWN
         ouArE2O5J8Nq+xzkaSqdlep7IFDo3Pig169ff/IBFVXJIHE4p0lWO9fzlpnmR41VV9+1
         AexEjtoXY5vfY+RbdEQDnCYjiK7ULKuQ2IMeJscXxL1XTeSZBE0WLTskxthJZ+CGN2IK
         sNguEPyAXUdFkGPxsWIFwC6NNG0pxZQRpwBLy/3Di2JBEA7WDCTJbj3aF29nvJY5SY8+
         ZnXg==
X-Gm-Message-State: AOAM533h9UuT/FAgAJxOSB5WEuHB5jVchwESV6Bt2YE0Pu9x7Z2TKosf
	ngXDlRak7G1lI0u7i6h2ni0XoGHTWx6i3DNEJR0=
X-Google-Smtp-Source: ABdhPJxFc8/fBOdZGrJcIxE8aSm4jak6xWTz6V//uNbSJig7gX4JKwpY1KEx7DYrGlXGIjsWUw6PkA==
X-Received: by 2002:a65:6241:: with SMTP id q1mr4324319pgv.98.1641912134982;
        Tue, 11 Jan 2022 06:42:14 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id a1sm2473888pjs.20.2022.01.11.06.42.13
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 06:42:14 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/1] Pull request (cover letter only)
Date: Tue, 11 Jan 2022 04:42:05 -1000
Message-Id: <cover.1641912067.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following changes since commit fab607a8c53b419fa7109394edbf4e2e9d3c8b8a:

  poky.conf: Bump version for 3.1.13 release (2021-12-13 23:28:45 +0000)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/dunfell-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/dunfell-next

Teoh Jay Shen (1):
  linux-yocto/5.4: update genericx86* machines to v5.4.158

 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

-- 
2.25.1

