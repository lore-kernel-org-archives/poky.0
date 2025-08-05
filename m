Return-Path: <bill.mills@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7526C87FCB
	for <webhook@archiver.kernel.org>; Tue,  5 Aug 2025 15:21:45 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web10.1951.1754407302781987596
 for <poky@lists.yoctoproject.org>;
 Tue, 05 Aug 2025 08:21:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=PGlGwIE3;
 spf=pass (domain: linaro.org, ip: 209.85.219.49, mailfrom: bill.mills@linaro.org)
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-70739d1f07bso59341326d6.2
        for <poky@lists.yoctoproject.org>; Tue, 05 Aug 2025 08:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754407302; x=1755012102; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:cc:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GMpWTa7qUATHDNLXVmYaXeIGiMf5tbkzCTAn62EnJ/s=;
        b=PGlGwIE3l5vh4vuk45hQImRUn/itsjnthLfk4MWK0w3d+vk3aTzCZrHHCZetuM7Dnf
         YmbNsIKQq5P+OBdVWHlCB4IOrwVCVZ+dwkSl0lnwIzznoyvfY4OSC9TEbi7W4bY5sqz/
         9jD1fnBGip1rzhE1gqNGtQRQK9tFRWTXsMjVeeyy9lBQ+NXAYLUdwfRha7c4X5Op7uQ+
         h5BYdGuiFC0Cmwj93DevNUzV2hWn0PzD0ujeJ/uL3bTmd4u8cas/EMqf0N4E7goMH82i
         JtE7nrt6xBZ3YUD6yephosDOzZwkHA/k7tBK1/kKlRwlZzuHI+bVB/vrlSLbPd1t+URK
         Sj4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754407302; x=1755012102;
        h=content-transfer-encoding:in-reply-to:from:cc:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GMpWTa7qUATHDNLXVmYaXeIGiMf5tbkzCTAn62EnJ/s=;
        b=TH1WOcofOhy32OE3uouu1eRvSMpZkm0gkOva4AVUfEM1RdEJOTUvHV9bT0Pul+XB7C
         YaZu5KdvgNbE02hfeRQD3uIfw4PsxdklF4/iVgfZPPPg0qS0Dxh9sCA4W1AaHttnb2wj
         Ay14+/9R3K0LokIdI6GTkpXeCdB7sJUzUrcgZOye9UdLCnJIn3BeqRtoPuMKNB82m3Bx
         eLJwfL1fT4/Wz0YZk9TpF8bAZMLlgHAFITbVD5qlPI2SiwMdErbpI6ULvPuy1aRfokMG
         2YPk72RpcoKN7l+ljJWY13EEIsaAtzjNW18MRg3eRFoBI0WFXOaCP2HlTGRzbRPTcgMc
         3UBg==
X-Forwarded-Encrypted: i=1; AJvYcCVdzvghzToP3KsX1D+m7M/ZqKKZEsTDdnFYVikRULRk795n90PI2FboGlacq8cLNL+kG6q7@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyCq9EbCISRcagtggWD0su7DmzVFKotiYJv321ckyvJaANJUoB4
	NtqX/otP5TM9UgTMzPLQayt3zzsk4gIk7Pj54mmKaF4P+TJtaJtvp7hPYA0i5ILKgrs=
X-Gm-Gg: ASbGncvyZa+Cde01TjBn46CFfPb+6qrQauRPXGebGtb8UnCtE4i53T9xT7FFcagesD6
	Ll0qkwn5ayrfqqs3q0DDrw4eXVmbthgqfzG4rMugjyFYPCa7SZJaUWpf7WJ2ChrH7MTGPOIXkhO
	S/73OS5uE53fspfd05zV5rYVpRVlzReCv3+jcVWcJrKErd4eKDaZ/LbnPHaU6KbnRglPbuWA2Wp
	/FAHlcnUjWHHxg2Rz97Pof6iSurh3u6Vlk1nPXCiAJG3b3LCm9GIMhXypaz9QpgmzQlZEpxCzMO
	npcZcrQ2RSf0SE0BVFplebm33ba+5o9wG4uMHtQxP7iTew8yytw9HCW3OMFHOupHuS/AIWFgJWi
	hMPc9HgW7AOp7EUgnHtc5iDRzTQUzv13+hPn/bAOZSlmjEeK9SBc3+/0ychpRz5IMCdERqag=
X-Google-Smtp-Source: AGHT+IFnWPShSDJ+s1ukk4TA0+qlVDcVj3LUHBNw0u1h5rCzogZiFhkoKSvgB+tzXhraFU8UAzXBsg==
X-Received: by 2002:ad4:5c8c:0:b0:707:415b:c13a with SMTP id 6a1803df08f44-70936584acbmr172343546d6.22.1754407301434;
        Tue, 05 Aug 2025 08:21:41 -0700 (PDT)
