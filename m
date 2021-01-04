Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
 by mx.groups.io with SMTP id smtpd.web12.17295.1609781890782904258
 for <poky@lists.yoctoproject.org>;
 Mon, 04 Jan 2021 09:38:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=InuNpPhk;
 spf=pass (domain: gmail.com, ip: 209.85.160.176, mailfrom: vivien.didelot@gmail.com)
Received: by mail-qt1-f176.google.com with SMTP id a6so19031860qtw.6
        for <poky@lists.yoctoproject.org>; Mon, 04 Jan 2021 09:38:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=R9nZz0ULs3bo0MktyGvi0mD//IhfKcHX+7xiMYkb4JQ=;
        b=InuNpPhkeWQHv4gYhcoY/ywmRog2tO7qahge7pIc06I37TSs3jpW9Mt3rAUd3Ij4lE
         Ph3igy6C4q8qsdyADVy2S7YJIqPRrbO62YjcpPKA7FXa4wGDWXDdOAWt8HijeSMrEZrB
         Po97t+7Hi3LIiUosd4g+7XFYe+RlbmLRelk0lGSsGj+cBGtUjqhSAGCLNzE6sCmbAxWx
         S9hAYgzd4J2XqVikeFv7u98kw4raZMVHHNawsnhLfTfw+wYIbg+9a+kp/HAyGVCiXQ04
         QFN6oJ22G/pBsxibnmHXE0HZmq/zlXabtCpv2B5X2VPCCfTs8EUvz+09+GgaIRZpoNYx
         v5ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=R9nZz0ULs3bo0MktyGvi0mD//IhfKcHX+7xiMYkb4JQ=;
        b=fnJOCsWwdVB6QxSf5hEfclS8mIU42J7gfmPb9ca2WxoDv1y7Tv16jpz5F4GY1kuHDT
         EwB/A17j1YOL1zF8Tt/k2FBHk/WF9HYnsJ4bEWuDn13kw6qfjZw20uVrfso2lJl6dS02
         vmNwb6BHu6dAkLpRiWUpjCM9NdapQbb8M72wtLjU6w8wXnWWSQqHWh6j22zohNlvMHfA
         BRx91UIg8IeAvdR7ZvEfM8W4imGfG28rmdAZsZvdcXe4bGgAUrp7AySlF2JX+mJIBoa4
         gMHVICaOFSSLSgFy/SGrVbTwMMkSEX+QDbKAaoUc1KDJyAftWSuNMPgnsg/Ocs7JG24h
         fS3w==
X-Gm-Message-State: AOAM531RFs2DiUl1AFgmfU2EsJ4L2ROTIIXOH9sGd1HIKChQCMhnR5zY
	kp7n6qc/47J9wW8LD0xXiXknaFQFTx8=
X-Google-Smtp-Source: ABdhPJz4RlFRuvROwEHGkU6O4GLaj3+3eRyxKzbUuJsFz47U4c2uEO2JP4qN0niLSBS3z0BvwUroPA==
X-Received: by 2002:ac8:6b46:: with SMTP id x6mr70905042qts.104.1609781889707;
        Mon, 04 Jan 2021 09:38:09 -0800 (PST)
Return-Path: <vivien.didelot@gmail.com>
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca. [184.163.105.249])
        by smtp.gmail.com with ESMTPSA id n3sm37288949qtp.72.2021.01.04.09.38.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 09:38:08 -0800 (PST)
From: "Vivien Didelot" <vivien.didelot@gmail.com>
X-Google-Original-From: Vivien Didelot <vdidelot@pbsc.com>
To: poky@lists.yoctoproject.org
Cc: Vivien Didelot <vdidelot@pbsc.com>
Subject: [PATCH 4/5] wic: fix 'founded' typo
Date: Mon,  4 Jan 2021 12:37:40 -0500
Message-Id: <20210104173741.1070515-4-vdidelot@pbsc.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace 'founded' with 'found'.

Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>
---
 scripts/lib/wic/plugins/source/bootimg-partition.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/lib/wic/plugins/source/bootimg-partition.py b/scripts/lib/wic/plugins/source/bootimg-partition.py
index 138986a71e..5dbe2558d2 100644
--- a/scripts/lib/wic/plugins/source/bootimg-partition.py
+++ b/scripts/lib/wic/plugins/source/bootimg-partition.py
@@ -141,7 +141,7 @@ class BootimgPartitionPlugin(SourcePlugin):
                     break
 
             if not kernel_name:
-                raise WicError('No kernel file founded')
+                raise WicError('No kernel file found')
 
             # Compose the extlinux.conf
             extlinux_conf = "default Yocto\n"
-- 
2.30.0

