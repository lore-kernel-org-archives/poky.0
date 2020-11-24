Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
 by mx.groups.io with SMTP id smtpd.web12.53330.1606231102848946675
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Nov 2020 07:18:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=dvAvOzmB;
 spf=pass (domain: konsulko.com, ip: 209.85.128.66, mailfrom: pbarker@konsulko.com)
Received: by mail-wm1-f66.google.com with SMTP id d142so2720885wmd.4
        for <poky@lists.yoctoproject.org>; Tue, 24 Nov 2020 07:18:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0EfU+63GYy6YNgw+3jUd4OFO068i1mn4nofW7bavsxY=;
        b=dvAvOzmB/YCE/7B+DkUaXeWN9vP4Me3qtdPrjlQM6DSdaL3euu5a2EsSTSR4Zosmel
         5+wl1jc7Lfkl0wpP054zT9mzU02GTK7A+fw/Ox8Ss/Sij2WG5MHGeve2WHmZ7MzUG1c9
         uagPvyrLqfq8a9nEcd6MxNmYO74G1EIykrxko=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0EfU+63GYy6YNgw+3jUd4OFO068i1mn4nofW7bavsxY=;
        b=EteujLnX4K78GMlwQvjDoFCQ+SQcA0TDkKtbcfd7z5f/OzAoeWPi1nC3CnUW7oD0uR
         hJlZHjdqFRZpNug32gAUmlBEBQnOtG2SQn0lnvEts4PxFNhVR8a8DpBU7cYDWBX+k9t/
         W/pEAwYcd0iwxedi+iLIjMrV/5zwFtgGmwUAWJQAvTMfFk/6TDtr22C+g3OTCiCycsBx
         4nAhuUXvCFCijl5lyriACktmMzo164390IZb42gAdNkmuq4BnJOy14tr40TxIESBaloJ
         jKpbsx2W1prMDDuCs/MGg8Pe91j75lF20pY+gm50qLdUsnvq/yYeD5x19Fa4CQ8gOpvE
         ttOQ==
X-Gm-Message-State: AOAM533nTDHIeLxA1OFE76mReFI5ao2jQSt8SxZ1kxOBfxAnxPsRYi5Z
	PJ546sceTUzCYTKnrvNP49I/EbBAhnU8Xw==
X-Google-Smtp-Source: ABdhPJz1LLnGI+/hy7UJkeRLXM9hfdHcYSzUhhM5Qg73UITtoj4yxvEnpyt17Pgr+BcFD3mxD7DQhg==
X-Received: by 2002:a1c:3b07:: with SMTP id i7mr5066867wma.118.1606231100987;
        Tue, 24 Nov 2020 07:18:20 -0800 (PST)
Return-Path: <pbarker@konsulko.com>
Received: from alpha.home.b5net.uk (cpc76148-clif11-2-0-cust524.12-4.cable.virginm.net. [82.1.54.13])
        by smtp.gmail.com with ESMTPSA id d8sm5743907wmb.11.2020.11.24.07.18.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2020 07:18:20 -0800 (PST)
From: "Paul Barker" <pbarker@konsulko.com>
To: poky@lists.yoctoproject.org
Cc: Paul Barker <pbarker@konsulko.com>
Subject: [PATCH 1/2] poky.conf: Add opensuseleap-15.2 and fedora-33 to tested distros
Date: Tue, 24 Nov 2020 15:18:15 +0000
Message-Id: <20201124151816.5845-1-pbarker@konsulko.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The autobuilder contains workers for both of these distros.

Signed-off-by: Paul Barker <pbarker@konsulko.com>
---
 meta-poky/conf/distro/poky.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 31dc110bf6..bdf46f4038 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -52,12 +52,14 @@ SANITY_TESTED_DISTROS ?= " \
             fedora-30 \n \
             fedora-31 \n \
             fedora-32 \n \
+            fedora-33 \n \
             centos-7 \n \
             centos-8 \n \
             debian-8 \n \
             debian-9 \n \
             debian-10 \n \
             opensuseleap-15.1 \n \
+            opensuseleap-15.2 \n \
             "
 # add poky sanity bbclass
 INHERIT += "poky-sanity"
-- 
2.26.2

