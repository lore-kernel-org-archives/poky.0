Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web11.35024.1583683267702871015
 for <poky@lists.yoctoproject.org>;
 Sun, 08 Mar 2020 09:01:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WDcctaYD;
 spf=pass (domain: gmail.com, ip: 209.85.216.42, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id d8so3316756pje.4
        for <poky@lists.yoctoproject.org>; Sun, 08 Mar 2020 09:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=IQj/A+7SP+X56tQrA2kxtCE8yir+mpLanFYulelGLrw=;
        b=WDcctaYDSDy7il5y8salv8oWKAUuMoWpd15ovLFZ60J/X0lFXooAIswT90WxnFjBMw
         /iE0N7ucxBCfiuu8U7CY0CyIP+Ys8sNbEMvCb0MCa4G3g1b+j/MiOkQNH753SuFDCw08
         bTESCDO9BrS6xabHNbls7/9ie9Silbgl1qj4mu4nmILs8VT7BF1I6WB9NgDIGZ97DKzD
         1bRgdMlyb4f1wr1bLaP05hgHAnD0UzXLUw6S/NnPgGm0gY0/vLs+wuSkQ0g9sCtUsx5J
         mEd4P9XFqFfUCY+oLTndhWcBrY45g2AJnD1v5ob1/LrQFY1/6VFHRPC1VS3gPEs5fGtr
         lh9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=IQj/A+7SP+X56tQrA2kxtCE8yir+mpLanFYulelGLrw=;
        b=U1aWtp+y1sHnwBaL/eVZbap66MxuIjd3ly4bDdiVpXRbffO9a1M33pahFosjic/KPH
         JC+nINvtAO+jMzmVZRmqC/pnlSKNmwflX3iAWSH/5Xu0dZ0LAuY/fyaftx/WxJnL2DJ/
         kxRuSLksIY9NehclKDv2XWPRYyvQOXz5ikBpLlX7JkBXJ1jGh+pb/WEyvu4kTigplPAf
         asYDXJga7pjyS8WrbPRRIisj0HrzvPWpXbtb6Z56xHhKG24rxBajb3SK3r50stifql9t
         yuW+iuBhNDYreCf98UgiDVCJLb8cPzPis3kN4pDCLYD4zAIs5kZoFTLKkRSM4oHxtLQa
         4ZYA==
X-Gm-Message-State: ANhLgQ07gWJaIrTQoY41xQJQLqdk/qLPcLh0O6utWL08HdEy+YMfMvQ9
	WFrAL1qz2PnKPmvbH1G7mrYPqu62
X-Google-Smtp-Source: ADFU+vuMXnPD3KvKzyPv4VNZ7OtikxBpTZuKB8c+f6CitDopasz9SHXyW66B/61StL8JWSMSy17PjQ==
X-Received: by 2002:a17:90a:c301:: with SMTP id g1mr13404332pjt.88.1583683266917;
        Sun, 08 Mar 2020 09:01:06 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:6c62:7a1c:e667:70])
        by smtp.gmail.com with ESMTPSA id j126sm34712258pfb.129.2020.03.08.09.01.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 09:01:06 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Mark Asselstine <mark.asselstine@windriver.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: [PATCH] meta-poky: update to new mailing lists
Date: Sun,  8 Mar 2020 09:01:05 -0700
Message-Id: <20200308160105.7284-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

From: Mark Asselstine <mark.asselstine@windriver.com>

There is still some confustion around the mail list updates, as we
have seen on the lists recently:
https://lists.yoctoproject.org/g/yocto/message/48439

Signed-off-by: Mark Asselstine <mark.asselstine@windriver.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit c62fa2a498625e1765c4572618f74a03e1895a23)
[ak: fix of zeus context]
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-poky/README.poky           | 4 ++--
 meta-poky/conf/distro/poky.conf | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-poky/README.poky b/meta-poky/README.poky
index 8cf2027..be0c6c0 100644
--- a/meta-poky/README.poky
+++ b/meta-poky/README.poky
@@ -53,11 +53,11 @@ bitbake:
 
 documentation:
     Git repository: http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/
-    Mailing list: yocto@yoctoproject.org
+    Mailing list: docs@lists.yoctoproject.org
 
 meta-poky, meta-yocto-bsp:
     Git repository: http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto(-bsp)
-    Mailing list: poky@yoctoproject.org
+    Mailing list: poky@lists.yoctoproject.org
 
 Everything else should be sent to the OpenEmbedded Core mailing list.  If in
 doubt, check the oe-core git repository for the content you intend to modify.
diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 9c0cab9..106706b 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -5,7 +5,7 @@ DISTRO_CODENAME = "zeus"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
 
-MAINTAINER = "Poky <poky@list.yoctoproject.org>"
+MAINTAINER = "Poky <poky@lists.yoctoproject.org>
 
 TARGET_VENDOR = "-poky"
 
-- 
2.17.1

