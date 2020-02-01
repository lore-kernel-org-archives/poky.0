Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web09.2396.1580589040207283571
 for <poky@lists.yoctoproject.org>;
 Sat, 01 Feb 2020 12:30:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dgjGD3rd;
 spf=pass (domain: gmail.com, ip: 209.85.215.175, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id k25so5527271pgt.7
        for <poky@lists.yoctoproject.org>; Sat, 01 Feb 2020 12:30:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=7edSxPnYAINL2sG57V+geSkii25GnoFqaWXmZlQ+Vlo=;
        b=dgjGD3rdeCsHW+6SESs75DYEptVJpIMoqvsNu9fYZFIRFAvD6OiZ1SIt2HmEAktPTj
         drM5C23RLK7e3DKQidR2w2cEyDk1e8qP4DUPt+r1c8zvnKD1B+haVnVMlvsI/9MCATyp
         U788+3G0bcV8JDpmTwufnPV3rE9SoX9q/cLVSWnykOVRXjF4MorED++COBWf6c9u9q5b
         wLQNyI6Fh/6f/6FDPNRvaz0Tk6I3hAvbMNy7UMqfuAt66OI6/wnE11FGze6990fA0Wuz
         3qgnJVBOCiroOGw1J2CbtnvE4W+MZoBr2ud1AV/dmZYZoQRBkT+kyKLK8GiTK/grL7Vk
         Vg7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=7edSxPnYAINL2sG57V+geSkii25GnoFqaWXmZlQ+Vlo=;
        b=rRYlRQvG3N9wPxxN5CjEwm7/z7RM4i6f9lU7uBGkZgivT5srlsnCK4QZmtpsXiafhl
         HKhO5tVCAuPdyy9RZZjcPXYE6hZus0BFJDIHscgSeZZelVBMBTC0HGVjJtZ8mLT8dxgJ
         DbkrfEq7h0Ojsm7XLk6jvhoS40mY7eroSelWyZYyura7TkC0cAy8odEeBGdGwF/tqRw8
         rYOKVOpKN57F3AOd6CjGM7XOxFkFtkv8BNX8es/KkeKNQQJa7zeFPkXW1UhSZV85xIWW
         CREMHn8ZrstctbavvUdpRuU1Ptcr7fbdNsHFo1TY1Vs7VTeVjz10MLMyijduHR0caU5n
         caGA==
X-Gm-Message-State: APjAAAWd7+y/HgIBfxWthWFd7AHoF2beR2GWWbnX0aO5ndfhrci9Jp1a
	/sugMnbVrh/3X9riqEFYCwa+nWEt
X-Google-Smtp-Source: APXvYqygEniymBYc/63VC6/Bf7SfzAPTtW2pO/FieQk6NTJm2lRKHJZs6kgjWoHqF4U0ob/+a5Je5A==
X-Received: by 2002:a63:ed56:: with SMTP id m22mr16729301pgk.261.1580589039587;
        Sat, 01 Feb 2020 12:30:39 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0::afc])
        by smtp.gmail.com with ESMTPSA id r3sm15158951pfg.145.2020.02.01.12.30.38
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Feb 2020 12:30:39 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH 2/2] poky.conf: Bump version for 3.0.2 zeus release
Date: Sat,  1 Feb 2020 12:30:36 -0800
Message-Id: <20200201203036.6764-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200201203036.6764-1-akuster808@gmail.com>
References: <20200201203036.6764-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 1a9d06d..1f2d492 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.0.1"
+DISTRO_VERSION = "3.0.2"
 DISTRO_CODENAME = "zeus"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.17.1

