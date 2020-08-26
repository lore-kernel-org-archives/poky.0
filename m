Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
 by mx.groups.io with SMTP id smtpd.web10.10265.1598441652043317960
 for <poky@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 04:34:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=luaF1ad0;
 spf=pass (domain: gmail.com, ip: 209.85.218.68, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f68.google.com with SMTP id a26so2375847ejc.2
        for <poky@lists.yoctoproject.org>; Wed, 26 Aug 2020 04:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nliwxz1/PbVf9OrrcT2LHD3WOITZX8CrlFIYLtuvXYE=;
        b=luaF1ad04+6VnxgVJcusR334MNkkR0aVN7XveASfkTQzQ2MefhrGEbN0pRHDtlBDzw
         8rIW0ddear2Qo7+xO/c7hVTdNHBxZaroc9kfGj38webOZWlDhyl9JT+OeDo4WyRsqP27
         +YSm4uyGOQ/2AAH3sRDhXc8W6AYPzZe/6P6bPGOx7MtwtpzgaO/7GRL9hblJW6VJKsgq
         uiagQ4Ep687aCqq0HLz7i25GsADbsVRNaccOMR355Zh/6xjlyQZp3CvqzXMrtzmSi/Ya
         JU3QF5sZRUJfb17Ezy0XzTFQErJAKneXhocxnbhkTZDD1rDg7E5K+2EC4+J3sxGlgbV9
         VQLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nliwxz1/PbVf9OrrcT2LHD3WOITZX8CrlFIYLtuvXYE=;
        b=K4Wi52RF64heSkE8vIlbgIZuY18s2mjYV+e0E1PS2Y9U+cAkXV9PI4qNmsAGUltzH6
         avjSPb2KpROUshNOJysBmmmyn0KRe85w0LV67MB6mhKf3cXPz2qXRW0Hce+7CpHgeArG
         ETsaD4qNTUNzLS8/PdvQiHAEtcungBP2NIHsMceiQrOnwKWRBIW4m+E68HyM2blR6x1C
         Vk7ULG+J8h7nAO+k3eiYM7O9L9XqtZGWvPeN1/ar8TTMsnP6AadlyfBX/zETgnR0b5Cy
         FOfHSkgUieUfcf58jZwHJvtBUMPl42A39Ov1v4KtEx59Fmv1yU48FDbx1/KwwpSWki87
         Y1GA==
X-Gm-Message-State: AOAM532D/SBusI3jbUkhaVn3RCyDL4qMjR93c3GKW9KTO/vtkZtTWseZ
	0SAiQ9FjKVscObW7EotT/7iab7UhDxg=
X-Google-Smtp-Source: ABdhPJxxSECITDWQ490YTcoJbNy6nk1cIClrQ22GUW6LFbssizAPdynAfhzqFQtFS3HOwrVibpXaFQ==
X-Received: by 2002:a17:906:c1d7:: with SMTP id bw23mr16092685ejb.315.1598441650005;
        Wed, 26 Aug 2020 04:34:10 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from linux-f9zs.site ([2a02:2450:1011:56f:b652:c378:b428:fdf])
        by smtp.gmail.com with ESMTPSA id m6sm1937016ejq.85.2020.08.26.04.34.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 04:34:09 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH] poky.conf: do not force packagegroup-core-device-devel into all qemu images
Date: Wed, 26 Aug 2020 13:33:18 +0200
Message-Id: <20200826113318.14604-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The packages in the group are not at all essential or required, and there is
no way to switch it off, if they are unwanted, other than create a new distro
that is independent of poky.

The group, if someone is still using it, should be added to specific images instead.

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

