Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web09.5254.1648632242224520929
 for <poky@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 02:24:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=iSSWNo42;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id c7so1762005wrd.0
        for <poky@lists.yoctoproject.org>; Wed, 30 Mar 2022 02:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Z4t3IIwz6e4gYSntpyD9faQbtL0O7KlCHgWI9A5xbdo=;
        b=iSSWNo42QOHsPTuVzuvgUgHeHa0IJz5IBdVuohtMJpMwV2H02dV2+w5P8bFoFs6Ude
         nEYg3NkRLDBXLrVlyQ236prqyHTnVoE4m2g3zmU+dyEaD4ZnvOiUZdrATLia4s+VGZxk
         Ul1UpzIfjNToyOIjtfQbea+C9e/7MDZ/al9Vs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Z4t3IIwz6e4gYSntpyD9faQbtL0O7KlCHgWI9A5xbdo=;
        b=0G0c5GcY6lyNhh1JpD6s+etx7e3aRqKtO30uRim8sVxl+dRTbkcWFWiA7zjfqILl8Z
         oWus0hCoMumnFDntgXmnDW/0yRnLpB2Z5izP+2ooEyKNIdXTzOdqA3ohozKLxeiLYPsu
         oxV9TNEiAxgGxC9FnRlOVzGFDQLHR+qWOy2gvzMqd2P5El2p+WsXCwthb88cQKIATXL+
         FsocIWnpoGndUuKohCaGEuTVLpMe+qI6c6kiIDbtZEQIm+EiyaMyyuLpPicwAd05xovS
         rDF2Eb30NQP09Imix7z0NFPIDKn9w46PoHzQ/731hWdrEux0vbQ2Oew2VYau/fmyVWCU
         nQVg==
X-Gm-Message-State: AOAM530jtQdZGt897q9chdQZJWkk48MoqEegIDl9uuQFADVI73VjylKw
	2D9i9wpKmsBAT80xh9DakddlngfOhIfLDj0V
X-Google-Smtp-Source: ABdhPJx9gOgfrVz/JkJVlnl2UEOswUrX9klrl2rOEr296W4uC1RuKPIQsO2GrEpn5l74zXKXmoLtdA==
X-Received: by 2002:adf:da49:0:b0:204:1548:2a58 with SMTP id r9-20020adfda49000000b0020415482a58mr35539390wrl.664.1648632240197;
        Wed, 30 Mar 2022 02:24:00 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:367f:29cd:9517:5c4])
        by smtp.gmail.com with ESMTPSA id bi20-20020a05600c3d9400b0038cfe80eeddsm3791369wmb.29.2022.03.30.02.23.59
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Mar 2022 02:23:59 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky: Drop PREMIRRORS entries for scms
Date: Wed, 30 Mar 2022 10:23:58 +0100
Message-Id: <20220330092358.1499089-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The reasons for this are lost in the mists of time. These are already
in OE-Core as MIRRORS and we should be falling back to the project as
a backup, not a default. Update accordingly.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index a3c5c0720d9..179329f5fa0 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -31,16 +31,6 @@ DISTRO_EXTRA_RRECOMMENDS += "${POKY_DEFAULT_EXTRA_RRECOMMENDS}"
 
 TCLIBCAPPEND = ""
 
-PREMIRRORS ??= "\
-bzr://.*/.*   https://downloads.yoctoproject.org/mirror/sources/ \
-cvs://.*/.*   https://downloads.yoctoproject.org/mirror/sources/ \
-git://.*/.*   https://downloads.yoctoproject.org/mirror/sources/ \
-gitsm://.*/.* https://downloads.yoctoproject.org/mirror/sources/ \
-hg://.*/.*    https://downloads.yoctoproject.org/mirror/sources/ \
-osc://.*/.*   https://downloads.yoctoproject.org/mirror/sources/ \
-p4://.*/.*    https://downloads.yoctoproject.org/mirror/sources/ \
-svn://.*/.*   https://downloads.yoctoproject.org/mirror/sources/"
-
 SANITY_TESTED_DISTROS ?= " \
             poky-3.3 \n \
             poky-3.4 \n \
-- 
2.32.0

