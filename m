Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6EAEC36002
	for <webhook@archiver.kernel.org>; Wed,  9 Apr 2025 13:46:53 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web10.8898.1744206412853085225
 for <poky@lists.yoctoproject.org>;
 Wed, 09 Apr 2025 06:46:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=l09v7Ciw;
 spf=pass (domain: linaro.org, ip: 209.85.208.170, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-30bf7d0c15eso65461981fa.0
        for <poky@lists.yoctoproject.org>; Wed, 09 Apr 2025 06:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744206411; x=1744811211; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qDuivabsxzDIgK+ooYVEH0Kzb2FoKIGpvsPhjPKpWK4=;
        b=l09v7Ciw6zcORtPRtWI+HFyeE07zUgGXS7rOBwlZTuVkTseagjyQMbRz6ePmSJj3ZW
         CXxCPZa9+H9vGFsUk66GbU4KCbWKv1IX1nNmjTL4M4m8PQ5sM2UBm0Bcc3j5O7zFtATK
         pmbLgpwyIMSnhs6zhGvRGCQ6CamCeu4R9Ht/isdhF2RCa7eWZg7pDOcJG0paJkg9RD90
         s0xnGfUXQoZ1iIp7ajoFsLskX8CO1/aThe3D+Up+9t4CaKvrlZcyk8S/LwGkhz6Jibfe
         QvNBXAI38QgJH1G0vh8YZLLIonqlu5gZYN+9hhL9mnkPZcgVXW9UV9s9hrDUgWX02njH
         qatw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744206411; x=1744811211;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qDuivabsxzDIgK+ooYVEH0Kzb2FoKIGpvsPhjPKpWK4=;
        b=qDIfFaIwnx4gy71kuuW7nLkDf/V0IJrg7aApmrEbwhQveTgUFz2BdK+nLkxzPy3g1K
         tPl22oDPF+mRYGpZyHFAv+pB0VUMbl4Rd3zbVLxIO5rFLup6wGU+25KmmMNCtgGdJ+00
         40gvVb6Chy2VYWFDdbfDs0FhrAbTLppvvj+Pkoq5M62kOF/XtP+qTPVmJmmPNek+Awk1
         w5SgXlhZVuxBfEdy/L7/SI9n145GZHWljxJeWzXXWRnuwMpAZO0r29n2rA2Xm6WT2iMS
         OJpzBCZ8SEnjPT3d/4MuM+3be4BpNIPysXUd2dacoCgVWqkgJ6nsHWSkthSxkshonojt
         R09w==
X-Gm-Message-State: AOJu0Yyc9U99bw/IM5dWRDQ1FkC2rBZYdLNzq3IZSO6/86ikJmJzs4mF
	X56O33Mb2WYteE7XGt/hL7mb6KKnmQzg0g781DMLHCAJZePOSIY6dnSnt0NPcVrWoW7RBtXSo3t
	QNkI=
X-Gm-Gg: ASbGncvin++veeXJPxr+6txa3NtmeybCY+m14TM7hz8BuMD9AVLBjFcAQFpnJW6aHGp
	yll4rRtP4TtSc9I2Hf98iSagJBSkcFsAI7TtiqBvCDhOzRHfAVVYb0n1UpLOJpOQDEymTUPQdSm
	mkntcqMIH5OYRg4Rwv5gWqSRV4al5x6x75dnuCux6riQIq14fukeJkbK8zaEG3cj9ZUGekz09Ti
	PoKlj+e18cc/As/RqrdyXuXtLjdt/clNMZvrvAkp8dkh26CnA860cREk35OarN4Aew7hsTF8FwA
	XhXjPM7BTXqII2Z0PSnajYLyalUl8jT2mThPtCp+fyqZmAa15oB8FteKd3o8sRfiRt4AxDrww1Z
	UaSmlo8w5yzFxZxIU0Q==
X-Google-Smtp-Source: AGHT+IFtmKpvuoTKGC02NdjqQ/31LE5BeHUN84SPLB/nFCiwrVrkLnk4//aWh5fGQCIrd9FOdLgw6A==
X-Received: by 2002:a05:651c:1617:b0:30b:c479:4017 with SMTP id 38308e7fff4ca-30f44f5319emr10239411fa.8.1744206410756;
        Wed, 09 Apr 2025 06:46:50 -0700 (PDT)
Received: from localhost.localdomain (87-100-218-141.bb.dnainternet.fi. [87.100.218.141])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f4649d668sm1816641fa.1.2025.04.09.06.46.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 06:46:50 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Bill Mills <bill.mills@linaro.org>,
	Mikko Rapeli <mikko.rapeli@linaro.org>,
	Ross Burton <ross.burton@arm.com>
Subject: [PATCH v4] systemd: use serial-getty-generator on genericarm64
Date: Wed,  9 Apr 2025 16:46:15 +0300
Message-ID: <20250409134615.240037-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 09 Apr 2025 13:46:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13590

systemd-serialgetty recipe sets serial consoles based
on SERIAL_CONSOLES build time variable. These fail to
be detected on multiple devices including qemu and the
resulting failures delay boot to systemd "running" state
by one minute on an example aarch64 build machine and qemu.
Serial console login works with both since udev will
trigger agetty on correct devices. Using systemd side
serial-getty-generator disables systemd-serialgetty.

qemu-system-aarch64 core-image-base boot time with
systemd-serialgetty before this patch:

$ systemd-analyze
Startup finished in 8.314s (firmware) + 9.805s (loader) + 14.338s (kernel) + 1min 34.392s (userspace) = 2min 6.851s
multi-user.target reached after 1min 34.387s in userspace.

with this patch:

Startup finished in 8.312s (firmware) + 9.804s (loader) + 14.295s (kernel) + 29.808s (userspace) = 1min 2.220s
multi-user.target reached after 29.802s in userspace.

After recent changes to serial-getty-generator, systemd init
and "poky-altcfg" builds for genericarm64 machine now
don't start agetty to serial consoles which are not
defined in SERIAL_CONSOLES at build time. This includes
AMD KV260 where boot succeeds with long delay and without
agetty serial login:

[ TIME ] Timed out waiting for device /dev/hvc0.
[5:185mDEPEND] Dependency failed for Serial Getty on hvc0.
[ TIME ] Timed out waiting for device /dev/ttyAMA0.
[5:185mDEPEND] Dependency failed for Serial Getty on ttyAMA0.
[ TIME ] Timed out waiting for device /dev/ttyS2.
[5:185mDEPEND] Dependency failed for Serial Getty on ttyS2.
[ TIME ] Timed out waiting for device /dev/ttyS1.
[5:185mDEPEND] Dependency failed for Serial Getty on ttyS1.
[ TIME ] Timed out waiting for device /dev/ttyS0.
[5:185mDEPEND] Dependency failed for Serial Getty on ttyS0.
[  OK  ] Reached target Login Prompts.
[  OK  ] Reached target Multi-User System.

Fix is to either add all supported devices to SERIAL_CONSOLES
which has been rejected
https://lists.yoctoproject.org/g/poky/topic/109273447#msg13461
or using systemd to start agetty on all detected
serial console devices, this patch.

Without this patch AMD KV260 serial console login is broken on
"poky" and "poky-altcfg" distro genericarm64 builds from poky,
all images. With this patch "poky-altcfg" images have working
serial console login. This change is also needed in walnascar
branch.

Cc: Ross Burton <ross.burton@arm.com>
Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend | 3 +++
 1 file changed, 3 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend

v4: improved commit message, no changes to v1

v3: https://lists.yoctoproject.org/g/poky/message/13575
    no changes to v1

v2: https://lists.yoctoproject.org/g/poky/message/13566
    no changes to v1

v1: https://lists.yoctoproject.org/g/poky/message/13522

diff --git a/meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend b/meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend
new file mode 100644
index 0000000000..f23852a351
--- /dev/null
+++ b/meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend
@@ -0,0 +1,3 @@
+# auto detection instead of build time configured via SERIAL_CONSOLES
+# to support multiple devices
+PACKAGECONFIG:append:genericarm64 = " serial-getty-generator"
-- 
2.43.0


