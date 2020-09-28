Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.1532.1601317019266771517
 for <poky@lists.yoctoproject.org>;
 Mon, 28 Sep 2020 11:16:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=dBcNfDfG;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id z4so2414933wrr.4
        for <poky@lists.yoctoproject.org>; Mon, 28 Sep 2020 11:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=n3OyXGVHALX3hcD/RgN5JD01PW6tGS9S0uEPWzM3K5w=;
        b=dBcNfDfGYfztrLbOf8myU7gH+efkhg5Llrh+9qel/+lA4JefeZIO63lUuZKubaK/RE
         WqIu7NEVNBeNKfE6dMfiwLGAsPEROfIMx+e+XoIlNydWB7ZmHoH/D2hIN0DjfwauPo+1
         WOdkI1i6DGtyZ0JYIRU+fl2ssBBbjKnKIHFIY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=n3OyXGVHALX3hcD/RgN5JD01PW6tGS9S0uEPWzM3K5w=;
        b=L600GyQKUp8gp/dClViJhIYNHQAx6JHZtYlR7NMc5GVLyi+md/expwu3DV7B7crT1O
         a0lh+IlZ3cjrJHBJoVsmycvGt1cFsxhnxmnnwymUiDrF5/X8DBaYNPEmCickywYw686d
         cFGNjceuEYM9zuPqphJeMHwkZjkdIqhmcEdPA9v0n4eVJwjyTtgfQOVvxnxEyBVvqW8v
         GquHUW+nyTzzA9a3b+ytej7FsF2DQW61vehxYVssGCeW2I54pWeDS/pNajxoYtfuIsco
         cYwj/eYh/aieSgJGOuxFcGSec7uoSpXuyfPH08E1neShB307AomNR3rM3L/rqTeTKo4t
         uD6Q==
X-Gm-Message-State: AOAM533hSE27VhZhumqwrRzNR5auV2VjQqjpAKveLLLql6GW10fJ45Bg
	umyJWsftpZWJ/N+KUJWZZuL3DQ==
X-Google-Smtp-Source: ABdhPJyXq//ebWTKvmP5t9r14Toa+X4+dOh0bvVT7lsaYsmIPBRk+XNzHjbiuMRmc19b/zgAX5g++A==
X-Received: by 2002:adf:de11:: with SMTP id b17mr3024305wrm.82.1601317017639;
        Mon, 28 Sep 2020 11:16:57 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 1.d.f.d.8.7.4.c.e.3.5.3.c.6.0.0.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (1.d.f.d.8.7.4.c.e.3.5.3.c.6.0.0.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:6c:353e:c478:dfd1])
        by smtp.gmail.com with ESMTPSA id k5sm2270921wmb.19.2020.09.28.11.16.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 11:16:49 -0700 (PDT)
Message-ID: <5b2ed179f814358e99c7eecb4f17da07fb3fc2ee.camel@linuxfoundation.org>
Subject: Re: [PATCH 0/2] Map license names PSF and PSFv2 to PSF-2.0
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Mark Jonas <toertel@gmail.com>, poky@lists.yoctoproject.org
Cc: pidge@toganlabs.com
Date: Mon, 28 Sep 2020 19:16:47 +0100
In-Reply-To: <CAEE5dN385Lez85OSOKxSkdtWmyBRC_33RorW105=CDyC527+pw@mail.gmail.com>
References: <20200919131951.11129-1-toertel@gmail.com>
	 <CAEE5dN385Lez85OSOKxSkdtWmyBRC_33RorW105=CDyC527+pw@mail.gmail.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-09-28 at 19:49 +0200, Mark Jonas wrote:
> Hi,
> 
> Gentle ping about my patch. I am rather confident that I posted on
> the
> right mailing list.

I'm afraid its not the right list, these would go to openembedded-core.

I did look at these and they do look like good changes to have, the
incorrect list meant I lost track though.

Cheers,

Richard

