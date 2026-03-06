Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E99BF01837
	for <webhook@archiver.kernel.org>; Fri,  6 Mar 2026 13:53:08 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.69394.1772805179538570817
 for <poky@lists.yoctoproject.org>;
 Fri, 06 Mar 2026 05:53:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=nyBtW7Ho;
 spf=pass (domain: linaro.org, ip: 209.85.167.46, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-59e4989dacdso3797813e87.1
        for <poky@lists.yoctoproject.org>; Fri, 06 Mar 2026 05:52:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772805178; x=1773409978; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4rVSkNI6E9bqDAWujBGFBsj/+Ah1eMDPw7QwPCyEWb4=;
        b=nyBtW7HoepIZ5Rl+J0+/rt6j01IX1PLChZW3wezLv2ZhqKWFJrE1CTBaHxPJAvlVdz
         GmfVczduxUqIVmO7z2xB3x0yAUUh9Dx1shNxs+HQpgmmvlrVBtj/zppCJfKD6cjMXisn
         ymDz6AFdyCOhCcQxh49st6BBjS8L+9vrDlS12NYI2v1XYv/HQgmEy8t3iYpjQZa45jEl
         XP45yqhnWP2oWukmNm7k0aSZ97tWQpKlZLolfnFICFkEM5RX11Nn8hyFhQKI7mQ4BHSq
         1XpC7ka6x0qpKgeeD+mSDoFDno2y4GyimrpJyYWw6vXGRSKikfIb3SvNife//iOhXxib
         YTrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772805178; x=1773409978;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4rVSkNI6E9bqDAWujBGFBsj/+Ah1eMDPw7QwPCyEWb4=;
        b=laZpUqJ9gPpqogBH02ReN8zQgeyTOhKP2lC94URtOjO4PmVCDPDF8cL8c+QqRsN1l9
         pdLqeyuQBpuxT6prFE5Os9leKcLLUvRlVKMYV2akt7YmcVy744wA4j2Vz5sGBiQXD43I
         M+vOrQo6Uei6sov5LnrCrUTKh2qMVxJ9Rs4LNsj7Q6XDpldpqUuUoXeymmaunQnPDiVB
         ZafO3BbxfzGLBB9fKoE7r0tiYL+KGrwueFIbIaSMny2EqjVzyO+UvB24QYLHSeL8myCX
         epaCiTFYZp5dLCOQMQtNPGlXItfG1y7LsIpnBy83Ld+RqYqVH8RwWW1E+/+xaXKy0Q72
         9o3g==
X-Gm-Message-State: AOJu0YxqYA1aszhwmyu24Jyaj73N9lK7aSfLoTAVfa4g65J0uQflZGci
	rD69mYO0i1umisH61TAxfdn7RzMj9bZ5lPcS79M4b6jhwOclOcD7HYXWfsD+vDX2DpI=
X-Gm-Gg: ATEYQzyCXIFvhT9hF52uVJgsZnDO/nyNfCkc9rKTABj0900rg7R919mdzE2E9UnjHHQ
	Wf5vaKfhq06tgpbh22Eykc3ZDdrbJAPyb0B34aRN9IUHiZPTi5ynYzurY3XBKvs+NATwoEk41uo
	+4Vi8nPDv6jL/8TDwxC6Uh4AquhuREDcWZsC+5akh7UdCE/8JfWh73aLab/iLdPfSh7H9aoZt78
	hl+rCwR7EE7fY06pFSgudIvRUPi8poBn0N7QaKV/ZqGd8f6DzgVZ2fxxEvCyBjepb8IueiOnN6S
	VoPVt4URUB8aWXdFl8ER3xJbdn0A0sZsNnFzrUbrHISqeNXOFKABmwEK1qGd1crawalbUEVHq7I
	nrgIAS1Ip3/EPI98+fxpT0AGRg9lfYB0zHH7ZaX3/GST7yAgIvMin4wxuTW2Skjl+BqAoGBCwGK
	2vt6j2443sgbTtoRI2wHTRXIbDGujBa2uLtVjr4ImEXOR+qVTLjj10T9gM
X-Received: by 2002:a05:6512:608:10b0:5a1:3f3f:a299 with SMTP id 2adb3069b0e04-5a13f3fa3a2mr59785e87.45.1772805177469;
        Fri, 06 Mar 2026 05:52:57 -0800 (PST)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a13d08d86dsm352815e87.89.2026.03.06.05.52.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 05:52:57 -0800 (PST)
Date: Fri, 6 Mar 2026 15:52:55 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH v2 2/2] oeqa runtime parselogs: ignore KV260 USB
 error on genericarm64
