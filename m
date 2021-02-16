Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web08.12631.1613501222877334618
 for <poky@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 10:47:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iEnVBxqw;
 spf=pass (domain: gmail.com, ip: 209.85.219.48, mailfrom: vivien.didelot@gmail.com)
Received: by mail-qv1-f48.google.com with SMTP id p12so5123846qvv.5
        for <poky@lists.yoctoproject.org>; Tue, 16 Feb 2021 10:47:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fd1SKExT1YW+yd/apjECNZAzV/Mf2D7dFDFS9pX2j/g=;
        b=iEnVBxqwCa0mo77D6IkZ/2MtQeFrgcfFtTonkbAwN7pIj8d+X0LzELkB4IRJZWZxE9
         yUJ5GU5kw17pC6xCrdWZg52FDY89PC++2DjdEijf0o3HcfqkA7msrDtUoCwaFW4hsdxN
         +buXxCq2MBWMXHauNUac7NoU7eFoMJboks6qo9FCfPWfPl+t63DXoIVF0b8/msmoHjYB
         yxIUZrdxgX/5kfvzSmgjkwuD1rumP6cQTbaYpvETwm2fLKmVwjdTbVsA/ThsLURd/y92
         onIYNg0A6HvI/egvAQJP+6hktpH05gxmiPdanX5KzaCpVfEky/PmOue9kIwEngeS+kJA
         oGGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fd1SKExT1YW+yd/apjECNZAzV/Mf2D7dFDFS9pX2j/g=;
        b=ha5ZTP0N64uy7AJcXTHMSip6cSXOUfyFDvrGpydhgXcppwApNe2REnT3tlBs4Ainxu
         +Jrz3I4VO4sGZQkcruIZ3FytghWkA7Hz7m6bO0NqiyKQ8z7/qff8e9A2x51+iVd7E/Ms
         d/+/SazEiXDXRL1arl5oW4qpNOlEmRWR1ZCmH7AMTe+oGbcSZwnJsgO2fwQkP3kPGVD+
         WzDjo97k86JOEr9IgzUsM4DAAKMLT9UEgRIvWkSLr5PJGsMQZzvHHqD7jadqoR+Eeizn
         tsOKY7LU+Ux9xCHeAj3s0dqkpWcuKgb97NwOhAHphQ6FDG8NLIKnpAdPVYnOjKuzk5T4
         jRxQ==
X-Gm-Message-State: AOAM533AE2VngZCnOvs8rux00+D3z3C2oKjSyTdRa+kSYkfXY+IKBX0+
	5mKBzBo3M9yknsMQKnRtu/mPsrqWup0=
X-Google-Smtp-Source: ABdhPJylqgTN+q9eFG6P4r4rrbDnnDPBZ/mKaGgpPy2xMX0NBCoCj0EkrnzoDSdjsq/Y7ZhgDJhUeg==
X-Received: by 2002:a05:6214:21a5:: with SMTP id t5mr20788275qvc.20.1613501221837;
        Tue, 16 Feb 2021 10:47:01 -0800 (PST)
Return-Path: <vivien.didelot@gmail.com>
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca. [184.163.105.249])
        by smtp.gmail.com with ESMTPSA id e15sm13702128qtq.43.2021.02.16.10.47.01
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Feb 2021 10:47:01 -0800 (PST)
From: "Vivien Didelot" <vivien.didelot@gmail.com>
X-Google-Original-From: Vivien Didelot <vdidelot@pbsc.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH] local.conf.sample.extended: fix double 'of' typo
Date: Tue, 16 Feb 2021 13:47:00 -0500
Message-Id: <20210216184700.291821-1-vdidelot@pbsc.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove the redundant 'of' word in the INITRAMFS_IMAGE comment.

Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>
---
 meta-poky/conf/local.conf.sample.extended | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
index dc92a16f6c..5e1edef58e 100644
--- a/meta-poky/conf/local.conf.sample.extended
+++ b/meta-poky/conf/local.conf.sample.extended
@@ -328,7 +328,7 @@ DISTRO_FEATURES_remove = "x11"
 # The INITRAMFS_IMAGE image variable will cause an additional recipe to
 # be built as a dependency to the what ever rootfs recipe you might be
 # using such as core-image-sato.  The initramfs might be needed for
-# the initial boot of of the target system such as to load kernel
+# the initial boot of the target system such as to load kernel
 # modules prior to mounting the root file system.
 #
 # INITRAMFS_IMAGE_BUNDLE variable controls if the image recipe
-- 
2.30.1

