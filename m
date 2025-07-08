Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7BC7C8303C
	for <webhook@archiver.kernel.org>; Tue,  8 Jul 2025 12:21:43 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web10.17080.1751977295058741036
 for <poky@lists.yoctoproject.org>;
 Tue, 08 Jul 2025 05:21:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=gsVWcX2V;
 spf=pass (domain: linaro.org, ip: 209.85.167.50, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-556fd896c99so3530477e87.3
        for <poky@lists.yoctoproject.org>; Tue, 08 Jul 2025 05:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751977293; x=1752582093; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qN2emr+w7NjjJjp0OOEVmCOfYFbuOnZKmwPGd5NlkGw=;
        b=gsVWcX2VZ0sG67HIJkKOS+n0wNtBYK4twmF9WfoHPd9zxvPci2Wiz7TF1pCbNLzinK
         589b1LV01lHwKIZeYldh3T0Gqwru1HPTzqP5Ff7Kopwgjep/zabB/bvEZ+KZ97WGM0Zg
         qEPza5oN9gCJZ9HtOKa46lAuMsNtj2lpPqmzj2jdCrDt8Ou3dZE3yOtMEzKTdMRyUgtv
         xwVb+eCe24f9NekiTBRlLlFNd/mzid7b9qDRrseS+EhPZc4Et1T00nPbTs2xf/G0Pxwe
         6k0ZNN4DVdBL8hyP2G4Vc030QPL/HdvfjdbDzA4JhFjz2oJZfjUcUjy4DMIhWMxJrAQH
         Ms3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751977293; x=1752582093;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qN2emr+w7NjjJjp0OOEVmCOfYFbuOnZKmwPGd5NlkGw=;
        b=k2R0j26xovi8RRwqyPcu/d9RG2w+rw3KabZ2U56fq/y90auragMkeNI/GqO+AyYAkE
         NFcmNv2qoYbn3rGZB+O9CyEFOfkCfzrnKQK7Nb1WXa0nwA8SytrPpqpSsRZuyg6pg/Ka
         ZURRitRQZPH0WbnPnPXn8C+1oMdVG7A51ShWKJfQRAy8hWpFsRTPcFlbsqYlfL3KlDtQ
         TCRqR0k6+R9SBkYci8TaMP76pVx2bqune2V29R99XvxX1NYMdVeG5Hv0Od/+yzI+v86C
         74VBWuLJURJTQli+1mtD+HTWBEXdXeBH1n9i5ILGTIKNrUuJe1lVIzsR8TAIjwfWmZJq
         B+JQ==
X-Gm-Message-State: AOJu0Ywetux3TSfY/YQ9zpyOgwE68brVkt9z5R4RgU8hYGbYBXqQp75O
	ILcXrsHi7/OgNkOFBiaVZojSczkFu0fZjr6SQL4513CY8MCQoJLrWzhu3cGJVJfMTos=
X-Gm-Gg: ASbGnctEv+P31UBzf5OS7Wbik6yWpzULIDnhDYo5qWYvDhKTm93IEmoXFqaM5jpnT+0
	+qzk3XsOTo41qxLykBTxKZLl2YPD6xkQ7PvdNK4Jwnl8zjJzNpBcrxZuTYvw/V0iUk539dVwaIA
	S7Vvjl20JTHlp4GtWOMV1U2PyUbiAppehzXnFS6rx7i3HZgEidWHSiwfcnqPOCO2p2N7OeyJ/PZ
	qXHwJBn0pDzcBl0XFmCZqKMDKYnUr+bpMc/Gj5MTO4sQmhGIQyCaY7LkYTA3P+obw4Hl+yLVipQ
	qY/rLS7NVod1wI35qHnNhlbuze9o1hNrPU+Co0j0m2orVbTmr+mSnFfgJQcUMhh4IP1RJWMUVQR
	JDshe71sLQv7RlUZBKmE=
X-Google-Smtp-Source: AGHT+IHkPRI64DdG2Yurs9bwwJYUCEPvIo5zUY250M+rnp/PvkT1/h7hzExmq67vQXHo7oHefmN+aw==
X-Received: by 2002:a05:6512:3e23:b0:553:1f90:cca4 with SMTP id 2adb3069b0e04-557a18e9b75mr4533214e87.13.1751977292966;
        Tue, 08 Jul 2025 05:21:32 -0700 (PDT)
Received: from nuoska (87-100-218-141.bb.dnainternet.fi. [87.100.218.141])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-556383baf15sm1645958e87.17.2025.07.08.05.21.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jul 2025 05:21:32 -0700 (PDT)
Date: Tue, 8 Jul 2025 15:21:30 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Ross Burton <Ross.Burton@arm.com>
Cc: poky@lists.yoctoproject.org
Subject: Re: [PATCH] systemd-serialgetty: disable on genericarm64
Message-ID: <aG0NSheRvFVq9ZGP@nuoska>
References: <20250424111932.294612-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250424111932.294612-1-mikko.rapeli@linaro.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 08 Jul 2025 12:21:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13699

Hi Ross,

I think this patch may have slipped through while waiting for your
tty refactoring and other patches. Could this be applied now?

The issue still exists and boot time to systemd "running" state
is delayed because if these timeouts.

Cheers,

-Mikko

On Thu, Apr 24, 2025 at 02:19:32PM +0300, Mikko Rapeli wrote:
> Upstream systemd setup with udev starts agetty on detected
> tty's so there is no need to use the build time SERIAL_CONSOLES
> variable.
> 
> Trying to start agetty on non-existing tty's from SERIAL_CONSOLES
> more than doubles the boot time to systemd "running" or "degraded"
> state. Boot time before this change (core-image-base with systemd-analyze,
> qemu, aarch64 build host):
> 
> root@genericarm64:~# systemd-analyze
> Startup finished in 2.409s (firmware) + 5.116s (loader) + 10.274s (kernel) + 1min 33.887s (userspace) = 1min 51.687s
> multi-user.target reached after 1min 33.876s in userspace.
> root@genericarm64:~# journalctl -b -a|grep tty|tail -15
> Apr 24 08:51:01 genericarm64 systemd[1]: dev-ttyS1.device: Job dev-ttyS1.device/start timed out.
> Apr 24 08:51:01 genericarm64 systemd[1]: Timed out waiting for device /dev/ttyS1.
> Apr 24 08:51:01 genericarm64 systemd[1]: Dependency failed for Serial Getty on ttyS1.
> Apr 24 08:51:01 genericarm64 systemd[1]: serial-getty@ttyS1.service: Job serial-getty@ttyS1.service/start failed with result 'dependency'.
> Apr 24 08:51:01 genericarm64 systemd[1]: dev-ttyS1.device: Job dev-ttyS1.device/start failed with result 'timeout'.
> Apr 24 08:51:01 genericarm64 systemd[1]: dev-ttyS2.device: Job dev-ttyS2.device/start timed out.
> Apr 24 08:51:01 genericarm64 systemd[1]: Timed out waiting for device /dev/ttyS2.
> Apr 24 08:51:01 genericarm64 systemd[1]: Dependency failed for Serial Getty on ttyS2.
> Apr 24 08:51:01 genericarm64 systemd[1]: serial-getty@ttyS2.service: Job serial-getty@ttyS2.service/start failed with result 'dependency'.
> Apr 24 08:51:01 genericarm64 systemd[1]: dev-ttyS2.device: Job dev-ttyS2.device/start failed with result 'timeout'.
> Apr 24 08:51:01 genericarm64 systemd[1]: dev-ttyS0.device: Job dev-ttyS0.device/start timed out.
> Apr 24 08:51:01 genericarm64 systemd[1]: Timed out waiting for device /dev/ttyS0.
> Apr 24 08:51:01 genericarm64 systemd[1]: Dependency failed for Serial Getty on ttyS0.
> Apr 24 08:51:01 genericarm64 systemd[1]: serial-getty@ttyS0.service: Job serial-getty@ttyS0.service/start failed with result 'dependency'.
> Apr 24 08:51:01 genericarm64 systemd[1]: dev-ttyS0.device: Job dev-ttyS0.device/start failed with result 'timeout'.
> 
> Boot time with this change:
> 
> root@genericarm64:~# systemd-analyze
> Startup finished in 2.411s (firmware) + 5.109s (loader) + 10.208s (kernel) + 24.868s (userspace) = 42.598s
> multi-user.target reached after 24.848s in userspace.
> root@genericarm64:~# journalctl -b -a |grep tty|tail -15
> Apr 03 20:34:34 genericarm64 kernel: printk: legacy console [ttyAMA0] enabled
> Apr 03 20:34:34 genericarm64 kernel: 9040000.pl011: ttyAMA1 at MMIO 0x9040000 (irq = 14, base_baud = 0) is a PL011 rev1
> Apr 03 20:34:35 genericarm64 systemd[1]: Created slice Slice /system/getty.
> Apr 03 20:34:35 genericarm64 systemd[1]: Created slice Slice /system/serial-getty.
> Apr 03 20:34:35 genericarm64 systemd[1]: Expecting device /dev/ttyAMA0...
> Apr 03 20:34:44 genericarm64 systemd[1]: Found device /dev/ttyAMA0.
> Apr 03 20:34:51 genericarm64 kernel[349]: printk: legacy console [tty0] enabled
> Apr 03 20:34:51 genericarm64 kernel[349]: 9000000.pl011: ttyAMA0 at MMIO 0x9000000 (irq = 13, base_baud = 0) is a PL011 rev1
> Apr 03 20:34:51 genericarm64 kernel[349]: printk: legacy console [ttyAMA0] enabled
> Apr 03 20:34:51 genericarm64 kernel[349]: 9040000.pl011: ttyAMA1 at MMIO 0x9040000 (irq = 14, base_baud = 0) is a PL011 rev1
> Apr 03 20:34:52 genericarm64 systemd[1]: Started Getty on tty1.
> Apr 03 20:34:52 genericarm64 kernel[349]: systemd[1]: Created slice Slice /system/getty.
> Apr 03 20:34:52 genericarm64 kernel[349]: systemd[1]: Created slice Slice /system/serial-getty.
> Apr 03 20:34:52 genericarm64 kernel[349]: systemd[1]: Expecting device /dev/ttyAMA0...
> Apr 03 20:34:52 genericarm64 systemd[1]: Started Serial Getty on ttyAMA0.
> 
> Changing the SERIAL_CONSOLES variable with systemd init
> ("systemd" in DISTRO_FEATURES for example)
> is not possible so changing systemd-serialgetty directly.
> systemd-serialgetty is now always installed with systemd.
> 
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>  .../recipes-core/systemd/systemd-serialgetty.bbappend         | 4 ++++
>  1 file changed, 4 insertions(+)
>  create mode 100644 meta-yocto-bsp/recipes-core/systemd/systemd-serialgetty.bbappend
> 
> diff --git a/meta-yocto-bsp/recipes-core/systemd/systemd-serialgetty.bbappend b/meta-yocto-bsp/recipes-core/systemd/systemd-serialgetty.bbappend
> new file mode 100644
> index 0000000000..9fd43259db
> --- /dev/null
> +++ b/meta-yocto-bsp/recipes-core/systemd/systemd-serialgetty.bbappend
> @@ -0,0 +1,4 @@
> +do_install:prepend:genericarm64() {
> +    # use systemd defaults to reduce boot delay from non-existing tty's
> +    exit 0
> +}
> -- 
> 2.43.0
> 

