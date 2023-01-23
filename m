Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
 by mx.groups.io with SMTP id smtpd.web11.45995.1674488963565888983
 for <poky@lists.yoctoproject.org>;
 Mon, 23 Jan 2023 07:49:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=T5ugHEEi;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.178, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f178.google.com with SMTP id s3so9072118pfd.12
        for <poky@lists.yoctoproject.org>; Mon, 23 Jan 2023 07:49:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CjCYKPNnpenFGgIJszul48NGUhR1Ggugfplqw+Oquvg=;
        b=T5ugHEEio8giOTDwYhB2BV/Rwz5q0fQUQsXG5bT1RbfbVQGCizORaoAerDMplX3+BC
         THvB4OJEAKj/64aadAD6CpASruSPxCFgTNK9RIYH5niO9LyuRHZRaEhGHVUyjm6xrnAY
         FnU1tJ46yUMX3AIZhAjWhr+IobbPuiiO025CDduIukyEM1EDByrgLwkOalaAJ5MvGBez
         VDSKWMnAaqTZUqHlgVieN4gGGds4ja3+VngAHkJntmWYnIq+8C3SrixXH1yaJFs6sPpX
         m/m0oeetkvQkHUp2VPXWfsJLUFDiM0LlJP+pJ8EeFqLrkZ6E+hYNjAjou6J/JE+qX7UH
         HBgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CjCYKPNnpenFGgIJszul48NGUhR1Ggugfplqw+Oquvg=;
        b=CN/t4Df6wm0ztHgx0+ELLgg8S/H6uu6SIie1OtN5DQZU9INMS5h2adSQidwcZ2/+K2
         8kXcQ01IljS33qI1yOgnlBfijg96LI5A3AGUUtvEj9rfkVWVGhSnDYzj4W8RXEhQrXjh
         Yuw82WOQcAQrTx/KQqAXzm2wALPHxZULH9w9j6Z3EkozVVCOquqARFr7Tm7zlz9yH5u7
         Rq6rC9OYI9kMs9zQmD06JmtE7+ZNFqcKTHeMNUAKSRmypnD5Hw06lVHyc630ccUhjsBD
         z38VmpetUR3+DKuNIGOZZ/kP6p9SX9uQky8A/UwqsVBfqFlyzaHVT0SDZ1iGgG5+w7y/
         IsQg==
X-Gm-Message-State: AFqh2koe6fb/Tk4bFLAoeqgLj84BjDgD2GU1N/dEsf1OTYtsvaNBDa9u
	Iv5FvsJzRWg1J7fiCHEUQbOs6ekSKEW+JFvGNJM=
X-Google-Smtp-Source: AMrXdXuE4P4dALvb7/UlqRfkMBtgjIHfXvRwdiRYIRpF+OMj8zc+dGNZe1yZdZi+f/PPHFHmUuwwUQ==
X-Received: by 2002:a05:6a00:1c8c:b0:589:af4d:43a5 with SMTP id y12-20020a056a001c8c00b00589af4d43a5mr25235959pfw.4.1674488962192;
        Mon, 23 Jan 2023 07:49:22 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id d2-20020aa797a2000000b005895f9657ebsm26663099pfq.70.2023.01.23.07.49.20
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 07:49:21 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone] poky.conf: bump version for 4.0.7
Date: Mon, 23 Jan 2023 05:49:11 -1000
Message-Id: <bcbf35c19c4b3b450b4cc3a8381b72ce4378f438.1674488892.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1674488892.git.steve@sakoman.com>
References: <cover.1674488892.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 79c9aba..4876d74 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,7 +1,7 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
 #DISTRO_VERSION = "3.4+snapshot-${METADATA_REVISION}"
-DISTRO_VERSION = "4.0.6"
+DISTRO_VERSION = "4.0.7"
 DISTRO_CODENAME = "kirkstone"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"
-- 
2.25.1

