Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web12.10639.1648049263507055509
 for <poky@lists.yoctoproject.org>;
 Wed, 23 Mar 2022 08:27:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=e5grRnba;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id p26-20020a05600c1d9a00b0038ccbff1951so119843wms.1
        for <poky@lists.yoctoproject.org>; Wed, 23 Mar 2022 08:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=CT7AAgX1DPuSQrNXgaPqKluUCS9S/we6wFLosdK/fKw=;
        b=e5grRnba5x0bBznDYk91YNstbR4U7aAb+SqiPbTvZL+XfcchDTn46wSuhbKHznLNKt
         qkug/JlI9ixtrWljfI/DWAVnYLuOFI/dt6NOagCjwn1rxPQDL4dGI1z+8FSHZldp94ks
         E1wbSAtmysiL6QTBCElId6txABX+0SqjoxU3k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=CT7AAgX1DPuSQrNXgaPqKluUCS9S/we6wFLosdK/fKw=;
        b=GJmMffZvg3RLfrZU7xIOKuKkUr85V2D1+cvY76aCOM51kGPM0DBXZzQAueIuKYdPdr
         584eftPT4Ui2xjZ+jy+DbwIEyoDwdZ6Bdebuu+gMsPT5e+FjVuaFvnptFwy9RdYA1SOI
         S05TxHGpXUvNYbSn4QNN2w870vn173DkfWIuTwcFQsrbvtMQ4EaCUrODcM7P/ucaK1mu
         wVsThD9PQP2hKMGaDf7HNB27Ct8+e7CuIqgC79wAgpublgrxnTUN+UzXSed4yH91oNMN
         OJfscEs172vW2wgFS1e4Zr/uhdXOAufyYcXEjpYwA8qtNoN3B655RDDJlc5znPwA4oX1
         LgqA==
X-Gm-Message-State: AOAM533kIfArlSHwbQUNwOR5l+FV+n56whPBaNpXfGwqrYYLj5/wpgN/
	iVO5B4HLTi77IHAqXWRSRmgJOQ==
X-Google-Smtp-Source: ABdhPJwvCKJKUPlmuMsoWPf2xBMMBNVGtqkI6zbZw7KN8FPBigk/uRcTI0ApUVXKQz3tbxCBVcFiWQ==
X-Received: by 2002:a05:600c:4e11:b0:38c:bd19:e72c with SMTP id b17-20020a05600c4e1100b0038cbd19e72cmr7808040wmq.174.1648049261890;
        Wed, 23 Mar 2022 08:27:41 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:aaba:716e:9c38:ad87? ([2001:8b0:aba:5f3c:aaba:716e:9c38:ad87])
        by smtp.gmail.com with ESMTPSA id i9-20020a5d5849000000b002058631cfacsm147795wrf.61.2022.03.23.08.27.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Mar 2022 08:27:41 -0700 (PDT)
Message-ID: <26ddeba3dc4efc62da2ecc762de5ca0ea7f48ba0.camel@linuxfoundation.org>
Subject: Re: [poky] git lfs support
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Steve Sakoman <steve@sakoman.com>
Cc: Jon Richardson <jon.richardson@generac.com>, 
	"poky@lists.yoctoproject.org"
	 <poky@lists.yoctoproject.org>
Date: Wed, 23 Mar 2022 15:27:38 +0000
In-Reply-To: <CAOSpxdYPvur2-4Nb8cpVOP0Zb6KhD+02+MgAKPPUcKgkjg1V0g@mail.gmail.com>
References: 
	<MW4PR15MB447343CF64A820024D3AF8D69C189@MW4PR15MB4473.namprd15.prod.outlook.com>
	 <96d2ead58457f34b4c2651cc0cbbb015eac0fcd6.camel@linuxfoundation.org>
	 <CAOSpxdYPvur2-4Nb8cpVOP0Zb6KhD+02+MgAKPPUcKgkjg1V0g@mail.gmail.com>
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2022-03-23 at 05:09 -1000, Steve Sakoman wrote:
> On Wed, Mar 23, 2022 at 1:00 AM Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > 
> > On Wed, 2022-03-23 at 00:54 +0000, Jon Richardson wrote:
> > > Hi,
> > > 
> > > I added lfs=1 to my SRC_URI that uses a git repo. I see code for supporting lfs,
> > > but I don't see a git-lfs checkout being called. Does yocto not support lfs?
> > > I'll have to had a postfunc to do the git-lfs fetch otherwise the files aren't
> > > checkout out properly. What is the purpose of lfs=1 in SRC_URI? It even checks
> > > for the existence of git-lfs yet doesn't use it anywhere that I can see.
> > > 
> > > I'm using dunfell (52b59e884110b2d48ad83438eef1fed7a28f01cf).
> > 
> > This could be a bug in dunfell, does:
> > 
> > https://git.yoctoproject.org/poky/commit/?id=45c02843d181b5f1872ad30f4d847c395233a676
> > 
> > help fix the issue?
> 
> The above commit is already in dunfell:
> 
> https://git.yoctoproject.org/poky/commit/bitbake/lib/bb/fetch2/git.py?h=dunfell&id=977b7268bf4fd425cb86d4a57500350c9b829162
> 
> As well as a follow-on patch to fix an issue with the above patch:
> 
> https://git.yoctoproject.org/poky/commit/bitbake/lib/bb/fetch2/git.py?h=dunfell&id=34597b96d94cd4d7aae38c394181df7bebec4171

Sorry Steve, for some reason I thought they were missing.

In that case the lfs parameter in the SRC_URI should work. Note that the
checkout would happen in do_unpack as the files are moved to the workdir, not in
do_fetch.

Jon: As you can see, there is code there to do this so I'm not sure what is
wrong I'm afraid. We do even have tests in lib/bb/tests/fetch.py to test lfs is
working...

Cheers,

Richard



