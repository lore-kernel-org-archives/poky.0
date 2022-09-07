Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web09.6361.1662548749880834501
 for <poky@lists.yoctoproject.org>;
 Wed, 07 Sep 2022 04:05:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=B3d+JBHo;
 spf=pass (domain: gmail.com, ip: 209.85.128.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f51.google.com with SMTP id s23so8536240wmj.4
        for <poky@lists.yoctoproject.org>; Wed, 07 Sep 2022 04:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=HLdslObI2/Y7yRNp5iDWEluDr8C+44LY3HzNJTIMLH8=;
        b=B3d+JBHoY81WQsRC2Rim7BlMNwSDZr+yEMOHbc4z3ufgUgX9Qc3NYPoDpnPVWsg9XY
         g+UeDjiuV9ufbOoKdtnNx6jZaGIPJ7TL58MLdpH8Pt5CmdSSkcDxKTcPy5swt+MVff/2
         WG1L1yxV9OFr8ooCxIy1XsxOwMwrVnIw4H4/A5GJDP/POzSkLtWa7Me2LW9HuRLd6xDq
         zTj4V96VbS9lhkHTZLboii+lA+/31Zw4KmqXiTpwqLyYFHduIsURxCSGg3A4EazzT4E/
         d90Ptp3i1rh3Tb+L1xob9p5YWipwVxNlxESLYShp0Czap4k7IuyYvv/p1W+46+xQsqE0
         QqdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=HLdslObI2/Y7yRNp5iDWEluDr8C+44LY3HzNJTIMLH8=;
        b=PiNb0OTdbPOU9vfXzpc4S5wyOf/xQ4IefvTENOdD3qyApEzNtyAdt8pjdyhv17lQHS
         X1dofwqB3RjBUDRLKlhJKXfH8+SKCcP/iUR6RGefN8umny3Ps/y2m7UtzO2cXwPL1PL+
         fiYt8oVkSOvmKOCqmYXhwkDH5W4nrLlgf7RHxTMbs6USWwwJDtjI/c7vjTM1wEdRoZu1
         nUVuaBm98taCLHwxyIX5e3WtikXqCwP2ZqqGRzYd4NjeoHz37aM3ZweYpvfhihZOLOg/
         V3t0/ShtUBEINsc1sdFckW99GPlKfW/jZNVKcH49JpErWdoFIRsezf9uxqmKD3Z1UELn
         K/HQ==
X-Gm-Message-State: ACgBeo0VjyfeXZcG4I5fassm21wI18R9wL05JUSKJzPL0pRlowyGODsF
	GTvuP3yP7cXqYSagG81vOXL+j0eFDcQ=
X-Google-Smtp-Source: AA6agR4Xmd+AjQ4Z4sAVJ2XNZIa0bk1lUHRxoyb+FKNTlznLNC4P4p/8smUR5yBSQWYYmWEBLaD6Ag==
X-Received: by 2002:a1c:a383:0:b0:3a5:af21:1ef0 with SMTP id m125-20020a1ca383000000b003a5af211ef0mr1596174wme.123.1662548748024;
        Wed, 07 Sep 2022 04:05:48 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id a6-20020a056000050600b0021e519eba9bsm16807838wrf.42.2022.09.07.04.05.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 04:05:47 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH] local.conf.sample: correct the location of public hashserv
Date: Wed,  7 Sep 2022 13:05:39 +0200
Message-Id: <20220907110539.1190114-1-alex@linutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 meta-poky/conf/templates/default/local.conf.sample | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/templates/default/local.conf.sample b/meta-poky/conf/templates/default/local.conf.sample
index b96dc908f4..7be423ffed 100644
--- a/meta-poky/conf/templates/default/local.conf.sample
+++ b/meta-poky/conf/templates/default/local.conf.sample
@@ -234,7 +234,7 @@ BB_DISKMON_DIRS ??= "\
 # which will depend on your network.
 # Note: For this to work you also need hash-equivalence passthrough to the matching server
 #
-#BB_HASHSERVE_UPSTREAM = "typhoon.yocto.io:8687"
+#BB_HASHSERVE_UPSTREAM = "hashserv.yocto.io:8687"
 #SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
 
 #
-- 
2.30.2

