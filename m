Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web08.1031.1623778693852248925
 for <poky@lists.yoctoproject.org>;
 Tue, 15 Jun 2021 10:38:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=k3BLoD3k;
 spf=pass (domain: gmail.com, ip: 209.85.214.179, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id e1so8836289plh.8;
        Tue, 15 Jun 2021 10:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VohProjJGW/SyFKvg5uxm2WmcO8ZH6Bpuv223+O5YKg=;
        b=k3BLoD3kgsPqaLgJvSMnRKJukvtanEYyNtfoFAe+Ko9x4XscqSA3XVscKRDrSGvOnC
         VYF+dziJhianp2VI9NW/mI17Txj0WeWxVHE02UdfD5iH+8Uq0fo4kwUU2QvizOf/R7lP
         nkNG26hEQZGJuSnkCfmH4OaEoWVVvyxBTnXoWSq4cNFTlT6AY+mr+Tq19bA3PCvo0iXW
         fB5w0AZiZj7lQEle/3Bv+MuE+Knc0lDZN3RieYtLbyKs/9kcSJsgzrm1rcVywsEJjfX5
         o5hvZflcQSOYxDyEbd5VJOf0mGmIVgCGS5DZTtC89K5YiovAJ9Fp5ZQgB7zyn+13mhTD
         n+RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=VohProjJGW/SyFKvg5uxm2WmcO8ZH6Bpuv223+O5YKg=;
        b=HyHfZ8ifQxz0cTUC5GRlHNK705iEFUc/cgGHU416xMYWhdgRWDI0tOeuKcEZ8dXs/X
         EmxlBSngjuoHf8exy7qnas9npj50rkJXfH6F8xCbeYeVPlZJVj7QTaCNvKtxAA0dQrJ/
         Ub3DChPvIwMIbrnSexVru+5yFQfCei53yn1sD/qMRzx6GgFkW3XfDoHYF/RI+kXWAwPc
         wLCJBuXPSoc+/DQpdAhYNLL60ImNqnethP2x0dl8lKz9Zc9y7NOLedx6TI92JBivdOUe
         M0YD9YvfPyIfuUruBxqmM32nwxcpGo4pwnQyLwfvhi9MlRn2e+6MoFqe45kiNSq8a/VZ
         PBcg==
X-Gm-Message-State: AOAM531jIcmJS/WT3z/oXP4yQnEVYJbxAUMmGybls5o0daBvOfEo4Iet
	Y6grnSv+OlL2C6gLcOyhAVnjD4pUJ3r4zg==
X-Google-Smtp-Source: ABdhPJwp2d5Tau5ez1wleoR6hztlEm6H2BoQPj3QyvuGXDkOS0tBr5Jm3YWydUb9YrfPrKl8z1X06A==
X-Received: by 2002:a17:90a:9bc4:: with SMTP id b4mr6103703pjw.42.1623778692829;
        Tue, 15 Jun 2021 10:38:12 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:d088:fa89:ac40:a9cc? ([2601:646:9200:a0f0:d088:fa89:ac40:a9cc])
        by smtp.gmail.com with ESMTPSA id k15sm3272589pjf.32.2021.06.15.10.38.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jun 2021 10:38:12 -0700 (PDT)
Subject: Re: [yocto] [poky] [PATCH] local.conf.sample: disable prelink
To: Alexander Kanavin <alex.kanavin@gmail.com>,
 Richard Purdie <richard.purdie@linuxfoundation.org>,
 Mark Hatle <mark.hatle@kernel.crashing.org>
Cc: poky@lists.yoctoproject.org,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <20210615081225.1734033-1-alex.kanavin@gmail.com>
 <5ed9e1d2676d4d31289ebaf2ec3b492c1daa88a7.camel@linuxfoundation.org>
 <CANNYZj84MXS57sG5CWLmS-Y_0-w8h1_9NLmtjFEo4pJ5snXvcA@mail.gmail.com>
 <CANNYZj8S7V5owiS0p3B1fD7n_JpF-OPLApO=e9d+SiPuyFWHZw@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <cf64ed11-ff36-d3db-ff0b-5bda144bd782@gmail.com>
Date: Tue, 15 Jun 2021 10:38:10 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CANNYZj8S7V5owiS0p3B1fD7n_JpF-OPLApO=e9d+SiPuyFWHZw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 6/15/21 8:21 AM, Alexander Kanavin wrote:
> 
> 
> On Tue, 15 Jun 2021 at 10:55, Alexander Kanavin <alex.kanavin@gmail.com 
> <mailto:alex.kanavin@gmail.com>> wrote:
> 
>     On Tue, 15 Jun 2021 at 10:48, Richard Purdie
>     <richard.purdie@linuxfoundation.org
>     <mailto:richard.purdie@linuxfoundation.org>> wrote:
> 
>         I appreciate the desire simply to delete/disable anything that
>         causes issues
>         but in this case I draw the line and my answer is no. It works
>         fine in the
>         vast majority of usage.
> 
> 
>     But where are the benchmarks that show it's actually beneficial? And
>     commitment from someone to maintain it and address open issues
>     (there are more than just this one)?
> 
> 
> I went ahead and ran some quick benchmarks myself. Specifically:
> 
> 1. Running 'free' after things have settled down at boot:
> 
> a) without prelink
> core-image-sato-sdk
>                 total        used        free      shared  buff/cache   
> available
> Mem:          489352      152104      236284         472      100964     
>   323824
> core-image-ptest-fast
>                total        used        free      shared  buff/cache   
> available
> Mem:        1004680       43456      927688         256       33536     
>   941156
> 
> b) with prelink
> core-image-sato-sdk
>                 total        used        free      shared  buff/cache   
> available
> Mem:          489352      153048      235544         468      100760     
>   322900
> core-image-ptest-fast
>                total        used        free      shared  buff/cache   
> available
> Mem:        1004680       44444      928128         256       32108     
>   940168
> 
> 2. Running -c testimage
> 
> a) without prelink
> core-image-sato-sdk () - Ran 66 tests in 96.693s
> core-image-sato-sdk () - Ran 66 tests in 96.469s
> core-image-sato-sdk () - Ran 66 tests in 94.994s
> core-image-ptest-fast () - Ran 66 tests in 583.767s
> core-image-ptest-fast () - Ran 66 tests in 576.564s
> core-image-ptest-fast () - Ran 66 tests in 576.797s
> 
> b) with prelink
> core-image-sato-sdk () - Ran 66 tests in 96.390s
> core-image-sato-sdk () - Ran 66 tests in 96.615s
> core-image-sato-sdk () - Ran 66 tests in 95.596s
> core-image-ptest-fast () - Ran 66 tests in 576.248s
> core-image-ptest-fast () - Ran 66 tests in 574.618s
> core-image-ptest-fast () - Ran 66 tests in 576.760s
>

I think the advantage is not on high end CPUs but more on less powerful 
ones, so perhaps trying it on something like rpi0 or lower would be good


> So the memory usage is actually *better* without prelink. And any timing 
> benefits are lost in statistical noise, in these tests at least.
> 
> So I do not think it is wrong to question the usefulness of this 
> feature. I'd like to hear Mark's take on this, as prelink-cross is 
> primarily his work, he's put a lot of effort into it, and I would want 
> to know where the benefits are. Note that Red Hat abandoned prelink in 
> 2013, and prelink-cross likewise hasn't seen any commits for two years.
> 



> Alex
> 
> 
> 
> 
