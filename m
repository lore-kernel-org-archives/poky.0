Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web11.6678.1655309350831048013
 for <poky@lists.yoctoproject.org>;
 Wed, 15 Jun 2022 09:09:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=E7QijSiQ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id m39-20020a05600c3b2700b0039c511ebbacso1419197wms.3
        for <poky@lists.yoctoproject.org>; Wed, 15 Jun 2022 09:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HC4UwFPWTuAAWskn44PwjkSIj7rUTph2SJSwvUAd2jw=;
        b=E7QijSiQq3ovHh/PYBY84oGIlSVyOYuveUJBlY2pxWbMxMIS3gAqKplK5HprGWQJYy
         AWLUiDJihkQ7gr8BKi9BsiYVZJK3xHjjppdGCrDYt2XVRs16POVT3474HWE8n+o2HPGr
         euj4uNqwzqbniSAQr7Z+EKTu74IEcah/EW1IQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HC4UwFPWTuAAWskn44PwjkSIj7rUTph2SJSwvUAd2jw=;
        b=QvyvnjTI3TEqZZQbyjkwCjqoWOmhAVMNUype1Do52AJZvZOvdIr+hvuGTUBghLz/8E
         6Tg7aWCwskehXsO3boGIMVUHdpMjs16PLyIQbNN48mEGL2d5+c8O6X8qX/KqIAjjp7Hu
         BsbSeHQYk1PJ9BhgRLB50Dbb0sRYet7oiSVQDpLW9gxhOcHxDcokK+vjeUxt0nr3/WRu
         CIsLtFrfiWkNP4Tbe3b0MZw3pF3wXyTSd6ORuG44J4k9jnXVTvdEyh7lJQjudux4esxa
         jhsApkyZIMkgd6JROIvJ+6LPNnhFC88D9SEiEcD76ZpG011mJjVYGaANcJ3YVTyKQYbV
         Lz2Q==
X-Gm-Message-State: AOAM532/NpsdaU6zw38nAykqEo28VIg891pjDOjIpfU3AfBRlm/jkr3u
	L4IIP4FumLaVo+ZPs2OXf0ve3bC8Wki8tQ==
X-Google-Smtp-Source: ABdhPJwOfg0CA3i9mysr0Hs8A9dS+hOxC5LQxbVFrMHL+bFXZqpXFWfGbNoY5HWe/L9UPN83Db5VOQ==
X-Received: by 2002:a05:600c:19cf:b0:39c:88a0:c66e with SMTP id u15-20020a05600c19cf00b0039c88a0c66emr10720532wmq.37.1655309348798;
        Wed, 15 Jun 2022 09:09:08 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:5217:2b74:ee57:d3bc])
        by smtp.gmail.com with ESMTPSA id k7-20020a7bc407000000b0039c693a54ecsm3951527wmi.23.2022.06.15.09.09.06
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 09:09:07 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] local.conf.sample: Update sstate url to new 'all' path
Date: Wed, 15 Jun 2022 17:09:06 +0100
Message-Id: <20220615160906.99560-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/local.conf.sample | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index 4d2fa516fe1..493227470b7 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -230,7 +230,7 @@ BB_DISKMON_DIRS ??= "\
 # Note: For this to work you also need hash-equivalence passthrough to the matching server
 #
 #BB_HASHSERVE_UPSTREAM = "typhoon.yocto.io:8687"
-#SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/4.0/PATH;downloadfilename=PATH"
+#SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
 
 #
 # Qemu configuration
-- 
2.34.1

