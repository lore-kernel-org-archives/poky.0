Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web11.12770.1614955102655480203
 for <poky@lists.yoctoproject.org>;
 Fri, 05 Mar 2021 06:38:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=W1zPc0CY;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.172, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f172.google.com with SMTP id a188so2293754pfb.4
        for <poky@lists.yoctoproject.org>; Fri, 05 Mar 2021 06:38:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=jhBmBc6iPV/3mZkTwFVdEyrmALJ93Tc6XffZqmZ12eY=;
        b=W1zPc0CYICEw+fv1fjFABE4EhS2w2pXCvjuueFpsficEFCNFv1jMUchUDE+F+0AQF+
         CmuFCPGlhEhZHrcUvkAnxk+2csd+6S0uyJXprj37+lgbUff+Ocuqyz8GRtlwttLKDHCD
         Rhb8R/3F7jv3xxxQBAamK9dyMovW6plhnOonq+GZUwg5R6HvmYGWdA0w/IdlZf0m77Jk
         BixW6FojLqR7jneBmv7OgUSXxf0Ws18N9sndQEVYGNnzOoXf1W6TZG9+dMNdO12x/eUD
         Mq37I+Tqqy+uqWf33eg2eL+yCifE/okxolDMId/XssQwJQNXx2TYcT19XGC4STfHN7g6
         z+dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jhBmBc6iPV/3mZkTwFVdEyrmALJ93Tc6XffZqmZ12eY=;
        b=euCGqNdgyeBqX6htsvkp8RtQq807mZhg1IgbPwydcP+LLpV7xxH2Ov6QZYm4MjngGH
         At9P7x7/jybm9tRnrxbVUeq9wnzyZ2g3dqTMN1MRToJ39O5slTDGli7pq65Y99V+VzMH
         srqaCe4gDRXauGbWEKaRXO39+JFDxdmBTyOn16TjiT2Ti/Uka35H3Ve5Ht7oKw4cJavm
         nwc9rw0yXRDYwkrZ3ohAkcu1edten3ehOmhQNJ+Lm10OVwNjYFp1UeakCbIgEU8vLZaf
         jnsDf9tCt7QE+sncrlifu3GuNiJ5Hm4OJElfQVkwEVNg95QFRDX5CrAtGYJ+7wa1JVmf
         l0jA==
X-Gm-Message-State: AOAM532n5nwUDdVogxAPVoin6Q0QKbClA2NGFxoKD9Yvjpc98UaztWSs
	5B3GzEtnsnErZ1cFomBUPPFkwiJfJFTdEZkC
X-Google-Smtp-Source: ABdhPJwyBuq4jmyyLYj9jsXJIP2sSt+B5XrAXEfzLuQ+W0G/5YKmLrh6w0oJekALCzmF+/cEIaEVpA==
X-Received: by 2002:a63:b60b:: with SMTP id j11mr371240pgf.19.1614955101632;
        Fri, 05 Mar 2021 06:38:21 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id i10sm858416pjm.1.2021.03.05.06.38.18
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 06:38:21 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 4/6] linux-yocto: update genericx86* SRCREV for 5.4
Date: Fri,  5 Mar 2021 04:37:30 -1000
Message-Id: <5c56555e21ca4d8d245edbc3381be5c01eecb5c5.1614954239.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1614954239.git.steve@sakoman.com>
References: <cover.1614954239.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Naveen Saini <naveen.kumar.saini@intel.com>

Bump to kernel release v5.4.69

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 672c04902d733e150a5bbdbcb6cc9ce1cc5ee9a9)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index 9c37f91..4ee895d 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,8 +7,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
-SRCREV_machine_genericx86-64 ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
+SRCREV_machine_genericx86 ?= "cfcdd63145c0d741e57ee3e3e58f794229c6c09c"
+SRCREV_machine_genericx86-64 ?= "cfcdd63145c0d741e57ee3e3e58f794229c6c09c"
 SRCREV_machine_edgerouter ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 SRCREV_machine_beaglebone-yocto ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.58"
-LINUX_VERSION_genericx86-64 = "5.4.58"
+LINUX_VERSION_genericx86 = "5.4.69"
+LINUX_VERSION_genericx86-64 = "5.4.69"
 LINUX_VERSION_edgerouter = "5.4.58"
 LINUX_VERSION_beaglebone-yocto = "5.4.58"
-- 
2.25.1

