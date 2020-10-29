Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com [209.85.167.194])
 by mx.groups.io with SMTP id smtpd.web11.694.1603993181559980212
 for <poky@lists.yoctoproject.org>;
 Thu, 29 Oct 2020 10:39:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GFHIQj53;
 spf=pass (domain: gmail.com, ip: 209.85.167.194, mailfrom: aehs29@gmail.com)
Received: by mail-oi1-f194.google.com with SMTP id z23so3886025oic.1
        for <poky@lists.yoctoproject.org>; Thu, 29 Oct 2020 10:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lfwp3xCldYkpwEoqA1ja7Lv7DJx/wIZ4H6zb805aFU8=;
        b=GFHIQj53Y4kDm2JifcZzyNxrhN0MvoBfbmNMxv7eAgXLhjJ3q3nyBxT9MBIfzme53/
         3WzV0cdfRQjAIm8i0wkbfDi2hAGCMHxCptGVh7S9zo09C2Nib/x8mlqZGO7mV+SAYQdI
         HAMm+ODsUbeVkg29L86kNetax0rrUecpmHkwx2FOIiO6HH1hN4Zm9C8Ihryw/3mJl8KK
         8/f5Lt5kJShXXU19pHPChlhSYZBBP3UJsc46A7DtPIsgnz8xuMiHFrJcawvwoDJT72X1
         NVQrWHCWfaIXKwHWfrlzOp11RfeTRcA3BJ1J/1zA/i9TO4nPEc2GqOVXWaAQFyNIw7gX
         Hmfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lfwp3xCldYkpwEoqA1ja7Lv7DJx/wIZ4H6zb805aFU8=;
        b=V1TU8/Hnesf2iq0WkOWvGzORB02fhFeQ8q4kYZv3pSrlXC6h1YGS1MzrRt84RJT3EG
         PjanfIolAE4/iZu/f8J0RURS15PncEOAgAv+EWGnb6Mk2PgvFTHEAuM1lZO3sQDOYkjd
         fINZ3+/VT26LBDeriyMTJJ+WNHlmWV9GNRXCqpguVNJ42r0pDeA9/x2QoTfMZ++fGnCC
         JClae1JgS2CyKZp+7RqDUZDcvfp81u+hkQIT6ATt5inGnqEV2J4Q2V36h43QJJ5HgL5F
         oLnJxBmCBPl+liCR5+PcYHvUhuaST85h6L9Z9b+r+XlsyZ5sB9RPCzBbzGiBdVDbf6Yj
         ClEw==
X-Gm-Message-State: AOAM533z0ETSNtka5ERxsbttau+EFVRVO+2duSl5jFP507RoS1h3BH3J
	OiCqbaj3dZ58+XD5VygrFJq+W/TnJGIW/A==
X-Google-Smtp-Source: ABdhPJyjKwj0DZrhmvQ4A5OMkH3gyYvhTFtidRcSDUFvGM67xHlBJWFG+ZtWzbZxXJv58caIwG5IQg==
X-Received: by 2002:aca:5443:: with SMTP id i64mr526158oib.177.1603993180401;
        Thu, 29 Oct 2020 10:39:40 -0700 (PDT)
Return-Path: <aehs29@gmail.com>
Received: from alsamon-xub.lan (cpe-68-201-52-49.elp.res.rr.com. [68.201.52.49])
        by smtp.gmail.com with ESMTPSA id l44sm763373ooi.44.2020.10.29.10.39.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 10:39:39 -0700 (PDT)
From: "Alejandro Hernandez Samaniego" <alejandro@enedino.org>
X-Google-Original-From: Alejandro Enedino Hernandez Samaniego <alhe@linux.microsoft.com>
To: poky@lists.yoctoproject.org
Cc: Alejandro Enedino Hernandez Samaniego <alhe@linux.microsoft.com>
Subject: [PATCH] poky-tiny: Enable size optimization by default
Date: Thu, 29 Oct 2020 11:39:30 -0600
Message-Id: <20201029173930.784694-1-alhe@linux.microsoft.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Compiler size optimization reduces the size of the root
filesystem by 15%, since poky-tiny is meant to be used
on size constrained devices, enable it by default

Signed-off-by: Alejandro Enedino Hernandez Samaniego <alhe@linux.microsoft.com>
---
 meta-poky/conf/distro/poky-tiny.conf | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index 57826037f0..9a043b1ef5 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -32,6 +32,9 @@ require conf/distro/poky.conf
 DISTRO = "poky-tiny"
 DISTROOVERRIDES = "poky:poky-tiny"
 TCLIBC = "musl"
+
+FULL_OPTIMIZATION="-Os -pipe ${DEBUG_FLAGS}"
+
 # FIXME: consider adding a new "tiny" feature
 #DISTRO_FEATURES_append = " tiny"
 
-- 
2.25.1

