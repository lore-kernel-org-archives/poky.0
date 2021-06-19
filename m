Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web10.19657.1624097980448871931
 for <poky@lists.yoctoproject.org>;
 Sat, 19 Jun 2021 03:19:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kd1YkK7x;
 spf=pass (domain: gmail.com, ip: 209.85.218.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f48.google.com with SMTP id dm5so7652125ejc.9
        for <poky@lists.yoctoproject.org>; Sat, 19 Jun 2021 03:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EVltZaK9hMbpx+8e4c+AbwjUUZqLQH3dRXZ2NrLj5Uc=;
        b=Kd1YkK7xQtEVhfrfmxV+p6H5489SnLTjvDfV3h6AZv26e1tVp57H9NXdpPRQrBU59p
         sxLhAZYT6T8+Kpv77gZFmxsz0FQR3IZ1uEUwu7SZe5Ktc4xP50iRqECpWhUeCvgEYIbi
         HgyUS8U3gzXX40nbVMqmmdCoAdLclS9cSaFO9eQKIuuqn85zLeYC9bUpLLIFEEFhu3eh
         BRfv+ytRafzuAMGkrQhA9mpoxZPDo8LsxCqbK+tHQ5JT6KupoDtytGtVe9/GWXXq2iVU
         i5UUa1mXQ/F+h5up3Z+U3EK3BILGoF+eQdCX8c6eUnlBrAI+rKDuN2W8duy6XJ8/n92O
         r+2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EVltZaK9hMbpx+8e4c+AbwjUUZqLQH3dRXZ2NrLj5Uc=;
        b=bz1G84PcKZOB7wNrgporiOFAr7B6mO1ikISZzlv8/8iOStjVq28t/00dJlmlhozbP4
         ZWkHRd2rxkVp9MxVq1qFapVCicpn+oXQGAdisD4VIF3yw2Ii9LEHV/BUIBmFnel7fCgS
         rgLjrOCdl/bVUduMBm1D4rBPqOW9hY9m5mZX/O2kEe1ioKh6n2Q6HYOjCq8iAO6wznkB
         +gkIL0vlmnQp7Zp1Wuj4Lt3L3luYqUk5WniHV+7xTdtugcsTZDcD3aSZi7QpuFbf7IXP
         TMuEhxFrG/XlmQ8xz/5ERpp2P0jXN8GsvTCnE6XnbPoLuTMXzjD8fu09SNSzSOO6z8u3
         nRkg==
X-Gm-Message-State: AOAM532+PO+L24MEJjfZvgEYXzM1aXkXLQl5qE0AUCYdjN1xZTP4ZK3p
	odRDowonDJz5wG4dpwaNply8ICD/CpfuZg==
X-Google-Smtp-Source: ABdhPJz8E81d+tu87OfHbJ3nRiKaRx119q7A2pxdVWIPTSjrCtU/5XMtWKpEIUdrBl8QmDUAMj5/jw==
X-Received: by 2002:a17:906:240d:: with SMTP id z13mr13277088eja.118.1624097978761;
        Sat, 19 Jun 2021 03:19:38 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id cx1sm773265edb.64.2021.06.19.03.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Jun 2021 03:19:38 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH] local.conf.sample: disable prelink
Date: Sat, 19 Jun 2021 12:19:33 +0200
Message-Id: <20210619101933.1854147-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Recent tests have not shown any improvement over not prelinking,
and without a regression test it is very hard to say when and how
this happened.[0]

There's also a concern that no one is maintaining the code, and there
are open bugs (including serious ones such as [1]). Given that prelink
does intricate address arithmetic and rewriting of binaries the best
option is to disable the feature.

[0] https://lists.yoctoproject.org/g/poky/message/12467
[1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=14429

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 meta-poky/conf/local.conf.sample | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index fb14379d28..1794126672 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -148,8 +148,7 @@ EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
 # enable extra features. Some available options which can be included in this variable
 # are:
 #   - 'buildstats' collect build statistics
-#   - 'image-prelink' in order to prelink the filesystem image
-USER_CLASSES ?= "buildstats image-prelink"
+USER_CLASSES ?= "buildstats"
 
 #
 # Runtime testing of images
-- 
2.31.1

