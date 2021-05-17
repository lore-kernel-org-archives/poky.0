Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web12.2173.1621282750622854754
 for <poky@lists.yoctoproject.org>;
 Mon, 17 May 2021 13:19:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=S80hb5qe;
 spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id b17so8446864ede.0
        for <poky@lists.yoctoproject.org>; Mon, 17 May 2021 13:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AAbWfZgFzcumHk3JGedNaLZ2tR26yB+UxAFaevN1fuk=;
        b=S80hb5qeL3mR9WwGeeDNLNvFr16CdKQz3rQYHXa/lrHMfrIdvjVT2p2UUBzL08MGfG
         JERMwLjM3K4XKOPX5uKn/0oPtLD/qBd2EdrTdwmaY0PEm5gIJtDSg4JwxZwox931tRlM
         w4hp+PTqk3iBPnPMLO1YQpup0oH5x6uagvgLy7Kjwab5O5amkqJwWgHge5lg0T29f7OI
         2GAkR+utSBijifxEYgFfPT4u18zujQ2u7j7RiEyzSeRMUMTZ1qXyTD7eZeLhUTXkfKvS
         Nvvz/lKrlEZsU3ZO2V96fH8a0p7jMKkM89JxMhYl9C2HeYZTt+EaQbaHnxqAsLs0OkSb
         J28Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AAbWfZgFzcumHk3JGedNaLZ2tR26yB+UxAFaevN1fuk=;
        b=pXBT2m79FOo5Qm5Vh4rSY41jPGx4HBABZrY8X1eL6bMQEv8hgVnn5ckjDmA23AUB9w
         VcH5FKtgIvPNcOzJPD/BDHYX7iYZawf79Wrbj1MtGQ4b5qXnOpz8WJw8cT22Axyc6SuL
         hi3FNIMg1q1VthHktePIkickCB0PxX5blPKaASTMbfEryppA1Zo9vzbzg18z2V4LVr4G
         ZaaYH/h1uGxTnvdZFMEyHm++Judzr5jUQHrXxC3PqCGPn4FSjQiNMC4t8Uq5UAifHoPP
         dwu1hIyRbr+34EeQEwytkq8zdNhjQ+Yj0r2CdgHu8oT42JR/wT4k6B054Sutf0tFSZjO
         jp7w==
X-Gm-Message-State: AOAM531Ddnmsk8VcETP2qrCLaJx76iagHN6zvnyRR0f//gma+chbxkZp
	wF5c01rA5RHsP5zvFpettnbXhUz92TQ=
X-Google-Smtp-Source: ABdhPJzAVT/ChHrr+wKJZdjkk5yHCWDuGF2HaCJXyd/XgMFWZUAOkyD+WBQS5NBQ4FgPU7uM3fKQyQ==
X-Received: by 2002:a05:6402:1543:: with SMTP id p3mr2218515edx.120.1621282749055;
        Mon, 17 May 2021 13:19:09 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id bh3sm9227946ejb.19.2021.05.17.13.19.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 May 2021 13:19:08 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH] mklibs: drop support for
Date: Mon, 17 May 2021 22:18:48 +0200
Message-Id: <20210517201848.195107-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is not enabled or tested by default, and has never been
ported to python 3 upstream[1], which means it doesn't work at all
with plain poky. If you need it, please put it in a separate layer
and/or modernize to work with py3.

https://salsa.debian.org/installer-team/mklibs/-/blob/master/src/mklibs

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 meta-poky/conf/local.conf.sample          | 5 +----
 meta-poky/conf/local.conf.sample.extended | 9 ---------
 2 files changed, 1 insertion(+), 13 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index c27766e901..fb14379d28 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -148,11 +148,8 @@ EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
 # enable extra features. Some available options which can be included in this variable
 # are:
 #   - 'buildstats' collect build statistics
-#   - 'image-mklibs' to reduce shared library files size for an image
 #   - 'image-prelink' in order to prelink the filesystem image
-# NOTE: if listing mklibs & prelink both, then make sure mklibs is before prelink
-# NOTE: mklibs also needs to be explicitly enabled for a given image, see local.conf.extended
-USER_CLASSES ?= "buildstats image-mklibs image-prelink"
+USER_CLASSES ?= "buildstats image-prelink"
 
 #
 # Runtime testing of images
diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
index c241caa869..a670c74001 100644
--- a/meta-poky/conf/local.conf.sample.extended
+++ b/meta-poky/conf/local.conf.sample.extended
@@ -119,15 +119,6 @@ DISTRO_FEATURES_remove = "x11"
 #
 # TCMODE ?= "external-sourcery"
 
-# mklibs library size optimization is more useful to smaller images,
-# and less useful for bigger images. Also mklibs library optimization
-# can break the ABI compatibility, so should not be applied to the
-# images which are to be extended or upgraded later.
-#This enabled mklibs library size optimization just for the specified image.
-#MKLIBS_OPTIMIZED_IMAGES ?= "core-image-minimal"
-#This enable mklibs library size optimization will be for all the images.
-#MKLIBS_OPTIMIZED_IMAGES ?= "all"
-
 # This value is currently used by pseudo to determine if the recipe should
 # build both the 32-bit and 64-bit wrapper libraries on a 64-bit build system.
 #
-- 
2.31.1

