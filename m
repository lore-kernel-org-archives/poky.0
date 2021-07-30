Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web09.25672.1627660252253469694
 for <poky@lists.yoctoproject.org>;
 Fri, 30 Jul 2021 08:50:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Vj7rH1KE;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id l18so11881714wrv.5
        for <poky@lists.yoctoproject.org>; Fri, 30 Jul 2021 08:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X4KaJmc9Jale/bdvbwV7Bq06UVaIfDqsR6PRg4dkkVA=;
        b=Vj7rH1KExj7u28qPf3gomyVK/3q/Z2qWZvf57TxEbNy5ZqKQ9ond3KIdYtmktivMLh
         UFgjPq5wztgIPpl9vGmaFTwn9rxFODTBWPosi/aleysiosSi7Fe8v7aQ/3mutasSrPqU
         cEKjGQC7XHPdYe7+pCjoCczxWAEKHsCBBEylE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X4KaJmc9Jale/bdvbwV7Bq06UVaIfDqsR6PRg4dkkVA=;
        b=c1OAwovOYfbQaZ8IJ4MwynQ8B4qaf/DQGO0papemfSl0u9i6ZMYbfCJXQG+1b04jGO
         5wc23XDxZy/2KtrdhnTVxS5fZcxXnjEiLPoPPk+Cj6lwbxjqSIQOJgmnb3LMnn4qA5Gt
         Sf3/PpmHTw6cgb5fuvJ5yUOpWEVY6r2s9B///rAURxRdIDieKgHZuE635zX6wKchPad1
         jHq1Cc2hj/3f3NtJFujo2mzUce5/YuY+M6NN/bgAoTqpVm+EgWDfu7Fv7XoSRpxCOGzy
         z2lZMBgVuEmQCoJYBjMrqTXZR32vfwFTyH1AgcOfqrjT2NbjFQUri/vvKJ+8IVpi6+CN
         iPCQ==
X-Gm-Message-State: AOAM533KK9uOss94Gp2cjk+sCiJvK9ppnUMcgNPqkm6SKH1eGZS/5qPM
	chpgmYLCP3mw+qEWbSyyjqLHeTsXkXfZBw==
X-Google-Smtp-Source: ABdhPJw3tSD0P6mRxHFYIk/gXQtbbwWeaSL/qwP2JTC9lRQ75Oa7et1JFXTZf8dweQLuvLwFKeOUtA==
X-Received: by 2002:a5d:522a:: with SMTP id i10mr3716980wra.280.1627660250368;
        Fri, 30 Jul 2021 08:50:50 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:47e7:2d3d:e4c2:218b])
        by smtp.gmail.com with ESMTPSA id v5sm2238428wrd.74.2021.07.30.08.50.50
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 08:50:50 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky: Use SDKPATHINSTALL instead of SDKPATH
Date: Fri, 30 Jul 2021 16:50:49 +0100
Message-Id: <20210730155049.3368068-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

SDKPATHINSTALL is the default installation path used for the SDK but is not
the path encoded into every SDK binary as the default path. This change
allows it to contain things like dates without requiring every nativesdk
recipe to rebuild.

Partially fixes [YOCTO #14100]

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 8ffd805945f..c7c46cd226f 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -23,7 +23,7 @@ PREFERRED_VERSION_linux-yocto ?= "5.10%"
 PREFERRED_VERSION_linux-yocto-rt ?= "5.10%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDKMACHINE}-${IMAGE_BASENAME}-${TUNE_PKGARCH}-${MACHINE}"
-SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
+SDKPATHINSTALL = "/opt/${DISTRO}/${SDK_VERSION}"
 
 DISTRO_EXTRA_RDEPENDS += "${POKY_DEFAULT_EXTRA_RDEPENDS}"
 DISTRO_EXTRA_RRECOMMENDS += "${POKY_DEFAULT_EXTRA_RRECOMMENDS}"
-- 
2.30.2

