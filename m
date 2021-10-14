Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.web11.10388.1634221886602503931
 for <poky@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 07:31:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112 header.b=3WkLdvRe;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.222.177, mailfrom: jdmason@kudzu.us)
Received: by mail-qk1-f177.google.com with SMTP id ay35so5576345qkb.10
        for <poky@lists.yoctoproject.org>; Thu, 14 Oct 2021 07:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NijXklfN3RlaA/lcnOPCGDA6N6LaV/JKdh+MI1MFnPY=;
        b=3WkLdvReingcK09eAWXBCh+GFQqziqQZzcQpADRe1gqNLEzvuHQ233FCgFtmvbt77k
         j3tsQY3U91Xig2eChBcpqPGl/x7SW4C2tTsfPCLvbZH5QDYEJX02dMCckjCuTVQ8s3ZM
         9IBLrl0CNAahABarKS/5QUZc6ngOyi6sHHuXxhaX8M/7BsoihVpsnlp5W3aV9o1sH0VX
         FpiDs1Pv6LtGoHiLjqJiodpCNURFyoBcoAXYfx6YEi/962/8793gdCs56B2lawsLD3JQ
         KIrLHWfwaBQVX4o6pwhgez8HQbJXs/jLJaBrud5OY2XvK469vGd0sVyuila4VWRQA4XH
         8vtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NijXklfN3RlaA/lcnOPCGDA6N6LaV/JKdh+MI1MFnPY=;
        b=vCqK/kOlVq2UG7N1gWNCiAruNBEwP3rmULOZaiX4sbe18v997gJeliw/ke90inOkLB
         xGi999JRgo6FKC+BeYkOOnOcp3QFFeWUSxMF04qbElAmBXKjCzP8Yyapl29oBY8VZElL
         xgJHryQTKnhxmbgwCsHGCTphrRiYObP39Ey41hrC9uFJbpLkpaSjf6OBuru9T01RtwA/
         d0awXbeGTfROTrtxaHkyDwtgDyv2/YI3eVQBo00045xnK1i38otrjNY4Okfja6Mf5OWP
         Skdaf3RPWSM7mPWBE7jD2wVqRFqyIL42utF1rqeUfwMoixIEzp1X4rabL6TQ1cQtaRKL
         P7mg==
X-Gm-Message-State: AOAM531oMui3kkcohRQuyiC2Qje1sw8wxee80LNmK8q/dDTGcVCjaFId
	p348+tE2obSB/8G6WrSxesrihBH1Ig4=
X-Google-Smtp-Source: ABdhPJwYkLM3UHU0oLourweqVnnWwMeNObnK+m54/mOuuELfd9Tbeu1V9vIpDxcNyLBC5rPjQiuCJg==
X-Received: by 2002:a37:43d2:: with SMTP id q201mr5020890qka.214.1634221885487;
        Thu, 14 Oct 2021 07:31:25 -0700 (PDT)
Return-Path: <jdmason@kudzu.us>
Received: from localhost ([2605:a601:a650:b700:56:cd4e:1c6:8037])
        by smtp.gmail.com with ESMTPSA id z30sm1476979qtm.55.2021.10.14.07.31.25
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Oct 2021 07:31:25 -0700 (PDT)
From: "Jon Mason" <jdmason@kudzu.us>
To: poky@lists.yoctoproject.org
Subject: [PATCH 1/2] beaglebone-yocto: use correct CPU and QB_RNG
Date: Thu, 14 Oct 2021 10:31:23 -0400
Message-Id: <20211014143124.13941-1-jdmason@kudzu.us>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The beagles use the AM3358 SoC, which is an Arm Cortex-A8.  Use that for
QB_CPU.  Also, use QB_RNG to specify the random number generator device.
Finally, correct the image deps to get qemu to run.

Signed-off-by: Jon Mason <jdmason@kudzu.us>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index b3d960a8cd80..06746afa96ae 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -41,16 +41,16 @@ MACHINE_FEATURES = "usbgadget usbhost vfat alsa"
 IMAGE_BOOT_FILES ?= "u-boot.${UBOOT_SUFFIX} ${SPL_BINARY} ${KERNEL_IMAGETYPE} ${KERNEL_DEVICETREE}"
 
 # support runqemu
-EXTRA_IMAGEDEPENDS += "qemu-native qemu-helper-native"
+EXTRA_IMAGEDEPENDS += "qemu-system-native qemu-helper-native:do_addto_recipe_sysroot"
 IMAGE_CLASSES += "qemuboot"
 QB_DEFAULT_FSTYPE = "wic"
 QB_FSINFO = "wic:no-kernel-in-fs"
 QB_KERNEL_ROOT = "/dev/vda2"
 QB_SYSTEM_NAME = "qemu-system-arm"
 QB_MACHINE = "-machine virt"
-QB_CPU = "-cpu cortex-a15"
+QB_CPU = "-cpu cortex-a8"
 QB_KERNEL_CMDLINE_APPEND = "console=ttyAMA0 systemd.mask=systemd-networkd"
-QB_OPT_APPEND = "-device virtio-rng-device"
+QB_RNG = "-device virtio-rng-device"
 QB_TAP_OPT = "-netdev tap,id=net0,ifname=@TAP@,script=no,downscript=no"
 QB_NETWORK_DEVICE = "-device virtio-net-device,netdev=net0,mac=@MAC@"
 QB_ROOTFS_OPT = "-drive id=disk0,file=@ROOTFS@,if=none,format=raw -device virtio-blk-device,drive=disk0"
-- 
2.20.1

