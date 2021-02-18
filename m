Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
 by mx.groups.io with SMTP id smtpd.web12.717.1613688124886482933
 for <poky@lists.yoctoproject.org>;
 Thu, 18 Feb 2021 14:42:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iZorm7Z1;
 spf=pass (domain: gmail.com, ip: 209.85.222.171, mailfrom: vivien.didelot@gmail.com)
Received: by mail-qk1-f171.google.com with SMTP id q85so3838718qke.8
        for <poky@lists.yoctoproject.org>; Thu, 18 Feb 2021 14:42:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SmTyrhyU8WGJjWqJ96GCpO8NswQVhDVriPQFrd7XGfc=;
        b=iZorm7Z13r6hIu6ZlAwhIl8ntUDiM+X3p4OVmo0Pz+G3+SNHMk9c+JwEIqt4e6iswW
         EZhfs7YmPHDMrs1Vwbxih5MQY0KYDZEuK6r++5Y3tqCC14hprtoRQ/OG16qdFQtTZ8EC
         1agSEdxwmhQwdXYjxvsggwLEBeASs4pmEqgkGYnx31Q+NkS+FVExP0aXpn8i/RAbw7je
         /8wyu7hqj5+/Ri863SYMj5pj8SpC3jUbOih2TODjQSbHg3R/Sh+dhuWZphyoDuHa/gNc
         HvYdZOfL8Cl+aZC7vWKiEGVKRF+kZxnLFBCzSky/RDEzbN1yvgwIRX5zJZDB2lmJ3G5m
         ZTVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SmTyrhyU8WGJjWqJ96GCpO8NswQVhDVriPQFrd7XGfc=;
        b=LBQiU9bk45ymUt9QNEfrHq8EYTHZ8YkxcGmVPCIlnQy6FAe/2qsuV5UbGFogwNkSP0
         1l6ILpQeHEd4Tu4Bu9XcRAxsvwAso9VkhgE80ZANw4DoNjrNOwo8/mVlEj3c4SgobINF
         Uw6Xv4oE9eGhT3SHCBi+LJkndCEclLW1ixSWsuN6l5cJDvGEYVxHFsfR97o7ABYy4tLg
         hlD/a0u/+0rZVeN/xlQWkhP9G7h2etmozSF6mZjIFKGC9xo//0zuH9jCq/dNmF6jP7LT
         ZpjdMSAoatiDEi8phFWsOjKHBDQU9Gkcf43VRBl6oHIuAjXBAp2CSzU2vQQAjGrHRuzf
         RlFA==
X-Gm-Message-State: AOAM5316oBs2YPnVo7KN4E/gW3xjn6oZnVBPLcnN1VLAb18p/0f1sPWE
	qMB+ZwxCtzPqbREHWUvPydLhBRFOI4M=
X-Google-Smtp-Source: ABdhPJzy8TPSDPJfCA/akE8uWGuffviMUldGR9mVInFjglImAYoazzUwJS/HibRhbgJ8Q1oJmKyapQ==
X-Received: by 2002:a37:9d4e:: with SMTP id g75mr7047220qke.198.1613688123840;
        Thu, 18 Feb 2021 14:42:03 -0800 (PST)
Return-Path: <vivien.didelot@gmail.com>
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca. [184.163.105.249])
        by smtp.gmail.com with ESMTPSA id i5sm4274808qtw.3.2021.02.18.14.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Feb 2021 14:42:03 -0800 (PST)
From: "Vivien Didelot" <vivien.didelot@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Vivien Didelot <vdidelot@pbsc.com>
Subject: [PATCH][meta-yocto] local.conf.sample.extended: prefer INIT_MANAGER
Date: Thu, 18 Feb 2021 17:42:02 -0500
Message-Id: <20210218224202.3317346-1-vivien.didelot@gmail.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Vivien Didelot <vdidelot@pbsc.com>

Since the INIT_MANAGER variable has been introduced, there is no need
to append the distro features and set the init manager manually.

Replace the busybox/mdev and systemd examples with the 4 values
currently supported for the INIT_MANAGER variable.

Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>
---
 meta-poky/conf/local.conf.sample.extended | 21 +++++----------------
 1 file changed, 5 insertions(+), 16 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
index dc92a16..71264e5 100644
--- a/meta-poky/conf/local.conf.sample.extended
+++ b/meta-poky/conf/local.conf.sample.extended
@@ -368,20 +368,9 @@ DISTRO_FEATURES_remove = "x11"
 #
 
 #
-# Use busybox/mdev for system initialization
+# System initialization
 #
-#VIRTUAL-RUNTIME_dev_manager = "busybox-mdev"
-#VIRTUAL-RUNTIME_login_manager = "busybox"
-#VIRTUAL-RUNTIME_init_manager = "busybox"
-#VIRTUAL-RUNTIME_initscripts = "initscripts"
-#VIRTUAL-RUNTIME_keymaps = "keymaps"
-#DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
-
-#
-# Use systemd for system initialization
-#
-#DISTRO_FEATURES_append = " systemd"
-#DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
-#VIRTUAL-RUNTIME_login_manager = "shadow-base"
-#VIRTUAL-RUNTIME_init_manager = "systemd"
-#VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"
+#INIT_MANAGER = "none"
+#INIT_MANAGER = "sysvinit"
+#INIT_MANAGER = "systemd"
+#INIT_MANAGER = "mdev-busybox"
-- 
2.30.1