Message-ID: <aarcN0TWNPU42PZb@nuoska>
References: <20260306093316.7018-1-mikko.rapeli@linaro.org>
 <20260306093316.7018-3-mikko.rapeli@linaro.org>
 <f0efec2c7ec34b40379153e3d871d76044bd4243.camel@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f0efec2c7ec34b40379153e3d871d76044bd4243.camel@linuxfoundation.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 06 Mar 2026 13:53:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13852

Hi,

On Fri, Mar 06, 2026 at 12:17:32PM +0000, Richard Purdie wrote:
> On Fri, 2026-03-06 at 11:33 +0200, Mikko Rapeli via lists.yoctoproject.org wrote:
> > On AMD KV260 the USB 1-1 driver sometimes throws this new warning at boot but
> > continues and USB stack works so ignore the error:
> > 
> > usb 1-1: device descriptor read/64, error -71
> > hub 1-1:1.0: USB hub found
> > hub 1-1:1.0: 5 ports detected
> > usb 2-1: new SuperSpeed USB device number 2 using xhci-hcd
> > hub 2-1:1.0: USB hub found
> > hub 2-1:1.0: 4 ports detected
> > 
> > https://lists.yoctoproject.org/g/automated-testing/message/1525
> > 
> > Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> 
> I'm sure people will tell me I should just merge these and we move on.
> 
> Before I do that, I want to be really clear that this approach really
> isn't great. It amounts to "oh, we have errors we don't even understand
> but we'll just ignore them and hope for the best". Should we even
> bother with the test if we're just going to ignore anything it shows
> up?
> 
> I appreciate Mikko can't go and fight the world on issues like this and
> this isn't directed at him, it is just a general frustration with the
> "quality" of where software seems to be going.
> 
> Where do we draw the line if we're just going to ignore any error?

I think the maintainers needs to decide.

I maintain yocto genericarm64 testing on real target HW like the AMD KV260 and thus
I've decided that I accept these workarounds. These changes do not impact
other SW or maintainers in meta-yocto git repo so I think applying the commit
is safe.

The parselogs test is really good, too good infact, in finding issues coming from DUT HW,
lab setup with DUT, firmware, kernel and rest of the high level yocto
based OS image. Since my maintenance time is limited I need to
decide which issues to fix and which to just accept. It is ok to challenge my
decisions and especially help with fixing the actual root causes. Any HW vendors,
please step in to help!

I have been able to fix DUT HW setup issues for example by adding dummy HDMI
adapters so that Xorg startup completes, fix firmware and kernel issues for
some of the devices like Xorg 16bpp graphics output, and fix higher level
oddities like systemd udev breakages so I do some analysis and try fix issues
before adding these workarounds.

Another aspect is the reuse of oeqa runtime tests in other environments and
genericarm64 showing an example how to do that in the imperfect world. I
would like to see more of this since they are actually pretty good basis for
doing CI and on target testing. But that testing environment is complex and
target HW and firmware by definition unstable since they are under development,
even after vendors ship the HW and provide the BSP SW adaptations. Thus
these layer specific ignore lists are likely needed in custom
environments to get basic set of tests working and to stop new issues from popping
up, which is actually really important. It is important to get stable testing results
and it is important to find bugs and fixes for them. The parselogs findings are
sometimes rare oddities but sadly common with real HW, firmware and yocto based OSes.
That world is never perfect black and white, the gray zone is quite thick. That
is where parselogs ignore lists fit, into the gray zone when someone needs make
something imperfect but usable to produce reliable pass or fail results in testing.

Cheers,

-Mikko

