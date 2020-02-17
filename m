Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.10790.1581955052392350948
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Feb 2020 07:57:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UpMuYADx;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EEC30E01626; Mon, 17 Feb 2020 07:57:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.215.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98046E00C62
	for <poky@yoctoproject.org>; Mon, 17 Feb 2020 07:57:31 -0800 (PST)
Received: by mail-pg1-f169.google.com with SMTP id w21so9391114pgl.9
        for <poky@yoctoproject.org>; Mon, 17 Feb 2020 07:57:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=14Yy9hW6iasvYRmDXdvmal7C2J4V5IrMTbQyRn7R4h4=;
        b=UpMuYADxaPewVKvD9OGQw/ngYh4a2fyw9g4OOYCtY82xle7smdMwjI3MphN3QogrUj
         v9Pr56h/eDw3F7z60x8QzC67p9Z47I3hTHmJurx9BHPEWNWCJDmDvM53YIL7nUutwhfv
         ZCxJiJkbBGtrLs6GOEalUOb72GTeWqaxd3ZOiZ2s+AzXEy4kzV81muJI8RiYJ+CsSIoq
         gkkXzdB82IK5f/ZZRgs+ptq5onIiduWmReI16B31TIyCJz2J8yfoNoFOHijCPCupVMgg
         GluLhSvdMwZ7RGpSjk0ML5mdrBV+tDSJgB0QSOtxgSGjQibSCeJlncB/CloercoKBE9J
         FX2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=14Yy9hW6iasvYRmDXdvmal7C2J4V5IrMTbQyRn7R4h4=;
        b=M8Rol4Z+J0Aq13LB9s9e22vzSAG8eCrOvr16FniczzusChm567Omib69DeZHjeXrNd
         f6wzjZDepi2BNDmYTVutBHdopG5c2xTNaxS45WxnDZaBQOhaP6vTgUiepyLUelhOPjJ/
         cwWqD8u/2B6VQAmCcg/JthrokkKgw+C2+xGoH/gPALZEj9Co3JgIO14Z74XnNDhMMHhv
         9oZFVHEXDdD7O2WAMA7/F12N80xyqZGa+I7ee3BRuNteHkRovezSug2GR9INjwhVBHWI
         4XaFAjWkE8MDxD9TY1VMp73cpXpgKCx9FdlEWWFrbECjyHNdhKwXnNK/TiH60GJPq7YJ
         AIlw==
X-Gm-Message-State: APjAAAWeuAz/E0MZ+P7RAlEIlYW3w70hYtb9CGLhK7SxlNYoPFVkfuJ1
	mGFnebZ+3ucjbcTxHidrGo06OFj0
X-Google-Smtp-Source: APXvYqxHGPf/0ygNheVshkI+UkfsldV9P/Bk2w7gjFkzNS0KQICik8X2aYK3P/j6o12LMMHXNAGZDg==
X-Received: by 2002:a17:90a:a409:: with SMTP id y9mr20664570pjp.119.1581955050684;
        Mon, 17 Feb 2020 07:57:30 -0800 (PST)
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:9144:9b3e:b52:fa29])
        by smtp.gmail.com with ESMTPSA id w2sm892846pfw.43.2020.02.17.07.57.30
        for <poky@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2020 07:57:30 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: poky@yoctoproject.org
Subject: [warrior][PATCH] poky.conf: Bump version for 2.7.3 warrior release
Date: Mon, 17 Feb 2020 07:57:29 -0800
Message-Id: <20200217155729.21743-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 43afcab..c95b18a 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "2.7.2"
+DISTRO_VERSION = "2.7.3"
 DISTRO_CODENAME = "warrior"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.17.1

