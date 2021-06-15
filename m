Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
 by mx.groups.io with SMTP id smtpd.web09.464.1623776470270584038
 for <poky@lists.yoctoproject.org>;
 Tue, 15 Jun 2021 10:01:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=fAWn+qVJ;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.177, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f177.google.com with SMTP id l184so11981496pgd.8
        for <poky@lists.yoctoproject.org>; Tue, 15 Jun 2021 10:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1d+K5lQexIN456A49H3xnOvPZekPS7bLuGpu2bN/xG0=;
        b=fAWn+qVJWy7ZfGr8PZaMZC5o15sDZOFniNDjTjAuBof7BfqvPt0jC+N4dhQkxrWCLF
         KwnRyhWFE2HPsm0dBbrjczneFrKWhLVnGZsgpY2MMBRzfdlLWxMk+gh1Tmg/KC97EJhf
         O6XFFVqMPVH/99ODCkNnSHle/Abh3toJrasA+ke7t3RHpZht34PLmLvewBPX4bGUel6H
         Ryp0r5MDULIFRyNv0ovtl8KX5l9kG3LIAmpmjqMvraQDkAwQNMLma2nvbKtSyvqokNbt
         DANspeMfQ4ozynazXLev4Qg5NqBviYrQS3741tWYJeBan0w6NeVSgMZZFrE1KrL6z+Sr
         84FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1d+K5lQexIN456A49H3xnOvPZekPS7bLuGpu2bN/xG0=;
        b=RwPmIDuYoJW1/bkn9gJmQSnnzvn/DOFUETWJHmW1fdQlJKIGsH86dbby4K0B2AfoR1
         yBX43s411zwJk/LRRHuofXDHjpVRAjBzqWnmmlXic7Cc5iovmv32HDKC0t/Ltep+lzge
         lf9oLtTe5tJuA2pWK+gSDt82Vw/uObo9qx6+S4ZUeTRVDVTPfO0q9YkTBJFf67QxAxX1
         WXXffjQjtiYyH7C4jqP2fE5eNw22zM9XyAeFBKQiwHEqiB2AxkKWaewgc2U3UuDqk4oN
         FXfLGS7ly+S1YDhcC+KZcrFLiDstViY3z70ZQkzFxv6OAZwsDf2F6iKYIErl86AqNH7t
         Nsbg==
X-Gm-Message-State: AOAM531WQJOE+wfav/a4hEK7ZA22QaOQdFQZYdJZ6gYc5KMBFSFyJlD7
	7vrmLb2cdSyNqiJ9GjBfcuHi+SDM5URCK0zIr8A=
X-Google-Smtp-Source: ABdhPJz3MQeVeyl3Ij9BJOCCDT1mech3twUXSXIlaB7CI9mkv6VOHylwve1sH9q3wV77X49mUox0uQ==
X-Received: by 2002:a63:e958:: with SMTP id q24mr482913pgj.438.1623776469207;
        Tue, 15 Jun 2021 10:01:09 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([172.243.4.16])
        by smtp.gmail.com with ESMTPSA id z15sm17595100pgu.71.2021.06.15.10.01.05
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jun 2021 10:01:08 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/2] Patch review
Date: Tue, 15 Jun 2021 07:00:46 -1000
Message-Id: <cover.1623776375.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Please review this set of changes for the upcoming 3.1.9 release and have
comments back by end of day Thursday.

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

