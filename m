Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web11.14.1671210344551672788
 for <poky@lists.yoctoproject.org>;
 Fri, 16 Dec 2022 09:05:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=ZaKZ+swt;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.172, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f172.google.com with SMTP id w26so2194591pfj.6
        for <poky@lists.yoctoproject.org>; Fri, 16 Dec 2022 09:05:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=8MyWI7eeDWoAkSTQ7SC3hqAxnyY/k4mQNYKbwTJ071U=;
        b=ZaKZ+swtto+p2TjJo+COS2MOISVHJ/6twfByqu7Ta/v3O7v/FHnClA4FQbxbcjzqhv
         +AtIKoog7KBoce+22S2IbBQKJfFFC95VOv10bwr9bUdBVrWIRO+Qro2hKEz9sr9PNfMb
         Oq3/hVsgLRA6xtnCQSu630ASJSMVXvB/0XsHlBTtnWKkbfkDYiDElSGjaHKOgySw6TgQ
         5qgW7exCCwYZNMrjO+qaZlkhrYu0gQanyI+wn+bZCUI0azrTUc92aJW4bqMh3dsMVhUr
         DBNBWIGJ0pLffgMzAXFltQpdGFLPYwdLRk0mIasL+WfFA979ycaT+3s7xr69hyi6vggz
         xe4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8MyWI7eeDWoAkSTQ7SC3hqAxnyY/k4mQNYKbwTJ071U=;
        b=gx6LlDSiJKIa9i9GFOIKi/GC9XanNv8HyWXt2MTljq/KppcNOtjmqgdUiwNCWfdFdY
         ve7kS69+gxgDHYa1OoBDqK0uCbDvxKkVwFC/ZYi7UMJuRDit4kkzRCKITRvU0Nol1BV2
         fe2ab6elkKRKEwiEF+FXbUscB3tWjI5kZxyugK2CgYpHEwxYC6by4CDF2rGYt885rLRi
         KKb3T8fNiiszdbb13pn2Tvfs8/eO+X5l9xEwuKQ4w7KZlv+3T86jGPeX7iwVydK3VaR0
         IDnoU4sXs/7hsONG/tqJdVqfTPZUGswjfTiuZsgwbgXuBpZPROPpqZf5rF5bhRA+wrph
         ablQ==
X-Gm-Message-State: ANoB5pl82C2bCmtCUUHpNbvi8bOB4nIH6in3y5rncrNsUmIt70KuL/EA
	84vg1jvTGgc6dLFnjiFc2Ueqao1HgUQP1SPrjiA=
X-Google-Smtp-Source: AA0mqf6slhMSkBQhR490KInT/pylA7aWBHk43oLYPPCJSxJRFDkZavqebNqtcFj+1T1551ts1nWGzw==
X-Received: by 2002:aa7:87c3:0:b0:577:1857:57fa with SMTP id i3-20020aa787c3000000b00577185757famr31707793pfo.18.1671210343396;
        Fri, 16 Dec 2022 09:05:43 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id d68-20020a623647000000b005765a5ff1fasm1701642pfa.213.2022.12.16.09.05.42
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 09:05:42 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/1] Pull request (cover letter only)
Date: Fri, 16 Dec 2022 07:05:39 -1000
Message-Id: <cover.1671210229.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following changes since commit 9b713fe0cc7c5f5cb51bcf760d1a1c6540b485f1:

  poky.conf: bump version for 3.1.21 (2022-11-22 12:32:14 +0000)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto contrib/dunfell-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/dunfell-next

Ravula Adhitya Siddartha (1):
  linux-yocto/5.4: update genericx86* machines to v5.4.219

 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

-- 
2.25.1

