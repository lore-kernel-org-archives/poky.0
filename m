Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web12.456.1623776476482093146
 for <poky@lists.yoctoproject.org>;
 Tue, 15 Jun 2021 10:01:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=Xq2zko9O;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.179, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f179.google.com with SMTP id e22so11968382pgv.10
        for <poky@lists.yoctoproject.org>; Tue, 15 Jun 2021 10:01:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=kVLGOwysafAIqsSkxTi9jtFSWEAV6yrUE49VWaxzIpQ=;
        b=Xq2zko9OpaatU8Yh5L7+gbem5/H4uvhZYYYH+K1TMbv5EBQ/aAcfKDPglZe3q1Q30n
         TvtDJI20ohqoy+ghmPdlfhRm5B4F9mW4Wq5KOF41Kdflsy/9PUFi2fWX5KYn1Q1++u2L
         AU5EoV/ji8FuAGkdg8ibWT0HrL04AsxItNW5V/J3Xpxu1cj68N+2QODhaAiI/+OFtNtf
         DCWdDLgOU6WVnOtNOUxPqnglk76gNJIhzY1XWS3SHpvZ+R4ADJyheh2dCXdPyY1C9/Yq
         14Uh2cBFEXIYnIJEWTFo+0M4/2p+K1gdQh/z5YvxkZwPehrgX5Ntn9P+Sbb1+2NuU63h
         peSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kVLGOwysafAIqsSkxTi9jtFSWEAV6yrUE49VWaxzIpQ=;
        b=Vz7BmB/9GidzdovTkj07n2Eg+nAYM2szeP5p4ajCiUizrlYZgwTlRMeI84VOkaYxWO
         46CurFTX6vYcilxpeMioQ7+FjLFQweQz26pM1tVkiYktktuEGtoBHzxqX9NBB/BF6b6v
         cBgzWC2VX3UDoXPt8svtE1wXazXWegYT3rZVddUjPmUURHanDE0LV6N90zooBQ8GiuZN
         y5R1pije8zfeXmArADxhOJa+SwJ+tmyN9kS9P/A/7sE+1Lr+NDwRvv6J2fLJS5nettHb
         5GM0Rk7dkALGEF4Z1igx5bFgvOE1lntIRXEB4L+sROzXpVyPy6GIY575M20Wdpts/2z7
         8Pxw==
X-Gm-Message-State: AOAM531CwqS7xmWDP1KOwPMC11PMJmMltrXETXz9kj+2gge6b5igbQgQ
	lpjqhmYqVTijN4JD8NZA4kSGedcUQDL3gDPx5S4=
X-Google-Smtp-Source: ABdhPJx1hRVF00Kryo2WPc4hw1rGPrPwWFdaxTsEcpXrb+YHpOCDOiiDdLEInoR4L2HP4TwAOTdb/Q==
X-Received: by 2002:aa7:93a9:0:b029:2e9:c839:d2d with SMTP id x9-20020aa793a90000b02902e9c8390d2dmr5418501pff.5.1623776475373;
        Tue, 15 Jun 2021 10:01:15 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([172.243.4.16])
        by smtp.gmail.com with ESMTPSA id z15sm17595100pgu.71.2021.06.15.10.01.12
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jun 2021 10:01:15 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 1/2] poky.conf: Add openSUSE Leap 15.2 as a supported distro
Date: Tue, 15 Jun 2021 07:00:47 -1000
Message-Id: <2105b7ab9f10ae76ffdde68c99dd4559c9d0391a.1623776375.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1623776375.git.steve@sakoman.com>
References: <cover.1623776375.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index a6df552..c2d42c9 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -67,6 +67,7 @@ SANITY_TESTED_DISTROS ?= " \
             debian-9 \n \
             debian-10 \n \
             opensuseleap-15.1 \n \
+            opensuseleap-15.2 \n \
             "
 # add poky sanity bbclass
 INHERIT += "poky-sanity"
-- 
2.25.1

