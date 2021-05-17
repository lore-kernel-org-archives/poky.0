Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web12.19731.1621261453327823758
 for <poky@lists.yoctoproject.org>;
 Mon, 17 May 2021 07:24:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=i6qlQUny;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.41, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f41.google.com with SMTP id o17-20020a17090a9f91b029015cef5b3c50so5665912pjp.4
        for <poky@lists.yoctoproject.org>; Mon, 17 May 2021 07:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=WaZG15OYs8O8Rv9ZIc29eEZH3KxHVJa/WPqJBTwKJQA=;
        b=i6qlQUny0JbpdzwV2gX+O37E9gUSmJfrDtqRN1HoFfC7kX6nW9tdStJ5YhK/78jZsz
         phNiEXVLq19gYGCDbwAeo4eQCT7amrZOs7epjVTW2Nal0QmLJ+7mMX4LqEvOQHAObW3U
         Rs/JmqFNxRH+zjZxCfYGFgBcgmzzDOc/wCM5Oi3/S+8n6TE5OHv1EDk6/d8QTSfgEm4P
         hy0isxECIV06PqJBCMIqyMihQf0KjzIK42UVsYujpLWB/PxhIHmWctEgtvzvpJZ6WsP2
         /EAsEtb/F1+EPHt3J2Z+NRxMEyuOxvVc+waRWlYS+MqaC4jYy1tjyZvbUvRgsboJJelv
         ch9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WaZG15OYs8O8Rv9ZIc29eEZH3KxHVJa/WPqJBTwKJQA=;
        b=Ac2LGrH4Zz521fovUgHF1fn3G9IPDTnEVbG2buelTwX7KWbanqz2fOjwyi/LqfcKWu
         TWKuNu6WQjLCuj4FG9LR5eA2XmB0QyJgBlRx2a8rMgXtrBzU1in28zK4ZtHorm8mX/Uv
         A7AGm3F0nzTzFEPd09CCcIrmedQA3lrG+YDRQvykL/+izhatQFIt4FDSz52TMugta/kV
         gWGrjamEvCk+7uKVTmKAwhzc+JB1PvcKmQaIRdb/qVhNongPjbzn+nqT+z1xcw/daXcu
         XTOgx4q0nBBKYEk2w3gTBRoScsdM1fjQlh7OW8Hfo4e2AH9f1j67KUx70WWB2HednwkW
         1khw==
X-Gm-Message-State: AOAM532NVA1HjYW2ZD5ZON6pacQxYhZ8/IkMRsXhlG/FFXfoBbQw3gzB
	uDeS6EaWMhioZq2oZCNSGnaZ8ya47tgn++BZH8I=
X-Google-Smtp-Source: ABdhPJx1U/k+a/jijDVzshsGfBgstdXAsWEsF1NSYE0XjirchosrrXWZbd/9cKw6z8Qm62WqMKBGng==
X-Received: by 2002:a17:90b:3706:: with SMTP id mg6mr211196pjb.90.1621261452346;
        Mon, 17 May 2021 07:24:12 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id u10sm10852391pfl.123.2021.05.17.07.24.11
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 May 2021 07:24:11 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 1/2] poky.conf: Add fedora33 as a supported distro
Date: Mon, 17 May 2021 04:23:54 -1000
Message-Id: <199fa05ab723fa6df28fe228cc303409f0e37bf4.1621261315.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1621261315.git.steve@sakoman.com>
References: <cover.1621261315.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index d4faecb..a1df0fa 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -60,6 +60,7 @@ SANITY_TESTED_DISTROS ?= " \
             fedora-30 \n \
             fedora-31 \n \
             fedora-32 \n \
+            fedora-33 \n \
             centos-7 \n \
             centos-8 \n \
             debian-8 \n \
-- 
2.25.1

