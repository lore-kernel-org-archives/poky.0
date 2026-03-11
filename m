Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E5D61062874
	for <webhook@archiver.kernel.org>; Wed, 11 Mar 2026 12:10:33 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.19502.1773231027508768724
 for <poky@lists.yoctoproject.org>;
 Wed, 11 Mar 2026 05:10:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=PEd1hg0U;
 spf=pass (domain: linaro.org, ip: 209.85.214.176, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2ae3a2f6007so82313805ad.2
        for <poky@lists.yoctoproject.org>; Wed, 11 Mar 2026 05:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773231027; x=1773835827; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2sk5dMraYGc7HEW78k3DmozKaYi1pMwMRRCIbdO4nmE=;
        b=PEd1hg0Uv2Q4OXD05DkMBA1QBPSoRjFqUkbQNHn/HAbUbAoca7xK7KSQ+N7t7ssUFP
         emr0MKPqPRZrybwkAlWHcbBKFJjYS1t+VI0tO/FKlucoP3J55JTWHoThGJ1WbnWTmU3V
         Mxsrc8emMaiTDCBzo76S63Usbgihqwob5DihulViyQJIPl/Q3+EwuKVvxFaZ94yIFVMy
         jJnkxkWhCvU3BRs9VuWOuzRRwV4OCche+oE3joOP2Ib4YTtQnRlAouwjox9wKT/+PiUc
         kiFG+34uZ/iV6fqfeweH5ToZs5qW2CeLpukqQ3pN0AjRRV+DVaBjZHyCcnITyIQEupiS
         XDrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773231027; x=1773835827;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2sk5dMraYGc7HEW78k3DmozKaYi1pMwMRRCIbdO4nmE=;
        b=qU6Df9VRZS+KINu3XSIlUx7iwS1taMMujt8EiyxwNpZQBapF1/jTja8elck19+ud45
         wBqGOj4OXe3SfaLKDBm4P5IB5Dej2Sk9cv3qWAItmrYmYReo9wvmXo+1a0zqM/28unXn
         dDi79LiO5l4e6EgxfzwxrLEE1+BDgAXX1FZQZUK6IAyP+OdR63c73c6X6fvGTDFeWV/E
         gDbPdx7+rRP4MwgjLe3shWnDNOv52hzK8MYXdj7Fix5SS5hf2/RIYnRaGFq53fGl0AVK
         z4HNvxzuGqyWUJVEYmfjkW4duQu3g4hLEKc2PrjXTe+NMx87kMvLJmfUWLAwpfwD4zvy
         5G5Q==
X-Gm-Message-State: AOJu0YxquUhGHQb/wy45uuoqmgUJe677aqz3IY8C6uGgA7BVe+YHwGBC
	1hj8iy5ou/XbWvM+hj2Fs1E99BHGUosVOhtIshaHeHvjM+oSogml55mEO5tNC5iU7vg=
X-Gm-Gg: ATEYQzy9QR2dEtMn07RyJq34d/R2LRVlYuGPNLYhpZvw0HuqI/FbsbnKfLHFJ3arCQE
	JWsVu/z9NuDah429sMmv1o3mGg6kN7b0SHZJJYDQcgMdcz6aXNW29eDimQ1uR3lAe1Ug3L63owX
	m3z0le62CqBQ+eZnT80MzK6FqYOllSNVTJ1Wg50g3oUSSv/Pa9N27ZVhjFmgkMp0wzFSKqze+CM
	hW4lI46poILLP6zSXVKeAwjltgHglMe5LEqiiwokEwPzyqjSCOc6tQRqzz3oC/tEBUAR0nARRFB
	Ip7UZdif2FxO0xF6pJhvOBc7O9o/ch0vrrcCN5MlQyBNANqF0vIrUEuGACFHZgcJrY5lBy5+CyP
	dZFF6ZR7COXJ9F4dAWnRap2MEw1lkklG7lQuy84/3s78DGPHsQQH/DY9S0vjGugCTxdK1xvYG74
	BOFZXPUdF/ESsQdndZGY1pRbkWltXCX5SKuvyQs6mzq6Ue9awIj1pZlCkj
X-Received: by 2002:a17:902:d2cb:b0:2ae:a70a:2af2 with SMTP id d9443c01a7336-2aeae882456mr23356415ad.29.1773231026627;
        Wed, 11 Mar 2026 05:10:26 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aeae24aab9sm22945095ad.30.2026.03.11.05.10.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 05:10:26 -0700 (PDT)
Date: Wed, 11 Mar 2026 14:10:22 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH] genericarm64.conf: fix qemu testing with
 testimage.bbclass
Message-ID: <abFbrkd8o7iYxUkF@nuoska>
References: <20260311113616.249506-1-mikko.rapeli@linaro.org>
 <f3f3d82f4f70370b4904d65467748210e5cd1c84.camel@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f3f3d82f4f70370b4904d65467748210e5cd1c84.camel@linuxfoundation.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 11 Mar 2026 12:10:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13856

Hi,

On Wed, Mar 11, 2026 at 11:53:25AM +0000, Richard Purdie wrote:
> On Wed, 2026-03-11 at 13:36 +0200, Mikko Rapeli via lists.yoctoproject.org wrote:
> > genericarm64 machine has supported qemu for a long time but
> > the default build config failed with testimage.bbclass to boot
> > and run oeqa runtime tests.
> 
> The key question is whether genericarm64 is meant for real hardware or
> qemu.

Both, this has always been the case.

> When you run testimage against an image, the assumption has been it
> would be a real hardware setup, not a qemu one. If you wanted qemu,
> you'd have used qemuarm64.

Not true, real target images can be booted with qemu if there is enough
BSP side support for qemu HW and if config options for qemu etc are
correct.

> These changes are basically turning genericarm64 into qemuarm64 :/.

This has always been the case.

> > TESTIMAGEDEPENDS needs qemu utilities so that they are correctly
> > installed to image sysroot. For qemu machines these are set in
> > testimage.bbclass but remain unset for non-qemu machines like
> > genericarm64.
> 
> This is going to be annoying if you're trying to test real hardware
> with testimage. I can see the arguments both ways. This is one of the
> differences between the two machines though and I'm not sure it makes
> sense to make them match.

On genericarm64 which I help maintain, I will instruct real HW testing
to use testexport.bbclass. Real target HW is rarely next to the build
machines so using the exported test framework to run the tests is
preferred. In our test automation builds we do this and I can make the
testexport.bbclass default on all generiarm64 builds.

> > TEST_RUNQEMUPARAMS needs snapshot since default genericarm64 image
> > is a compressed wic.zst, nographic to run qemu without connected
> > display which is better on headless build machines, and slirp which
> > also works on much broader set of build machines than the default
> > tap networking.
> 
> You shouldn't need to use nographic with the changes I'm proposing to
> how runqemu is working, even on a headless system.

nographic works out the box now and all tests pass. Same with
runqemu, nographic boot works well on headless console machines
already now.

> slirp, is a preference thing and I'd like to stay consistent between
> the qemu setups. It is not the default.

It is the default on all builds and configuration I use and on meta-arm
so I would rather set this by default for genericarm64. Since yocto
upstream does not test genericarm64 I think this should be the default.

Cheers,

-Mikko

