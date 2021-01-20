Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web09.26509.1611140738418401631
 for <poky@lists.yoctoproject.org>;
 Wed, 20 Jan 2021 03:05:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bn85W6YB;
 spf=pass (domain: gmail.com, ip: 209.85.221.42, mailfrom: kkettinger@gmail.com)
Received: by mail-wr1-f42.google.com with SMTP id w5so22653404wrm.11
        for <poky@lists.yoctoproject.org>; Wed, 20 Jan 2021 03:05:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=XTRTrZZHs2ejXj38zKDjrGxYJns5BRYnRmOhMV+gVNw=;
        b=Bn85W6YBgJMAGsPZ3osY2h4fV7CJzmO3iHk2YzfAMN3gWvEFWxvwJWvb64sd2qELSJ
         Ozj60Ew8IjHwSR9CeB5MblLWAy+dQpW/z3rCouMd09nkqToiVwoXyFPhVm4nvxNH1cxj
         J6QOnTjhTlj0PGfcHEVXSmTEfqEYtLxV4IGyEM/CQRPGi1qkIpHv9wZOJbUDwbIMPCRv
         NLwwm51vGSPE8u30LhuiO7bWZ4C/2YB4VnDQKFux8WJon1wgI52+UMh4u6IYej+xWAhE
         00Oly7/Ofbry4Air5qw8rgniPZjZfrnArgu5ATkyUb8LlUKJw8rTQ0Vku09mNBHLc7K/
         BbkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=XTRTrZZHs2ejXj38zKDjrGxYJns5BRYnRmOhMV+gVNw=;
        b=ABqUvfQNwJsst9V2mnpKnuDBZfKD3b0LM3GkaP4uBGUCo7WAd3sDmWpO7QEPGzCAXt
         Rq2ewN4CCAve7xfMgvDwScT0kMV6OHsHroNUkAbHbNeEDzWB5HzKln2LekUAQHw9fTXT
         Li9HDvvocwPtpzgy7Grd06RfhBacK4ltaZI8EFulHqs8QUqKs9bh5x1+CUgf0jvkb9CT
         E2FjynS94k/Ljd3B3wiTOQEtjkjsC1DcV8KME3LYBvax6JnzS7MeULQr0kiOxjfpX2Ih
         MQFx4ZJB4cZrK/hMOzPeM/TzDGlWyjo7xjE3WtFiufKwIQh0OzDpA/h/VzJEP7Hs01Or
         w4Jg==
X-Gm-Message-State: AOAM533nnwVoSAH9zJ1Ksp0X+1oBCNJiySTOrNCw6N83C/iUKmGW3/cG
	i6IQ/xQ75KSI71kb5GbBPiqMO9cjf8Y=
X-Google-Smtp-Source: ABdhPJxWJ1P992eXZngzKiTPTFobdXjZQ8+XHdvTc6JmAWjrluHOfLvIemcvwOEdq1WoDcwmlG4TvQ==
X-Received: by 2002:a5d:5181:: with SMTP id k1mr8511415wrv.226.1611140737067;
        Wed, 20 Jan 2021 03:05:37 -0800 (PST)
Return-Path: <kkettinger@gmail.com>
Received: from [100.120.10.93] (d7.nat.whka.de. [141.70.45.5])
        by smtp.googlemail.com with ESMTPSA id q7sm3250160wmq.0.2021.01.20.03.05.36
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 03:05:36 -0800 (PST)
To: poky@lists.yoctoproject.org
From: "Kevin Kettinger" <kkettinger@gmail.com>
Subject: apt-package.inc commented out section still evaluated
Message-ID: <da3e458e-e0c5-9fe6-16fe-e329083d386a@gmail.com>
Date: Wed, 20 Jan 2021 12:05:35 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

when looking into poky/meta/recipes-devtools/apt/apt-package.inc 
(dunfell), i see some section commented out (/*) in do_install():

---
do_install() {
...
install -d ${D}${libdir}/apt/methods

install -m 0755 bin/methods/* ${D}${libdir}/apt/methods/  # <--

install -d ${D}${libdir}/dpkg/methods/apt
install -m 0644 ${S}/dselect/desc.apt ${D}${libdir}/dpkg/methods/apt/
install -m 0644 ${S}/dselect/names ${D}${libdir}/dpkg/methods/apt/
...
---

But it is still evaluated when checking with `bitbake -e apt`.

I noticed it when the apt-daily service was still triggered after 
disabling the systemd service. In the commented out section the cronjob 
file 'apt.apt-compat.cron.daily' is installed, which triggers the service.

Is this a bug?

Thanks.

Build Configuration:
BB_VERSION           = "1.46.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "arm-poky-linux-gnueabi"
MACHINE              = "hp00164"
DISTRO               = "xxxxxx"
DISTRO_VERSION       = "3.1.1"
TUNE_FEATURES        = "arm vfp cortexa7 neon vfpv4 thumb 
callconvention-hard"
TARGET_FPU           = "hard"
meta
meta-poky            = "HEAD:39d7cf1abb2c88baaedb3a627eba8827747b2eb9"
meta-oe
meta-filesystems
meta-multimedia
meta-networking
meta-python
meta-webserver       = "HEAD:d7b41ced4b9a9a68083b0fcceff3b226298cff8b"
meta-iot-cloud       = "HEAD:45f83bbef34fb7760942e0ab650ab107053032d6"
meta-qt5             = "HEAD:0e7015f7a86dda995a39662edbb5c26da647c496"
meta-rust            = "HEAD:318fb46863c0df5001f937bb4ca856491a493725"
meta-bytesatwork     = "HEAD:e7db1dc2aa722dae27b6c15fddced0ef1a3d4d54"
meta-st-stm32mp      = "HEAD:36a9911705bd37df136e9ac51dbf418861d510c9"
meta-bytesatwork-st  = "HEAD:131629cf9db0e6000290e22f38943b324219a2bd"

Thanks.

Mit freundlichen Grüßen / Best regards,
Kevin Kettinger
