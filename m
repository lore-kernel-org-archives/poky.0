Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web12.764.1666996624097151720
 for <poky@lists.yoctoproject.org>;
 Fri, 28 Oct 2022 15:37:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=kwyU18cR;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.177, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f177.google.com with SMTP id y13so5934039pfp.7
        for <poky@lists.yoctoproject.org>; Fri, 28 Oct 2022 15:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=NCNdJdfS0WO6ynZjIBkULPZGIGvOGv9hlEPLVUCfnIU=;
        b=kwyU18cRMa21jpQ1mB0tuIPEbGiigZQBqjb09IoP9qJQWOcn8Km88iP6a8Oe//MMG/
         aTL6GC48DqEA+8enbhnVC+WF1JzrgGvCts/y54LBT89xzJk2NAeHqb0E+tlJY9/ZOTqQ
         sUlTUqoBe5CW5a+AsJrI9EwGoA0WZGliWUo2HrCNNGA78oudqMAHquLyObwtOVagD6Th
         oauIItjaoq7YH2lbChHi0SRg2ZRPzzTgLKff7RDdW4oKqdYuIWtxiej9ZYvOBqWz8CGJ
         hilCrWxRgYkfSJpsntZwBIuwMc0QVev61ISXyEo4g3z6ZmgW/cvg8Hj6HqfihAIJbkjf
         c9BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NCNdJdfS0WO6ynZjIBkULPZGIGvOGv9hlEPLVUCfnIU=;
        b=h0/v2z6/jXOMf7BynxpKnpCNEyxIEy5GBv1q+S9uz09vLeDqIaytGXQxzd33gasruP
         SQDM7L6IXzHnuro+eqeqykaxculn/d0d0GNW1I/CpXoXqAOfcqPmjUD0XNNkR7Sy+klq
         iQNFV4/TzbouKqDUjpliiRIMWEmOAReYNH2sNjrtaN8opxcYCltiif8OOn5b9qs2QHvc
         GK4Sb1dFnw4Chg0ySWraQxsFAcAL4ua4Kn2uSmPXLfs0FjjU7FoKiZh2CoTlwMM+BJxf
         sRAYDjYUIsu7MqFvZJnP34LTxQ50GA7eeHvinsTXvlmbpCV5Rrle3PLD1r+ffkPJVTB/
         5qgQ==
X-Gm-Message-State: ACrzQf2LN6otRGgsmSOjPi8d6YnhsI5UaKJD8LD5R1AJF0hJEOn5xDl3
	oWBk89XintlsxeR7xdHzUV9RFoodc9EenqCs
X-Google-Smtp-Source: AMsMyM7g8fZR+JFK50Bvrl6av55Zd95qUXd57zo94uXFDeUhhOoz+JBO5SdrkyleLXdJYKtp3C1WIQ==
X-Received: by 2002:a63:ea08:0:b0:46e:9bac:6d9e with SMTP id c8-20020a63ea08000000b0046e9bac6d9emr1553143pgi.334.1666996622893;
        Fri, 28 Oct 2022 15:37:02 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id e11-20020a170902784b00b001730a1af0fbsm3544834pln.23.2022.10.28.15.37.01
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 15:37:02 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 0/1] Pull request (cover letter only)
Date: Fri, 28 Oct 2022 12:36:51 -1000
Message-Id: <cover.1666996542.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following changes since commit b5cf7a6501d954ac76b18d7ef91376b5a046a522:

  local.conf.sample: correct the location of public hashserv (2022-09-29 06:31:39 -1000)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto contrib/kirkstone-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/kirkstone-next

Steve Sakoman (1):
  poky.conf: bump version for 4.0.5

 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.25.1

