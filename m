Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web10.3842.1627740119571316064
 for <poky@lists.yoctoproject.org>;
 Sat, 31 Jul 2021 07:01:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AsixtJH1;
 spf=pass (domain: gmail.com, ip: 209.85.128.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f54.google.com with SMTP id n11so7701242wmd.2
        for <poky@lists.yoctoproject.org>; Sat, 31 Jul 2021 07:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wp7lzog7sgF9fEcON0yIwX8n6Aun3+QsdSAW8uIFTc8=;
        b=AsixtJH12ZyB38VnGeCWz10+1gvvkIWj8QZ0wITulqAw0IdIFWlgfGCUJu+wSa2zsy
         FBA8irpn2Ohoj8ufgR1/IPro5xpS5vApsge5WPu/7iYWBwujer3SkjQqYo0AqFIx2Gmz
         OH/w1tCQkxK3/dghrYy6Q50+cIOyciqSArSifLEoEo3fTVSy4KM0RRd5g5HIkEJEnqJ2
         K9kudN+vL1tqukz4SvnCfd/Smk/iXDqmVG/S1KGmWJGDoxKbD0mAFsmuXTLwMYARcX48
         6yFQT/QGQzHVCwNPa5WlEPTyie1LuRWDp+pPmAdXN/aaQsMyOcObjeqAq/hCSeXbOefn
         PZJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wp7lzog7sgF9fEcON0yIwX8n6Aun3+QsdSAW8uIFTc8=;
        b=PSNLu7hdtMJfMqO+xxSogIqWz+PoZW42U8uJVp1jmpDY7jWQmcJQnmXUFKhWQQ3BrB
         ewN3GEvs0ZttrtfKCgPCVFvgQYE0q5CFDiU39oF/IBa+bmy2z23phixodCXypozbrVsP
         Wnd0/kTlNszetJXrHMhm0DJbug7ZNDwIJ9B7kOV/Zfl4IP+4zX4Wz6lWtJmaxdewpXae
         4CEZPLq+SNu/xTEExFOiNIlwBA/wVKgsbP3fH3bcV1jnE52sjLZugyPuLyoFql4Qpfpf
         JzCrjTS5yO8dZMeGSucrg+2GPReZPuCPjkX4cPEtepY6od4YI2EB/ldC3fPtTTSeIO/0
         9tSA==
X-Gm-Message-State: AOAM531y/FG6DZPR7nVZxaWHMKj7CimzUwLWibLL5S2BmfbKbwU/zgz/
	OklN15XdaHVFstr7ACCpfwFnYiRh92A=
X-Google-Smtp-Source: ABdhPJwswFAfent1yto0PvqVPRpF9mSrg0gV41PohQX4qnY26JiCkz9z9OX7zHV/wVoMJm94BLnv0A==
X-Received: by 2002:a05:600c:4105:: with SMTP id j5mr8418734wmi.86.1627740118148;
        Sat, 31 Jul 2021 07:01:58 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id l41sm5227918wmp.23.2021.07.31.07.01.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jul 2021 07:01:57 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH] local.conf.sample: disable prelink
Date: Sat, 31 Jul 2021 16:01:53 +0200
Message-Id: <20210731140153.765974-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Recent tests have shown that prelinking works only when PIE is not
enabled [0], and as PIE is both a desirable security feature, and the only
configuration provided and tested by Yocto, there is simply no sense
in continuing to enable prelink.

There's also a concern that no one is maintaining the code, and there
are open bugs (including serious ones such as [1]). Given that prelink
does intricate address arithmetic and rewriting of binaries the best
option is to disable the feature.

[0]
https://rlbl.me/prelink-1
https://rlbl.me/prelink-2

[1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=14429

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 meta-poky/conf/local.conf.sample | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index 53766d1a9b..4f5c32af3f 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -148,8 +148,7 @@ EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
 # enable extra features. Some available options which can be included in this variable
 # are:
 #   - 'buildstats' collect build statistics
-#   - 'image-prelink' in order to prelink the filesystem image
-USER_CLASSES ?= "buildstats image-prelink"
+USER_CLASSES ?= "buildstats"
 
 #
 # Runtime testing of images
-- 
2.31.1

