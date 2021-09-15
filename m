Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
 by mx.groups.io with SMTP id smtpd.web11.11316.1631727048927242327
 for <poky@lists.yoctoproject.org>;
 Wed, 15 Sep 2021 10:30:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=hNPIrDLk;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.47, mailfrom: steve@sakoman.com)
Received: by mail-ot1-f47.google.com with SMTP id m7-20020a9d4c87000000b0051875f56b95so4570129otf.6
        for <poky@lists.yoctoproject.org>; Wed, 15 Sep 2021 10:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=sts9XH2r3ew0UYzEweIWukqta36xl/TEusgIJVpri6E=;
        b=hNPIrDLkbzKErWrJmj57O925VJvh9lJ3wkJyjQURaWgN0VdFyH+w2IM83LwBgBQqDF
         8882TLTgmtRRwtN19Gb9Y4o8+qePWPlTuVFfWKveplmk/n5uWvPk4QS8zmjLA2hbtubN
         dyI7SGv54vsPL7FrIwocHjf4BiRkW7THTSpdL0EGLwUnp3rfrLbtf0xTo9lk6rlcmnLd
         orT6BYVk5ReeO7yYcxut3LloSyl/cCpCN5U4MiJehXw2GMifMTYzOGKNp2qqNXE7oOm6
         PugjiFn4rIAEmwaQDLSoHcO8Wc/BwMLMU+2WaDAMwQeLHvVONekr+NHeT8yz+MNFJJn1
         mS6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sts9XH2r3ew0UYzEweIWukqta36xl/TEusgIJVpri6E=;
        b=RNv3dxibSD1QECPCcQcoQEtYUJf95xaioMnw4vD+VHuVUjFZWczKvnF1FFohR1uNTW
         sPgze7BoIRNKeEZevrjlWS3RCUlbnSdaZVWLHsHwxkMAe/Kaoj1I6zDNCVXP+kyJ2aRT
         bdH/lB6cTEj6IxQP98o/BPzTptySXShjJbg7ec9abNHUS84xUcqaxL8ZsOg57XlwVBfe
         +lmyUXt0MOIIvpt16cT7uUgKvWDfY6QC66MI7Zej6fTHkaTbuK5Dgnn66qaiW1FB6xrW
         Wmsk0cIwuTxYCOpTs4W1TrU3cU4qPTirlPcYZ/Aaib4MQ2hgcWGzNWE6os5Xsx5t3Ids
         qoIg==
X-Gm-Message-State: AOAM531qJ+cW5mLn/5fObUMNzLNXxnrFxRhggZtbY1rbozkh3lj84XR9
	uQnluoEH/0vXId6OwvXew0iNjtrmGX39GV9WdY9Kww==
X-Google-Smtp-Source: ABdhPJwlKiTUywoz7qaq8xmymlgpDHvd96vXx4LUZWiAq6ksy30MZDWA7G0A+N4dIMHQ/fCklIm2bw==
X-Received: by 2002:a9d:7cc3:: with SMTP id r3mr964891otn.345.1631727047521;
        Wed, 15 Sep 2021 10:30:47 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com ([172.243.4.16])
        by smtp.gmail.com with ESMTPSA id z1sm169317ooj.25.2021.09.15.10.30.44
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Sep 2021 10:30:46 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell] poky: Use SDKPATHINSTALL instead of SDKPATH
Date: Wed, 15 Sep 2021 07:30:23 -1000
Message-Id: <f5c43514a8dfe6f2e8385051691fca99b4734ee0.1631726950.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1631726950.git.steve@sakoman.com>
References: <cover.1631726950.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

SDKPATHINSTALL is the default installation path used for the SDK but is not
the path encoded into every SDK binary as the default path. This change
allows it to contain things like dates without requiring every nativesdk
recipe to rebuild.

Partially fixes [YOCTO #14100]

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit a62175ee581bd05661717f0fb89dad2a297b4034)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 902861b..5b54df8 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -24,7 +24,7 @@ DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${POKY_DEFAULT_DISTRO_FEATURES}"
 PREFERRED_VERSION_linux-yocto ?= "5.4%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDKMACHINE}-${IMAGE_BASENAME}-${TUNE_PKGARCH}-${MACHINE}"
-SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
+SDKPATHINSTALL = "/opt/${DISTRO}/${SDK_VERSION}"
 
 DISTRO_EXTRA_RDEPENDS += " ${POKY_DEFAULT_EXTRA_RDEPENDS}"
 DISTRO_EXTRA_RRECOMMENDS += " ${POKY_DEFAULT_EXTRA_RRECOMMENDS}"
-- 
2.25.1

