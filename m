Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 424E6CA1013
	for <webhook@archiver.kernel.org>; Fri,  5 Sep 2025 10:29:06 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web10.18181.1757068141317865364
 for <poky@lists.yoctoproject.org>;
 Fri, 05 Sep 2025 03:29:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=R9+SYPyp;
 spf=pass (domain: linaro.org, ip: 209.85.167.44, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-55f6017004dso2124364e87.0
        for <poky@lists.yoctoproject.org>; Fri, 05 Sep 2025 03:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757068139; x=1757672939; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BSZ5ITAkduBUWMiMMEbeQhtDvRbYl7mFzzYgGPkS/N8=;
        b=R9+SYPypNTzGjOGolQOv1euupSesHbpFJfA6Svm8xD6ex3ogOBKjaukMtP2/Nla29I
         Gx5HpaZ0mDEuqkr/CFaFsRkL0zAeJTP7c4PUU4N5p0SP34XD+WdAaFyP2UFGcCeAxz5i
         S4iAN1HwoH7R77mRhq6E3Ip27rpqb2PRk9uchA+v/mBC2ystdVh/VAfQb/nsC1OfikK9
         hC9oObijwQ0sl2pXc6PezkjBJJjNywMyxoObt1u7/rl9RlcRTxiGSl/E5qznEXO26bEZ
         x3DUk2TADHsvA5bY1zFkKXefH859vgV4+Xnsfg2Rr0tEgIL0VCb6PdPbCaCHSYvoowfp
         OD0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757068139; x=1757672939;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BSZ5ITAkduBUWMiMMEbeQhtDvRbYl7mFzzYgGPkS/N8=;
        b=ma+Ad/65hTng6Wyn0CtrsjVXoT1xhIH5h9JECsQHhh/TQ36/WWellxl0+TLxFfT3ID
         JWmmmkRs7GJiJNhX5Af7BofMn6JZj7YXr7+IbZykQg4IjjFjSubg/PrXQN1ItdMgWSOL
         tOrpxi37N271JLXKuhqzUBg4VXmd5I/p7FJ5TPivavY8uoXUiKI9ogJLgpsFEHKeBzFE
         Wp0zvUdVqGn6UUyb/eYi8BWXM524/QR5LQ7YiX1bN19VuCVFD3kgJfv28lituPGbsih2
         ERAx0NrvPl1qx6ErZ62cWV+6ZQJMofiC4YblQEQrzrZMfFoikUzHsiFjep5T6Vn6qfLl
         bZRQ==
X-Gm-Message-State: AOJu0YyunAWnG8cybNjyIEUouE3oNaWZcCSsnACk0qXvvYxGuK9IFYf0
	SAKlw8U0R0cDrlupuInuW7eZ5j9aIeaSl25f6niRboQOmCG1F3YI53w4OkUQoUBO/B+6Hq+syZc
	ULw4yXpI=
X-Gm-Gg: ASbGnctKrU/RgH+M2dtK84LsFAfPExYpJyBqa2OcCm8AXIbKBpBhGNFxBON5oObqf/O
	cWfHF0RmmTs9JhOGris8WI5NxtAmkuvaPlhh7PhCbA6rJAI2+jeAGQ0ERjme0CYS4Mv+iOt0wSo
	uylaWxLD7gXB7PgC7qE6okZCDE7f879FVcXr1+UTqCPvFCOTGBxEtzoHOvumVuuHyWVa5JTTzh4
	6WpbdVjIsfIywFvkfwHL2XycKQZwUbNVy2EuYGgzeZENAT4I+79GVCyNvzYyd+95cMrepPU21xC
	Xcy1hloA4LQy/HWIseP8EOSFjDjLwc3L8HT+is2vG3xWqp51FcOqsjtF24jPqopCr8rzZoY8jbH
	doXSEgKj66fqk1Mn6YJm3VMZGBFeZ4PsFY0RsdkRaYFvgJla1pAzy9GQ=
X-Google-Smtp-Source: AGHT+IFjNQckT0CCKphyDOZYLggSPAFBwV9cMkA5cybCk/swt1GWLTaqygwpxZFLnakewnRs5/ptIw==
X-Received: by 2002:a05:6512:448e:b0:55f:645a:7146 with SMTP id 2adb3069b0e04-55f70968d9dmr6249515e87.46.1757068139151;
        Fri, 05 Sep 2025 03:28:59 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608acfc25bsm1723871e87.98.2025.09.05.03.28.58
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 03:28:58 -0700 (PDT)
Date: Fri, 5 Sep 2025 13:28:57 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Subject: Re: [PATCH] parselogs-ignores-genericarm64.txt: ignore more KV260
 warnings
Message-ID: <aLq7aTJaKOET8XIW@nuoska>
References: <20250826081650.1940369-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250826081650.1940369-1-mikko.rapeli@linaro.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 05 Sep 2025 10:29:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13743

Hi,

On Tue, Aug 26, 2025 at 11:16:49AM +0300, Mikko Rapeli wrote:
> AMD KV260 shows more non-fatal error messages with sato image.
> Power management, pin control and X11 errors can be ignored in
> testing.
> 
> https://ledge.validation.linaro.org/scheduler/job/118932

Tested AMD KV260 with generiarm64 6.16 kernel (pending changes
to linux-yocto and yocto-kernel-cache, and update to linux-yocto
recipe in oe-core) and this change is needed to get oeqa runtime
tests passing with core-image-sato.

https://ledge.validation.linaro.org/scheduler/job/119421

Similar changes are needed on a few other boards so I'm preparing
those too.

Cheers,

-Mikko

> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>  .../oeqa/runtime/cases/parselogs-ignores-genericarm64.txt  | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
> index 1e8b1f4b7d1b..3e96a172da6d 100644
> --- a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
> +++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
> @@ -1,4 +1,11 @@
>  # safe to ignore minor firmware issue
>  zynqmp-pinctrl firmware:zynqmp-firmware:pinctrl: failed to set: pin
> +zynqmp-pinctrl firmware:zynqmp-firmware:pinctrl: set mux failed for pin
> +request failed for node
> +error -EACCES: failed to add to PM domain domain
> +probe with driver sdhci-arasan failed with error
> +Error applying setting, reverse things back
>  # safe to ignore initrd warning
>  Can't lookup blockdev
> +# X11 fails to start without connected display
> +modeset(0): failed to set mode: Invalid argument
> -- 
> 2.43.0
> 

