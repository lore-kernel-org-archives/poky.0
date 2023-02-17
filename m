Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web10.1008.1676656484131146345
 for <poky@lists.yoctoproject.org>;
 Fri, 17 Feb 2023 09:54:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=dzSnziD6;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id n3so1545540wri.10
        for <poky@lists.yoctoproject.org>; Fri, 17 Feb 2023 09:54:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=HPPM1vGM4JF6b7cDSqfot1J0A3GJoCHSSU4qNFzgQ2s=;
        b=dzSnziD6jPcb/muDv4/amQXB3P22B10b3Z2B8T8gb2baRvxDg6o91DVtscvDERqZBc
         Qe3XvNZt6ozw8xyid5vqxbZkfy6DbZH0i+Ro5Q9kWGAJOQUR1+YLKfH3YwRUWEfPxqAD
         fwUR3vyteagxVIPHspzwNfSNsdjfgDlqonZ2w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HPPM1vGM4JF6b7cDSqfot1J0A3GJoCHSSU4qNFzgQ2s=;
        b=FyzMY24CslnFbDE7XilrGPDEHyNX05h0Ocd7fEQo2vlsqKNglvslufPtuThuELtvW0
         88oxOD/R7UaCFtwr1lGCqXAdGx96QxZdC+a4d+DTTjRlhZiTn14Y+B0f0otfXfAYpFeq
         a5H6nEc0U3/YPx4YKdLPy2QnxdKTS0/LRNUDCci4k0x+JE4K8lizcGnzQgWKzLQ1OrMG
         4TnYLOfETd0Z5pN+COeUlLCTekq5ZKrYl1Hrmc+/hAcorPJ9SI8SwGteESuQn606PDUz
         PL/zDtQDojBVfLuVha2v5TF+9lH20ZFWmB19FGpn4fbWsY0MPiy6/iY3oBxq3Vm+puQu
         CZ+g==
X-Gm-Message-State: AO0yUKUsVN3aD/tBhLRp9DmLbNLe4AtHI/v1Fc95AjP8v1y+4GNk+uGf
	VUXis80dRjV4fCSSpn7G0SYezUVoj7zfFkxq
X-Google-Smtp-Source: AK7set99XCq+7clUPcBsmFecMVcyHnUIjaDlqGtu5Yh0spjgYkF30fjZttj9yDJlKo/5KduccppzJg==
X-Received: by 2002:adf:fd11:0:b0:2bf:c518:b060 with SMTP id e17-20020adffd11000000b002bfc518b060mr352861wrr.20.1676656481767;
        Fri, 17 Feb 2023 09:54:41 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:33b5:dd6c:d0ba:e1ab])
        by smtp.gmail.com with ESMTPSA id s9-20020adff809000000b002c6eb1fc07asm464075wrp.31.2023.02.17.09.54.41
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Feb 2023 09:54:41 -0800 (PST)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky.conf: Update SANITY_TESTED_DISTROS to match autobuilder
Date: Fri, 17 Feb 2023 17:54:40 +0000
Message-Id: <20230217175440.359209-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The autobuilder workers change over time, update the sanity testing list
to match the current autobuilder workers OS list.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index ec2101a31ed..df8eb55a069 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -38,13 +38,13 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-18.04 \n \
             ubuntu-20.04 \n \
             ubuntu-22.04 \n \
-            fedora-34 \n \
-            fedora-35 \n \
             fedora-36 \n \
-            debian-10 \n \
+            fedora-37 \n \
             debian-11 \n \
             opensuseleap-15.3 \n \
-            almalinux-8.5 \n \
+            opensuseleap-15.4 \n \
+            almalinux-8.7 \n \
+            almalinux-9.1 \n \
             "
 # add poky sanity bbclass
 INHERIT += "poky-sanity"
-- 
2.37.2

