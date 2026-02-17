Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B96EFE68143
	for <webhook@archiver.kernel.org>; Tue, 17 Feb 2026 08:13:04 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.7748.1771315980456833622
 for <poky@lists.yoctoproject.org>;
 Tue, 17 Feb 2026 00:13:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=lBt1GUdS;
 spf=pass (domain: linaro.org, ip: 209.85.167.46, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-59e5eaa491cso4620464e87.0
        for <poky@lists.yoctoproject.org>; Tue, 17 Feb 2026 00:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1771315978; x=1771920778; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rIR/0K6FqoNSr8OOa/Ui5vtlhSv9am0Zv03B0EZNdHM=;
        b=lBt1GUdSbnB+KtPHYazgX0gQJFnOrwgkEj9NGzH38AlxewixbW77WwfeN3mPuJas3I
         +h9AyJFsAMXd78YOmSDMdtaR1XRWcIwxZhDptg+mdEdKhXMb891Y4fhSjJ6Qup719RLu
         d8e7+6MCG0XNG2EIzgeVYcgq1EnCBFzTXz3FfCGHV0Qen44o+FgGmYtuu2IMfO47upP+
         3MSCjbCtIQBtYQ8HhPAFEqcUpiARSSGzGRkJJXYbxG7Ft2iwCueG+q+njaIw+GXSuRSV
         OrgWK1d1Tfnir7qjkt9Hp7b6EDQrT45s1rGyAF5PB6iVnAun9tbECGQa6Iz3y0Ev7tfj
         jtCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771315978; x=1771920778;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rIR/0K6FqoNSr8OOa/Ui5vtlhSv9am0Zv03B0EZNdHM=;
        b=oIYBZZbd1VMZR9FM9FjZPDlzlBox8BXgLYQzNpav1l4Tew4mwbYgUeqSqsQkg4tpZZ
         CzjrDCsq0El2YbavyohQHjsqthbmotXPiJsIsIsX1s7X1M0QUIFHon3L+s+aU8tOYOO1
         EvVf4UKcmVO8siT9gmDhHdKeFHHIaz8Jh5LdgYTPsZHd1GlX2lrEYHlZ/G613vaF9XOa
         HHhZBMnK3OAuatFeHN9rKtPVO95dABi+61dbXQZ4a9997cU614upbkgVAs4uZJIE3RLp
         PlvBto47U3gYxRbLt6riLGG8cLNUDUyC80LcMj9/ypGEG0Oe8DCqWBlB/e0GwoymmtFC
         bDfw==
X-Gm-Message-State: AOJu0Yw375T7CIFlMpi/nLp/rRld1NRNIbt+aJNV8BeTwBTrnkE+bXwD
	SLgJAec5xEASOqJB0HICyrkb6C1F7pqsrREaYI2eUTDr+531/DZuEAMd12w+C3I2s8T9Y5QyaaX
	0rewbyeg=
X-Gm-Gg: AZuq6aLmCtVMoqT59ncl0cjQxkPU9OiT36Q8THhpcJ3f8E1PSa/w+cUueHp5gAXx5rT
	IRKBgHID7yG/5ibTuY50SmBCZSTfIDGROppSvbt/LCSyecXwGZ5YPtFJior3C5kfMZLCA/QA1gs
	LN82PCkNNVJ9cAJI0lg17vRiOpRbKu0GkUcy24/cR1UEMBJYPQFbQa2mSYCvarWjDfq/T/omwXF
	B+h0HyJ69o8JKAFaNK68KcVcvy3uaSqwizzHx/8WZQvdrCIqbfBb1KKZWaQr2AisLaFEJ4/qnl9
	AcdfBTYZsGuxJufNNhhfTvaGyZmHUxVo3nRrCv+Ep6YB20bx7mMIIUg0ymhXKs2KqaU+NO6TiCc
	FvT0yO0I2KXpvQ3u6YBl19R7ZsY12aQb9NtMqwjd8o+a9l9hNsmp28Ze7DmZmxtTSulUiIVAknw
	OKESLyEdAAXk/YX63fk7LnL5juIprr+/oGB3DsrqrmjS9Ii+Zqhz0YAHOe
X-Received: by 2002:a05:6512:31d4:b0:59d:f545:f2da with SMTP id 2adb3069b0e04-59f69c0e73dmr3375877e87.8.1771315978072;
        Tue, 17 Feb 2026 00:12:58 -0800 (PST)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f5a5153sm3714450e87.55.2026.02.17.00.12.57
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 00:12:57 -0800 (PST)
Date: Tue, 17 Feb 2026 10:12:56 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Subject: Re: [PATCH] oeqa runtime parselogs: workaround current TI BeaglePlay
 warnings
Message-ID: <aZQjCPw_Cm-irINA@nuoska>
References: <20260129112140.998411-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260129112140.998411-1-mikko.rapeli@linaro.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 17 Feb 2026 08:13:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13837

Hi,

Could this be applied to master branch?

Cheers,

-Mikko

On Thu, Jan 29, 2026 at 01:21:40PM +0200, Mikko Rapeli wrote:
> On genericarm64 machine, parselogs test is currently failing
> due to these error messages. They don't seem to affect functionality
> so ignore them for now.
> 
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>  .../cases/parselogs-ignores-genericarm64.txt        | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
> index 3dc12d34ecdb..45f43ebd5627 100644
> --- a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
> +++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
> @@ -31,6 +31,19 @@ deferred probe pending: xilinx-psgtr: Failed to get ref clock
>  # small issue in devicetree
>  OPP table can't be empty
>  
> +# TI BeaglePlay
> +# firmware device setup error
> +Failed to create device link (0x180) with supplier 600000.gpio
> +# USB driver error messages but stack works
> +dwc3-usb: error -EINVAL: invalid resource
> +dwc3-usb: can't map PHY IOMEM resource. Won't apply i2409 fix.
> +# wl18xx firmware load error, not available from linux-firmware
> +wl18xx_driver wl18xx.6.auto: Direct firmware load for ti-connectivity/wl18xx-conf.bin failed
> +wlcore: ERROR could not get configuration binary ti-connectivity/wl18xx-conf.bin
> +# Audio SOC driver error messages
> +davinci-mcasp 2b10000.audio-controller: ASoC error (-22): at snd_soc_dai_hw_params
> +davinci-mcasp.0-i2s-hifi: ASoC error (-22): at __soc_pcm_hw_params() on davinci-mcasp.0-i2s-hifi
> +
>  # NXP imx8mp verdin with u-boot 2025.10rc2
>  # RTC detection issue
>  oscillator failed, set time!
> -- 
> 2.34.1
> 

