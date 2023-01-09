Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.web10.76179.1673280749662156185
 for <poky@lists.yoctoproject.org>;
 Mon, 09 Jan 2023 08:12:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=hj2c2Uhl;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.176, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f176.google.com with SMTP id w3so10026224ply.3
        for <poky@lists.yoctoproject.org>; Mon, 09 Jan 2023 08:12:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E0pObeCfFG1hYLlFLTpY9aEIFtPK+WuawNM7WAVvk0A=;
        b=hj2c2UhlVgWWqNqGTAYBgaHV+c3ak5vY/srVnKoEzxfMm2nJXYO1Zf6RCG9nGuhVzm
         XUp6YyWhiep3X7PFqINOO0F2f/O3hbrkdT0RTKX4j+08HOrnFoiRzksRCxc06ocMVLia
         X8ctJMlfLFlSGraRtJCuyGnlb81GS2amgRXXO+mmXo//rVcxxQhDxOcyLjk/yYf9RwV3
         ew+mbrVjMwq06WYgYxAKWcoA6Xv3tRRUlreZ+ohkz01btbILMlzA95Pop7FmvFjSrtBl
         N5x+dxoxanMSH41pNSTIRBUwW5Tx3B7jM8TB/+DS7ZQ3m1jDPfJ6U8K+BJQUIWdOjPLt
         AYzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E0pObeCfFG1hYLlFLTpY9aEIFtPK+WuawNM7WAVvk0A=;
        b=6FDoxRLyIkMIVnl8pzN2YOEOH0fyRIpO80KhAqsZcMyBLijyy2UCRO+pk0KJSIDxCe
         +wS+O0vzAez+BBCfve44TQx2USlvDI1UfG/aHvmykjXTYcQfSd2MRl2tvZdEtwybwcvV
         9kvALn5lPNBkscfMsJEG1CjnPXbjDsetfnJ5YJhNK/HhGd4mHSTuQ2uZsvMBexDcaI3Y
         WpfKoxgqvoWI2sDzu2sbqz/v2/5rMEDC1M1tIKJay0PAWpGVzl+/+/lXgiSNnLBM0buk
         w27vwRXzXt2S8Hhr3KO135/rFnL8CFXECWc4TO5KSaqrLrGrATMSgJN4Q0c38fjU8vzg
         BXgA==
X-Gm-Message-State: AFqh2kqjH7FBdG+iwqC4vwHF7LAR8Jv9kgthYQmL0TBiUaQUYS1Ohdg4
	ykB6NeWG85DcgIHfup5X1B8lbv4Jt2KhDB1XHJU=
X-Google-Smtp-Source: AMrXdXsJgEYjAMRw9Y1pVBcoEqsGph5ygFbGQ1CJ180aN503otcqCIm5v5mGwV9KMZSz0Nc1Cw9d2A==
X-Received: by 2002:a17:902:7fc4:b0:193:3a92:f4bd with SMTP id t4-20020a1709027fc400b001933a92f4bdmr1414918plb.47.1673280748508;
        Mon, 09 Jan 2023 08:12:28 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-5-74.hawaiiantel.net. [72.253.5.74])
        by smtp.gmail.com with ESMTPSA id cp5-20020a170902e78500b00177e5d83d3esm6336837plb.88.2023.01.09.08.12.27
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jan 2023 08:12:28 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell] poky.conf: bump version for 3.1.22
Date: Mon,  9 Jan 2023 06:12:20 -1000
Message-Id: <af7fc0725a1f6c4a5f3128b5605d6743d610eaa1.1673280657.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1673280657.git.steve@sakoman.com>
References: <cover.1673280657.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 8c324c0..52755cc 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.1.21"
+DISTRO_VERSION = "3.1.22"
 DISTRO_CODENAME = "dunfell"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.25.1

