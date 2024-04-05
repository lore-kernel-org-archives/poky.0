Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35308C67861
	for <webhook@archiver.kernel.org>; Fri,  5 Apr 2024 15:41:58 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web11.15723.1712331712780450839
 for <poky@lists.yoctoproject.org>;
 Fri, 05 Apr 2024 08:41:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20230601.gappssmtp.com header.s=20230601 header.b=wMNLep5d;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.160.175, mailfrom: jdmason@kudzu.us)
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-432f421c56bso11484991cf.2
        for <poky@lists.yoctoproject.org>; Fri, 05 Apr 2024 08:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20230601.gappssmtp.com; s=20230601; t=1712331711; x=1712936511; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=cd2ZD8VNxxRputxZMxIiSwZxKZB0mm5tad5Ckp0fTaE=;
        b=wMNLep5dD3jqHEHsOh4von/9LZqx24sOqHO8My8d2yvdjjvz2Gj0Gt8QpNjAnmvD3f
         pQ//bG38z+YXEg5pu2Z/IugTVqOp+J7/oVMvLbie8rCHfI3dHWMk0JGsBxjN/a6L+7Ns
         n3Nl5en7D64gS9O1ugOuos/c1HYH20tqqm/f9nCNH7LRMJWmJf/SuCgMANQ/lTzZHhE7
         BMQgdnjSFM2YKNtW2Yprt3SwybCTX6a0AU9rv7tA33VAhIqJm9XqDDfrLGRr7zVBmZ4J
         TRiystYMqY1q9QQKPjNhOSZOaKmThLSW/S+uBNm5ReAgQuGkcxscrBe6RzXY84eGPw/H
         vMzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712331711; x=1712936511;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cd2ZD8VNxxRputxZMxIiSwZxKZB0mm5tad5Ckp0fTaE=;
        b=MhQVf56KQajnPkuO1KEkdsvt2pL8TeJR7gV3fvSg2MqT4+EEFcqfVx3kvwmX3zHswB
         IiOLGQYxFCjvhn8FEZVTkefQzs7YmetM9QxSwIWvgqctqInaBsZxxvEyccEeAwInOXFf
         Dv1p9tCqBL14+KtWIgc+VaVq4qXAr65cePvdArxJFZlXs34u6MAjzBtX/++FU7nxAXMo
         csgLUtkIpV+AUgOnQYt/I0bgGuIW1vJhXsDvxm8A0eTrWeE2HJfyMy/wOvi2zQk+mR7a
         qU7DUy+DcoxdMHZMiJttXIYLYWOl+waSP2EIUVYe7x7xY+wJPcIHJK8B99UfmNKHuzZW
         lkTA==
X-Gm-Message-State: AOJu0YwnH6iuGN2QCMIGjtI2prf2jQ6/Eg6I2GcYeCEwPZKDTA++V6mM
	ZRMTr/G0yYBGK6hAyY/9qLZlCS9uQRrOb+yw4OJHXZJqMkTvLxy5KMW70TYhRxWp/QAB6GTiTxU
	=
X-Google-Smtp-Source: AGHT+IGtOJrVs2tSP6ZUGs+48VYIMQgwIKOATet8CjvXBSJ3wCFgoy5J2p5NMzJ/7X4pxKTpg5Wycg==
X-Received: by 2002:ac8:5d8b:0:b0:434:5898:f55 with SMTP id d11-20020ac85d8b000000b0043458980f55mr1905183qtx.23.1712331711635;
        Fri, 05 Apr 2024 08:41:51 -0700 (PDT)
Received: from localhost ([2605:a601:919e:c800:8ac9:b3ff:febf:a2f8])
        by smtp.gmail.com with ESMTPSA id ef12-20020a05622a53cc00b00430b0f40532sm863957qtb.9.2024.04.05.08.41.51
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 08:41:51 -0700 (PDT)
From: Jon Mason <jdmason@kudzu.us>
To: poky@lists.yoctoproject.org
Subject: [PATCH] yocto-bsp/genericarm64: add virtio-gpu
Date: Fri,  5 Apr 2024 11:41:45 -0400
Message-Id: <20240405154145.3841979-1-jdmason@kudzu.us>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 05 Apr 2024 15:41:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13319

testimage on core-image-sato fails in parselogs and xorg tests.  We can
add the virtio gpu to address these issues (like what is being done in
qemuarm, qemuarm64, and qemuarmv5).

Signed-off-by: Jon Mason <jdmason@kudzu.us>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
index 4afd6c3a8703..4fa9395b31b9 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -51,6 +51,8 @@ QB_DEFAULT_FSTYPE = "wic"
 QB_FSINFO = "wic:no-kernel-in-fs"
 # Mount the wic rootfs as a virtio block device
 QB_ROOTFS_OPT = "-drive id=root,file=@ROOTFS@,if=none,format=raw -device virtio-blk-pci,drive=root"
+# Virtio graphics
+QB_GRAPHICS = "-device virtio-gpu-pci"
 # Virtio serial consoles
 QB_SERIAL_OPT = "-device virtio-serial-pci -chardev null,id=virtcon -device virtconsole,chardev=virtcon"
 QB_TCPSERIAL_OPT = "-device virtio-serial-pci -chardev socket,id=virtcon,port=@PORT@,host=127.0.0.1,nodelay=on -device virtconsole,chardev=virtcon"
-- 
2.30.2


