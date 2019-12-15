Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
 by mx.groups.io with SMTP id smtpd.web10.2806.1576400894053238777
 for <poky@lists.yoctoproject.org>;
 Sun, 15 Dec 2019 01:08:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=D/DNMz5s;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.67, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f67.google.com with SMTP id u2so3282828wmc.3
        for <poky@lists.yoctoproject.org>; Sun, 15 Dec 2019 01:08:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X/tkxBm/k/JrpZmpoEcV24tYtLWDh0M4IhVIQOyoBH4=;
        b=D/DNMz5s1Nrdb48PO3aya7++ktoUFtrq13yU3Uw+uTVlPHXXqSBFV/pQno1PbCN1uc
         +w3yDkvAbP3pL++ERyPxgYolduFIZTjoIZXEZgrfjX5AUI6NPEwh2SeDwHRNE6OyLsMi
         SaOk9dtxNwsizLdVWfMerNCmCkRRde8PaMqZ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X/tkxBm/k/JrpZmpoEcV24tYtLWDh0M4IhVIQOyoBH4=;
        b=BymGZZrzXZgFxL5pVE7CgjYkeZJGAwQK+RM3e2ctJWkS/HzRJqwUU4f7cfkAEEPxqV
         JGujhN9ZLX4giLwWyjIp0kegDxtbCVXCW7leI2bCExA82jr2HjxdxrhSVvMQwJ2f5FoB
         PF5z1VrLgGWiHfSbe6xd+NNkT6+8q6mH/G1QHxe9TCMaKkOiXsTA7VrNU9qmtBOF9whD
         sw2y3NgFIKhK6t2kUM/hCWkokmVI7heDtfp5eoYB1ZzfQxvI21sAwMfFdQ3ZhCAdrZyw
         38NLFtf7qo8mS3AZoo6bQOTgjsUNWE9QbUwLyFoWFzkDteWzpQZooOoWHp/MZlpAypok
         YyOA==
X-Gm-Message-State: APjAAAXTV8awfh6Hg88PcR6uq2fzNQQXJVPj7palOJeZEMuUtgd0vYXF
	CBnlrRGMsXoeVrfd2coeo2qjnctxwd4=
X-Google-Smtp-Source: APXvYqxbaf7GEQxaula4vCdlYRCpBGRG2gBiOS66sGsnpUGz96bGXLBWf0Piofria+SfA2Fox1HDpA==
X-Received: by 2002:a7b:cf39:: with SMTP id m25mr24573160wmg.146.1576400892066;
        Sun, 15 Dec 2019 01:08:12 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id n16sm17060153wro.88.2019.12.15.01.08.11
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Dec 2019 01:08:11 -0800 (PST)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] oeqa/systemd_boot: Ensure wic-tools are available
Date: Sun, 15 Dec 2019 09:08:10 +0000
Message-Id: <20191215090810.25241-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

If mtools isn't present on the underlying system this test would fail.
Ensure wic-tools is available in a similar way to other wic selftests
in OE-Core.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
index b3db226d7e2..57599e19aad 100644
--- a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
+++ b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
@@ -30,7 +30,7 @@ class Systemdboot(OESelftestTestCase):
         runCmd('rm -f %s' % systemdbootfile)
 
         # Build a genericx86-64/efi systemdboot image
-        bitbake('mtools-native core-image-minimal')
+        bitbake('mtools-native core-image-minimal wic-tools')
 
         found = os.path.isfile(systemdbootfile)
         self.assertTrue(found, 'Systemd-Boot file %s not found' % systemdbootfile)
@@ -57,8 +57,10 @@ class Systemdboot(OESelftestTestCase):
         if os.path.isfile(imagebootfile):
             runCmd('rm -f %s' % imagebootfile)
 
-        runCmd('wic cp %s:1/EFI/BOOT/bootx64.efi %s' % (systemdbootimage,
-                                                           imagebootfile))
+        sysroot = get_bb_var('RECIPE_SYSROOT_NATIVE', 'wic-tools')
+
+        runCmd('wic cp %s:1/EFI/BOOT/bootx64.efi %s -n %s' % (systemdbootimage,
+                                                           imagebootfile, sysroot))
 
         found = os.path.isfile(imagebootfile)
         self.assertTrue(found, 'bootx64.efi file %s was not copied from image'
-- 
2.20.1

