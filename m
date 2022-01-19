Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
 by mx.groups.io with SMTP id smtpd.web11.520.1642611906378604118
 for <poky@lists.yoctoproject.org>;
 Wed, 19 Jan 2022 09:05:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=b8kUNxMO;
 spf=pass (domain: gmail.com, ip: 209.85.222.52, mailfrom: vivien.didelot@gmail.com)
Received: by mail-ua1-f52.google.com with SMTP id n15so4214115uaq.5
        for <poky@lists.yoctoproject.org>; Wed, 19 Jan 2022 09:05:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:message-id:from:to:subject:in-reply-to:references:mime-version
         :content-disposition:content-transfer-encoding;
        bh=03ZbsNqweKZX5BlcD0ORCluk1XQ/3JDxoQMr0VchPcQ=;
        b=b8kUNxMO9AX1qa0BUBodZqdBmu/28w2vJNUH8O53Qx0/lH4ccXrCe/+dhwWWLd5jMT
         EwrX0iBFhpWOSfSK36sqWPuELrbcuXOc4wNLnllCAkDzo5TO3w6jg8n3jQR8ymdHgaFP
         ujZYmtPQDPwjy0TGbry7DduynP+1Fy9un01ETE4sAoLYXrKfCtP4ar9Nyukollgkr8L/
         +i+YgaxRQMZb92FXHERCH+LsleF8+UqCO6HtJXmROBSPZy28+a+v5jt+mw8UU5MBtnqD
         dum9+iPqLQ9mB/ssN3kEVQDhkZWMFdipcxnBM/lgz3JsF3AOsREKgPct3HwXBBOynabu
         La3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:from:to:subject:in-reply-to
         :references:mime-version:content-disposition
         :content-transfer-encoding;
        bh=03ZbsNqweKZX5BlcD0ORCluk1XQ/3JDxoQMr0VchPcQ=;
        b=Ux+2HoSdfT4J3j3yWvLFyQH/j/vpY2roRG1+mLDuSv/w7NSwj9rdD33+ovT0o8zY+G
         WOztI2S4uIDtkn5G0XNzTV7wiAgrK0yKmLMyaaWRcuxjjxkU01v3zCOO9b1A+V9Z9mDv
         /9cw5dEhWm3MEi05cxcbFvkEQBWnqzi5Eg386CU4Nqb8jbpMyCIfub6XjS9UL/V5Tdq2
         PM2whcS1015qSOuKYmlrW/2gCm63MTgGTB0ph/RchMbj+hGfIN8ODPgUwpC0jtyQwM0Y
         UCrfUk8z+7yqSAhW6M/yLHRukJndT3ZFavxhgaY0PGW9XVvNMxNwPHooxfeRFmrggVry
         73uA==
X-Gm-Message-State: AOAM531mBYnR/ZU2d/cevubpx6UWJu0NKedTh3O7lPb/Thmnz6a+vI0p
	hgOX3sViDoJ5uycP3XV0nsMH9tcoEE0=
X-Google-Smtp-Source: ABdhPJzdsZbErO1jEefcrJHYEUNsXuck5Jpzeg6/L8oBuyvMWAVDt90lsiicWqpPpPol69LgXWDQzA==
X-Received: by 2002:a05:6102:3a0d:: with SMTP id b13mr1676672vsu.13.1642611905189;
        Wed, 19 Jan 2022 09:05:05 -0800 (PST)
Return-Path: <vivien.didelot@gmail.com>
Received: from localhost (bras-base-mtrlpq2848w-grc-41-70-53-240-211.dsl.bell.ca. [70.53.240.211])
        by smtp.gmail.com with ESMTPSA id k188sm67911vke.2.2022.01.19.09.05.04
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jan 2022 09:05:04 -0800 (PST)
Date: Wed, 19 Jan 2022 07:04:10 -0500
Message-ID: <20220119070410.GB4046142@wattson>
From: "Vivien Didelot" <vivien.didelot@gmail.com>
To: poky@lists.yoctoproject.org
Subject: Re: [meta-yocto][PATCH 2/2] beaglebone-yocto: move kernel and dtb to packagegroup-core-boot
In-Reply-To: <20220110165640.2015039-2-vdidelot@pbsc.com>
References: <20220110165640.2015039-1-vdidelot@pbsc.com>
 <20220110165640.2015039-2-vdidelot@pbsc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi all,

On Mon, 10 Jan 2022 11:56:40 -0500 Vivien Didelot <vivien.didelot@gmail.com> wrote:
> Appending IMAGE_INSTALL with the kernel and device tree is a bad idea
> because it will bring these packages to every images, like a container
> image or sysroot image to pivot to, where the kernel artifacts are
> not wanted.
> 
> Instead use the MACHINE_ESSENTIAL_EXTRA_RDEPENDS which results
> in having the kernel artifacts where they should be, part of
> packagegroup-core-boot.
> 
> Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>

Do you guys get a chance to review this series?


Thanks,

	Vivien
