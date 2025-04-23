Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D627BC369D1
	for <webhook@archiver.kernel.org>; Wed, 23 Apr 2025 12:41:06 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web10.7462.1745412056991022661
 for <poky@lists.yoctoproject.org>;
 Wed, 23 Apr 2025 05:40:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=JAG8hAbm;
 spf=pass (domain: linaro.org, ip: 209.85.167.50, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5499659e669so6935152e87.3
        for <poky@lists.yoctoproject.org>; Wed, 23 Apr 2025 05:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745412055; x=1746016855; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FKQvI63GNQkTeMnVCw3Z3rqE2M2+l3Q1Q7MlRVPDoDE=;
        b=JAG8hAbmgQQYhEHfAfWBfQCLnA5LcON9k8ENjml4OzW0bfaQwFY3XeCjLECoTucM1J
         iI+0Bla2kb4Ycfsn1BwZoZmN27tPeqxxCsRiMbuhWUPOBSwJIdkPUIBBXfykI0nhVj/z
         Mb3j0JBP1wjGtZ/nHCMvqDZhFzhRkXG04rOrZzxuzY6HIz23DdeCaRkjy86EEIM7MlKc
         429++XvAjwfwFi3c7hw1Yj33DungiLvhC7AVF4lnw2SwRYkgkqI9cdSkFf9oxx8eMWPd
         wAc8FTZ/pdsNBMkPr0lcZ+Ln6pvLBl+2VOi4fyrMoQoKBqorek6TCbTpkuDjaaKhMR5U
         pU6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745412055; x=1746016855;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FKQvI63GNQkTeMnVCw3Z3rqE2M2+l3Q1Q7MlRVPDoDE=;
        b=soH+SEJHowdpWykQ6DxATJfDcUu87xwTHbbEiwayIrjti4m3r3E0wVhYP4dCX4j2TF
         DoB9MkHvePK44WUpHZjV5Kje8fCfg5D1jH9kVtDKseGDdkZG8MRyduxtDdbRGY1WGqBc
         ePrh0eM/ic+4hGJEcIEMo5jEHk2GnatwW/dDfMYXZbbsuBUdv3uYwnGthmiXkAxARenU
         haGmPfjmdtLHdhEMD1vXUltxnDDNfCYbBDSddIkH4z4YKD+dEeaot3TogO20p4bff9jn
         bxnchH4SvsIlmhr50bcF3ZnWS4V+NJmArztJ6XOXK8OpGXi2+aWwPUKmNbttEF8wRrVZ
         mbeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXyVVcwVSKXXVrS2ip1G/p7cphmuqxVgMHzSQeiVBujzNLWgfz/yOcZlMcTaGxgWp2Sj/8k@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yw8/gezoOWmNORLZy9H4sRHiMwey2dGAOExq0da3W0x8eOLUfdV
	kwrgSTrhWf4mOJYVsQ8QCAHBpihIfQv4ISppU22Ks4rRSNdTO6DPXUV32rIlM0o=
X-Gm-Gg: ASbGnctWUQrPcVcvyTjIKW4sxLNAnqp9BuyU02IA8VAUfjLTuzHxXm2SXHfaYrxYtnY
	00o4YcdH5zCLl2e0XwZ1eM6BDc0Jl7LjHBGiXL2z7L6Wk58JnRunLy61CtGEdB2ryEHNn/i4GL7
	M66eBic85xI4FX56IjBbRlR3Q4csBwk7aGsGEhG1+V2cc53hLTDad99sxVT36zPz5PRjfeYjlC6
	J4sQqlcmsnj8qTwlQ6Euo4CnF9jF56how5a7VoOXbGCNpUyC9gCsi9jul/GXMN3pVtEPlh7RwdF
	p/TIxJnAfig/4hpe/XDEK6pQ96DlxYbnK+dsJYw6JdNbdGnc5YDE2c9izQKYYOkVvkDDyhn14Sc
	2zln/+g1Y
X-Google-Smtp-Source: AGHT+IE1gBDX1upyAalJ6FAhHLWqQujqdIhNX0FB/SaQdbXtDpDGYNZ0HYADGwCnImfWH68YB/JRjw==
X-Received: by 2002:a05:6512:10c4:b0:54b:117b:b54d with SMTP id 2adb3069b0e04-54d6e66d9e3mr5722013e87.56.1745412055035;
        Wed, 23 Apr 2025 05:40:55 -0700 (PDT)
Received: from nuoska (87-100-218-141.bb.dnainternet.fi. [87.100.218.141])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d6e5e5472sm1509075e87.192.2025.04.23.05.40.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 05:40:54 -0700 (PDT)
Date: Wed, 23 Apr 2025 15:40:52 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: openembedded-core@lists.openembedded.org, poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH 2/3] kernel-yocto.bbclass: support modular kernel
 configs
Message-ID: <aAjf1EfWpWQt_RZ2@nuoska>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CADkTA4OM83dmNKO-ocCRmoVzaMWCxvN0SYz7Yi3th58uPoSqHw@mail.gmail.com>
 <CADkTA4PjYn55Udo7KxJwQi_SK08r+a_6EwMyo=e1-Y1vDKtxYA@mail.gmail.com>
 <CADkTA4MUkWtgpj=FG2rGN+kHQqkGLWjLPMDiyBi3TUct+Th4EQ@mail.gmail.com>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 23 Apr 2025 12:41:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13604

Hi,

On Wed, Apr 23, 2025 at 08:30:50AM -0400, Bruce Ashfield wrote:
> I already have patches for this, and they have not been sent on purpose.
> 
> Please do not apply this patch, consider this a nack.

Ok, no worries.

If you have the draft patches somewhere I can try them out on genericarm64
builds and test on a few devices, if that helps.

genericarm64 core-image-initramfs-boot is exceeding size limits currently
so I wanted to publish what I had already:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=15833

Cheers,

-Mikko

