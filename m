Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web08.348.1660080302972573015
 for <poky@lists.yoctoproject.org>;
 Tue, 09 Aug 2022 14:25:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=Gx3gqU29;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.173, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f173.google.com with SMTP id f192so11913539pfa.9
        for <poky@lists.yoctoproject.org>; Tue, 09 Aug 2022 14:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=4VFhAOES7lJWfMYLDh8ELUW+Z+uIasIYqk7C67Z3bRg=;
        b=Gx3gqU29+P5kcG54kM+T9S+92F3BYbQvKulb24qO2Io9xUu8KRz1uN8rvDraVsVWIW
         17WS3GsW0HikN2RnnQszaQ7nF2BBKa6zk5oE8l2mmeS11mSLlypgMRKcl9AtDKfXecC+
         5NQSh0AOfnz0PiLsPGRxvfgKBJ/gl0GrFDAc0YcXQBnwLHiQGxucMYBCpK2qNnjWCAqY
         mEy3fU+i+RrmvA5/bHN3sYAIwf/Bwb0Ij/nNo1SjDci1EPmzB06Pt6PVLo0nk+gF2/JG
         4oFNwrPPB6975axIb4sC6P4Ppg2NC1oFaWZhRxfHxMKLkvlA7HkVQDt+T+KpADn5qSfi
         wLgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4VFhAOES7lJWfMYLDh8ELUW+Z+uIasIYqk7C67Z3bRg=;
        b=UvPE4ZwFy2xtRh9JnR4wDgkxNwjLaGDc4+T0QAUQxVEjUSlj7t7jAwIV8NbTA4+lnl
         9RJittvsR93JIxUcFW5dUUWCjxy/oGMdDL0X10aktzXV3Iknegq/tnFsWnEHT+e2sAxh
         h2vrh6NTgnhQaq6mDWpr10dgh2Imu29SRdIla/bxBu91AwceguxU3aceRutqn7d2eDTo
         jS489A997PIZF0qgDpgRCJviAHGeOTm6yyrSKJYYGVv7kh/dwo/KqrxmOhfb5Ja7Y5ju
         7QJeO9W8HS8+Pcvk1G+Ytpz6MFnvhqFTD8p5CqxutfzNuv8AmULwt9Xf0DSiBvcmo/7d
         akHQ==
X-Gm-Message-State: ACgBeo3/JuKLKs6ykFGScFHxOsVR/dt6Z/B5hyboAvH2iF3ubkVSV/7O
	EtzX8tMoD8AQ9QnlAq/+vilI8sKJHru3r6xz
X-Google-Smtp-Source: AA6agR7NW21YzV49iWm7S0ZkLg2AVP1djEB1GTc6/aimIGomH0c4ALfpafHNAC4Fxt5p1zgYsLh9jQ==
X-Received: by 2002:a63:80c7:0:b0:41c:62dc:7d10 with SMTP id j190-20020a6380c7000000b0041c62dc7d10mr21194011pgd.313.1660080301978;
        Tue, 09 Aug 2022 14:25:01 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id l12-20020a170903120c00b0017128185043sm1811214plh.191.2022.08.09.14.25.00
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 14:25:01 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 07/10] yocto-bsps/5.15: fix buildpaths issue with pnmtologo
Date: Tue,  9 Aug 2022 11:24:29 -1000
Message-Id: <d39d28921275f2356871b6886fa5b77def50fc1e.1660080128.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1660080128.git.steve@sakoman.com>
References: <cover.1660080128.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Integrating the following commit(s) to linux-yocto/5.15:

    a40d2daf2795 pnmtologo: use relocatable file name

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 99d4cbd3cbf36abb49a6ae5e0d7c915e05deb8d0)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 .../recipes-kernel/linux/linux-yocto_5.15.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
index 8d2ec87..52aa36b 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
@@ -7,10 +7,10 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "6c085baf183868ed45d8c1d44408d7b24724cde5"
-SRCREV_machine:genericx86-64 ?= "6c085baf183868ed45d8c1d44408d7b24724cde5"
-SRCREV_machine:edgerouter ?= "e90573857c176458965737d77b1747be83fe7edc"
-SRCREV_machine:beaglebone-yocto ?= "d91bb88e58c575e7c3b9fb111b6711a206eba64b"
+SRCREV_machine:genericx86 ?= "a40d2daf2795d89e3ef8af0413b25190558831ec"
+SRCREV_machine:genericx86-64 ?= "a40d2daf2795d89e3ef8af0413b25190558831ec"
+SRCREV_machine:edgerouter ?= "90f1ee6589264545f548d731c2480b08a007230f"
+SRCREV_machine:beaglebone-yocto ?= "9aabbaa89fcb21af7028e814c1f5b61171314d5a"
 
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
-- 
2.25.1

