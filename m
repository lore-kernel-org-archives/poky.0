Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web10.4671.1670539622968020457
 for <poky@lists.yoctoproject.org>;
 Thu, 08 Dec 2022 14:47:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=mVTlkbob;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.41, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f41.google.com with SMTP id fy4so2663608pjb.0
        for <poky@lists.yoctoproject.org>; Thu, 08 Dec 2022 14:47:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4q0bVPP8wszfCELXRrkugthHr2G2CwFp1fpzdlJMHtE=;
        b=mVTlkboby/RsDhCjo78Urpf5iQgfH0Cmo5SxRb74uID1sigBUPlC4oSBEoC1hUJ6o3
         w2/hRewMP4dtZZ/W41+24n9cRlmsOBzU1NAVEe27pElFevgbr0mtJs8LSL52gYC90IZe
         Sf7VfXFBbmIQ6bi7N2g7c40G2LLFpA5FwHkgRXDL3VV7Yk/+J7ZxTroJjd9UXKsRmB5o
         /9+WbAwr8x4LRcI8WFCJuEZCM1NwObRKTOlMhcJlIDwL0hnr/6Ue184dKxHITMLtPf8o
         D1TPEa49ZA7qVBUeQMZssDP/7a5qoWMa9+FBuQqgHGjMAon+lZA2zO/54yX+ldRjbS06
         /PJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4q0bVPP8wszfCELXRrkugthHr2G2CwFp1fpzdlJMHtE=;
        b=jXGtJfP0x6EJW4hGqmuDpbKa8ppG/vjUyDpkcL077sZDw/v24f+hNMfFsYs4jLFve0
         J6z4Ossxk4JOxTWw/k6Tk0Bv/JWAToQ8K+Gti7Y+jNu2JrxYk5mHdg7zj5RLgwkJHeGo
         WWFXvdBG8EXQm3WeQrwgqI6vq/Er0R5MK8v+GQGeHRidjGKrmCo28OJ5oNzNmu/mqd7y
         dNNk8WjGZB8Lih6gcWd1oOlCvy/X4BZjhKvmkwCtxnUn2zfzaV6xwzEQxiet8r87eD4U
         IdpsJLFmh4i59lRNc0liAbzMgCXhfYZQK7IZk/FQkeSVQlDVA7byHHEi+rXsusVGAywB
         lDNg==
X-Gm-Message-State: ANoB5pkvqOg8M8UxLOXHMbAe9FiujeIvEb35V+uLetM6x0P8DY++QTF7
	ddnZ+pTvIPoGNgtY48/lrB27eP9gUvE8qPV/hLz0MQ==
X-Google-Smtp-Source: AA0mqf6fsY8USqFe1/OLG3sYFu/HEG0iigmtOp4EP/F5PpK4L7MZmsw3jvF06PWsgTbhHbd0ODN8OQ==
X-Received: by 2002:a17:90a:304b:b0:218:f8a6:7bda with SMTP id q11-20020a17090a304b00b00218f8a67bdamr3539679pjl.48.1670539621627;
        Thu, 08 Dec 2022 14:47:01 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id d24-20020a631d18000000b00478dad38eacsm5067304pgd.38.2022.12.08.14.47.00
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Dec 2022 14:47:01 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 1/3] linux-yocto/5.10: update genericx86* machines to v5.10.149
Date: Thu,  8 Dec 2022 12:46:51 -1000
Message-Id: <745f65fd733a9e7bf4f22cd2efb44d156916f32b.1670539434.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1670539434.git.steve@sakoman.com>
References: <cover.1670539434.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Ravula Adhitya Siddartha <adhityax.siddartha.ravula@intel.com>

Signed-off-by: Ravula Adhitya Siddartha <adhityax.siddartha.ravula@intel.com>
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index 1f49fd1..c6032a8 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,8 +7,8 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "d09b184cbc0321794bda715ab560dec077a048d0"
-SRCREV_machine:genericx86-64 ?= "d09b184cbc0321794bda715ab560dec077a048d0"
+SRCREV_machine:genericx86 ?= "7abf3b31ec4e4fc9564b7a8db6844d9b4d71a1b2"
+SRCREV_machine:genericx86-64 ?= "7abf3b31ec4e4fc9564b7a8db6844d9b4d71a1b2"
 SRCREV_machine:edgerouter ?= "7c9332d91089ee63581be6cd3e7197c9d3e9a883"
 SRCREV_machine:beaglebone-yocto ?= "3c44f12b9de336579d00ac0105852f4cbf7e8b7d"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:edgerouter = "edgerouter"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION:genericx86 = "5.10.135"
-LINUX_VERSION:genericx86-64 = "5.10.135"
+LINUX_VERSION:genericx86 = "5.10.149"
+LINUX_VERSION:genericx86-64 = "5.10.149"
 LINUX_VERSION:edgerouter = "5.10.130"
 LINUX_VERSION:beaglebone-yocto = "5.10.130"
-- 
2.25.1

