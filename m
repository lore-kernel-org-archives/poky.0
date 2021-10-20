Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web10.9937.1634744755100906603
 for <poky@lists.yoctoproject.org>;
 Wed, 20 Oct 2021 08:45:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=YhcZWQhm;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.42, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f42.google.com with SMTP id na16-20020a17090b4c1000b0019f5bb661f9so2788024pjb.0
        for <poky@lists.yoctoproject.org>; Wed, 20 Oct 2021 08:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=akaoPU7SYPsG00B+vqK79+z+rpehQck7yrwnxDz29vg=;
        b=YhcZWQhmHxd2rsn7Eg4GxtlWl5CEAGybFkVMZEAyBPeTGMcVmeyLDsFjcw6LtZvid1
         coiN4/+RuYSb09wlnCtxoMksFbfUGFdsZMUprQO9RTM5DOkiYoeq3ocQb61vVjvQw8iv
         z3ScJfBHPtlr7kdrHE2C9SNTWcH9EAJ0T+l6d0wHkERGHR7CXFtCZWTmFtvqD1iEKFoj
         oFKUJe/Iyh6yVzKUddtN7wP5OSGtw5alHwXsaFf/KSIHxXjYfPVAJ+Fwg+UnEj/YGF8M
         iHQbP7p4Et3ST6zo+1M3wSneVFgXHS827X64OkWfdrDzv27kcIQ6jCcHKLeWbOemPS/5
         +rXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=akaoPU7SYPsG00B+vqK79+z+rpehQck7yrwnxDz29vg=;
        b=j4+zkzF8J9QVxp4LvU/Q1uDlvmbnuC0XeECHncBABXNgGWA8oIRehwgUSd+K7j/T3Q
         0RCDVck/ENh1x9J2djzcwqfPwOJHzpgaQF5pHwU5ykAA8AEotZeH5aazd/ZZnWuSLCSL
         Y2OrjJ3+C9l4nQ39/bB+Bt82qeVPucl6f0E6/7rkUnCtZikqqq9YUepaJqzKtSH/bOhn
         iIUr2VoPP8y13uMPV7jQUSTBGw/cZ2YCRhko+cTM9w+Jpwom+mmWTmT70IqVugDpneVx
         t6DKfmCV9rKmNbbP9Cj8tFoQ2UbnN+OjyeBXLc8aFRY/k+jJrxn8x/huA0SbXwaOECD2
         mSuA==
X-Gm-Message-State: AOAM5320J6jqGqLkfsnlXOxHd4IlORP9g688QEYSQdIk6gwp2ww815Vd
	m99JxphtPApJw54t4lHXDlCmBXo40EsaHE6fTsw=
X-Google-Smtp-Source: ABdhPJx8/tHJOTUCCOw336fMZmw5w1gYMge75BEsdSGYoJRCq+xPbf7tJRA1NQtKgufKC4gtcZNkJw==
X-Received: by 2002:a17:90b:3910:: with SMTP id ob16mr755413pjb.234.1634744754249;
        Wed, 20 Oct 2021 08:45:54 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o72sm2840179pjo.50.2021.10.20.08.45.52
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 08:45:53 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 2/2] poky.conf: Add debian 11 as a supported distro
Date: Wed, 20 Oct 2021 05:45:31 -1000
Message-Id: <3678f17c4e506305b41aac2ddcfade4af2ab7fa1.1634744401.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634744401.git.steve@sakoman.com>
References: <cover.1634744401.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index d366922..ed4cbae 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -67,6 +67,7 @@ SANITY_TESTED_DISTROS ?= " \
             debian-8 \n \
             debian-9 \n \
             debian-10 \n \
+            debian-11 \n \
             opensuseleap-15.1 \n \
             opensuseleap-15.2 \n \
             "
-- 
2.25.1

