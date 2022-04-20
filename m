Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
 by mx.groups.io with SMTP id smtpd.web12.13981.1650491680999485328
 for <poky@lists.yoctoproject.org>;
 Wed, 20 Apr 2022 14:54:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=EC0haxwg;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.171, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f171.google.com with SMTP id g3so2303472pgg.3
        for <poky@lists.yoctoproject.org>; Wed, 20 Apr 2022 14:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=MAwYtrpCNQdV+5uFctaOp3ZLoJ5nuK7HmMrPxg9Meew=;
        b=EC0haxwgru+9JidjV308OdbOw8eJm++EHM5hgF02xrVOdVUduiW0KAA/Qq0FmdwESe
         pbVg7JCtMfla1uLr/sUxvgLp9I6vd1OpFyBqWKB+tzL/FrfFdZZJYfwEPrzeAhEo5XkR
         dgiFx7NqzDGqm0hoDNmc2NWtGEMl4dlN+EuL+SNaSk1AKi2dtpJ/drOExnQ+IzUa9Kpo
         gfua6OaTE2On8MbwcA/MUHAPoqZj1ZZUgd2RKTeGfqPIlJiyvMGyu3Weznrw/rbmiD5w
         rN2ersUxOhIq3xq1BLxEK9AYDtBzpE1Dso8cfwJry1ZwGtDxksUSvtM5oi0tENHmXl19
         5Y3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MAwYtrpCNQdV+5uFctaOp3ZLoJ5nuK7HmMrPxg9Meew=;
        b=HBfnojtZx2PJYQe2Be9pyrF8jb+C81lPrJV4c7HLVLDnubljK9jvVIJYYr3LCCgsvF
         eKDlKjUiISMQcA2Q6l+9rB4iVfbBuh8zBbHs/D+hedjDars3K324BJak8wTbOCMLPQYW
         ZukWS9cd+QFtsyR/UI9KztrjHGcyQYRdPImQB8dluCqt0nuz51SUgjKtGp9x1eq3EAF6
         IIl/O4szvZ5j0M9y09JEdXtYg5iByDxMJ7rhLUDUnt3PX5oQnNr1XT4hExHQMOXEIoTz
         nHWvy4/enDB+AIRwdGxU4MX0dzYBEYKRE8popTCO2kwNd2XTKRTJjb5c3EbBIj13cF4P
         D98A==
X-Gm-Message-State: AOAM530OzB3Yyq+OvB5kM/BDzIBNjTawxqluRz8HGd+KrGfmzwAhE7gY
	SdUg/d+VfKJNF2c2tot3K3FcNhDO/GPw/2AnTS8=
X-Google-Smtp-Source: ABdhPJx9pjrHHh4deYM5+18FZtTnLlCUyAoiE+9h56VM3bLqG5/wCyOWLH/DL94pK+ijrfmYrW/VTQ==
X-Received: by 2002:a05:6a00:c8d:b0:50a:51fe:e462 with SMTP id a13-20020a056a000c8d00b0050a51fee462mr23902381pfv.43.1650491679887;
        Wed, 20 Apr 2022 14:54:39 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id q9-20020a056a00088900b004fe1a045e97sm21479393pfj.118.2022.04.20.14.54.38
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Apr 2022 14:54:39 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell] poky.conf: Bump version for 3.1.16 release
Date: Wed, 20 Apr 2022 11:54:29 -1000
Message-Id: <fcd2ab635aa96e5b31955b8ff63d960f2fe686df.1650491596.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1650491596.git.steve@sakoman.com>
References: <cover.1650491596.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 6ade4e0..f8deac4 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.1.15"
+DISTRO_VERSION = "3.1.16"
 DISTRO_CODENAME = "dunfell"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.25.1

