Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web12.14173.1598453571436983935
 for <poky@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 07:52:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BNZNeIeT;
 spf=pass (domain: gmail.com, ip: 209.85.218.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f49.google.com with SMTP id l2so3275257eji.3
        for <poky@lists.yoctoproject.org>; Wed, 26 Aug 2020 07:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rgBjN+VqngUNC98s2TTa5EK4WMkfnMobge2lghtq3yE=;
        b=BNZNeIeTjYzu5t3Da2433E64MQBiTJiD9/8kyinDE8Pwy0+i9v190wo0i+9rBtOwrK
         IU/R7klp09HlOBSGrEXEpF2QIg2WoThDISq8JSy45MSwe/OEA0Ax7Iai+mKDql6xR9bN
         4W1Jybxbx9mvrp3zWiPCX3cqdmL2PBRwbJkzKABSGvWWBh5YaDkOP70Oi1+oT5c7Fsop
         nYeyQcXzpNWv2ci5hLw024uEgdG3eTPS/15Iw96KAlAKSsrjoE6E9MQPiIV6a6Sdbp54
         yHmhKHCeiZKMs2hmE2/N8QQ7VV0YokAVee5NpYNXSBaJeB1yMkym2Li85WVQGVgASykR
         Y7bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rgBjN+VqngUNC98s2TTa5EK4WMkfnMobge2lghtq3yE=;
        b=QCiRjwh+dGSZeLqUKTzc0UqaR/ZQQ47AYaWHndyioNOg2cE/Ky46z4b/SrTWr1h3zi
         Vf45TjCbdDP+GoVt8BSHGOgV+GIG7lEWaW+QcMvqVmFQn42bShUtfQg46IZeYTLCSGIV
         nmTQ8xhoM8gd7Ml+wegDwXzPSAmtd8VN2PnNvq0XBYmf9OGa2ceTXNcFgIsm06nz6m9J
         HKUpOa3U/aYyVgZXXp0TjLZn6no6Lw6aTkYTCrUNJ71m4l6vCPV6lKlSEHPjho8eI3Id
         MzmunOKt29zL2WvAOQYSawO3QbIPMu3/JhV1paDyviCfNaOzTeFM5QfS7KzHj7UpMTAe
         TeTw==
X-Gm-Message-State: AOAM532p/u/CUcM1vDu1XA+dYPBn7a4RhbaZKVaixuWxP5j7zjj2FfNB
	DbEdA5Hk4YqFVVFjHdu1L1KUI6k1n3g=
X-Google-Smtp-Source: ABdhPJwL/Nxb/IVRB7DZxnPHpZ/DHOYN/RZu+OSOs4hUpw+iiPpPVuhHCj1y38WThyVOKE52VqnuZQ==
X-Received: by 2002:a17:906:4047:: with SMTP id y7mr15672108ejj.21.1598453569557;
        Wed, 26 Aug 2020 07:52:49 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from linux-f9zs.site ([2a02:2450:1011:56f:b652:c378:b428:fdf])
        by smtp.gmail.com with ESMTPSA id z21sm2248189edq.42.2020.08.26.07.52.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 07:52:48 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH] poky.conf: do not install packagegroup-core-device-devel into qemu images
Date: Wed, 26 Aug 2020 16:52:06 +0200
Message-Id: <20200826145206.6871-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The purpose of the group and what it should contain is no longer clear, and
generally adding userspace development items to images is best done
at the image/class level.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 meta-poky/conf/distro/poky.conf | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 826f0d633a..e55641d87f 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -29,14 +29,6 @@ SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
 DISTRO_EXTRA_RDEPENDS += " ${POKY_DEFAULT_EXTRA_RDEPENDS}"
 DISTRO_EXTRA_RRECOMMENDS += " ${POKY_DEFAULT_EXTRA_RRECOMMENDS}"
 
-POKYQEMUDEPS = "${@bb.utils.contains("INCOMPATIBLE_LICENSE", "GPL-3.0", "", "packagegroup-core-device-devel",d)}"
-DISTRO_EXTRA_RDEPENDS_append_qemuarm = " ${POKYQEMUDEPS}"
-DISTRO_EXTRA_RDEPENDS_append_qemuarm64 = " ${POKYQEMUDEPS}"
-DISTRO_EXTRA_RDEPENDS_append_qemumips = " ${POKYQEMUDEPS}"
-DISTRO_EXTRA_RDEPENDS_append_qemuppc = " ${POKYQEMUDEPS}"
-DISTRO_EXTRA_RDEPENDS_append_qemux86 = " ${POKYQEMUDEPS}"
-DISTRO_EXTRA_RDEPENDS_append_qemux86-64 = " ${POKYQEMUDEPS}"
-
 TCLIBCAPPEND = ""
 
 PREMIRRORS ??= "\
-- 
2.28.0

