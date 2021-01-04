Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web08.17079.1609781885276815519
 for <poky@lists.yoctoproject.org>;
 Mon, 04 Jan 2021 09:38:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BkijUYnz;
 spf=pass (domain: gmail.com, ip: 209.85.222.169, mailfrom: vivien.didelot@gmail.com)
Received: by mail-qk1-f169.google.com with SMTP id w79so24109769qkb.5
        for <poky@lists.yoctoproject.org>; Mon, 04 Jan 2021 09:38:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bF6OrKKQ/4Leoeuza4m4k+5LGn47BTVuzMddSGYibC8=;
        b=BkijUYnzE2GpqUquf23ZIe24qHT5MSflHPCVTu2EQ/T4jRr+BsjVJTSCIjOzK9Eeut
         hMymCgmWJwCpIp9JE9rtHkbnw4e38An3IkpkXtxC9+DK4oB6P45IOUkKea1MrNAhBo34
         DZFwqT3na/uW1Tr3cSQn7erzdRmwlQZrO8sXhR4AiT6Luo956pZQVhm9uxu5qKJnxcRo
         O2uFzQEhXjvQsDA4Kr+EDVgal6TYMwK16I8S5hXnt/SN4w7QECzdOmN1UE1IXad8zUWO
         f75OYVg+YiKfveVKkrnIu1Jy7rKVAdJ0letWo0e7nTQP/CYUSj2xxV0rrTDrhKTPzqQt
         4rfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bF6OrKKQ/4Leoeuza4m4k+5LGn47BTVuzMddSGYibC8=;
        b=AsFZP/k5Qiqyj1LdzP2Dgyxn5B+bTW0lbkbbbTvrYwFVLFItMCDe6pUUPp2udSYTj2
         I9rUtjE6DWuB81Ev4vUrb10DUU8oOHx86aw4w07+b1+86PgRBjwdtBQD+olnLnjcwYNY
         4V1KTKfvlTuvqoI0WaPYEh0q5+nzIgtH2a6WYVGjeYQ8DbLCW6CcJfK/vl4tQmSzZ/1q
         s8YikGkZxmVkbeyJCG/3bNz1ibB6TNUS+3DUkYv/4Vxs7F3SeIYr4YumovFJ6RA6nuhr
         zysAqnk5rAwfJk+9Tok9wIM2CcRIA7T4JaudliUK23t+lCj5QAt39fkrjE52RAtSSpUR
         Nifg==
X-Gm-Message-State: AOAM530zSbidk48PV4kg8ovRFdhNIA6gP0zDzfcAGaJThqKt1PH/l/p2
	AgsUNU9xrO+Uy6q4GK64WAlsFH9mzpI=
X-Google-Smtp-Source: ABdhPJzcO8A/y3sK/B3/7KS/yx0aGEaDzJEK3fua0h4hp1E5jEvP3+faoxCsh/TlYoYzBtXFunbvgA==
X-Received: by 2002:a05:620a:63c:: with SMTP id 28mr72408876qkv.26.1609781884160;
        Mon, 04 Jan 2021 09:38:04 -0800 (PST)
Return-Path: <vivien.didelot@gmail.com>
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca. [184.163.105.249])
        by smtp.gmail.com with ESMTPSA id d84sm29878290qke.47.2021.01.04.09.38.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 09:38:03 -0800 (PST)
From: "Vivien Didelot" <vivien.didelot@gmail.com>
X-Google-Original-From: Vivien Didelot <vdidelot@pbsc.com>
To: poky@lists.yoctoproject.org
Cc: Vivien Didelot <vdidelot@pbsc.com>
Subject: [PATCH 2/5] README.hardware: fix the dd command
Date: Mon,  4 Jan 2021 12:37:38 -0500
Message-Id: <20210104173741.1070515-2-vdidelot@pbsc.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the missing if= prefix for the input image in the dd command.

Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>
---
 meta-yocto-bsp/README.hardware | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/README.hardware b/meta-yocto-bsp/README.hardware
index 92b1a9a554..9803af006a 100644
--- a/meta-yocto-bsp/README.hardware
+++ b/meta-yocto-bsp/README.hardware
@@ -150,7 +150,7 @@ From a Linux system with access to the image files perform the following steps:
 
   2. Use the "dd" utility to write the image to the SD card. For example:
 
-     # dd core-image-minimal-beaglebone-yocto.wic of=/dev/sdb
+     # dd if=core-image-minimal-beaglebone-yocto.wic of=/dev/sdb
 
   3. Insert the SD card into the Beaglebone and boot the board.
 
-- 
2.30.0

