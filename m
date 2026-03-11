Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D16F1062896
	for <webhook@archiver.kernel.org>; Wed, 11 Mar 2026 12:54:34 +0000 (UTC)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.20714.1773233666296375226
 for <poky@lists.yoctoproject.org>;
 Wed, 11 Mar 2026 05:54:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=RDsXuZXJ;
 spf=pass (domain: linaro.org, ip: 209.85.210.170, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-827270d50d4so13771136b3a.3
        for <poky@lists.yoctoproject.org>; Wed, 11 Mar 2026 05:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773233666; x=1773838466; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cbyIVmYwQ4NWWT++/gKgXgTXSKIz1uyiM1sKeYaiJ1E=;
        b=RDsXuZXJed+cF/BjK3sX/OrVgRyX0LeX3devz9mF5/vsk0orxK1HE5AjR7nXOYTbKz
         CItlSDip9hJ7ilKxgHeqR3GzyWSuIWPnWlOQOK5wrjobw+s4Rr00bWW6yQt0Zvt2p6V0
         QlfoFx6bBHnlzeKvx7wBKKhzeAQeL1W0PTqmrs1B4R/C2lMwL+wsdvPcckbDc96Qc7kE
         Tr9TehXmJc8K2SS26eDSouy6fYWq3Nv7YVWFvCssGQCisGKAQORXTmTCrs5JDDcKl+Uj
         L959oytbqN8m/qUcQDCLwWCCd4ngCYRkRpSPH4ACnftWkBTa9qY8+wpDBycHlwp7no2g
         GJzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773233666; x=1773838466;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cbyIVmYwQ4NWWT++/gKgXgTXSKIz1uyiM1sKeYaiJ1E=;
        b=mU7xYUwjtdavSjvMGwMT+MdkoExv+vBNF8Lz9K66uuP7gsUnVGJIg4ozUlza1ton9C
         zjFh5eknDlfNxVRgdQ+Ore9wU39qV9iGPiMe3NBfsrjXiFjqM/B20bm3EtlHbkVlZHSM
         I25thHR7YQ4C94hhq1wY5BNkdA8DBWGeNnhUa/UQgiPvCsx40U1Ro5KlbNBZSm4Xt6ZY
         zQyhilwbZ7nmotDgLBfYTep0n4XcMtNrtsdNDG/Qm0SZ8iCoQ+yO0z9IFsbDritVcRk7
         bjIMOFImyW/IEMjiOeCPoa2VUl+p3YMjgj8qKEuylp92RQZpkvsDmiVIsfhn9KsQhoeF
         A/aA==
X-Gm-Message-State: AOJu0YxtaphkmVhsxIQ+wA0ijnhC56F6s7OqOgvop+c5nXGJhlxWbHsf
	9rMX+M6am4kwzWXqXt/vxH4fOKLZHpeLhwjA+PuxJ37YEwqxsao5VAsRaxeVTI2uW3t0nAVa4zG
	CMRLsT3k=
X-Gm-Gg: ATEYQzxSHV4m2e+vmakXWcIfbqjje1/U/0ydscYFg4nYkTdbz1ubOFOwZ3gSaWRR2q2
	ozpN8g+ddt7/AQogGjSYo4AN4/JkxqIZoyOnTfqYk+YQlXczmv9hxaho61kCMr3O3Z34tRL4cHT
	08RzWQ7WxIvHdP2d5+0hhkOjDc/kPNfo4LsrMbPDdfKyy9EpoCKQZ2vqCd+JeGfJtDf5MbIRgMm
	zEFdV9V2AwvQyeuICgcxhODtHMfq3tq4PM/X/AgKFuBphhbaSOIV+k52R6GGuKwRzuGnx+/dHY8
	hrziO1qKTMWNSmiUC68wwSG4KPLpnjzE1sZ3ZK4hMLOi/o5KHwai2kKp3N8czfLL91t2IBr4bTF
	Jk0U3/R8z0fng40L/ZI+/CTyZsKY4NfWhm/sPEeHMg2qd9T+AtIGJ4EYkb8AIh+5qygqK4RXa2m
	QFyofqoSH8uNwNrwYruCR8+cepVcjvLy+m4ImqWiPMnixKcaLRcdZeiSgCj3xZbJCWkWCuf1zfz
	xigXpxHadM=
X-Received: by 2002:a05:6a00:340d:b0:829:8083:474b with SMTP id d2e1a72fcca58-829f6ee825emr2302449b3a.20.1773233665427;
        Wed, 11 Mar 2026 05:54:25 -0700 (PDT)
Received: from nuoska.taservs.net (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829f6dc0df1sm2629727b3a.6.2026.03.11.05.54.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 05:54:25 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH v2] genericarm64.conf: fix qemu testing with testimage.bbclass
Date: Wed, 11 Mar 2026 14:54:06 +0200
Message-ID: <20260311125406.259842-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 11 Mar 2026 12:54:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13859

genericarm64 machine has supported qemu for a long time but
the default build config failed with testimage.bbclass to boot
and run oeqa runtime tests.

TESTIMAGEDEPENDS needs qemu utilities so that they are correctly
installed to image sysroot. For qemu machines these are set in
testimage.bbclass but remain unset for non-qemu machines like
genericarm64.

TEST_RUNQEMUPARAMS needs snapshot since default genericarm64 image
is a compressed wic.zst and nographic to run qemu without connected
display which is better on headless build machines.

With these set, default genericarm64 core-image-sato boots correctly
with testimage.bbclass and all oeqa runtime tests pass on an x86_64
build machine:

$ bitbake core-image-sato && bitbake -c testimage core-image-sato
...
SUMMARY:
core-image-sato () - Ran 75 tests in 229.248s
core-image-sato - OK - All required tests passed (successes=24,
skipped=51, failures=0, errors=0)
NOTE: Tasks Summary: Attempted 1558 tasks of which 1556 didn't need to
be rerun and all succeeded.

To boot qemu manually (add "slirp" if tap networking not setup):

$ runqemu nographic snapshot core-image-sato

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 4 ++++
 1 file changed, 4 insertions(+)

v2: dropper slirp from TEST_RUNQEMUPARAMS

v1: https://lists.yoctoproject.org/g/poky/message/13854

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
index 2b1ce4bdd02b..d6839d16a515 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -73,5 +73,9 @@ QB_TCPSERIAL_OPT ?= "-device virtio-serial-pci -chardev socket,id=virtcon,port=@
 # Virtio networking
 QB_TAP_OPT ?= "-netdev tap,id=net0,ifname=@TAP@,script=no,downscript=no"
 
+# default to nographic to work on headless build machines using testimage.bbclass, snapshot for wic.zst image type
+TEST_RUNQEMUPARAMS ?= "nographic snapshot"
+# basic qemu testimage.bbclass support
+TESTIMAGEDEPENDS:append = " qemu-native:do_populate_sysroot qemu-helper-native:do_populate_sysroot qemu-helper-native:do_addto_recipe_sysroot"
 # If we're running testimage then we're in a qemu, so ensure u-boot is build
 TESTIMAGEDEPENDS:append = " u-boot:do_deploy"
-- 
2.34.1