Received: from [192.168.2.7] (pool-108-48-78-67.washdc.fios.verizon.net. [108.48.78.67])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-7077cd5a438sm72735856d6.48.2025.08.05.08.21.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Aug 2025 08:21:40 -0700 (PDT)
Message-ID: <97fe3602-da46-4d35-9bcc-1cf855f668f7@linaro.org>
Date: Tue, 5 Aug 2025 11:21:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] [PATCH] genericarm64/genericx86-64/heabglebone-yocto:
 Default to zstd compressed image output
To: Ross Burton <ross@burtonini.com>, Jon Mason <jon.mason@arm.com>,
 Mikko Rapeli <mikko.rapeli@linaro.org>
References: <20250804135214.1416031-1-richard.purdie@linuxfoundation.org>
Content-Language: en-US
Cc: richard.purdie@linuxfoundation.org, poky@lists.yoctoproject.org
From: Bill Mills <bill.mills@linaro.org>
In-Reply-To: <20250804135214.1416031-1-richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 05 Aug 2025 15:21:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13714

Hi Ross/Jon/Mikko,

On 8/4/25 9:52 AM, Richard Purdie via lists.yoctoproject.org wrote:
> We want to release compressed images since these are much easier for
> users to download. Change the default generated output to match this
> and build the output we want to release directly.
> 
> One test needs tweaking to since it uses an uncompressed image.
> 
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  meta-yocto-bsp/conf/machine/beaglebone-yocto.conf         | 2 +-
>  meta-yocto-bsp/conf/machine/genericarm64.conf             | 2 +-
>  meta-yocto-bsp/conf/machine/include/genericx86-common.inc | 2 +-
>  meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py    | 1 +
>  4 files changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> index db9cfec497a..63d7f942144 100644
> --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> @@ -11,7 +11,7 @@ EXTRA_IMAGEDEPENDS += "virtual/bootloader"
>  DEFAULTTUNE ?= "cortexa8hf-neon"
>  include conf/machine/include/arm/armv7a/tune-cortexa8.inc
>  
> -IMAGE_FSTYPES += "tar.bz2 jffs2 wic wic.bmap"
> +IMAGE_FSTYPES += "tar.zst jffs2.zst wic.zst wic.bmap"
>  EXTRA_IMAGECMD:jffs2 = "-lnp "
>  WKS_FILE ?= "beaglebone-yocto.wks"
>  MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "kernel-image kernel-devicetree"
> diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
> index 722bc7d4a66..094af0eb9cb 100644
> --- a/meta-yocto-bsp/conf/machine/genericarm64.conf
> +++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
> @@ -24,7 +24,7 @@ INITRAMFS_MAXSIZE = "200000"
>  INITRAMFS_IMAGE ?= "core-image-initramfs-boot"
>  PACKAGE_INSTALL:append:pn-core-image-initramfs-boot = " ${MACHINE_EXTRA_RRECOMMENDS}"
>  
> -IMAGE_FSTYPES ?= "wic"
> +IMAGE_FSTYPES ?= "wic.zst"

While we are changing this, should we not also add wic.bmap to match the
others?

>  WKS_FILE ?= "genericarm64.wks.in"
>  
>  EFI_PROVIDER ?= "${@bb.utils.contains("DISTRO_FEATURES", "systemd", "systemd-boot", "grub-efi", d)}"
> diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
> index 943604c01cc..76a742b3916 100644
> --- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
> +++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
> @@ -16,7 +16,7 @@ XSERVER ?= "${XSERVER_X86_BASE} \
>  
>  MACHINE_EXTRA_RRECOMMENDS += "kernel-modules linux-firmware"
>  
> -IMAGE_FSTYPES += "wic wic.bmap"
> +IMAGE_FSTYPES += "wic.zst wic.bmap"
>  WKS_FILE ?= "genericx86.wks.in"
>  EFI_PROVIDER ??= "grub-efi"
>  do_image_wic[depends] += "gptfdisk-native:do_populate_sysroot"
> diff --git a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
> index 6fc6925f694..781763d1f15 100644
> --- a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
> +++ b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
> @@ -19,6 +19,7 @@ class Systemdboot(OESelftestTestCase):
>          # Set EFI_PROVIDER = "systemdboot" and MACHINE = "genericx86-64" in conf/local.conf
>          features = 'EFI_PROVIDER = "systemd-boot"\n'
>          features += 'MACHINE = "genericx86-64"\n'
> +        features += 'IMAGE_FSTYPES += "wic"\n'
>          features += 'COMPATIBLE_MACHINE:pn-ssh-pregen-hostkeys:genericx86-64 = "genericx86-64"\n'
>          self.append_config(features)
>  
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13706): https://lists.yoctoproject.org/g/poky/message/13706
> Mute This Topic: https://lists.yoctoproject.org/mt/114530300/3619240
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [bill.mills@linaro.org]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

-- 
Bill Mills
Principal Technical Consultant, Linaro
+1-240-643-0836
TZ: US Eastern
Work Schedule:  Tues/Wed/Thur

