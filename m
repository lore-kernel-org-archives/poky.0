Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web11.13514.1613861995675978328
 for <poky@lists.yoctoproject.org>;
 Sat, 20 Feb 2021 14:59:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ntN71vNq;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: vivien.didelot@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id s12so3795139qvq.4
        for <poky@lists.yoctoproject.org>; Sat, 20 Feb 2021 14:59:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RMWlndmbQ5SPtbF1MW8uksD39p1gekiDG9ar3LJm0t4=;
        b=ntN71vNqXLhSAkN19WRcx5gX5+2O2bMlgIvcoATGbCsUYcf7K4x8xpz7/UxILhZLpt
         swXvWSvkNxm72rrtR5omzb8IlaTuGJ+eHO1M3z0UJbeBRB4DWmgLBMV5pnNjbaCz8Abr
         5+tYd09Hy1zop/GqUQKvQSYQY5ExEtuQrrT6gSzb2PUUtzUXGDdKfgDbHT4rpSofBm2z
         6G4O1IJjl3OT2lazGIynPzchRobDGyOWQDQ50pVZvAZGyWDESM1Eesz+Ig+hh+5FH4Q+
         /tZqG52R12akiGTRh3DNOl9d0cIwVCQway4MFD22TxH0ifbWShfhRsIhsZDmRtB6lkfe
         ClDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RMWlndmbQ5SPtbF1MW8uksD39p1gekiDG9ar3LJm0t4=;
        b=MQS3lG4wiNYH8nGm1EPlMeBClXr71nttIKi/LyQdLhvRJImgsw7GD3mTfh+rVGkP3g
         11YyKCEmmMfW8QQrAs4OBvS4c1X3zFT6CMqjzKh6T2BPiyu70dvfGQ61SkgiDxlxKw5v
         X7Ld0/a98LJJnD7IOEZmAEe/Ycaj4F0P4Uc0e9bI8L9LVhvQ/TjHOx41OQkeEVaMh1RT
         +3pPwVimTQyfA4VRqshfCIdAC5kHLBgnWdTgJL44XHNTBv+6g9zYSZNstr22aV0Udyvz
         tF1HSdfgFe+jKIQDaoAF1wMkhZSTHs92NwCSQPa7tOx/p2iy4jzPBGVC1AlZOaDBjIbM
         JA/A==
X-Gm-Message-State: AOAM532T3g6jvBBhdZzqRmO2MuWQPO/AOYcnlqUQIeGO1OtS0qUzq76n
	t3Gn6keBoF0UGXI9fB9FNLEFX2yyaXE=
X-Google-Smtp-Source: ABdhPJzNXnGwJEsyLqCK7aDgoDs5MR0kI2GUjhlAW7Sz2hqSZDi1hy1TBLJwjLVRM/wqkbhAfwLu9A==
X-Received: by 2002:ad4:4686:: with SMTP id bq6mr1479005qvb.40.1613861994660;
        Sat, 20 Feb 2021 14:59:54 -0800 (PST)
Return-Path: <vivien.didelot@gmail.com>
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca. [184.163.105.249])
        by smtp.gmail.com with ESMTPSA id d198sm9297091qke.69.2021.02.20.14.59.54
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Feb 2021 14:59:54 -0800 (PST)
From: "Vivien Didelot" <vivien.didelot@gmail.com>
To: poky@lists.yoctoproject.org
Subject: [openembedded-core][PATCH] systemd: fix importd requirements
Date: Sat, 20 Feb 2021 17:59:53 -0500
Message-Id: <20210220225953.3905490-1-vivien.didelot@gmail.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Vivien Didelot <vdidelot@pbsc.com>

The comment above the importd config states curl, which does not
exist in PACKAGECONFIG. Adding it results in the following error
(and then misleading compilation failures):

    WARNING: systemd-1_244.5-r0 do_configure: QA Issue: systemd: invalid PACKAGECONFIG: curl [invalid-packageconfig]

Support for curl is currently enabled through journal-upload:

    PACKAGECONFIG[journal-upload] = "-Dlibcurl=true,-Dlibcurl=false,curl"

While it might be more appropriate to deprecate "journal-upload"
in favor of a "curl" PACKAGECONFIG entry, simply fix the importd
comment for now by stating upload-journal instead of curl.

Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>
---
 meta/recipes-core/systemd/systemd_244.5.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-core/systemd/systemd_244.5.bb b/meta/recipes-core/systemd/systemd_244.5.bb
index 8c95648ca0..70700820d7 100644
--- a/meta/recipes-core/systemd/systemd_244.5.bb
+++ b/meta/recipes-core/systemd/systemd_244.5.bb
@@ -131,7 +131,7 @@ PACKAGECONFIG[hibernate] = "-Dhibernate=true,-Dhibernate=false"
 PACKAGECONFIG[hostnamed] = "-Dhostnamed=true,-Dhostnamed=false"
 PACKAGECONFIG[idn] = "-Didn=true,-Didn=false"
 PACKAGECONFIG[ima] = "-Dima=true,-Dima=false"
-# importd requires curl/xz/zlib/bzip2/gcrypt
+# importd requires journal-upload/xz/zlib/bzip2/gcrypt
 PACKAGECONFIG[importd] = "-Dimportd=true,-Dimportd=false"
 # Update NAT firewall rules
 PACKAGECONFIG[iptc] = "-Dlibiptc=true,-Dlibiptc=false,iptables"
-- 
2.30.1

