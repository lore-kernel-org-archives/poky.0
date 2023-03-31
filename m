Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web10.47922.1680240328510706684
 for <poky@lists.yoctoproject.org>;
 Thu, 30 Mar 2023 22:25:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Nym3iYHa;
 spf=pass (domain: gmail.com, ip: 209.85.221.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f45.google.com with SMTP id r11so21174092wrr.12
        for <poky@lists.yoctoproject.org>; Thu, 30 Mar 2023 22:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680240327;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YDwO4o+abJazWZ0CX6h7StTkWyGQuzOiXuBd4etaMaA=;
        b=Nym3iYHa66ddR+SfOotgnOm1TkTU6ONo2Ysk0TKchu82oRadwQj/R+y9uyl9tS8WfJ
         R5rAgMD7bjPS/MprsxEUiuEYRWpAY88/xfZdgQSH+dqP/6Ibel0KitnUnLx4W1JsDrmt
         kThB87xRc4CwVI8byyxEkgFzHlF1cLEcg84g+Mmvue2qwMNDY1mq8LPn9ZUg47ewId30
         PB97ORlI2hkpEsFA1AqtRA48Unc+WbBphn6Gx10ru2aOJ1AV+Tr7eJG/ABVnyNdOXe/t
         BewKPKl22nnUIOhjI+ocraPKT3qb575reK5u6/rbtwBjCO+Ohwr1ADXv00aUM5azBMGq
         QeSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680240327;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YDwO4o+abJazWZ0CX6h7StTkWyGQuzOiXuBd4etaMaA=;
        b=CPzD1jQE+IrWAPSo4RFcCOTd3Eq5jQvI5yDSrhSBSnyfQ0CDKhUdrW2GLZ0dt4zwbt
         qyemqDP2lUDZXbAIoEVB+eyoZPAwZVtTrr0baM/bbsFhQUbKHJgqbfNwN5zRNt0IdCRV
         qbRYRa335wDXeOkoDOLmDQ+LKyrjyw9TJMAjC7obnxXV1kS2yKrPEDk6AsJRtrOoHGdl
         QHqbn+bL3+KFYRrfNQhbbSbO1xt6lD41K0d7Uvi/b9dPTjU8WVusfJwHchHBEmNGjehw
         DvLx0Ps5WhupKtx671qQIKxPty4EFq3QBbW0SqFbgBY2KkrzfG8igdRS5I8MctLQV2Io
         mxuQ==
X-Gm-Message-State: AAQBX9fJPHTfVF0qopjcM5ljFLRKSN0kke1zihzPqZPO6Wym3l7RKN5O
	3Y3VoHFrgdqd3WAccj8Rv5+2iGpjKhg=
X-Google-Smtp-Source: AKy350ZsgGH71jPpaxHFsQYzJsix6KoJl6M5SqcNsuN4vcKGdnwXzY2mcb494vi4dGkEyH7pXxY1Ow==
X-Received: by 2002:a5d:4811:0:b0:2ce:a74f:3253 with SMTP id l17-20020a5d4811000000b002cea74f3253mr20164817wrq.70.1680240326638;
        Thu, 30 Mar 2023 22:25:26 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id v16-20020a5d6110000000b002d89e113691sm1128451wrt.52.2023.03.30.22.25.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Mar 2023 22:25:26 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH] poky-altcfg: enable 'commercial' recipes
Date: Fri, 31 Mar 2023 07:25:22 +0200
Message-Id: <20230331052522.978142-1-alex@linutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Somehow this was overlooked, and this excluded important
pieces such as ffmpeg from the test matrix.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 meta-poky/conf/distro/include/poky-distro-alt-test-config.inc | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
index b42b830e43a..f916e010c97 100644
--- a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
+++ b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
@@ -6,3 +6,7 @@ PREFERRED_VERSION_linux-yocto = "5.15%"
 
 # Ensure the kernel nfs server is enabled
 KERNEL_FEATURES:append:pn-linux-yocto = " features/nfsd/nfsd-enable.scc"
+
+# Enable all the recipes (primarly multimedia codec implementations)
+# that may require special licensing arrangements
+LICENSE_FLAGS_ACCEPTED = "commercial"
-- 
2.30.2

