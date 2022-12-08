Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web11.4685.1670539624858606689
 for <poky@lists.yoctoproject.org>;
 Thu, 08 Dec 2022 14:47:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=3FeIAfYZ;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.51, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f51.google.com with SMTP id e7-20020a17090a77c700b00216928a3917so6171037pjs.4
        for <poky@lists.yoctoproject.org>; Thu, 08 Dec 2022 14:47:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VU8VeQSRAO8xGdhF+ixABkVlBmx9zk+TcE1Xlw7IMrE=;
        b=3FeIAfYZKpbFWTl7D9pqOD7b+2EHaBr5AzYdWcgcYu3QHv5HiWRUcCR2Jt7ah83vmb
         0fXRN4Au/35hgUkpOl0YUTVKF44gbi9zeD+b7IdlkJMG96cYPWG8RFZ5SagGHPxecIM9
         EhBaHEomY9ld46zK0wypr/fC/Op3oAeDseuAd4sZ6WMOWNnV3YoG9K62Yaq0VruyQJwC
         /gJacT+1u+wVQnh1qDRT4HTpeMQbttYajeUBE+M8ESHc60ex4eFmx1Mh4HpkmuRFOzST
         Zv/ta2JiFa6EMn4Y4wolQTHLzWasy17lsjv7/1if6LSQ+FgT8m11Ll4oc7GwsdFsrol6
         Qm1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VU8VeQSRAO8xGdhF+ixABkVlBmx9zk+TcE1Xlw7IMrE=;
        b=18OzNay96XKH5TmAMKCfXAAUHYDXcwg+QqarbNDAlOHjbJRb8Fh1TlTsFhpkNyeulJ
         forfNZDFc6d4wsC6I4IfhxB7OSPl+na4a3oMlumAa1H0vrR8CceSEr1ivDk2G4WLdCQD
         xyLNKVXLMHSg9JZeF4XSBiLl75WWYOSLjRDLtJqbfSMmFtq+VpEDYg/N1YjDqiUcdg/c
         EsFCy5HizmOCRuMDsBpf5dmEpfvg743SeQOM8/iyZ8wh7yjq9MUNzZQ2NRr1BoQ6TPrm
         1BLGeRQ6epSPD/d5hqP5L3+6jXMDiwPNL+n8cZj/J4itAmkjaARDyhQiR8p84oVpY2NC
         73QQ==
X-Gm-Message-State: ANoB5pmJzT7Sqi0iOtcsHG904oKFH5DM/70jjmXcBUMYVgq8YpkhvpfW
	k0beZ9td6wM+DNZvXOAqfi+7JAu6QzVo3hg9Y+N7iQ==
X-Google-Smtp-Source: AA0mqf4mnemM/AFPtIdjzkKd3AJK/ibPX8Ib7/vgJgDEawbmuQqjjdR41+Y9e1TkiDP4rVGpDV3Kyw==
X-Received: by 2002:a05:6a21:1013:b0:a7:8b5e:af77 with SMTP id nk19-20020a056a21101300b000a78b5eaf77mr4100993pzb.36.1670539623736;
        Thu, 08 Dec 2022 14:47:03 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id d24-20020a631d18000000b00478dad38eacsm5067304pgd.38.2022.12.08.14.47.02
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Dec 2022 14:47:03 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 2/3] linux-yocto/5.15: update genericx86* machines to v5.15.72
Date: Thu,  8 Dec 2022 12:46:52 -1000
Message-Id: <de97d5fa277093f2f50e81fe241d537d3a112f81.1670539434.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1670539434.git.steve@sakoman.com>
References: <cover.1670539434.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ravula Adhitya Siddartha <adhityax.siddartha.ravula@intel.com>

Signed-off-by: Ravula Adhitya Siddartha <adhityax.siddartha.ravula@intel.com>
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 .../recipes-kernel/linux/linux-yocto_5.15.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
index e682620..3ad175d 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
@@ -7,8 +7,8 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "efe20512212b0e85b5f884b1bfc8fbba2b43541a"
-SRCREV_machine:genericx86-64 ?= "efe20512212b0e85b5f884b1bfc8fbba2b43541a"
+SRCREV_machine:genericx86 ?= "0b628306d1f9ea28c0e86369ce9bb87a47893c9c"
+SRCREV_machine:genericx86-64 ?= "0b628306d1f9ea28c0e86369ce9bb87a47893c9c"
 SRCREV_machine:edgerouter ?= "90f1ee6589264545f548d731c2480b08a007230f"
 SRCREV_machine:beaglebone-yocto ?= "9aabbaa89fcb21af7028e814c1f5b61171314d5a"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.15.59"
-LINUX_VERSION:genericx86-64 = "5.15.59"
+LINUX_VERSION:genericx86 = "5.15.72"
+LINUX_VERSION:genericx86-64 = "5.15.72"
 LINUX_VERSION:edgerouter = "5.15.54"
 LINUX_VERSION:beaglebone-yocto = "5.15.54"
-- 
2.25.1

