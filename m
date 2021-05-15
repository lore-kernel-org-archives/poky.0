Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web12.743.1621037282263541334
 for <poky@lists.yoctoproject.org>;
 Fri, 14 May 2021 17:08:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=Ex7n/Nu1;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.179, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f179.google.com with SMTP id t21so200523plo.2
        for <poky@lists.yoctoproject.org>; Fri, 14 May 2021 17:08:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=keWGSt3mYNINAUEjuCZ5feZNlMhqbE9UQ46lMMdANp4=;
        b=Ex7n/Nu1j+TY4625LAvIohdt/e7U7h/FYFEUpttP2z2b3ltkBsVqifeTKUtAatzK34
         C/Rl3jK4Fa4XGYfy9SY0ARwjSfMG9QHYKr6C1oL/nsQYl8f+UgvDfI0+Lr4jQ3YxsiJP
         daofNVNk7IXXS7A0Bg898TfcINWVOAqCO8C4h0/pIZjMuk4zt4Wn7F6/igFLDFUJUKGN
         vGpj5GrkHWKC0h9qVCC2aCgTjJwGRqtSbQhnsrsBc3FI4BHg8e7E2qc8E4+yjFw2v99i
         8jSZ0yGZPf19D9FtTyT0wMZSJRXWD48uzY+XTZao97F/mhahrsMWCvdZzWmaBDUoS4ao
         noAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=keWGSt3mYNINAUEjuCZ5feZNlMhqbE9UQ46lMMdANp4=;
        b=Ux8VMhjlzQwoFzexZaPEWCX+/rkfbH67Rq/wpAOSPYise6su4ze77yj9AP//1Ra+sk
         P301yRV/cIkw1M2q8t22YtTk7x1afbUaEG37K6N4Vzr5PUzwQisAaV5dNRPLo0gqk0+g
         wkFLWTTrzM+Ek/JB3IAFhR9sai3tGxQE9aPwSPLIjM6jD0hWcDf/C0WW6wFUjkfSI8O7
         aUSQ59t8GeeS05xUi1hjB26LO44Jy6bX6p5P4MYTHr+kXZR16Ip7eDK7L5Y7NWDW1/ps
         FVbxXu5Oyjf7Xux71GdNQOSH9juSiL5cblVvQcC9roEmp3tup6o/ZPjTCytFg0wb0V2A
         nvKg==
X-Gm-Message-State: AOAM5338+rMzGWCB02ZvRAp253YRJtiYxABSIutpMk90til/sT1MTJPq
	Nxah29xmyF1knOGLlua7j1eIfGf6X8EFm4uwS+A=
X-Google-Smtp-Source: ABdhPJyDFcA0Wh3oXFWHjQzMLEtZPemXdWtFH+ICKruAO1QKd5IF+1NU4wG7CAl8XQ77lN+YDcAQjA==
X-Received: by 2002:a17:90b:1d8f:: with SMTP id pf15mr54762118pjb.36.1621037281035;
        Fri, 14 May 2021 17:08:01 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id a7sm4929773pfg.76.2021.05.14.17.07.59
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 May 2021 17:08:00 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell] poky-tiny.conf: set PREFERRED_VERSION_linux-yocto-tiny to 5.4%
Date: Fri, 14 May 2021 14:07:41 -1000
Message-Id: <76aab65e84ff6faae857a303b242bf29aa133e03.1621037161.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1621037161.git.steve@sakoman.com>
References: <cover.1621037161.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We no longer have a recipe for 5.0% in dunfell

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky-tiny.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index c6d4b88..f20cd4c 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -38,7 +38,7 @@ TCLIBC = "musl"
 # Distro config is evaluated after the machine config, so we have to explicitly
 # set the kernel provider to override a machine config.
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
-PREFERRED_VERSION_linux-yocto-tiny ?= "5.0%"
+PREFERRED_VERSION_linux-yocto-tiny ?= "5.4%"
 
 # We can use packagegroup-core-boot, but in the future we may need a new packagegroup-core-tiny
 #POKY_DEFAULT_EXTRA_RDEPENDS += "packagegroup-core-boot"
-- 
2.25.1

