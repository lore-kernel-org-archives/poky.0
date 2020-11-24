Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
 by mx.groups.io with SMTP id smtpd.web10.51111.1606221880362249760
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Nov 2020 04:44:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=gAquc54r;
 spf=pass (domain: konsulko.com, ip: 209.85.221.68, mailfrom: pbarker@konsulko.com)
Received: by mail-wr1-f68.google.com with SMTP id 64so8763050wra.11
        for <poky@lists.yoctoproject.org>; Tue, 24 Nov 2020 04:44:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=f1/0Obv+w9XYVZ1QzdTPN3mLwQgB9qD9/9TNBFiA2QE=;
        b=gAquc54r2VRmhLQsPBxPgfIpYleihJvYh2iqi5uMFvjpp7HISCP0gXdVm1N+yIg3zV
         D8SEXisvUTVZltya3IJhS0dZx3wjmTkCQ8da7eRE1ZTf0e//FRZfWj93c+UAV1FYQFrT
         1fkpEfGx78vB9pbzxbcaOROzq3mA2i5mI4TuM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=f1/0Obv+w9XYVZ1QzdTPN3mLwQgB9qD9/9TNBFiA2QE=;
        b=Nq92Q71ijwQmo/l4VvEID5QB3n6hlDKQwiTueLqBLKlvePzWlkQw+guzmlj9s6ATMt
         c1QMefC5i6WXMclg1OfZz6BxKVPK4RIteuB0i2oEZa39CtDZn7NhoGpkx0qrI26zmnmI
         /JBB4aDkYvXteYGbXhyWv1twdR9DLCV3VuwfCpJ7Qa47mMMGhsWor1TbBTRzGv7eT6KU
         Ye80mPw2KSPTycWuAEqQHEzeUvvHmPFHURUX6tH8Q3225lMWui51jFMhw3CUN7r5OYrV
         5RGgIKxRtdQ4d4UHS3C8HglcBoYfA7Dudv5JGWbmR0ngJ4IvwxnQHUEyDaxzZDiCmjet
         p8ng==
X-Gm-Message-State: AOAM5324XWRAjyU4gx+RMeROCMBNjnKIIliKe9/VIR3lxXAi4JCbadbs
	Tbe1yIPqbL29W8/yRzYpAEegJgXozT3wPg==
X-Google-Smtp-Source: ABdhPJyZMmJ9uVXA9RhDTLuIFi8q9CPaad1RnUhG3qq0YpI2Yi3I3PzREOPWFRH6iZt1/JrL1y4yjQ==
X-Received: by 2002:a5d:5342:: with SMTP id t2mr5000842wrv.243.1606221878682;
        Tue, 24 Nov 2020 04:44:38 -0800 (PST)
Return-Path: <pbarker@konsulko.com>
Received: from alpha.home.b5net.uk (cpc76148-clif11-2-0-cust524.12-4.cable.virginm.net. [82.1.54.13])
        by smtp.gmail.com with ESMTPSA id y11sm4771468wmj.36.2020.11.24.04.44.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2020 04:44:37 -0800 (PST)
From: "Paul Barker" <pbarker@konsulko.com>
To: poky@lists.yoctoproject.org
Cc: Paul Barker <pbarker@konsulko.com>
Subject: [master/gatesgarth/dunfell PATCH] local.conf.sample: Update list of qemu machines
Date: Tue, 24 Nov 2020 12:44:31 +0000
Message-Id: <20201124124431.25294-1-pbarker@konsulko.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The `qemuarmv5` and `qemuriscv64` machines have been support since the
warrior and zeus releases respectively. Add them to the local.conf
sample so that they're easier for new users to discover.

Signed-off-by: Paul Barker <pbarker@konsulko.com>
---
 meta-poky/conf/local.conf.sample | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index 68e71b930b..df23af0a71 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -19,11 +19,13 @@
 #
 #MACHINE ?= "qemuarm"
 #MACHINE ?= "qemuarm64"
+#MACHINE ?= "qemuarmv5"
 #MACHINE ?= "qemumips"
 #MACHINE ?= "qemumips64"
 #MACHINE ?= "qemuppc"
 #MACHINE ?= "qemux86"
 #MACHINE ?= "qemux86-64"
+#MACHINE ?= "qemuriscv64"
 #
 # There are also the following hardware board target machines included for 
 # demonstration purposes:
-- 
2.26.2

