Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web10.340.1621462664112065885
 for <poky@lists.yoctoproject.org>;
 Wed, 19 May 2021 15:17:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=q1K2z0Yp;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.48, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f48.google.com with SMTP id gb21-20020a17090b0615b029015d1a863a91so4319298pjb.2
        for <poky@lists.yoctoproject.org>; Wed, 19 May 2021 15:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=R35qjXY+3vNeWN/JtCZGgrGdI60dIvDVnLcr/T1K7x4=;
        b=q1K2z0YpVElz+f3224bg44GJDvbb4SMyNGeRIk5+gvUEdFDnLERzaAz6eDPPs4/ZIa
         sy8oIOYrD21G5o2lZsIsqM4CgRtYNPpMm/tjKRSOyxFTaz1mmPGkaLpmiWqCa+j7CmmQ
         ctOwKmYtiAuvhcbhdTJFXw5V9pwofvPIlv0FLKic84K9uvku98gU91AQHUBC838VtZXV
         /OZOnY0ZEQk1iaitPrmvpF1v8WOjQvydb2Jd/iBUqtlErte5qSJRygzZBgmM8PU8bqn5
         k3Xtz3s/kZSipRHkgVcK5zZuuz2keqPPbo6n/ZnOD4GR5qb0jvEM6qPJgWsonQ1qqTQC
         msMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=R35qjXY+3vNeWN/JtCZGgrGdI60dIvDVnLcr/T1K7x4=;
        b=CeBq/kJtS6xWFGlhOwy/f+YEKTqIEubLyxtno8SAXtOYSv589YZsqO5TlT4hugAgi8
         HDySb3E+JsLL4IYZp/qq/LjvSneUu6vIS6+uvqlURL9QFSG6SME3OhQWu0Isdl+VY/LW
         /UZ+tvQaOdjaXWLIP3oweqTvitRmsUSbFJW5MvRmimzlpVVmPGAr3hW76ArSSLWkomQV
         ArEnutxU6RDad/u5W+SvJzTZ4rUoEWY5VVuvaPbk73mbivtMYTjLmZr836rIw0/omatj
         x7q+OU8kebdaIaw6wWqSuj3qYyl1E6waIsLNn1tUtSkW/pZ+N3GM+Hm8YLRmY9lOHv0J
         Vs5w==
X-Gm-Message-State: AOAM533cjSUSmdO/9Qmgzz3mi/s2LdGHKgkijKnFb76WzP1pSKd6hDCg
	xHPMbah0Cx/b128Fyhn0V2pYyXrg/4bWFJwDjS0=
X-Google-Smtp-Source: ABdhPJxw4r9VvyWxfA1EukvhQxXCLLItys3MMktwRE5Ty0EngDeoheMm3MRLb3l7169/b5x+LqVqUQ==
X-Received: by 2002:a17:90a:b283:: with SMTP id c3mr1228508pjr.31.1621462663159;
        Wed, 19 May 2021 15:17:43 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id c12sm300036pfr.154.2021.05.19.15.17.41
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 15:17:42 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/2] Pull request (cover letter only)
Date: Wed, 19 May 2021 12:17:33 -1000
Message-Id: <cover.1621462564.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following changes since commit d8bdb69e6bd7b52cf047cd6be406bf632a600a58:

  poky-tiny.conf: set PREFERRED_VERSION_linux-yocto-tiny to 5.4% (2021-05-15 10:27:47 +0100)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/dunfell-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/dunfell-next

Steve Sakoman (2):
  poky.conf: Add fedora33 as a supported distro
  poky.conf: Bump version for 3.1.8 release

 meta-poky/conf/distro/poky.conf | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

-- 
2.25.1

