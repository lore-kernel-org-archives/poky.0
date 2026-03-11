Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC7F1125809
	for <webhook@archiver.kernel.org>; Wed, 11 Mar 2026 13:32:24 +0000 (UTC)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.21023.1773235937734883926
 for <poky@lists.yoctoproject.org>;
 Wed, 11 Mar 2026 06:32:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=pabfPjWJ;
 spf=pass (domain: linaro.org, ip: 209.85.210.179, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-829a27414a3so3099951b3a.3
        for <poky@lists.yoctoproject.org>; Wed, 11 Mar 2026 06:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773235937; x=1773840737; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=isIrAFxJPZh7eDLKK6dQcXMJBiaHtBG8gVcqhRGwwZk=;
        b=pabfPjWJ2iyNedWqSv2v2gb6s54oz0KV3VEvIyIgVtCbdvrXDhkzWyn1Yua08oqrmV
         LXuQnoH803ghjvytx5UfNVvr97bbnSvavUC49AT0FR405/MPPH3ZpHnH/jW1zVY8v26q
         hkyhQHfNBn3cFqa/zxh3xakrZn+U2ARm6ccuxFb9FRDJXg6D/WlCgU6oWGr9F310b/tc
         vACdbDv02dsGJzN8ZmIZRBqhlOh7Bb7UCk8a3C+G1YMIlTMJfqfZcsIVwyHbRCqzYm8d
         VHS+SwvoSNnWhf6GJdERqnLnGu9U2d0NDItD+PvkcYYBeDZ/jbPict5mH68kw7O+Og0V
         Fa2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773235937; x=1773840737;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=isIrAFxJPZh7eDLKK6dQcXMJBiaHtBG8gVcqhRGwwZk=;
        b=YrPBVFKvNVZgcCmuTKRAajhI7R29bP3N7Mcl7F6i+APcXNwwhqqHQzXnTiBJ6pNtb5
         dd90sIyXRDB49/auPXSzlJS53LvcXDaekqqDPh0r3uCg6AJ4CmPThvyCgytCgoLs5ljL
         v1ZfCAu3d2vOAGuSb+HfPzC0T320X6pyjxbUyR2Wn4p63iUp0LY4jukXA1DG9cSTodPq
         SFquCsrFyVnPUAlmNcRkSARb8eXOc7/3yYauSFF2E3QxokxCkbkLFKM66umHuvCU2HbH
         CB/MMAQ/ShXueGJ+OFhIYFSEFWjyVjQSSJPPQd5raJd0yDwpHC+xRc3uddPemxcAdXQL
         54DQ==
X-Gm-Message-State: AOJu0YyqGuhT74tkzkgsy3IjSJLFD/Hhf63NdrVLRqLXDMmf7tEb3wzV
	6xAEervMDdRuu90BtPnmI1MEu2Dy53Fwv9zLw9y/IiweHd6jOv0g3Bzhf88xfpi/JTotbFRe+kl
	JcxiYqaQ=
X-Gm-Gg: ATEYQzyvLkckcPjcPvmhr+2PLSZvgXz2+zf/EtpPLQFbHZOxBqsGeVaLyKbY6plNSpA
	FdhmppaUVkHu37dGT74rnXOpTyGl5XMz2O4BCn45o900s5fH0+ujtBXPcJqMpv4TALPcAxk5aw7
	n3eylnauxaOqZFWZmWVfoY4FH+RL2UOJuOVt7vcSP5SJTlIhyE+Mnh3g/IrlPTqJqqlRbRIlPrH
	IWsfz4WophQMOO+h31P07hCKnnfWT8lp6Bd+juVjsoTRkRVNNd1BV5zavHHrElmemFcOYJpdgqg
	3v90AjPxnlGTHKZ0ifob3rhL5eyfAxIbmBNrhO3kE2dW66M/F/3S9cOe2hMfGrHikMsr+omZXlL
	kiY8XduTTJ9n41PeAbEStPCYCjjD4zMovNQjoI0rlH2omXXqhc2MeRSywouIL8LLCsG9CKXUSCd
	f+AZcl58pQhv8nl02Vntbe0sOK50Mw5B0rneM43OSnUitfBdtRtFqyPw9wF2MhVvkIP3Oi6T76S
	7ooS4S0NTw=
X-Received: by 2002:a05:6a00:3691:b0:829:b924:a157 with SMTP id d2e1a72fcca58-829f70dfbf0mr2536312b3a.63.1773235937078;
        Wed, 11 Mar 2026 06:32:17 -0700 (PDT)
Received: from nuoska.taservs.net (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829f6df3417sm2650441b3a.19.2026.03.11.06.32.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 06:32:16 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH v3] genericarm64.conf: fix qemu testing with testimage.bbclass
Date: Wed, 11 Mar 2026 15:32:02 +0200
Message-ID: <20260311133202.292677-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 11 Mar 2026 13:32:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13862

genericarm64 machine has supported qemu for a long time but
the default build config failed with testimage.bbclass to boot
and run oeqa runtime tests.

TESTIMAGEDEPENDS needs qemu utilities so that they are correctly
installed to image sysroot. For qemu machines these are set in
testimage.bbclass but remain unset for non-qemu machines like
genericarm64.

TEST_RUNQEMUPARAMS needs snapshot since default genericarm64 image
is a compressed wic.zst.

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

To boot qemu manually (add "slirp" if tap networking not setup,
and "nographic" if qemu graphics not setup):

$ runqemu snapshot core-image-sato

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 4 ++++
 1 file changed, 4 insertions(+)

v3: dropping nographic from TEST_RUNQEMUPARAMS, both this
    and slirp are limitations of test environment and
    need to be set in local.conf or similar

v2: dropper slirp from TEST_RUNQEMUPARAMS
    https://lists.yoctoproject.org/g/poky/message/13859

v1: https://lists.yoctoproject.org/g/poky/message/13854

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
index 2b1ce4bdd02b..be34a5605c24 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -73,5 +73,9 @@ QB_TCPSERIAL_OPT ?= "-device virtio-serial-pci -chardev socket,id=virtcon,port=@
 # Virtio networking
 QB_TAP_OPT ?= "-netdev tap,id=net0,ifname=@TAP@,script=no,downscript=no"
 
+# snapshot for wic.zst image type
+TEST_RUNQEMUPARAMS ?= "snapshot"
+# basic qemu testimage.bbclass support
+TESTIMAGEDEPENDS:append = " qemu-native:do_populate_sysroot qemu-helper-native:do_populate_sysroot qemu-helper-native:do_addto_recipe_sysroot"
 # If we're running testimage then we're in a qemu, so ensure u-boot is build
 TESTIMAGEDEPENDS:append = " u-boot:do_deploy"
-- 
2.34.1


