Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web10.8690.1646749786989494522
 for <poky@lists.yoctoproject.org>;
 Tue, 08 Mar 2022 06:29:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=lCe/Oz3/;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.176, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f176.google.com with SMTP id w37so16618197pga.7
        for <poky@lists.yoctoproject.org>; Tue, 08 Mar 2022 06:29:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=rDhb99htcdCUfyD8julMUSZAdq+N1itoZOmYSJ5kQxg=;
        b=lCe/Oz3/Wwzmsdvd3wp3JU5gS7oEIT0mdNca7584rNrPjhKLEcAx6P5D5Dz8X6qpgb
         CRjjFV/dr0rFitXN6i/FLtiTHgbhRi3c3sf905sgSaooiePeUFZdMKPwymXE0jvKzORi
         7viYjR6V8Lz80Wd0AzPg5OjDYZmYYS9rY2Nlzvq7TbJXRmiJGE512WBCtLlknJwBcOIo
         U7QlokCVxoT1DjFhQtrH1oEXDpl58+Hwi9cbI8ASnpQfrmv4M2gKGPlIS082Ho5vqd6C
         51Ss4o8XwHGkBWzR6ESWPkzFDMCXNFzW+bw4rp+Z1cE4PA/hUR8toHF1uMjN8j/lkEq7
         /IrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rDhb99htcdCUfyD8julMUSZAdq+N1itoZOmYSJ5kQxg=;
        b=ZYqK7U+AQil3qelYKLmpJFNY1waMnMO3F/Gc4yVZ9fMsFUMlUBRJlPplYF2z+gPj8q
         JJjNx7hl8E2aIFIzq1QSGDYkQV9Y9ss8SwGqYAIuYt40w5bdIXf7flvOhmLMAkzo++Xm
         ikwxxAvjqj/Lt2654mqwU3w3r2APYlOapy88mOTyB/OKK7e3UudX3Shik+Wm9Ojcif+I
         0PRnUdGIS5xwLvShvxPNwSVVERmcKFBOCv+5R31bypxZS/VEpYa+TgnXyqAfgJ9JdIv5
         gZWYf+drC+x8r+oanEK0u1NpXloLE1oFtpcnGP7j+erpVesODVplxjXfUb4ESJ9bv3k+
         DboA==
X-Gm-Message-State: AOAM53114+Vhrkhw7YG1GZQdbX86U5BDQ9EcMq2on+zPaHOGqTh94kLo
	Ec5iJhIR/hT0OMogLEIdbhhxtgkwaXRFkopc8Wo=
X-Google-Smtp-Source: ABdhPJzik1ZSTZARpDz/ovvr3KbVHXJtXaZ7bxgSseOksNI9by9BzKGMmX2XSSG/MlUkxlAL6E4aqQ==
X-Received: by 2002:a05:6a00:815:b0:4f6:ee04:30af with SMTP id m21-20020a056a00081500b004f6ee0430afmr13619556pfk.15.1646749786055;
        Tue, 08 Mar 2022 06:29:46 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id x190-20020a6286c7000000b004f6bf60b958sm15286829pfd.125.2022.03.08.06.29.45
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Mar 2022 06:29:45 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 2/3] poky.conf: update tested distros
Date: Tue,  8 Mar 2022 04:29:26 -1000
Message-Id: <d4b117ab15d747ac581db69877e62386057fba8a.1646749124.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1646749124.git.steve@sakoman.com>
References: <cover.1646749124.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lee Chee Yang <chee.yang.lee@intel.com>

add fedora-35, opensuseleap-15.3 and almalinux-8.5

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 7274657..a7868d8 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -62,6 +62,7 @@ SANITY_TESTED_DISTROS ?= " \
             fedora-32 \n \
             fedora-33 \n \
             fedora-34 \n \
+            fedora-35 \n \
             centos-7 \n \
             centos-8 \n \
             debian-8 \n \
@@ -70,6 +71,8 @@ SANITY_TESTED_DISTROS ?= " \
             debian-11 \n \
             opensuseleap-15.1 \n \
             opensuseleap-15.2 \n \
+            opensuseleap-15.3 \n \
+            almalinux-8.5 \n \
             "
 # add poky sanity bbclass
 INHERIT += "poky-sanity"
-- 
2.25.1

