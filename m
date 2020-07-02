Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
 by mx.groups.io with SMTP id smtpd.web12.5509.1593721650060783338
 for <poky@lists.yoctoproject.org>;
 Thu, 02 Jul 2020 13:27:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Q4iIi4mn;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.66, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f66.google.com with SMTP id j18so28797631wmi.3
        for <poky@lists.yoctoproject.org>; Thu, 02 Jul 2020 13:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=CoZk2HQSE7LHlHWAdcInGniAMT82jAkpTca3VOVA4sA=;
        b=Q4iIi4mnoawpMRlM4Tuv5NsL8VmL7NJMpnYnWysM8eV5Qz0NbBNEbjt4SVLfmlRvYT
         gi15KBCSlYrxwjKr/k4bgISUZUWPhqrpdoexpQiYZzsIlrxDg7tWRd5rgfRm1FRpGgor
         tEPo/nXcNCsc75ED5Ywg5cStOv4cpOPGdnW6M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=CoZk2HQSE7LHlHWAdcInGniAMT82jAkpTca3VOVA4sA=;
        b=iqPzSco5aBRXNowpRMfBq/oG07/ZqObGrKXHdYj9CXd/vNTR2FxrGxAqEEjYPzmcpI
         hzBQFGlKNIbvHM2V32Jzhmb4adDs/LYwyV5r39z3+L9p+XHP1+qTpWDrgbcUru5zifJP
         IihWoJTmUtl8RmwEgdtFKv1LwRq8dc+mt1a38IQZeHNSSX62Ke19+TR9HbMnPesonfXt
         bvPXNFazp54l9RlGhOX0REnurfuvf0WBKsNSR7UwBivm1FYFFbroPXOYx4Tqkl4g4d0T
         RlmGP9UlAxDjxf44/5Kg2+L56WA1/oyOy2ikpHvUDnKhupT2Wrwie6R6X+ukfTzUZqgw
         XP4A==
X-Gm-Message-State: AOAM531k6feZdzIneOtV1uL+aVRpk5Z3GREuM8v0nRoBz2I43elxsjeb
	MVT0GmEJ76NRJ45apbCAEuhYyw==
X-Google-Smtp-Source: ABdhPJyyE/ReP6sHVQd2IWUXI4jPmQAU3jDzKyoqXR3X4NGgkVA4fOR2eMjouDDuraOFHOOQrjgGXg==
X-Received: by 2002:a1c:4d11:: with SMTP id o17mr32530750wmh.134.1593721648576;
        Thu, 02 Jul 2020 13:27:28 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id f14sm12798496wro.90.2020.07.02.13.27.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 13:27:27 -0700 (PDT)
Message-ID: <082b8438bc90e652cd85f8b8e02b828fd87dab2f.camel@linuxfoundation.org>
Subject: Re: [poky] [RFC PATCH 0/2] Add example recipes for ext kernel module dependency
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: hubert.chaumette@kolabnow.com, poky@lists.yoctoproject.org, 
	bruce.ashfield@gmail.com
Date: Thu, 02 Jul 2020 21:27:26 +0100
In-Reply-To: <cover.1593601516.git.hubert.chaumette@kolabnow.com>
References: <cover.1593601516.git.hubert.chaumette@kolabnow.com>
User-Agent: Evolution 3.36.2-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-07-01 at 15:52 +0200, Hubert CHAUMETTE via lists.yoctoproject.org wrote:
> Add example recipes (master an slave) for external kernel module dependency.
> The master recipe installs shared headers in ${D}${includedir}/${BPN}/ and the
> slave one accesses them with ccflags-y in its Makefile.
> 
> Please review the following changes for suitability for inclusion. If you have
> any objections or suggestions for improvement, please respond to the patches. If
> you agree with the changes, please provide your Acked-by.
> 
> The following changes since commit 259d2e35e7ba3cbd496d6383e58cfdc22b267f0e:
> 
>   python3-setuptools: upgrade 47.1.1 -> 47.3.1 (2020-06-30 23:03:02 +0100)
> 
> are available in the Git repository at:
> 
>   git://push.yoctoproject.org/poky-contrib hchaumette/ext-module-dep
> 
> Hubert CHAUMETTE (2):
>   Example for ext kernel modules dependency, master module
>   Example for ext kernel module dependency, slave module

There are a few issues here:

As others have mentioned, the use of master/slave here needs to be
changed. 

The patches also need to be submitted to openembedded-core, not poky. 

The shortlog in the git commit doesn't confirm to our patch submission
guidelines.

There isn't any test added which actually builds/tests/uses these that
I could spot. Should there be?

Cheers,

Richard

