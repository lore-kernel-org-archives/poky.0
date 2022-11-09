Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
 by mx.groups.io with SMTP id smtpd.web09.3977.1668004365172545313
 for <poky@lists.yoctoproject.org>;
 Wed, 09 Nov 2022 06:32:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=t78VtUVG;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.169, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f169.google.com with SMTP id y4so17264726plb.2
        for <poky@lists.yoctoproject.org>; Wed, 09 Nov 2022 06:32:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5xubNE9rhekrRmTsxPpelme+Yl4DeBdSM8EB2CAnjCc=;
        b=t78VtUVGgmIzJ4/497t19UmfO54xPw9GYYDNDKF2er4j4lrUk/MMH7IR27oTLn1aXN
         /6tWttv51GN3gznaIhzFmRWst06P+Ul7XckzYPfZXPeKVBLFxppAtt6dklftF/RAj8tx
         eiw68paZUykgwld06Wn4ADIPz4whREgMZPH3Fj++t17YdgVFiJG4MR7azT9VXOOGEfBu
         ZMtjKfFZ2msQ4r242ZxFa/0DnkUS0TCzPYXKLUabhdGCc1tqcFIWKVcb3FwtTjldGlpF
         ypgHwNOIprVwHLXb0u+tk0cAxfsR1UF8pKqh+p39GiD98Xd6kw2txFezidzH1ZdpL5Tz
         oyAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5xubNE9rhekrRmTsxPpelme+Yl4DeBdSM8EB2CAnjCc=;
        b=tMYOJlMcUV9f+LLe4SDLC3YYbZDpiEOmhxxw7YAJxNHQGSim8InckLSZCjFYmYPWpo
         yjW0YUcUezhUe75Qd4XgIrH/bu9tyM5GzJ72xv9X/mv1EbY83G093Qxax8Zv5o99br0F
         akxwGwkmiyo8WA/wPQlgD59+nnshKZ06WkqTTdmXKWRcZPtIlMRmnF3pFaeufrRysXlJ
         W9K75LjtPbmRajqd6EjX5gYDQaVlclMsCgtRYe+dNQ8fjfQCAfRSSkclKxH4q4RoXswa
         ih6ND4FyDobrVtIT5wyeI4Q8sLVS9+aUnsSDaPIHGCYD8TMPeeK6K457isUZ056Uhr66
         SSmA==
X-Gm-Message-State: ACrzQf2pHQ2zlHGcJZNbZWQunYDmW28A+71lcW+2sWxwV0FbkBJAa/72
	aXf+ugD0a+eOaJiyqLyTYDf/p5N7ABH2jM9j
X-Google-Smtp-Source: AMsMyM4Ohw298nnFsHAZQ9INw2v7JClDl3Fb4lFHzrg+aGbkEAIPQNAO6MSEnvh1o7pWr6KKOrIlog==
X-Received: by 2002:a17:902:be18:b0:178:b9c9:97b8 with SMTP id r24-20020a170902be1800b00178b9c997b8mr59562737pls.38.1668004364135;
        Wed, 09 Nov 2022 06:32:44 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id b9-20020a1709027e0900b00187033cc287sm9090427plm.190.2022.11.09.06.32.43
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Nov 2022 06:32:43 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][langdale 1/1] poky.conf: bump version for 4.1.1
Date: Wed,  9 Nov 2022 04:32:39 -1000
Message-Id: <8f371cb5e18808b6f29e78566d3440282cf4d17e.1668004294.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1668004294.git.steve@sakoman.com>
References: <cover.1668004294.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 3e90766..be7d9f9 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,7 +1,7 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
 #DISTRO_VERSION = "4.1+snapshot-${METADATA_REVISION}"
-DISTRO_VERSION = "4.1"
+DISTRO_VERSION = "4.1.1"
 DISTRO_CODENAME = "langdale"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"
-- 
2.25.1

