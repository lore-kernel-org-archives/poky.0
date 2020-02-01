Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web09.2359.1580588805881790524
 for <poky@lists.yoctoproject.org>;
 Sat, 01 Feb 2020 12:26:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FVl/uil6;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id c23so4217947plz.4
        for <poky@lists.yoctoproject.org>; Sat, 01 Feb 2020 12:26:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=ko0lFe0Q+ck8l3NNOHDvfibZpY5Tmqpp5hoMNx5g1IM=;
        b=FVl/uil60vRSNgSrsD3EC8xrzWH5VibNmbj39pr+ITj71UnwBPxKcAC5AuEo++rLRF
         RDPPDHbZHAFYvPy52qVqEUuuwQ92VZkiM81iY4iSbA9chhOtflGwltPb4pEw48cX6ipu
         Hn2Nk2hIp49umSq+JkYfK/c0cZ5uxNh+cv3Xdg01XFGVQ++09ILOzqm2qqIFL//R/Cnz
         +RSZFUO9xAZfQCgnPTadW8fziYkrxcbVc0DnPgsdqw0JQI+NdQxUM6TCohEsryVugda8
         gG06RLSUlBMfTrzBj3an345yBe0U2gV4qImtmi1935kCIDYptWBQKF1Zwpnpyzytf/d9
         cqoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=ko0lFe0Q+ck8l3NNOHDvfibZpY5Tmqpp5hoMNx5g1IM=;
        b=TGrTE5F+5ORZ6YW08dPuWbmB2q58NISHr9wyi/fUc5L6w3rI0Ph1t/PC31KpKMD1nx
         tSmTWdaRrtdC5QOxIRJGfHd6L1OwqGjHRrm+wUXueWFPp2dqCG121Blq6sgLCbn48Sg5
         jP63R4tcXR4nxA1nIJ/Dh/sJ+CKc10NclNAJhRO7asx3WpEZzI4PiiuHc26suy9LkMXX
         MlPnqaTXbeu5Mg4O0ZpKT/JQW6U/EUTAC+GLnN7vqmq3u9x5ER95YiqEzkDLdNGix6ue
         +Gbs01KEuS15Ay4w16BOPxRBXkPC6jjx/BrEPG06yAJnQVuZG6jPSr2EFiMa9mpYEAqa
         ajHA==
X-Gm-Message-State: APjAAAXYK0i/janyRUAHt4yOh5JTjb6DJJ/DS7TRJd4Bw9DeBcFtA9/Y
	1FHifSUuSCKNTcRDJvmSIuG/mNWQ
X-Google-Smtp-Source: APXvYqx6JBWHZzO3U4O9+k0awppotLDcGev3wmIfpTLcYU9yDWPBnouzIqksSY/VHihdGHJRrTLF7g==
X-Received: by 2002:a17:90b:110d:: with SMTP id gi13mr20260538pjb.123.1580588805057;
        Sat, 01 Feb 2020 12:26:45 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0::afc])
        by smtp.gmail.com with ESMTPSA id gc1sm14272050pjb.20.2020.02.01.12.26.44
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Feb 2020 12:26:44 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH] meta-poky: update to new mailing lists
Date: Sat,  1 Feb 2020 12:26:42 -0800
Message-Id: <20200201202642.6399-1-akuster808@gmail.com>
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
index 5c156f1..49c2bef 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -5,7 +5,7 @@ DISTRO_CODENAME = "master"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
 
-MAINTAINER = "Poky <poky@yoctoproject.org>"
+MAINTAINER = "Poky <poky@lists.yoctoproject.org>"
 
 TARGET_VENDOR = "-poky"
 
-- 
2.17.1

