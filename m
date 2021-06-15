Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web09.6318.1623744752366632722
 for <poky@lists.yoctoproject.org>;
 Tue, 15 Jun 2021 01:12:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NUiLNVRz;
 spf=pass (domain: gmail.com, ip: 209.85.218.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f53.google.com with SMTP id l1so20991154ejb.6
        for <poky@lists.yoctoproject.org>; Tue, 15 Jun 2021 01:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eiCTp8hjc5x/6xKEDyD2/h4xEq6cpRq1YNQVD6v3DOo=;
        b=NUiLNVRzMmAUb8vEgIXXR2P3qEdK2nQrnoSfKfRFVbPt+L5aJIbUUoTN3OBeFqkCrw
         DaNi9l2rScnMwRZEuLjlb5wXl0abCJfUDV5yFveR+BJmgwiYlRunvP5dps/I2xypR0LQ
         EZJLAmPKIg9b5PDdQ0jrmqsf3OdT/NzKy3NdfzHYns1EmNIYyuco82HXoINg4zTzKCep
         VA3/9aCJOotpF5ondIvf4jX7mbTA68/SjxT3ZNBfaacF3HeYnrM+ZW4ILntJLS+2/7Su
         lw3CEZKqEqXke7fgTxoxWJopkec0RwwRHrwF69D+CovSd5pGrol1LrlwJNF/QhaXzhV2
         j/XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eiCTp8hjc5x/6xKEDyD2/h4xEq6cpRq1YNQVD6v3DOo=;
        b=Xr2uA4hqgRaJbk900d1kyAlftF2r0Ww/pNABH4faCdTuvgCRXe2whmet8NLeSc/cdb
         CaGZ4gu+8aboAzn31LBA6vzSCvFBmUCurXIuxmZOgyvOJT2Gg7TftR6wPbBgTaAi7z8u
         yuDbNCbnbzR60SmUeufvq03+h/D7RbXGd2VH8G4XETbn0FwAfL/onE+ee0yQ2fh+sl8X
         MphWdGNWyWn8HL7tQ6lc0+OcylMfN3UOTWlVqYh4j1KlPsG1CWB9PmV3N3+8nmH/PSlZ
         ZvoB35r0HpMMWGTjkfieMs47DQaGjRM+Dv8SoZQrySI1c5GAR7B0VgHPHr5gSr9fe6IU
         WAQg==
X-Gm-Message-State: AOAM5328FcIPf0QorJ6PKvPCUq24NVxaYtkvB1EBaZtBCLiHlg1ur1jl
	1IIebdT6w9g8b/GBoZYo8tMqUOz7GVw3LQ==
X-Google-Smtp-Source: ABdhPJxV9JEi0RkRHLikyRF1X3QIGRdUkNLeyNm7rOH80XlsMYDAz7eZop1BPHPLBAVQPxjlqsvn7w==
X-Received: by 2002:a17:906:144b:: with SMTP id q11mr3157685ejc.478.1623744750618;
        Tue, 15 Jun 2021 01:12:30 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id lz24sm6404806ejb.33.2021.06.15.01.12.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jun 2021 01:12:30 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH] local.conf.sample: disable prelink
Date: Tue, 15 Jun 2021 10:12:25 +0200
Message-Id: <20210615081225.1734033-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There's an issue on ppc32 where one of the wayland libraries is incorrectly
relocated [1]. I also believe that any such custom, yocto-specific optimization
which does intricate binary rewriting needs to be justified with rigoroous
benchmarks but I can't find any.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=14429

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 meta-poky/conf/local.conf.sample | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index fb14379d28..1794126672 100644
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

