Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web08.349.1620838103403092338
 for <poky@lists.yoctoproject.org>;
 Wed, 12 May 2021 09:48:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=YBm/7b4i;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.169, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f169.google.com with SMTP id j12so12538861pgh.7
        for <poky@lists.yoctoproject.org>; Wed, 12 May 2021 09:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=WaZG15OYs8O8Rv9ZIc29eEZH3KxHVJa/WPqJBTwKJQA=;
        b=YBm/7b4iQbTMw9m1uZej7fn5uiF2bOCFn37eJUxVnw/l9lhc4/veg6EFlltl28RNuR
         /sscMI1kqpsjX7RLndNXopjNeBt9myGSgbJtCwcLdFA9gsE4dmrS1A6Jf6KeP/0NmGv4
         0cO5vnGrha6AWQQnkQ2ps0yjPnsSq6y+ZoHohH7m1/TH5Njv1AH9e05LQK94ndqa9J8j
         4hZR+kn1UnoMh9/cjCpx1mqxUxiEOd10w+XyMyNqBEHUNwTmLRuE/ZwFvUYa+AidhlhY
         yxphX+hZAGBYOXC92oiPeLedJY0zDfwHBTvHK6GegpJbc/JCVns/zHIsTBsDZ0xYOXhu
         F/ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WaZG15OYs8O8Rv9ZIc29eEZH3KxHVJa/WPqJBTwKJQA=;
        b=ByMMXJhks/9IN+mZZ2XbcphPFzdKOL7OK0882fWuAgbAwiEs8DwaxTuNJLmcat3afc
         14ZyL/yNS0RIgRwDvF1Zr/U1QIe/VTLLWmXyDG/cUgZi9G1SkinVxPCopF3TGW0wUUF7
         fv/jtPQaCeGTNfO+AP9AL4lL0osqHGO0vd3hG8ZOEnZqljWRywmW6+sRZLiyZl0wu5KN
         RuDuEKRKehRQdt4gEbISaQBgem1ZIZe7A+qXAmyhqlrX2EhiYpBG7V+KJG8KrK2PtYM/
         pordzrsAveKmREu62v79Z4dwLxX09AkJ/Qh4VuprLEMQP0N7Uw1oG8hDsd7RMd8LFi9c
         ZBfw==
X-Gm-Message-State: AOAM533YY373NBABOxZN2l85QTfAG/4DV9UEI7T0JocHLo9YT+YysJWZ
	h+lo28ynWDEbdlVSyS153QoGU2W7ScDg17RRKKQ=
X-Google-Smtp-Source: ABdhPJycG8ybLDT4lXgpDM1ItZ2aiuo5MUsk1G4dQh/3DOJdwbfjZXD3mznerBTV2Sa+YBAZmurOMQ==
X-Received: by 2002:a63:ea53:: with SMTP id l19mr36438108pgk.176.1620838101887;
        Wed, 12 May 2021 09:48:21 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id u129sm323060pfb.8.2021.05.12.09.48.20
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 09:48:21 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell] poky.conf: Add fedora33 as a supported distro
Date: Wed, 12 May 2021 06:48:05 -1000
Message-Id: <1d1d4141abef751cc99923c5308bf8922f2be7ec.1620838017.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1620838017.git.steve@sakoman.com>
References: <cover.1620838017.git.steve@sakoman.com>
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

