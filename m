Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web10.97992.1679653601792331802
 for <poky@lists.yoctoproject.org>;
 Fri, 24 Mar 2023 03:26:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=akg+8U/l;
 spf=pass (domain: gmail.com, ip: 209.85.128.45, mailfrom: nicomueller1991@gmail.com)
Received: by mail-wm1-f45.google.com with SMTP id n19so849718wms.0
        for <poky@lists.yoctoproject.org>; Fri, 24 Mar 2023 03:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679653600;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SkjaGwUWeNz+Soe4rJlvviSsCZt65pjd7HP92V0Dur8=;
        b=akg+8U/ly8899mk7dO9ZQpWrDBu9bl4lCiQi2PM88GomQ7U+7zpyTaswN2HThY8+2g
         UnCZQNM14lrj/QGNqUZOKDfI0ADUdHv5koiAqTFcGZM8u/luQgfd3peZJue14niiQTan
         Fx1OIRjGDNb4r+2W9RI5lXEHcoqk5Cg43fqjkldflY2pnpuI2fC3C5NiVWrdcrlvIdGY
         +8sVoqAwS5ooJxW07pN6V1O79/Iue6kbg2+YHpr7GjILpTFdMHNUpIjp7y3fVLujr7b6
         1wKD+2laPXiZ5fG8IFdJtgFpOsNMzzFp+mGdIvp7t3GV4c625nJQmtnqqjPeMWAqnr2G
         CbDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679653600;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SkjaGwUWeNz+Soe4rJlvviSsCZt65pjd7HP92V0Dur8=;
        b=NMNZngqVlJWaqDsy+pu0GEcvVOLHssVHJcuJbGXaAxnlX5rgw6CEQLR5lg5ldb1MHg
         wbq3iGN6HLpTBFzAb6Wqb0SJLi9q7bA8s3X+wjcltQE5ibYo3dOpCMgdKYC6M5IwWGVh
         gKMmI4oI1xZmyzK6kAs0Qi9Lxbujlt4rKyu372Yxf2ArNy2mTEdgQfToBHETRYRHgvnF
         IEaKUZrjc4UltPtI6TlA1UM6hcRL2BZh4zifA80PG/jOJHtxP5A6s4IyUgNh3jGoupgz
         oNSWDXXdj4q1ZRX5A1lJHxFqVbPUFLbnM3098sNT3ltrLywvBPmN5dLji7VyklKUnM7D
         U/2w==
X-Gm-Message-State: AO0yUKVgaVgoZuITfDF3HCSN/RcpI7/mhhOdd0pHD8XYBWCTwrbMQIAb
	T1ddTAFT+S1MOdBRUOVG+irLd+WDNLCLOA==
X-Google-Smtp-Source: AK7set9LvQsYxwOZkYZ8HvCzAB7A36BjLPiL39Qa7Q+JOR50QaEqBJffPOIRWN7EEkOndeUZS9+Xdg==
X-Received: by 2002:a05:600c:2286:b0:3ea:ecc2:daab with SMTP id 6-20020a05600c228600b003eaecc2daabmr2493466wmf.3.1679653599991;
        Fri, 24 Mar 2023 03:26:39 -0700 (PDT)
Return-Path: <nicomueller1991@gmail.com>
Received: from niecore-standardpcq35ich92009.fritz.box (p200300ddff0eee00cdfb4df80ec527f9.dip0.t-ipconnect.de. [2003:dd:ff0e:ee00:cdfb:4df8:ec5:27f9])
        by smtp.gmail.com with ESMTPSA id 12-20020a05600c22cc00b003ee697ecefdsm4402080wmg.45.2023.03.24.03.26.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Mar 2023 03:26:39 -0700 (PDT)
From: =?UTF-8?B?Ik5pY28gTcO8bGxlcg==?= <nicomueller1991@gmail.com>
X-Google-Original-From: =?UTF-8?q?Nico=20M=C3=BCller?= <nicomueller1991@googlemail.com>
To: poky@lists.yoctoproject.org
Cc: =?UTF-8?q?Nico=20M=C3=BCller?= <nico.mueller@de.bosch.com>
Subject: [PATCH 2/2] bitbake: fetch2/gitsm: Add clean function
Date: Fri, 24 Mar 2023 11:23:23 +0100
Message-Id: <fd0dae14d7c0355beb4564f5824d5076733a7360.1679649125.git.nicomueller1991@googlemail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1679649125.git.nicomueller1991@googlemail.com>
References: <cover.1679649125.git.nicomueller1991@googlemail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Nico Müller <nico.mueller@de.bosch.com>

The gitsm module previously did not clean any of the
tarballs created by the submodule since only the main
repo has been cleaned. With this addition firstly
all submodules are cleaned fully and after that
the main repository.

Signed-off-by: Nico Müller <nico.mueller@de.bosch.com>
---
 bitbake/lib/bb/fetch2/gitsm.py | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/bitbake/lib/bb/fetch2/gitsm.py b/bitbake/lib/bb/fetch2/gitsm.py
index e7083001dae..5856e97f16d 100644
--- a/bitbake/lib/bb/fetch2/gitsm.py
+++ b/bitbake/lib/bb/fetch2/gitsm.py
@@ -182,6 +182,25 @@ class GitSM(Git):
         else:
             self.process_submodules(ud, ud.clonedir, download_submodule, d)
 
+    def clean(self, ud, d):
+        def clean_submodule(ud, url, module, modpath, workdir, d):
+            url += ";bareclone=1;nobranch=1"
+            try:
+                newclean = Fetch([url], d, cache=False)
+                newclean.clean()
+            except Exception as e:
+                logger.error('gitsm: submodule clean failed: %s %s' % (type(e).__name__, str(e)))
+        
+        if ud.shallow and os.path.exists(ud.fullshallow):
+            tmpdir = tempfile.mkdtemp(dir=d.getVar("DL_DIR"))
+            runfetchcmd("tar -xzf %s" % ud.fullshallow, d, workdir=tmpdir)
+            self.process_submodules(ud, tmpdir, clean_submodule, d)
+            shutil.rmtree(tmpdir)
+        else:
+            self.process_submodules(ud, ud.clonedir, clean_submodule, d)        
+
+        Git.clean(self, ud, d)
+
     def unpack(self, ud, destdir, d):
         def unpack_submodules(ud, url, module, modpath, workdir, d):
             url += ";bareclone=1;nobranch=1"
-- 
2.39.0

