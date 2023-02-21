Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web11.55844.1677015580904260103
 for <poky@lists.yoctoproject.org>;
 Tue, 21 Feb 2023 13:39:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=349Vt3jb;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.173, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f173.google.com with SMTP id cb13so3303840pfb.5
        for <poky@lists.yoctoproject.org>; Tue, 21 Feb 2023 13:39:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PTnnd247PHiTJijszE4SSWptWZWdIxNoYkV7gDT457o=;
        b=349Vt3jbM1Y/vG6Ci1TCuZTKulAgorITbCfMiX/aTEqm1mMRtYuUs4jl3Sa+o1f8go
         8yBHama8EQUCei0MP9bf0NNfLnhTETJGJCwsWIjwM0BbLDBBfuPD+x8Mbq7srJDScvf4
         LJFPUk7ifjg9OtBmq801IQMt7mjd+eYJcrVVlGh3/vM+H5WhRn6XQCobhMAKpgiJuxfz
         nvEawhNx1Cun+xluUluYiInPpJ8O6B2GIblavOavXkKGc7cvcdDvhK17UctZkGSilDk9
         eGcIFim9mziz1e+w0/qbLCzVRnROl3vOSr/tqAeUxwfNKkwJOu/yHLtLLpwV9Szoiw1l
         7AIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PTnnd247PHiTJijszE4SSWptWZWdIxNoYkV7gDT457o=;
        b=JiPo28BubUHCsnH7ZBmZmKqQDyGaDtwNnX9LhrtP+VabEy0qLtvevS9p1opvtMBHZM
         rhEaznLFhxIj6pG5i1JUZfwKBsly6kfU5rgozR20KaDAfCWQX6wYllz4VlQVk8lvD/jZ
         959UMHAZ3ATLn/7cZyCHRJhjlzDEfsT4GJtlVawG+wkvvkKIvMb4VNJkgDQm36tThzg/
         /hY4zNFAsXdUbg95UfaoYARiqEImXdKrY7L6unwZJMzsrVbSzKwrktSoWhnOomJgqhl9
         /dL3r44/nJ0CU2kuv3kBRlmd75QhjIWBsZTBNb3UIBkHuRTUvHqWnxcInGmIsi+aVEhm
         9tTg==
X-Gm-Message-State: AO0yUKVwJFiLJ9k42pdL36yR2SB1F7l8pFe3EZbGO6dlz/BXTqxm23mA
	P/+3g/3yTA6nbuiSMVoIczz1FZEOyqhX5VFxcDQ=
X-Google-Smtp-Source: AK7set+6YtyhaIF1k1U260A7OamwIDfj6qGSfJlupvJlJdoUbcvU1vcamTFUkaSctr6UMMOHGKo1cA==
X-Received: by 2002:a62:5f86:0:b0:5a9:cb37:cfb7 with SMTP id t128-20020a625f86000000b005a9cb37cfb7mr7118824pfb.25.1677015579906;
        Tue, 21 Feb 2023 13:39:39 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-4-112.hawaiiantel.net. [72.253.4.112])
        by smtp.gmail.com with ESMTPSA id z3-20020aa785c3000000b005a8bf239f5csm1167771pfn.193.2023.02.21.13.39.38
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 13:39:39 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][langdale] poky.conf: Update SANITY_TESTED_DISTROS to match autobuilder
Date: Tue, 21 Feb 2023 11:39:32 -1000
Message-Id: <f20d8e8e5345748f5745e294156c7938159a274d.1677015509.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1677015509.git.steve@sakoman.com>
References: <cover.1677015509.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The autobuilder workers change over time, update the sanity testing list
to match the current autobuilder workers OS list.

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 299618a..8059258 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -41,10 +41,13 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-22.04 \n \
             fedora-34 \n \
             fedora-35 \n \
+            fedora-36 \n \
             debian-10 \n \
             debian-11 \n \
             opensuseleap-15.3 \n \
+            opensuseleap-15.4 \n \
             almalinux-8.5 \n \
+            almalinux-8.7 \n \
             "
 # add poky sanity bbclass
 INHERIT += "poky-sanity"
-- 
2.34.1

