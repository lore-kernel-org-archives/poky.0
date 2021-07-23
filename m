Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web11.9135.1627051004218386725
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Jul 2021 07:36:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=Y2m95Gj2;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.54, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f54.google.com with SMTP id gv20-20020a17090b11d4b0290173b9578f1cso6449871pjb.0
        for <poky@lists.yoctoproject.org>; Fri, 23 Jul 2021 07:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=r315GuyvgxCNgapqPMYnBI8HVkUHsjaashdeAsc4Hp8=;
        b=Y2m95Gj2KOzQvct+kdpSJaffbu1fYrukudkymfrKfl6JoE0B7r5oWMb4Sn+XCOwB0X
         ht+Wtk5y7t1xH5vjxUN5ALEJsRfAW2v8Zl4NOudb0GlJy4rq/rvh+0xq4eT1GF4Y2Nxr
         VFOswr0uuCkwmxtJUOeUVhaoF8SejA7kow9L2WUm2F23Qo6B6lrDk0k8ru9MDwq+h649
         EBepLWDHFL/aSduIXBJ25Eh+ziUOnXG3M2NL2WCbpVhn6KfoDsiOhIiT/b95kvO/Dsbn
         GgpuuE7mYkRz8Mc5pg7t7Gc37rWoWrQcIKmoS1N2WNqV2+jfwV8ctU9nBakReqi5pa+k
         +phw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=r315GuyvgxCNgapqPMYnBI8HVkUHsjaashdeAsc4Hp8=;
        b=dLRYMBC/ymuFdeDF3ThbG9iXTx3AnXN86KPZXG/N2Q90ozLgwhtLl66ZiR54Lxacfs
         OKJBwivwpmCqfBf+QWHnuYQ0UxCi43nzKAELRhu2G21NuGBndNhrEHiigC1hI5XuGnXF
         FhayGRb5kV7qKIBpEHZiygOzbPaDuVW8QqwqdQEFcQyTfxO7NqcvvPgOtOtobGOW1R4M
         UmR7fU6oHRWyNQHVxRWGudkAUzvXFOIppGytQWBuzdgsp5l4YlHFRN/eZCtORP1bArQo
         UAt+Fh/MT5i73MDbUedyqUJ9ATu5vZ21bgQNoceyf/VIu1dFgIGN1Di7UO4p+wo7Teof
         POSQ==
X-Gm-Message-State: AOAM530gcteEJTq5hxijw6C9/1u/1Ljvw3FTsndgf0WU33gEvFqx7L4q
	ISwL2zTjE1pd/87e4zA66ss4KeHSPJsiLKZC
X-Google-Smtp-Source: ABdhPJysPQ2vxJI6JnrQupKV7Ph0I755xkmiTizfJbQGF1M/vyDlfsGnKKioqOj+vvXycAcan+9eVA==
X-Received: by 2002:a62:1ad2:0:b029:349:f807:129b with SMTP id a201-20020a621ad20000b0290349f807129bmr4864432pfa.16.1627051003069;
        Fri, 23 Jul 2021 07:36:43 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id v31sm30793568pgl.49.2021.07.23.07.36.41
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 07:36:42 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 0/1] Pull request (cover letter only)
Date: Fri, 23 Jul 2021 04:36:26 -1000
Message-Id: <cover.1627050913.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following changes since commit d32ef9380495af0fcdef0b5db6016b2063a46c6e:

  poky.conf: Bump version for 3.1.9 release (2021-06-16 10:56:30 +0100)

are available in the Git repository at:

  git://git.yoctoproject.org/meta-yocto contrib/dunfell-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/dunfell-next

Steve Sakoman (1):
  poky.conf: Bump version for 3.1.10 release

 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.25.1

