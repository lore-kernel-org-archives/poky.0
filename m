Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web09.10721.1661346992418871773
 for <poky@lists.yoctoproject.org>;
 Wed, 24 Aug 2022 06:16:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bseNATlA;
 spf=pass (domain: gmail.com, ip: 209.85.128.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f47.google.com with SMTP id h204-20020a1c21d5000000b003a5b467c3abso899926wmh.5
        for <poky@lists.yoctoproject.org>; Wed, 24 Aug 2022 06:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=RksNTmTqlH9fKD3UP+dbfHBSZo4hndVnu41YsUiHwLQ=;
        b=bseNATlAw5e6qE5Cqe442RI0zh78nWE8t3m8zxh7WG8f0ppGjwNlLPHuuPXWXDNZYs
         yNBY7wtSG1kQGqVDDHXu/1cchW3HEuxg7cWRp+3ilZIYnDT5CDL5Uq/nRfBlUZTWZ2CK
         bLoR3vy3zjeBMknOSDqQRbtokKAwrPLp0PwkAoBzmWYQeYho5NJr5YuyF/kaeyH9lcvS
         JTArR1rNTQ1vNsEZQk+82MTNZhQ7CqZziuYt+nryq+IGCutQzNpfHH80ApxtImXSCOgd
         jPzKJPRyAcuGC8cFnTG72/TaiLy63mC2liKkEysrzfbzWIxXRaktdRW60vVFZV4k6v2t
         8ERw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=RksNTmTqlH9fKD3UP+dbfHBSZo4hndVnu41YsUiHwLQ=;
        b=m/IVML2BW6qXc6lL3y+kKJSeUWOpkUIvaxiXRNlozQMTs1/yQGuZHR6svCr/Ll+e4v
         NoThnudgIekUa/234xRV76AgbVJ0ajC+89LSI1XFMOs6hB0hxxKlGulgp+B1MvD4DwLw
         xplGRURGihFwH9Z02eHCg5Yztc5bD3ThnG9qPenZccjbgVEXmL696D4bR+IwVGso6owi
         94lAV1tfUF/uXKxEZquKS71FZh4CGB6WNpYersNCTO4v7M1eyIcfilLOzkTjWcpslM5G
         R3tfwFW4gWqlmi7cEmsfPFuc+GgeuJ9aibVVjJgprB9ROso742XsuL0bD9UiNkiHFYOa
         A/FQ==
X-Gm-Message-State: ACgBeo1FM1AtHd6eTkjC/Staf64a5gusbyM70ugqipGdK/kmSNGMy0bC
	M4h6guErFFtJOGNOaWGYBJWDxJPh7ec=
X-Google-Smtp-Source: AA6agR5m+OvwPRw/zIUhu4neWrXwTvYExno96Pz/N9IAK7T+ktBBK6i26DwDmBEatPbg5sculGNJBg==
X-Received: by 2002:a05:600c:4fc2:b0:3a5:c491:5ee1 with SMTP id o2-20020a05600c4fc200b003a5c4915ee1mr5119189wmq.62.1661346990722;
        Wed, 24 Aug 2022 06:16:30 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id p6-20020a1c5446000000b003a500b612fcsm1865854wmi.12.2022.08.24.06.16.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Aug 2022 06:16:30 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH] meta-poky/conf: move default templates to conf/templates/default/
Date: Wed, 24 Aug 2022 15:16:26 +0200
Message-Id: <20220824131626.3567996-1-alex@linutronix.de>
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
index 0fe6f82..faf0348 100644
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

