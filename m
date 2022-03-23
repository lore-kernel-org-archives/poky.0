Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
 by mx.groups.io with SMTP id smtpd.web12.4059.1648076631508545062
 for <Poky@lists.yoctoproject.org>;
 Wed, 23 Mar 2022 16:03:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@nikolamotor-com.20210112.gappssmtp.com header.s=20210112 header.b=TxM5HtSJ;
 spf=pass (domain: nikolamotor.com, ip: 209.85.217.44, mailfrom: russ.dill@nikolamotor.com)
Received: by mail-vs1-f44.google.com with SMTP id a127so3119870vsa.3
        for <Poky@lists.yoctoproject.org>; Wed, 23 Mar 2022 16:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nikolamotor-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=0Vz4MuCjV5aphRJATGmoxDs0LfVrjQUrmvTio0R/PSA=;
        b=TxM5HtSJ117rrU3H+t/HliBCX8qjjWbL4LRkxqciuaVZfZVJP5XykL5GlPTSFLReaJ
         rj9HZ1wrwYkMUhNEwHfAnqgT2U24G2c+Mj5N5y+lIbQErA+826v+5HVQn5iII+fL/pJK
         17Lm95KOFE26rnkwF/v8yYWuVw95uRxrTfTakcfyyNkJuaN5lIIPZ/+1oMoB242Ky5bG
         N4mQ76yRhGnKUYqXtLf8zFlt51XXJCcu+flFIvMSr0oR1C5FoRdREr8FiEtcNsNrZptX
         0qFbQL9sVK54fRvIOpUFje4JFz78nZxZMkRV9jO2h2soOl1Mcl8AIhwJZOu8Ii+HEnRL
         aopw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=0Vz4MuCjV5aphRJATGmoxDs0LfVrjQUrmvTio0R/PSA=;
        b=H0hmyj7S9hbMD+128L0pIedoSP3VQfNNdOoYM3oUKT3ghafxRSpF9llgrYMaErarFw
         g9W93DYDOJ5ebBgF82NQnAr0f8gmGIbwsR4jD8LfGxqslJkTEpqdZgqaYuGGwcz48Y2v
         9ClZqkD7J93BAjaw+b/tiErRcJE+xZEi2AmeOZnEgulwNNQxfvjH6CgBk0E2VwvmnP1k
         x3gX6Tq97LlBiyL4A0r3xFkqiVpmyoZRv1ZEEk7M6yJjtv4MF6i6bw0UTJR1aVpFmJls
         OJUyiI8kTry//vpfN2/V3/yicrGWFGI6e+HoLcvbinbRupI2FVY21XprXC70bFih9QMB
         UUNw==
X-Gm-Message-State: AOAM530hY13Y3dP6DFEl6zdBR5lBXi4dfZ4JukGT3RuagxJHyaNuRpvU
	igPMezajmW3tXjkpEPKBV/Cajroe/l4c7e+bsuyb6urg30f8dWaTSoZhN4+EbNeh58wdFd/L1hr
	x/RzBzGJ0ByY5JtbwoQTt5DPq9RDWY34912e+7L4apUMZoD/C/7r9bw/L1fTijiLzDMshLJYgCi
	0M7v39cjFQcdYTgXy75BCbxvYD1tzyKmLMS+1oe4N8mBQ8foBR0Bq8zMbEcg==
X-Google-Smtp-Source: ABdhPJzd4O6s3s877k3w920B/rWs951FMMEwsbYsWO+dFIvLU5akX83HygNICgqMubqe/Yy78xI8Dd+V2wk8oEYL8gA=
X-Received: by 2002:a67:ee93:0:b0:320:7e6d:e088 with SMTP id
 n19-20020a67ee93000000b003207e6de088mr1136717vsp.1.1648076629979; Wed, 23 Mar
 2022 16:03:49 -0700 (PDT)
MIME-Version: 1.0
From: russ.dill@nikolamotor.com
Date: Wed, 23 Mar 2022 16:03:39 -0700
Message-ID: <CA+05MtrFZG5QCZob=6CTzagTFu1QaB5MBSokghNEqNU1AUCV5g@mail.gmail.com>
Subject: [PATCH] poky/package: Prevent perform_packagecopy from removing /sysroot-only
To: Poky@lists.yoctoproject.org
Cc: Diego Sueiro <diego.sueiro@arm.com>
X-CLOUD-SEC-AV-Info: nikolamotor2,google_mail,monitor
X-CLOUD-SEC-AV-Sent: true
X-Gm-Spam: 0
X-Gm-Phishy: 0
Content-Type: text/plain; charset="UTF-8"

The files in /sysroot-only are intended to make it into the
recipes sysroot output, but not into the package. However, if
do_package is run before do_populate_sysroot, the files are
removed.

Use a smaller hammer to avoid copying the files into the package so
they are still around when do_populate_sysroot runs.

Signed-off-by: Russ Dill <russ.dill@nikolamotor.com>
---
 meta/classes/package.bbclass | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index 985dfacd09..c0e9b4dbca 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -428,7 +428,6 @@ def splitstaticdebuginfo(file, dvar,
debugstaticdir, debugstaticlibdir, debugsta
     # return a mapping of files:debugsources

     import stat
-    import shutil

     src = file[len(dvar):]
     dest = debugstaticlibdir + os.path.dirname(src) + debugstaticdir
+ "/" + os.path.basename(src) + debugstaticappend
@@ -811,15 +810,10 @@ python perform_packagecopy () {
     dest = d.getVar('D')
     dvar = d.getVar('PKGD')

-    # Remove ${D}/sysroot-only if present
-    sysroot_only = os.path.join(dest, 'sysroot-only')
-    if cpath.exists(sysroot_only) and cpath.isdir(sysroot_only):
-        shutil.rmtree(sysroot_only)
-
     # Start by package population by taking a copy of the installed
     # files to operate on
     # Preserve sparse files and hard links
-    cmd = 'tar -cf - -C %s -p -S . | tar -xf - -C %s' % (dest, dvar)
+    cmd = 'tar --exclude=./sysroot-only -cf - -C %s -p -S . | tar -xf
- -C %s' % (dest, dvar)
     subprocess.check_output(cmd, shell=True, stderr=subprocess.STDOUT)

     # replace RPATHs for the nativesdk binaries, to make them relocatable
--
2.25.1
