Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26B98E9905C
	for <webhook@archiver.kernel.org>; Fri, 10 Apr 2026 09:09:16 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.152403.1775812149967707987
 for <poky@lists.yoctoproject.org>;
 Fri, 10 Apr 2026 02:09:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=uwe9f/1c;
 spf=pass (domain: linaro.org, ip: 209.85.167.47, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5a1307438ddso1852554e87.1
        for <poky@lists.yoctoproject.org>; Fri, 10 Apr 2026 02:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1775812148; x=1776416948; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=F8k6WNQtOdw0MZnEBMOv1fIT/8swj1WPLR69z9g4g9c=;
        b=uwe9f/1cy6o/HAG6aaAZ7w/uK1CEjqSD0JV2KKGuu9dsHMgSJtg1iNAJhSzV56329t
         ODPhQR6CxBQ1FZWmhNGf7Mwh56gdXhKzv0dGhiF/0h8xjmmqosGp3P829aaRRC0PzCTV
         Z73bqCxgg39v2cV3tVUBB3ouDRsXDCTn/bxhxvjk/usigbszOYwii5TE+PVZzZmCEhGC
         mf3p5P3Qoo8/3153ZqXbIIC1ciCtxlHT1DZ3tsiDt11c0us37CCtWL+al+edX9Xg/q4F
         1Uyx01hy2RIq5AfbdMe4bwit/Yt5HsU7VBnJ+zgXkmLNdgOwQGqWnM9iMY6USpUrEGEQ
         enFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775812148; x=1776416948;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=F8k6WNQtOdw0MZnEBMOv1fIT/8swj1WPLR69z9g4g9c=;
        b=I8k55QHp1TjHBmPC9e6a2Q3+U6BttIWv/7Kya3lmUoGf6AzER4AhkNo9SfzV4LP5n5
         Co3EmxmGddyds22jDTvrPwB4twSTauS9GFiV0nzf8AAG8CZqSwZX/pPL6pT86EI4oZBP
         NA9duBFnMSQB0kTWWNXUdRV3bD6Ce3KvNJlS32rqj4q6CqsJM4Y3nlI6A1JOZLO2/wfg
         NpXsMb4H2IlV/bKxKT8jsaq9YA359otvWtW9q3YrelhDzLgewRTGTLnWOu7fySfiECYK
         svLV+w1gBE9vK5DCa9QF/j1GzrBMxCPHcx/p/O+YFN26k+nFWfWVck+//BXsZyMQuvPu
         xdiQ==
X-Gm-Message-State: AOJu0YxFPNfK5MGXY7kOD7dKL5/oHdkCPvlLf7P/ga77gutETY20wKS6
	kgYtSQJSEYbEU8a/vEyW7KfVGrZ0moOox5qPA0z1Y40JVKCMPHtyPgZJgQ/fhZRZBk/J0+5FUE6
	6iV2V
X-Gm-Gg: AeBDieuMseRw+oTlqJ5U6TbF95CIddC/RRMW1lIqG7xfpiNDofjDvY1pxOy2OrgeKol
	yUruQ1ApZp0pcTeAb7rzFF3wYKkA9EmFIEV6uvbuNFB76KCm2qRDroZzTnrk68IaQbpj63/qDaU
	/ScyRAamv4E5w4Z18ryYHP8vFdznm0/9YCEMkLtl/lOyuaezuNyA1pO/YxwjxJKCltLM1LP+iQ3
	hA1LJaFGl1gZ8ey9/z8b6UHTWuPMu3jvUt0i/5dCes5XeP6RsD7IOyk05VJ0k74s6GmOZ/hw//v
	Dw6iMH2gIZEJRm0PVeTHFtrg9a9qTBGXjEje2sAzfem9NBamnKkRYEetVx6KQJusGKEJw+Z/ric
	4faz0XtFdCToXYy955KQ12dkp7eFG56mBnFmFR1S01nR4mrsNHbJ4Zdugn0N+zwPjgkWxY2upis
	kc66U0LZtlnRoFkVF//Ivm31kJ1vDgSq+hKmmo159jW93evHQ88/f6bHGN
X-Received: by 2002:a05:6512:2305:b0:5a2:c742:7a76 with SMTP id 2adb3069b0e04-5a3efe8e7afmr902222e87.44.1775812147623;
        Fri, 10 Apr 2026 02:09:07 -0700 (PDT)
Received: from nuoska (85-131-124-233.bb.dnainternet.fi. [85.131.124.233])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a3eeefb849sm603534e87.60.2026.04.10.02.09.06
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Apr 2026 02:09:07 -0700 (PDT)
Date: Fri, 10 Apr 2026 12:09:05 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Subject: Re: [PATCH] genericarm64 core-image-initramfs-boot: remove some
 kernel drivers
Message-ID: <adi-MRZXC5XtIqBz@nuoska>
References: <20260410090039.1372819-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260410090039.1372819-1-mikko.rapeli@linaro.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 10 Apr 2026 09:09:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13893

Oops, sent too early. This is not specific to genericarm64 machine. Will fix that.

Cheers,

-Mikko

