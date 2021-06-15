Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web12.458.1623776481517319915
 for <poky@lists.yoctoproject.org>;
 Tue, 15 Jun 2021 10:01:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=WlbeNroP;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.173, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f173.google.com with SMTP id w31so9479875pga.6
        for <poky@lists.yoctoproject.org>; Tue, 15 Jun 2021 10:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=mYCRmaKSbDrM5BeXh6izp92d+WiZVSIi0smoeJ7lNP4=;
        b=WlbeNroPwiNCFQ5tG+Qwdz7JR6bRU4O21w9ewqvV8EHaNhqUwtd+eNyIg8fMy0nMux
         8l5DYr7fJ46Ba0Z/oaQYmzRNubcwoXacPOc20il2DbdWczdMWfoDa49aMo3WkFR8sHnC
         IYL3DAxAECa5+ZM5A8Irf+VfijonKROSl8pqJkl+IJllMI1RB2YkNNY1zwGWir2ceffd
         OljorKPZLplXHLAfWhR8quwfkdPd89c7uAfoKTOEn/HJPOhee1bBfE4BqllnGHFdAsNP
         id0VZpP4bBKXiLLjXNkD25fLq0L0fD4vTpLE0764ZN73aNCb/Xg4oPq8ToXYN5TO4paO
         AOWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mYCRmaKSbDrM5BeXh6izp92d+WiZVSIi0smoeJ7lNP4=;
        b=BKuIOGfjhPoKhvKLLCZSI/tp/rvT/Y9XojGJtzBeYJmxCy2Yza33JZKCg58a+RUEF2
         ETQerh4j6zwraBL+EWu2yWSb2m2se+Kwy6xoKQztXqFo/drrU+pXhtmrP0X50NYAPFY0
         ue8/NC7q5apnFZGLrCPj+hyz3lJxyC0hd7BMT8wU4PXD1KfK+ssGo55mAnZep3FGNcoh
         RQ04Doh847Xrqa/gT40MPWykygoun6xQHPKj3HGt8k5EKyz4tuGTwA1yYiRlS6jFZ6pt
         pYHA+gdZgufdFwi6mfUCw+CbuUIc33jN77JrKrai/UmcJRY2IEsbrmRrRimlfiBQBv+L
         Zy9w==
X-Gm-Message-State: AOAM532v9hb4hwYzdNowd9nxznf+QnMBBe5d+RGw8Pflp3Einufjs+lc
	Cq76GBIBgd64+NMP4+FsY7JHyMsGwHdROeMeDyo=
X-Google-Smtp-Source: ABdhPJyHq5FgzsQu1ZgIhqZswKQfnmAOjogp3KPO81E3ksgvxBbjYizKd4r515Q4oAVSgcQ9aNF2cw==
X-Received: by 2002:a63:3d8f:: with SMTP id k137mr464067pga.161.1623776480448;
        Tue, 15 Jun 2021 10:01:20 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([172.243.4.16])
        by smtp.gmail.com with ESMTPSA id z15sm17595100pgu.71.2021.06.15.10.01.17
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jun 2021 10:01:20 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 2/2] poky.conf: Bump version for 3.1.9 release
Date: Tue, 15 Jun 2021 07:00:48 -1000
Message-Id: <b5f041dbaee9ee57f4ada119dfaccb53f99385f3.1623776375.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1623776375.git.steve@sakoman.com>
References: <cover.1623776375.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index c2d42c9..92e9ba5 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.1.8"
+DISTRO_VERSION = "3.1.9"
 DISTRO_CODENAME = "dunfell"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.25.1

