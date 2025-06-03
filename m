Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33973C5B555
	for <webhook@archiver.kernel.org>; Tue,  3 Jun 2025 11:36:18 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web11.9052.1748950568784874919
 for <poky@lists.yoctoproject.org>;
 Tue, 03 Jun 2025 04:36:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kJZ3EOWd;
 spf=pass (domain: gmail.com, ip: 209.85.221.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3a375888297so3275808f8f.1
        for <poky@lists.yoctoproject.org>; Tue, 03 Jun 2025 04:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748950567; x=1749555367; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YPjn1yBQngbKyZLG/HZHAA5F+o2WTF0DrG1stIS6Fjs=;
        b=kJZ3EOWdx9tm+RcztMgrWcFGnLrErmq+9ckmRmWDEHApHgYse7onzi4dyFE7IqqVl1
         IPt0aVrv2I7xUeUElWSAH+OcSn/t+ef/9KGpIx4wmjZ9dKYWhhFHaLoluUSRiIqwMurk
         xF3alciNeOhG3BO1y1ylYDPsf8lw6qmBPdkh7vZo5rulZLEvbaYkrDGAR+tSk8WMdW+X
         EPBvI/1HdGqttE9C5zpvV48GeLNn2krUKzHmhGrks6CtCD/iwrjUj4Hpk99DcNAJ4kzq
         nTpgrcRXYhNQuUq/moRkuNLM64IZwK+fpdwRi+AVPjZwewGSzjAgRtH0fGivpXdzf2QN
         eI+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748950567; x=1749555367;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YPjn1yBQngbKyZLG/HZHAA5F+o2WTF0DrG1stIS6Fjs=;
        b=wga68EJe0oP6MnXndPjU63i/n6uJnc4DHgfFZb9/dfo/XbdcgoKgFtAXyx64+oNb6s
         VFRKD/eTLFSa+2ky98KSMbgorX9bjdXtT62oz/ekyNc5zS2//2ZLVnoYSvenFVL8a9kO
         U89+tmrE9ZQKgA8rc0/1GD37n4r2vfTSAtsXsIpbXCAHCfY9m5Oy3prOYeV0hsNcDwoQ
         DclFYh+tj6Bamx6LfVdCi2AQQi0/gFJ7zHKXp0dZpSqNpwgGwIg4l4XZGN0bbCyXPhgp
         7uXVfmBBWbFt0uqTYixz+lkP13b6Xhul0vW5+rZ02GBZTIJ4nih5hAWB2rzyGdAc7K8Z
         1LKg==
X-Gm-Message-State: AOJu0YyEcmqNRfDRTfGESRaCj5XyNAYh+S+dKOOr6EUgq4WJWwy2YD91
	rY/YWVrIth0TbfUA/dmZLAmPlTh+Pm5W33KCCg9htJGrrjiHMnzf7WMC8sac1w==
X-Gm-Gg: ASbGncswebHJhjJ5+fNonM6VKluMVksGxZW+z2+/LpwoYv7fB6U5GWoSE4CitrWdBP1
	mtwAXxdC1G3hqfhizMVWHp8Pks3/Pkxj3TJvF0VmyOPaTJc8IaB13wTx6lfi1MnVvcHl0MM1vY2
	l0Tm2wtNzkxrrAUNJzUQ+cpUnUkO37xRZ5LXqrzstHOwSDRaB4wrDOMsHhtik1XO4DtE6MvyPjo
	nHg9FXqKybpTfQ2h0ls8aMwWre7dBxJWvLhrQEULTmagP7aHm0sRNmQZnw0MBcqvBO0y0Nh8oRP
	b24tSHUcCE1k8PsA20hA2B0GLor2lRVylwXSlgMPPnrz+YD6HaEFIIZP2R2vesG/GnOL1XawwoD
	kfe+KHg9octlP
X-Google-Smtp-Source: AGHT+IFjbExACJpb9Ssne15MDwBdKa/uwr8yPu7fw0lkZ+iJqI9u5q5q+f2KEv4ZP64jpJIJVn6a2w==
X-Received: by 2002:a05:6000:420f:b0:3a4:d915:d652 with SMTP id ffacd0b85a97d-3a5141d0a12mr1587344f8f.29.1748950567045;
        Tue, 03 Jun 2025 04:36:07 -0700 (PDT)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-451e58c348asm16707585e9.3.2025.06.03.04.36.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 04:36:06 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH 4/4] fragments/qemu: add support for enabling sdl in qemu
Date: Tue,  3 Jun 2025 13:35:58 +0200
Message-Id: <20250603113558.3104618-4-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250603113558.3104618-1-alex.kanavin@gmail.com>
References: <20250603113558.3104618-1-alex.kanavin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 03 Jun 2025 11:36:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13637

From: Alexander Kanavin <alex@linutronix.de>

This has been the default in poky's local.conf template for
a long time, but it's not enabled directly in poky distro.
To allow better sstate reuse and a better user experience
on a typical laptop (qemu will pop up a graphical window directly),
let's add this fragment and enable it in official bitbake-setup
configurations.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 meta/conf/fragments/qemu/enable-native-sdl.conf | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 meta/conf/fragments/qemu/enable-native-sdl.conf

diff --git a/meta/conf/fragments/qemu/enable-native-sdl.conf b/meta/conf/fragments/qemu/enable-native-sdl.conf
new file mode 100644
index 00000000000..21c1298171e
--- /dev/null
+++ b/meta/conf/fragments/qemu/enable-native-sdl.conf
@@ -0,0 +1,8 @@
+BB_CONF_FRAGMENT_SUMMARY = "Enable SDL support for direct graphical output on the build host."
+BB_CONF_FRAGMENT_DESCRIPTION = "By default qemu is built with a internal VNC server \
+support. To see graphical output from the guest system, one can use a VNC client to \
+connect to it. This fragment enables Simple Directmedia Layer support, which allows \
+seeing the graphical output from guest directly in a X/Wayland session on the build host machine. \
+"
+
+PACKAGECONFIG:append:pn-qemu-system-native = " sdl"
-- 
2.39.5


