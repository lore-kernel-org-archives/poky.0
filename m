Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web09.1842.1615335220148215854
 for <poky@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 16:13:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=Wih7lieH;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.41, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f41.google.com with SMTP id q6-20020a17090a4306b02900c42a012202so6465482pjg.5
        for <poky@lists.yoctoproject.org>; Tue, 09 Mar 2021 16:13:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jcfAnffBEWNL49TugPDSOulqe5ZUxvfV11WdFkrZfUI=;
        b=Wih7lieHZCMYX9LtsDCst54kMqlSaoWZpW7uL2hZ65AcuFhBKtBMauPJReAsZ7OqqX
         KvsKbaIM85MXo33qycXNCHIhAdGq7CvFqgI7Kk+nYekrxhyZa2uu1S0ekmZwKM798Wsz
         85GbEBDjOH8uUSWTWw9X0ZSI4wfQ3pGJnRhF/yFFyXKmL23KbDzOyl+KoZ+rly2p74xE
         eAg1/FoLNBKRBJpbXsUYD1a5pDB0Plpe7GbnlDbIVGillRB4gGFBzG7mAWVOXET1lNXJ
         osB+OCFs2iWvg83h+0Yg1am/sTQqDrRVxNuqtkEtwliZFqTqvngFondzxJ2MwCy/hRV/
         dUPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jcfAnffBEWNL49TugPDSOulqe5ZUxvfV11WdFkrZfUI=;
        b=geLepyd+zR66cbGBms0xIsNgoZUmCsiQmtnlZnxQv4MHWv/X3g9wHXQiSo0z3onNqf
         fDDE9vzBeb73AVfXcv4vvmC3BMJ2eqUgvliYS+RKuUDc/jyhYjQ7r6lL+4B+EyN4rlOO
         eNTVyQwLrUJavpN/kqcZQlaGIgSo5n3kdF6uWCCLdQ99+MMjiPPpnBl7PScHyLknq26g
         0UDvVXMts8LHELvMKGxZ24inzzJDUPYB47brHZSguoteihVpayd8wlWIviaESpeaUeCz
         J6VlF5+yL0BhR1BBrj3z2jzZHeeN2mYXvGx6mqu5gfAjCgYrpw0lsTiKFNwuW0tvvpC0
         FrAw==
X-Gm-Message-State: AOAM532j1NCA84h5y94n/r9w5T9STueUemTGLbUPzGcQxOWBsNJOsM9B
	dEfxbq/Psbux1wiwcWX/mYXsHqvObV/IopgZEh0=
X-Google-Smtp-Source: ABdhPJwdQgCHYUX38gAzhuaiDz0ozX8OTNRVHrrE9gp/8EIHb/oIIFpy2AbNUUe/x7M66fmAfrh2QQ==
X-Received: by 2002:a17:90a:a616:: with SMTP id c22mr504540pjq.94.1615335219101;
        Tue, 09 Mar 2021 16:13:39 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id p17sm6050053pfn.62.2021.03.09.16.13.37
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 16:13:38 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/5] Pull request (cover letter only)
Date: Tue,  9 Mar 2021 14:13:19 -1000
Message-Id: <cover.1615335057.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following changes since commit 7972a9b48f61af7ac10d1881dcaaf9c5f48bfb87:

  poky.conf: Drop OELAYOUT_ABI poking (2021-03-01 03:55:33 -1000)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/dunfell-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/dunfell-next

Anuj Mittal (2):
  linux-yocto: update genericx86 to v5.4.87
  linux-yocto: update genericx86* to v5.4.94

Naveen Saini (1):
  linux-yocto: update genericx86* SRCREV for 5.4

Vivien Didelot (2):
  local.conf.sample.extended: fix double 'of' typo
  local.conf.sample.extended: prefer INIT_MANAGER

 meta-poky/conf/local.conf.sample.extended     | 23 +++++--------------
 .../linux/linux-yocto_5.4.bbappend            |  8 +++----
 2 files changed, 10 insertions(+), 21 deletions(-)

-- 
2.25.1

