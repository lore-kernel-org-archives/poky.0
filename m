Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EFE1106286D
	for <webhook@archiver.kernel.org>; Wed, 11 Mar 2026 11:36:53 +0000 (UTC)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.18908.1773229004511043541
 for <poky@lists.yoctoproject.org>;
 Wed, 11 Mar 2026 04:36:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=q/nYGO5B;
 spf=pass (domain: linaro.org, ip: 209.85.215.172, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-c73ba417c6eso1239703a12.3
        for <poky@lists.yoctoproject.org>; Wed, 11 Mar 2026 04:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773229004; x=1773833804; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PrWUdw7Vso2oZEKecyEcVis7uPV1Jzr1Iomq1E5tPjc=;
        b=q/nYGO5BcuoV4CccZ9Z1UDdIR3nWi610IoB0sirV53yL7XiZj6AH40O6u5JfJmjQJh
         i6oUMZBuQn/9h8D+23ak0AzPzwLW5yv63uHDVLYruJ7Aybxk8MArjv//vI5hJbB74F5R
         hVoru5i3X6vWkvkdUEAL0ns6h4oOrkojoslYiI0jQDVLFvRMbALn1wYWcXUrQ0j72mMs
         NTCX88KLHleYHDlssa/JE7pW7P50dVbWYenpDUjwlGHja/IA8sD+63SlCR0gQiITil/V
         /hpy/pkCFomAU+mutjByKRUw1waDpNAX3Iij+ZQixEfU17Yqa78hixEvKakM8wWRJmJd
         M6fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773229004; x=1773833804;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PrWUdw7Vso2oZEKecyEcVis7uPV1Jzr1Iomq1E5tPjc=;
        b=C9RUSq58apsOEIbIlwuX/Ji0G4ESVGc0QvGFGQobjd3LovHYvTuDjRFG7gWc/n9De6
         sgGP8XxLQsQtxCNQFUZiw7QkiwETyIpHrxavuFdXXISuMKX1BRalVxYFG8iDQzO27nPs
         fxg/VC20WgWl8eF2tHA86Ad0e68ZGyamEK+3W6wy2LqDi2UbYQYn2vPLHoDO21zcAFLK
         3zUQYaN3MgjV1ZtO4iZ67imQC+xXkwrj+B/laAKtCk5xCiKSHjI0ZA30EBJagXtcMOfx
         cw9aeZSN3hxM1uX8NB4ub+c57cTKh5ia+lh2UHiS9zRrzWLeXCvqQwCEVtiIiRXep3yz
         X6yw==
X-Gm-Message-State: AOJu0YwJbp/WZnV15X0hyHhEMRsb4rR6CPfZFZfGouS/2BmHL8EgtA1t
	DU8Lnjx55W70Puw73Hb1QF4K7/zFQFFO9xWuGQd1p01vEulwLEmvWkt+y8HLEQhRD8erxs+AUXJ
	3eaiH+/o=
X-Gm-Gg: ATEYQzyDxW46Bh+P90b8vUibx5H0rXD5joLP9pmH7Ni86yiNEXOZMh2X4aWrnbtZDAy
	8Zmh9hll86yaC9GxYVHcZFfoFYHRYe1kt0fwN3Jhb90yOXdBL1qlpMY2mKPTRUWCEntr+2q3C7y
	+h3o6qTdM2LpOoegEpO3p+H7+1toAqcgKnPg1DQoqUx9Our4vuNt6UoQnEGmpL7osCndAJxaToG
	OaDyjit4c4cLAIn8//OkKMhNfMdcK9UTPGFYWs3gJFSphLwZjSfsewtRHJEDBlyH83OTVcrzJDr
	vVeqHJbkakbn41aRF2vRJOR9wECIBDQoH21XGQMKW+lrM/bDcJKwrGWMfnsrwT6wXuHWSWBOUFn
	fQKsxfsztXxuvzd7KX8XWmcrX5rEsC/qaCbdwbklv/0wV0626GDRiITtgUFi5E6pDNMnyFlIiVG
	BDFCZ5FaR1JQ2iyqvQnFL4JDCCPkfYeuavAAEiob+X4UNOqPL4ZaPomAN/aHM1Hl+2e7R0iFYs
X-Received: by 2002:a05:6a20:2447:b0:398:8791:de3c with SMTP id adf61e73a8af0-398c615d62bmr2100959637.59.1773229003630;
        Wed, 11 Mar 2026 04:36:43 -0700 (PDT)
Received: from nuoska.taservs.net (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c73cdf27e3dsm1894397a12.14.2026.03.11.04.36.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 04:36:43 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH] genericarm64.conf: fix qemu testing with testimage.bbclass
Date: Wed, 11 Mar 2026 13:36:16 +0200
Message-ID: <20260311113616.249506-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 11 Mar 2026 11:36:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13854

genericarm64 machine has supported qemu for a long time but
the default build config failed with testimage.bbclass to boot
and run oeqa runtime tests.

TESTIMAGEDEPENDS needs qemu utilities so that they are correctly
installed to image sysroot. For qemu machines these are set in
testimage.bbclass but remain unset for non-qemu machines like
genericarm64.

TEST_RUNQEMUPARAMS needs snapshot since default genericarm64 image
is a compressed wic.zst, nographic to run qemu without connected
display which is better on headless build machines, and slirp which
also works on much broader set of build machines than the default
tap networking.

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

To boot qemu manually:

$ runqemu slirp nographic snapshot core-image-sato

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
index 2b1ce4bdd02b..e3bc0064e96b 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -73,5 +73,9 @@ QB_TCPSERIAL_OPT ?= "-device virtio-serial-pci -chardev socket,id=virtcon,port=@
 # Virtio networking
 QB_TAP_OPT ?= "-netdev tap,id=net0,ifname=@TAP@,script=no,downscript=no"
 
+# default to slirp and no graphic to work on headless build machines using testimage.bbclass
+TEST_RUNQEMUPARAMS ?= "slirp nographic snapshot"
+# basic qemu testimage.bbclass support
+TESTIMAGEDEPENDS:append = " qemu-native:do_populate_sysroot qemu-helper-native:do_populate_sysroot qemu-helper-native:do_addto_recipe_sysroot"
 # If we're running testimage then we're in a qemu, so ensure u-boot is build
 TESTIMAGEDEPENDS:append = " u-boot:do_deploy"
-- 
2.34.1


