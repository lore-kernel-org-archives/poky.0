Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web12.614.1659552739285297131
 for <poky@lists.yoctoproject.org>;
 Wed, 03 Aug 2022 11:52:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=At3q4m+R;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.41, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f41.google.com with SMTP id 15-20020a17090a098f00b001f305b453feso2930371pjo.1
        for <poky@lists.yoctoproject.org>; Wed, 03 Aug 2022 11:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=IvmdjygNVM9EqKufakociN83ZFzldPqfGo7TVjrbNic=;
        b=At3q4m+RL4pIYxJvDB23cKjoabB9CCkHZUioRampCBI63mgFLY9WoocJJabRCjgm15
         h+WcePyINCpfJCtnC8rQD+nctfUraneHSZNGv39BigtgYcIgRkif+vykEuB1JSrC8Lh8
         yfmIRSwGwrVxcec8PefD1Mf4s1WVXQVIevYLVH66k/t3kscH/0B6e6/l4473umyLxyZL
         ZrShjyD1zw4JyFIgO3ywsXZtZUwLC0pLGNuhLpZcc0Ti9C0ENICaMxbWqftfadbMgSsr
         Il8yGOi3H7FwNQT+Y5SJfoyC76i3mVWbiarjVgnTqp8/wuo19mDzE5qqdRPCeQ2Jm1I3
         ySKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IvmdjygNVM9EqKufakociN83ZFzldPqfGo7TVjrbNic=;
        b=3Bn2NNrbsHULMNMvL2oFykIicifVkW/npRr28homIQuHbkXqadpwXueJz58rUPcDxu
         A1XN5330hEfb2a5XmHotOYN6aNhVK36bQBYb6ix83b9KwpQNG/hMvFz+ou2Rr2wVSOzO
         YyIlzv102MzNOlT9zP8Qtom+YUumflgj4rUujhnxJ82Qf/XFJL8nA9AdRod6rmSe1bYt
         IP2oDbRPzF+YQu8oKZDR1q8027XHnT2OoWDPp56KW60Ym5+e2JB9JURpLF2C/Co7Nb52
         W+pANXj2czgFVedmxNP9ZkH/A6PC4yi5pmJtuK5nX7s72PjDJaiE2yZkZIjqQRlPw0Cw
         r1Ww==
X-Gm-Message-State: ACgBeo2F2yXca842aYc38cc8D0tSgdYRUkldFb73Oc0aa61bJnq+GBxl
	NDecy9t8cOsCBfmfcuVUpB4qDMeVeaDnwuwW
X-Google-Smtp-Source: AA6agR5/KGOix1IU7v00PbXTVVpfSifCV8A6y2EUUjH1Cd68jCOAUv7C6pg1LIc6gBc+6Ka2k7nucA==
X-Received: by 2002:a17:902:900c:b0:16d:28ad:29e1 with SMTP id a12-20020a170902900c00b0016d28ad29e1mr26926999plp.93.1659552737992;
        Wed, 03 Aug 2022 11:52:17 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id t3-20020a17090a510300b001f21a8f7f14sm1903365pjh.9.2022.08.03.11.52.16
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Aug 2022 11:52:17 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone] poky.conf: bump version for 4.0.3
Date: Wed,  3 Aug 2022 08:51:59 -1000
Message-Id: <4f0b40b474fcdec593f224caaf75d906d44ce730.1659552622.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1659552622.git.steve@sakoman.com>
References: <cover.1659552622.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 0cea4ce..50ce6ec 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,7 +1,7 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
 #DISTRO_VERSION = "3.4+snapshot-${METADATA_REVISION}"
-DISTRO_VERSION = "4.0.2"
+DISTRO_VERSION = "4.0.3"
 DISTRO_CODENAME = "kirkstone"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"
-- 
2.25.1

