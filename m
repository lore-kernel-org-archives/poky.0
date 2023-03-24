Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web10.97991.1679653597013078576
 for <poky@lists.yoctoproject.org>;
 Fri, 24 Mar 2023 03:26:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Koj7Jq+C;
 spf=pass (domain: gmail.com, ip: 209.85.128.54, mailfrom: nicomueller1991@gmail.com)
Received: by mail-wm1-f54.google.com with SMTP id l15-20020a05600c4f0f00b003ed58a9a15eso656768wmq.5
        for <poky@lists.yoctoproject.org>; Fri, 24 Mar 2023 03:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679653595;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mTuabpmegzEiS6xCvue6PROXQ6Kgd2h9XOpOGH69Ueg=;
        b=Koj7Jq+CnTDqw0N7Lv82bqcHvcWDoCP0EZkcuuNuKTvXsQDIxu2ENdtbo3t5hUjgGR
         74bUosV8/vXRijiyb1kbFKmIpGcth9qBkvMtAZa0Omnj5VeKcePy7XPRMMY+oV/y8eNd
         2MEaKzXoDwZ088Vr0S1C5qy1FdaBKXLy57Hmgh6BcyxcSY90CJKfpvTf/9sPLMp91H9P
         GQv4Ckdnp+HT45mBlATD0eTHdsuhuE0Uy6vdPxIpHiOw/Sh1V6vJbAiABxMW0TVVP5dx
         80NAUMTWJc18r+nLP6c/Djs4TtXAQVE8q6Jbcqd+/6h5oEXO3NJ/8YUQcZ1tWGigG8qV
         QbbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679653595;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mTuabpmegzEiS6xCvue6PROXQ6Kgd2h9XOpOGH69Ueg=;
        b=30axjrAFP7Vy4Hfv51B/DTmcAVIs+6q3PQrYOPueGHqXk1M7E/p73JZL5mm6xmuRw1
         aWFTVu8GA/Gd3HE3cCeQFAmzKI+wDiy45NMfDrI+9SVPasvQpW+S79XrZPSNjOWfF2Fg
         ryZvO7bOLf+pMFkMg65FvIDZtX+AmgEPfwfLB7mTuLhfJmQ0vbhcl0amdwY2G6xcz7vx
         a9JuJYjhSbDi6UN/52AtpC4212xeOuZu2ANBH5TjlslheELKExVPkVf1gfoWz4oIagn0
         J5MXuqoYaWo76ZwUDg8SMYmInnqG23FfiH/unLhwPzWyQr+/yqhc5dZKv/iBBs61b+Nf
         qHgg==
X-Gm-Message-State: AO0yUKXO6wpqtIWb+oOYehNW9BJD/GGa0ja62F3PTPdRR0CHefbJI43z
	bwHeL79oRDXVFNg97jC8NTIloEQ8kpvs+Q==
X-Google-Smtp-Source: AK7set+JvT5ID4bev5ESXOufPZvv003QWZw3BHKp3Nr2zuApqKVCbc9d0E/w/k+ptZnGxMtkFnUmbg==
X-Received: by 2002:a05:600c:2241:b0:3ed:290b:dc68 with SMTP id a1-20020a05600c224100b003ed290bdc68mr1973287wmm.12.1679653595331;
        Fri, 24 Mar 2023 03:26:35 -0700 (PDT)
Return-Path: <nicomueller1991@gmail.com>
Received: from niecore-standardpcq35ich92009.fritz.box (p200300ddff0eee00cdfb4df80ec527f9.dip0.t-ipconnect.de. [2003:dd:ff0e:ee00:cdfb:4df8:ec5:27f9])
        by smtp.gmail.com with ESMTPSA id 12-20020a05600c22cc00b003ee697ecefdsm4402080wmg.45.2023.03.24.03.26.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 03:26:35 -0700 (PDT)
From: =?UTF-8?B?Ik5pY28gTcO8bGxlcg==?= <nicomueller1991@gmail.com>
X-Google-Original-From: =?UTF-8?q?Nico=20M=C3=BCller?= <nicomueller1991@googlemail.com>
To: poky@lists.yoctoproject.org
Cc: =?UTF-8?q?Nico=20M=C3=BCller?= <nico.mueller@de.bosch.com>
Subject: [PATCH 1/2] bitbake: fetch2/git: Clean all mirrortarballs
Date: Fri, 24 Mar 2023 11:23:22 +0100
Message-Id: <2804127811569485be280d7c9685089cffcdc619.1679649125.git.nicomueller1991@googlemail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1679649125.git.nicomueller1991@googlemail.com>
References: <cover.1679649125.git.nicomueller1991@googlemail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Nico Müller <nico.mueller@de.bosch.com>

When bitbake is started with BB_GERNERATE_SHALLOW_TARBALLS,
this tarballs are not deleted during the clean step.
With this addition all tarballs are removed.

Signed-off-by: Nico Müller <nico.mueller@de.bosch.com>
---
 bitbake/lib/bb/fetch2/git.py | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index cad1ae8207b..9446ab01af8 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -591,8 +591,12 @@ class Git(FetchMethod):
 
     def clean(self, ud, d):
         """ clean the git directory """
+        to_remove = [ud.localpath]
+        for mirrortarball in ud.mirrortarballs:
+            fullmirrortarball = os.path.join(d.getVar("DL_DIR"), mirrortarball)
+            to_remove.append(fullmirrortarball)
+            to_remove.append(fullmirrortarball + ".done")
 
-        to_remove = [ud.localpath, ud.fullmirror, ud.fullmirror + ".done"]
         # The localpath is a symlink to clonedir when it is cloned from a
         # mirror, so remove both of them.
         if os.path.islink(ud.localpath):
-- 
2.39.0

