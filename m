Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web08.346.1660080297956511466
 for <poky@lists.yoctoproject.org>;
 Tue, 09 Aug 2022 14:24:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=R5WgvP6T;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.180, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f180.google.com with SMTP id b133so11931324pfb.6
        for <poky@lists.yoctoproject.org>; Tue, 09 Aug 2022 14:24:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=oYcZD82Ql5mJ8VIZnjr+LT7ngE6bSiWE4gT4CfoO/hk=;
        b=R5WgvP6T+yGMx4WjshrJLKUxSTfkPeZlsh1HxoG3i6SHrCd+MfwWVtMFUEMqyTmYCW
         M3+399xE28RgATD2XBIOT0BUlQ0oZjXEHijpihvBL+kh52yeJAtV4Wbn+2X8IU5aUSBg
         fUQaO6FsAJM424gXbwQzzFTs9e65yD9jbIMJgWXX+6mo/pRQq7QgtWV1PUGGWr0d+df9
         PNVFydarl9OmhY5gjZvnEhZyef2d6Y/dF9L0l249A67Jb4GyoL3Dm9Dz1IPHGiCsEVJS
         nh6Qe5ogO8j/xZyoK671PM/qRCRPe9vV11C/2z7fhFcrECV8rCff6vijrN0m6SExjLs/
         hZOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oYcZD82Ql5mJ8VIZnjr+LT7ngE6bSiWE4gT4CfoO/hk=;
        b=tgOuZTqH4CkwiwBJcBlWvHHSevK6MtmE1oL52w3cJSCt1yjc5bBdOf2aLTtJH/qR8A
         JRMDLYtx5ClYFgA9t9gD6vAJKPl9J36s7TtpC+Njl3KfkKyCIixrcvfvokmPYHV9GlOJ
         iLyvf7P5YbRzOaA6nHhpLZu3uBCvCYlzvRjWX/xBHZ6Z90Qfro0iEhupqm8jalhvnE60
         FWljTRMKsFJFQ13bj8oz7kfB6TSLG3cWRkhpP+IxLgGpVkRfrxw/Nqz4UpNsO8yJA1xT
         iOUoTP0nrKYc1jypxspaSTUgP/W2QXxd2e+oSZDlALQarzxn44W+3NElDri6sGEZcO2r
         WN9w==
X-Gm-Message-State: ACgBeo2R/QF4XiTJF+HWc5yUj2pQcFLX3p34rbC/xkVGB8f4smcB+wXa
	NXMilWLPw5/1qP9ILyadzBmEyL/TlPKeA3iY
X-Google-Smtp-Source: AA6agR7S/iJi2MF1mAJGLjGnGJ32C++Q6eTJ93u+pKm8oMurb6pUcCEllkDe8T9vmHs9SXs8nKBS/A==
X-Received: by 2002:a63:f207:0:b0:41b:6137:2b6d with SMTP id v7-20020a63f207000000b0041b61372b6dmr20807093pgh.397.1660080296896;
        Tue, 09 Aug 2022 14:24:56 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id l12-20020a170903120c00b0017128185043sm1811214plh.191.2022.08.09.14.24.55
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 14:24:55 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 05/10] yocto-bsps/5.15: fix buildpaths issue with gen-mach-types
Date: Tue,  9 Aug 2022 11:24:27 -1000
Message-Id: <1b5673657706d69f0c48f27af6410099b83bbfbb.1660080128.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1660080128.git.steve@sakoman.com>
References: <cover.1660080128.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Integrating the following commit(s) to linux-yocto/5.15:

    6c085baf1838 tools: use basename to identify file in gen-mach-types

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit b1671e7ba47f3b64e1385c5dbceb38bef5c8aa7c)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 .../recipes-kernel/linux/linux-yocto_5.15.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
index 11e78e2..8d2ec87 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
@@ -7,10 +7,10 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "2fca0fd719812ea2ff67630b01355aa80481623e"
-SRCREV_machine:genericx86-64 ?= "2fca0fd719812ea2ff67630b01355aa80481623e"
-SRCREV_machine:edgerouter ?= "26de0a7a59c56b63833a55dc33dbf70a7984d140"
-SRCREV_machine:beaglebone-yocto ?= "3ec00e9ee0e41e4c402396425337c42da58c4d6f"
+SRCREV_machine:genericx86 ?= "6c085baf183868ed45d8c1d44408d7b24724cde5"
+SRCREV_machine:genericx86-64 ?= "6c085baf183868ed45d8c1d44408d7b24724cde5"
+SRCREV_machine:edgerouter ?= "e90573857c176458965737d77b1747be83fe7edc"
+SRCREV_machine:beaglebone-yocto ?= "d91bb88e58c575e7c3b9fb111b6711a206eba64b"
 
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
-- 
2.25.1

