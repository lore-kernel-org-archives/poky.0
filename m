Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web11.12752.1614607253856414421
 for <poky@lists.yoctoproject.org>;
 Mon, 01 Mar 2021 06:00:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=FeKYgIZV;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.176, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f176.google.com with SMTP id e3so7570971pfj.6
        for <poky@lists.yoctoproject.org>; Mon, 01 Mar 2021 06:00:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+n1hVJ0ukPLokLtFCR2kubzic10XA/wJzUjyDwzlOCE=;
        b=FeKYgIZVw7GjaW7PZoh2UCR0/YCWri4d0CkUEkHOmVyQy9MlJhgXbPZenVHaZdi2Qw
         MWl2Z5jwW3RkU3tGnKQpDyT8JaD5gB2tVDmAw7fJ3wPHKQAHhis8S9IzHFwSwBgvSKn9
         miYd1kT7lt3o7s9QsahfYsDPA1twymc3/Tjv8kSxdTmeZzyYuphaM1Rf/BI2TQ/RnIeL
         Wj53SR2I7kvjeKzT4ZgLE9GfZB2gqP0p2087pJz15N4IzGM7GQDPsrPUDgl3t5bs/+D+
         kshkyJWhQsWNXlIms5X1pPWICTMUIkYTojBapXOpG0DBNJIE7eZYdFYgzISxDzeGTpSM
         p+Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+n1hVJ0ukPLokLtFCR2kubzic10XA/wJzUjyDwzlOCE=;
        b=ujCab7ZkMAs2yEErlZVEZAHgyAvnk31Mflyr8QBoiHbjMU2e1REyiMQj7nimPASG3E
         4zN1vE/5fEwMsCuhuDmIf+8qzH6SwoG7lum/AZg/UQ91GuDltVONMoILj1Cy4jKpaQ1f
         /hRYAWapNDgE3SWqJ+KHJTp+ZczR6k/OKRUVPu0c95C6UxSvylU/5JbxzpIMGovUgxBz
         lxGUZ4Q8YFZMHERywrE6Nz4LMpUSkSwjndug/u16DRfsUmB7h80nFqMqJcvzQGv7KDYE
         UvcCW0En4IVtJvTxDG1WKL6M39zEhcnbpqd11G4o836rmXwp/RKcgIHm+a383P3cB7Ij
         KCdA==
X-Gm-Message-State: AOAM533+iMwiE9vg0vqiXQBAmoS3YyH+kU55E335txRsUISZpt6ACY0O
	Jl6HXti3GYyq/onnVL1SctU7f1JqPI8IXNxqcFA=
X-Google-Smtp-Source: ABdhPJzTpdQoGT8KkhpeogBTrqcInWy8ZXZDADAr/xyxleDVnhe9Kgk45H6R+LureBDhiOYz/9EExw==
X-Received: by 2002:a62:15c5:0:b029:1ee:3bc5:8f5 with SMTP id 188-20020a6215c50000b02901ee3bc508f5mr14939668pfv.52.1614607252723;
        Mon, 01 Mar 2021 06:00:52 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id e1sm17886823pjm.12.2021.03.01.06.00.51
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Mar 2021 06:00:52 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/1] Pull request (cover letter only)
Date: Mon,  1 Mar 2021 04:00:35 -1000
Message-Id: <cover.1614607083.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following changes since commit 7ae5d508ddbdd7986a3100885befda460450ef34:

  poky.conf: Bump version for 3.1.6 release (2021-02-17 17:35:27 +0000)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/dunfell-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/dunfell-next

Richard Purdie (1):
  poky.conf: Drop OELAYOUT_ABI poking

 meta-poky/conf/distro/poky.conf | 8 --------
 1 file changed, 8 deletions(-)

-- 
2.25.1

