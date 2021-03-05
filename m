Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web11.12764.1614955092117028175
 for <poky@lists.yoctoproject.org>;
 Fri, 05 Mar 2021 06:38:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=mx2R9DgD;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.50, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f50.google.com with SMTP id s23so2154002pji.1
        for <poky@lists.yoctoproject.org>; Fri, 05 Mar 2021 06:38:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=YPfPjlQHsaRerQtZFqQ3m9NDbZM3B3p1ltEvWnTmu/Q=;
        b=mx2R9DgDvkgIScR4S0Ai8l48SEwIgSRTdYj+QGaRuNzYydyt2Q2VRDuyckSijxkas6
         JT6Db3K4zDuFrWc/sP5QQQu9miBDHMuV4NeYlWVbgdB8YsWnkpp2TEgPVgSOcwFRfbpJ
         X3em83PhIMAMmrsWugnPtHHmn+jSL/Eu0DFEDv9vIZBW/zuXKK5EEqKgA1nkmTjaIGs1
         lLOPoYonZx8mUeEcSAiK1C7q9Jj4yXyv2nhPi8a4sLVedwTJCwwd9M+cDwcsZ2NUEYjW
         zAuImRWgWXEEuQzLhVJd3Q/CqmLQz11pKiOhT3F5AsbY+uz7VqudXXKVvInt+yD1TNme
         8fpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YPfPjlQHsaRerQtZFqQ3m9NDbZM3B3p1ltEvWnTmu/Q=;
        b=UYaXM2kM0zVU7tYldS4JMiiRdCUe5LgnI8W40st395tb3s9HLRa7RHrXiuxK+4jGTX
         3lMQMK1Mh7mvTyG1NRG3wg1Pp5zSWMuDCKSB4wEOuxpKPZpu9sPp0W/wkE4XySzmJ12x
         T29MvRmiyPDSXteQ3cgQopFR5ar2iLnnmYENnk37hXdd+CNxB8c65/GAS8BKPo9diejI
         oFilP1HWqoaC3VQ9oPecCUVJgFwEImWpBOPysmw5TZ2cRwTbYRYfvW3vNL73amaLx+fq
         8NMAo7K78WYu5G2yUVulDEXv1HIAsuygfij94h0auEvEGlG/lCfftbiVRWFm9brZtoqI
         uVNw==
X-Gm-Message-State: AOAM532tPsarFkgGIK0/Ooy9KCTmTn8ppPMHtnBkkxJyBBbMhBqSfRuH
	hHBivAfb/6D41T4YNOY8GK/MHdtHRlJNES5Z
X-Google-Smtp-Source: ABdhPJyq0Npm/htIN1L7yOVQxVrDdewwBVb3wbaAb5AijU/v1syBpJhUISELqn5O06Fv3idaxCDl2Q==
X-Received: by 2002:a17:902:9795:b029:e4:888f:7390 with SMTP id q21-20020a1709029795b02900e4888f7390mr9050714plp.26.1614955090905;
        Fri, 05 Mar 2021 06:38:10 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id i10sm858416pjm.1.2021.03.05.06.38.07
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 06:38:10 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 2/6] local.conf.sample.extended: prefer INIT_MANAGER
Date: Fri,  5 Mar 2021 04:37:28 -1000
Message-Id: <9fa107b017c1619a4a3969d452ae93ffa088f60f.1614954239.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1614954239.git.steve@sakoman.com>
References: <cover.1614954239.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Vivien Didelot <vdidelot@pbsc.com>

Since the INIT_MANAGER variable has been introduced, there is no need
to append the distro features and set the init manager manually.

Replace the busybox/mdev and systemd examples with the 4 values
currently supported for the INIT_MANAGER variable.

Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 2433a0f78a7fdb8450ef9ec64fa044274ac7a9e1)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/local.conf.sample.extended | 21 +++++----------------
 1 file changed, 5 insertions(+), 16 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
index 5e1edef..9e85736 100644
--- a/meta-poky/conf/local.conf.sample.extended
+++ b/meta-poky/conf/local.conf.sample.extended
@@ -368,20 +368,9 @@ DISTRO_FEATURES_remove = "x11"
 #
 
 #
-# Use busybox/mdev for system initialization
-#
-#VIRTUAL-RUNTIME_dev_manager = "busybox-mdev"
-#VIRTUAL-RUNTIME_login_manager = "busybox"
-#VIRTUAL-RUNTIME_init_manager = "busybox"
-#VIRTUAL-RUNTIME_initscripts = "initscripts"
-#VIRTUAL-RUNTIME_keymaps = "keymaps"
-#DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
-
-#
-# Use systemd for system initialization
+# System initialization
 #
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
2.25.1

