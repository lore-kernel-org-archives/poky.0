Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.web09.2395.1580589039297857119
 for <poky@lists.yoctoproject.org>;
 Sat, 01 Feb 2020 12:30:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z+rR17Dc;
 spf=pass (domain: gmail.com, ip: 209.85.215.181, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f181.google.com with SMTP id a33so5536427pgm.5
        for <poky@lists.yoctoproject.org>; Sat, 01 Feb 2020 12:30:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=QfeR9mX2ijMVRMYQmBfKdcWUC5MNYHZwSkyw6fZMKq0=;
        b=Z+rR17DcQnuEJ+M49qMUyNUwpJHMeIHttujO4D78pZjz9devZn85v6baTO6+K8kZnU
         hQnqGG0aCpZoWDN6lPMlyI61z//nZWkmI+y38eXjTFZtRaqw+XRNvR4kV8A0a5E5VCTu
         tkBgmgd0ggwVdRrRd2V81p/usVsuGW+OS8uzfzgu/0qUwnCBFIh7wcJk4mZzXaa87Dxc
         nbdXuTVR2V+uI3Qt0XzcQwVvSplJbGDZvrfguWviJqWZMdtLgmQHfTm2Z9tx/khJWf8x
         gVVxzzYm4q4ePPv5LrwvKvQDRDTh1iqVR7yDlSj5xKI+GdlNG6Bly7G1M88yXK9iaAar
         eV9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=QfeR9mX2ijMVRMYQmBfKdcWUC5MNYHZwSkyw6fZMKq0=;
        b=lYhKJ990ie15gum4NRvvzYgfx/lw894iYIEb/GpVAY+QespmPQf+dTgRVIbwkf3Zqn
         1bs5nIvDMVOhfJK8g1RN7/XQzWk39z2NMojp0GXE8UfETC92Q/mw7PpNOq1NQ49LTQcM
         lhyvzwrX7yUE6fMtuWJFABs1jbAdMAIZIVmPxxfFFok9bC6/Vta91P9bMpKFgxO3eSXn
         mosQ8zDAX8gsw5CQ9Ji3cNB/BvhZwkGyaBW9Hf4t4jVdo0x+Nb5iEbJwnlQPPY+CYmQU
         JiLyNRQBrsUEwl2RHByFreU2w5lLJ65vNktSQWtzAl+Wn2pRmSK4IWualw+CVBfn8Jmq
         DdXw==
X-Gm-Message-State: APjAAAUx0e+aC+3s38OG3gVU9EqqDU/fQxcJ16g7z6PQ2khs6RyGW28N
	IwmDP9d8zXmIzR/gaYA5xAmUW6w8
X-Google-Smtp-Source: APXvYqznTrJogDYUDrXly9H9FLCnDJNvugRVPEqnKdmfJoXTnoT/IgRAwZ89Te9NcOboWOLCc9riUg==
X-Received: by 2002:a65:5809:: with SMTP id g9mr17167447pgr.146.1580589038597;
        Sat, 01 Feb 2020 12:30:38 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0::afc])
        by smtp.gmail.com with ESMTPSA id r3sm15158951pfg.145.2020.02.01.12.30.37
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Feb 2020 12:30:38 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH 1/2] meta-poky: update to new mailing lists
Date: Sat,  1 Feb 2020 12:30:35 -0800
Message-Id: <20200201203036.6764-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

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
index 289ef6c..1a9d06d 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -5,7 +5,7 @@ DISTRO_CODENAME = "zeus"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
 
-MAINTAINER = "Poky <poky@yoctoproject.org>"
+MAINTAINER = "Poky <poky@lists.yoctoproject.org>"
 
 TARGET_VENDOR = "-poky"
 
-- 
2.17.1

