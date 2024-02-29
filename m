Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 140CAC54798
	for <webhook@archiver.kernel.org>; Thu, 29 Feb 2024 06:22:01 +0000 (UTC)
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
 by mx.groups.io with SMTP id smtpd.web10.18528.1709187717239374226
 for <poky@lists.yoctoproject.org>;
 Wed, 28 Feb 2024 22:21:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lGrryin3;
 spf=pass (domain: gmail.com, ip: 209.85.166.176, mailfrom: raj.khem@gmail.com)
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-3650c7e0dd2so2008455ab.2
        for <poky@lists.yoctoproject.org>; Wed, 28 Feb 2024 22:21:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709187716; x=1709792516; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dlPaoZjBZF6D9yFG4yAn92Lw1cqYFn3a1u3X/TRmfRw=;
        b=lGrryin3XR/opuJ2KAtj6cDKHgO9c/4DOFDIO/1TPEfXDOHCyxqKnd58bUWRpnWFwX
         EPz7MJzyKPmJAp9GU36OD/HYzZ5VsKtr9uqFPgvdC8SynFoJBPFaEgjpBmveOztjMSMd
         3mFqzMtKogr+OB26yaM+Nn2CG0HeDwMK6646wBluPlQmlIeGBSFS5vA2muP94VTCm01j
         2BNr2jebCia2VyqfeDr6e3irY6HcSXCeEhhVJP7GicXA/0pVjHTB77L2xVdhw4KjuwuO
         VMBSOSIUDjdzsheWTiMvk6j3T08hd2mjt1iD9cHzKq6XZ1qTJpjrCdeCa3OYqyp/+i7N
         Ri6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709187716; x=1709792516;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dlPaoZjBZF6D9yFG4yAn92Lw1cqYFn3a1u3X/TRmfRw=;
        b=miYQyzYsJBpL/YHprfQYwI5C3EVRYj2+a/vxUlZJOWg4Fe2PvYMYp3fyPC+AoLFJNm
         xq+12mps32B1G7B+tTzRm6b72e0Jkba0/X3LJiebtTMPeUmWvojnr9Yg8RvyhFA/7FNh
         mFre2ZqYa6N/QVt3JpnCyYVfM4yFTn6+lbFWICE6lyhkSf6rAxYy2ddT4qrCVHSKBrx9
         6/JtoMMuWsfNjdS0eBBlawWOKAULOybAsW5vXO6h/2ut/keqMmyg2ejc+muz7w8dkHi6
         1e9e8S6TEbGAk6BAXhH3lSFzs094Ad+LGQbzvZ4gcJ/DOWL4NlPsiNVoThmWaJ6RAkHx
         JbiA==
X-Gm-Message-State: AOJu0YzNdMXuXA/UcwU5i+Sk+3Tr5AqfFQR/98pDbilB2DExJdMu19Zf
	U4OjPKDnwvb/D+wO22S+7s/3LH8d/kO3eI/sTgiaf7v4T2r670g+sd/RCIcQ/kQ=
X-Google-Smtp-Source: AGHT+IGIoqevyY0Vl7NhbTeyzlGmoDov3zLLbYvg2Ss8BudBuc2jfEKrXmCs9+Z4l9WQdXWdTyyi7w==
X-Received: by 2002:a92:db51:0:b0:365:a64c:e2be with SMTP id w17-20020a92db51000000b00365a64ce2bemr1647681ilq.15.1709187716208;
        Wed, 28 Feb 2024 22:21:56 -0800 (PST)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9d80:4380::9a3d])
        by smtp.gmail.com with ESMTPSA id y19-20020a056a00191300b006e55016966fsm459216pfi.81.2024.02.28.22.21.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 22:21:55 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Khem Raj <raj.khem@gmail.com>
Subject: [PATCH] poky-bleeding.bbclass: Remove use of SRCPV
Date: Wed, 28 Feb 2024 22:21:53 -0800
Message-ID: <20240229062153.831488-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 29 Feb 2024 06:22:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13283

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 meta-poky/classes/poky-bleeding.bbclass | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/classes/poky-bleeding.bbclass b/meta-poky/classes/poky-bleeding.bbclass
index e5f30687e4b..3bfdcf14540 100644
--- a/meta-poky/classes/poky-bleeding.bbclass
+++ b/meta-poky/classes/poky-bleeding.bbclass
@@ -1,5 +1,5 @@
 #
-# AUTOREV and PV containing SRCPV needs to be set early, before any anonymous python
+# AUTOREV and PV containing '+git' needs to be set early, before any anonymous python
 # expands anything containing PV, else the parse process won't trigger the fetcher to
 # cache the needed version data
 #
@@ -13,7 +13,7 @@ python pokybleeding_version_handler () {
             bb.warn("Here 5 %s %s" % (d.getVar("PN"), bpn))
         d.setVar("SRCREV", "${AUTOREV}")
         if "+git" not in d.getVar("PV"):
-            d.appendVar("PV", "+git${SRCPV}")
+            d.appendVar("PV", "+git")
 }
 
 addhandler pokybleeding_version_handler
-- 
2.44.0


