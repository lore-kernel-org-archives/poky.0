Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web10.14913.1677169297765643456
 for <poky@lists.yoctoproject.org>;
 Thu, 23 Feb 2023 08:21:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=UviQN1f2;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.181, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f181.google.com with SMTP id ko13so14187867plb.13
        for <poky@lists.yoctoproject.org>; Thu, 23 Feb 2023 08:21:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T69NE0FCwfJjTzS+yhfauI4Ohr1Zs7/5LIK015bcz9s=;
        b=UviQN1f2GRuf/EOMIgvaXYaL6HBLyWg9hyCq5ha+gGdMqgFe1gi8lJQrni/l6TcvE/
         W+gU+UGVfEmd2XrSOIH3j81PVx4PnEaXeRQCL3BCHeOH2LL8pmCeflPCy2aXZQqjQI9/
         C75PbW9hW4hUdJtanGqHn4b1Eh57EmxsqATJ6Mr2VQLQVD00VLEVCkDrTK3SqF2nBOTI
         yagGFrhUfMQfpNK4VeerF3LmZ2OatY78yrNiuEOzw04Zv6jMt8r++ccQ2151lTaiv+oV
         pVHQws6x3bQfSYBvfl/dRWqRgOH+ecoTrPqgWvthydVDVmHAsd6pD4yHyzvtm+BD8Yy4
         UdIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T69NE0FCwfJjTzS+yhfauI4Ohr1Zs7/5LIK015bcz9s=;
        b=hGc/AKYdMT5rWgXCWCPs4NFtVs3692lzoFyMin1HmRRJ6ZMTLLw1TKJrgQWqRjCT3L
         pwgAID+LWHfFRBNzbECFQFuLT3owR6qfQTSipnk6saRaAWCRff8xciVabY8Wke18NyD5
         NrYAlgyR8ft9onB85QMSqdlUhxlP2ndIu13uaPJz4p+unvYNqNAzOIx+ddMX6Nepaa7K
         bIHM8UIGD10GriqUNkZxMS49DQqcUiZjcoC2bRnUgI7A67R0+/zOn4/fBrwpgcPP7bDu
         eleKnO0dDLnAEjcsBMFaikbloye3Ese7IvAK4zadftCZngyB62Jo5klM/FDXJnbRNYjw
         HWgA==
X-Gm-Message-State: AO0yUKXpmjCCGthtzxBdkORiEjYEgOrHRLtaIqZxJymSKhB9jnOZK6Zu
	zjbxkF0PG1V2NmUUOdBi/We9wLEcWKPcYML40OU=
X-Google-Smtp-Source: AK7set9+yq2HkAWGOgV4gT2229TpmSaF0Q3NOO1eba+EeOhjKi1sUM4PNzTfC34l2PfSWvY2fMP/ZQ==
X-Received: by 2002:a05:6a20:c742:b0:c7:3b5f:d537 with SMTP id hj2-20020a056a20c74200b000c73b5fd537mr7272043pzb.25.1677169296484;
        Thu, 23 Feb 2023 08:21:36 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-4-112.hawaiiantel.net. [72.253.4.112])
        by smtp.gmail.com with ESMTPSA id 2-20020a631842000000b00502e4015ff7sm3479680pgy.23.2023.02.23.08.21.35
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Feb 2023 08:21:36 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone] poky.conf: bump version for 4.0.8
Date: Thu, 23 Feb 2023 06:21:30 -1000
Message-Id: <a01857a7e74c347767dc7afc690b545061e683fa.1677169225.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1677169225.git.steve@sakoman.com>
References: <cover.1677169225.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index e9804c6..a5a26ee 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,7 +1,7 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
 #DISTRO_VERSION = "3.4+snapshot-${METADATA_REVISION}"
-DISTRO_VERSION = "4.0.7"
+DISTRO_VERSION = "4.0.8"
 DISTRO_CODENAME = "kirkstone"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"
-- 
2.34.1

