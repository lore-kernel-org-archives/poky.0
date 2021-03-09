Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web09.12929.1615312047220049783
 for <poky@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 09:47:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BRrhdXbu;
 spf=pass (domain: gmail.com, ip: 209.85.160.180, mailfrom: vivien.didelot@gmail.com)
Received: by mail-qt1-f180.google.com with SMTP id l7so2384905qtq.7
        for <poky@lists.yoctoproject.org>; Tue, 09 Mar 2021 09:47:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Q0rZZ9WxnBeYFHXjnhYSQjW+akZpoHxhEdADhoKUpks=;
        b=BRrhdXbuoHYkAWyiY/vdBMYZJldLGBSZyInFQ7zHwPqZs2yPV49EYlb3ZQiSFoO4hE
         LtB0YW53rTng4T8yQd2lKy3qhKbft/xRzupgwWoYyn/EcwoIPhwO5eWOjdOzHdDNBHvV
         oYlgtxbGzaINHR8BF06ZjWH+reEtzIq6KpB83E9fhk9MN/ILjoSGVmlr+bWon9NZ2etm
         sXhpjBQPucHTwi7rIohyzyFtHaL/06yyn4rQj3dQj8vFfUfzpe8Eekz5V6zLDlWVsxsS
         tw6mokigTnirY84Qi5Pwb4PM/xA5xSh2nd5CLic7LqJZ9M1b+dD7lwKEeyMGD2eKSbLx
         T3eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Q0rZZ9WxnBeYFHXjnhYSQjW+akZpoHxhEdADhoKUpks=;
        b=h75/RhPA5AcHWWa27D94qMQ7Xap2/V6jNe1QO3zMd3950Di6ozG2XhQiurkzw+6aOf
         8M8RE6Hhj6L1+DFKk9kzTMavqbBADJNo5t6q78UQttCZzQkgvsf7ToCbgZh6qmkKE1kB
         QyF9J/aoZIsNXDXEirL5zYDNGk0u1voIwYgDM+llpVDc2siwCee758xQOz5H0714TekX
         IAgNCBmE/5QL1wS9YK8WRsGdGPbOgx6/3HesTGj3sScNQzHJDANqOAFnhlflmzQGutqT
         ZQ2FmBAUlLromWdSZ6Nufb9Tq+gXbIsHZTbqQa6SsMT8HcfXZu9QIxBpY9ES+BVjPp5q
         ztew==
X-Gm-Message-State: AOAM5322t3vhLwBiQXwj6LqClN2dPJ/l8lzakyp7gSmX3DOgIelJAsmU
	ueNBTcJCaNcqOtjF5BMz1hRRraNaQUc=
X-Google-Smtp-Source: ABdhPJwFC03m/8bL5WarX72Yk1dtQhP23a+vTk9+6dxvzIlIB/aypAQWSWGDAIhmbnciKrg5KWBa+g==
X-Received: by 2002:ac8:36d1:: with SMTP id b17mr19389048qtc.319.1615312046106;
        Tue, 09 Mar 2021 09:47:26 -0800 (PST)
Return-Path: <vivien.didelot@gmail.com>
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca. [184.163.105.249])
        by smtp.gmail.com with ESMTPSA id 124sm10677191qkn.121.2021.03.09.09.47.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 09:47:25 -0800 (PST)
From: "Vivien Didelot" <vivien.didelot@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Vivien Didelot <vdidelot@pbsc.com>
Subject: [meta-yocto][PATCH 1/3] poky: fix typos
Date: Tue,  9 Mar 2021 12:47:13 -0500
Message-Id: <20210309174715.26432-1-vivien.didelot@gmail.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Vivien Didelot <vdidelot@pbsc.com>

Fix fromw -> from typo in poky-world-exclude.inc,
and confiruration -> configuration in poky-tiny.conf.

Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>
---
 meta-poky/conf/distro/include/poky-world-exclude.inc | 2 +-
 meta-poky/conf/distro/poky-tiny.conf                 | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/distro/include/poky-world-exclude.inc b/meta-poky/conf/distro/include/poky-world-exclude.inc
index 1a2dea5..f3ac59c 100644
--- a/meta-poky/conf/distro/include/poky-world-exclude.inc
+++ b/meta-poky/conf/distro/include/poky-world-exclude.inc
@@ -1,4 +1,4 @@
 #
-# Things we exlude fromw world testing within the reference distro
+# Things we exlude from world testing within the reference distro
 #
 
diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index 5a867b1..e4ff975 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -26,7 +26,7 @@
 # [ ] Drop ldconfig from the installation
 # [ ] Modify the runqemu scripts to work with ext2 parameter:
 #     runqemu qemux86 qemuparams="-nographic" bootparams="console=ttyS0,115200 root=0800"
-# [ ] Modify busybox to allow for DISTRO_FEATURES-like confiruration
+# [ ] Modify busybox to allow for DISTRO_FEATURES-like configuration
 
 require conf/distro/poky.conf
 require conf/distro/include/gcsections.inc
-- 
2.30.1

