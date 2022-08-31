Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web12.24156.1661944353206136492
 for <poky@lists.yoctoproject.org>;
 Wed, 31 Aug 2022 04:12:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=A1HpHNQb;
 spf=pass (domain: gmail.com, ip: 209.85.221.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f49.google.com with SMTP id v16so15056442wrm.8
        for <poky@lists.yoctoproject.org>; Wed, 31 Aug 2022 04:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=AYwxcff7GkQGkEbE/vSA5SMoSPwSEj1inHTuwkmMz6A=;
        b=A1HpHNQbz/4pMLGAQd/gosqemRPQZa4ruxH4Y2R9rX0GwPkGhImQ4w1TttluyX0Mgp
         oPwBRttxGewMx/M//46/OHg5IUyZDisvDeaGPGn4cXBknBqBUTadPLsW8wSe/sc+tFml
         dAGBxQ1TFKqrdF5JIowFhrZbBKsaoNHCLkJ5gFyYl0nA5uz/OXZVrEqb9tNWURyzg3Mx
         M/muviH0NBrIKyUDPLgowfWPK6pqBf1TO6T8pv8VXt4Kc5m69fRJabiT/niigdhX+Lrk
         UCP+BBO+x4mW8JYnIJhy9WVvGU8SwkKJRLcAY3qVvgoLHDPyo6UamdAsoheST4NIbq0P
         Y4Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=AYwxcff7GkQGkEbE/vSA5SMoSPwSEj1inHTuwkmMz6A=;
        b=QMB6B1nNoM5v91HH2ObKmUm9PQU/bfXu4UpAnOFrLt2NjLYxEhzWH+7U3zlgIvv/8S
         To9Ouv9ouX1Kwi136oJD2oqpyESR4hAkIIGmiyLHaQJY8j8snQZnQw0eZeCMZ6N1+F1A
         VuRb6CYOHThVx7+cVqFmKaJvq79euJzpUnR1FZEWz+/9utcW+60a0NkF9jzvcCA+7YGS
         TWisFlRT9QZF9ZIv77xY2yyz64Gxrzj4EAMGO507CflwqurWmG1FItrqejmK74LZl+A1
         GnR3pKmIiYqRrW4rZRiQEcuOJfbNieKbUT4ofByvivoWLcpIhJbujhuXTdQMJ4g+IVWX
         so+g==
X-Gm-Message-State: ACgBeo0jLDlXzvQMmI8vOZKmIje3q2o9R8lYFlLMXNr+58n1W7wth1Zi
	YYUV7c5QLF530d+O0JINOaxLaDrGQEE=
X-Google-Smtp-Source: AA6agR6ujw43AC2rkvuupRa6YUQeCo9FOFQitwmZMVtMaLpfeCYLXQ7xpGSI9xrMVxi5DxFC3vUP2w==
X-Received: by 2002:a05:6000:1888:b0:222:ca41:dc26 with SMTP id a8-20020a056000188800b00222ca41dc26mr10920488wri.442.1661944351474;
        Wed, 31 Aug 2022 04:12:31 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id h15-20020a5d548f000000b0020e6ce4dabdsm11789036wrv.103.2022.08.31.04.12.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Aug 2022 04:12:30 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH] meta-poky/conf: move default templates to conf/templates/default/
Date: Wed, 31 Aug 2022 13:12:25 +0200
Message-Id: <20220831111225.3330218-1-alex@linutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This follows the changes in oe-core, where templates are expected
to be under conf/templates.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 .templateconf                                                   | 2 +-
 meta-poky/conf/{ => templates/default}/bblayers.conf.sample     | 0
 meta-poky/conf/{ => templates/default}/conf-notes.txt           | 0
 meta-poky/conf/{ => templates/default}/local.conf.sample        | 0
 .../conf/{ => templates/default}/local.conf.sample.extended     | 0
 meta-poky/conf/{ => templates/default}/site.conf.sample         | 0
 6 files changed, 1 insertion(+), 1 deletion(-)
 rename meta-poky/conf/{ => templates/default}/bblayers.conf.sample (100%)
 rename meta-poky/conf/{ => templates/default}/conf-notes.txt (100%)
 rename meta-poky/conf/{ => templates/default}/local.conf.sample (100%)
 rename meta-poky/conf/{ => templates/default}/local.conf.sample.extended (100%)
 rename meta-poky/conf/{ => templates/default}/site.conf.sample (100%)

diff --git a/.templateconf b/.templateconf
index 0fe6f82503..faf0348077 100644
--- a/.templateconf
+++ b/.templateconf
@@ -1,2 +1,2 @@
 # Template settings
-TEMPLATECONF=${TEMPLATECONF:-meta-poky/conf}
+TEMPLATECONF=${TEMPLATECONF:-meta-poky/conf/templates/default}
diff --git a/meta-poky/conf/bblayers.conf.sample b/meta-poky/conf/templates/default/bblayers.conf.sample
similarity index 100%
rename from meta-poky/conf/bblayers.conf.sample
rename to meta-poky/conf/templates/default/bblayers.conf.sample
diff --git a/meta-poky/conf/conf-notes.txt b/meta-poky/conf/templates/default/conf-notes.txt
similarity index 100%
rename from meta-poky/conf/conf-notes.txt
rename to meta-poky/conf/templates/default/conf-notes.txt
diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/templates/default/local.conf.sample
similarity index 100%
rename from meta-poky/conf/local.conf.sample
rename to meta-poky/conf/templates/default/local.conf.sample
diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/templates/default/local.conf.sample.extended
similarity index 100%
rename from meta-poky/conf/local.conf.sample.extended
rename to meta-poky/conf/templates/default/local.conf.sample.extended
diff --git a/meta-poky/conf/site.conf.sample b/meta-poky/conf/templates/default/site.conf.sample
similarity index 100%
rename from meta-poky/conf/site.conf.sample
rename to meta-poky/conf/templates/default/site.conf.sample
-- 
2.30.2

