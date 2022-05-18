Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web08.7624.1652893650512776982
 for <poky@lists.yoctoproject.org>;
 Wed, 18 May 2022 10:07:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Td7p72pN;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id l1so1996642qvh.1
        for <poky@lists.yoctoproject.org>; Wed, 18 May 2022 10:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UueprRkH9RezKVuDdyjFP1J91dBr9fbic4cvkYIGMY8=;
        b=Td7p72pNcqiMMH4PfZjPsKFWtmabsiEmoXNRWl18kRw3rr1LvUYb/6EOvjUgH4BtyP
         7GTd4ZN05KAksDOmmh2QwhXLwyxB1mVSLjOxlZIe9TRvpvM00UWbOC4LdUVxkgd/a7fz
         NkY7whNOycNhQJhNTxgfK9wK8cE1IUrW78qkMVGEoqebf2IWkYg8n5sXRpSY9m5xrIv1
         TvefAhuBj/ldK/fIhDfatJkMWWlTgBFlVgTeCGWrVkUPc7qs73mvM/0ep8gUD12Kgj1o
         A7a7LTdKj7FZpyTFeAz9aY/3GjnCFfuT0935Hd9oXn6aR4WpjiHsVH44id8a2MQzemIo
         UYgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UueprRkH9RezKVuDdyjFP1J91dBr9fbic4cvkYIGMY8=;
        b=0cJt4AtSFPlc4ZPk+N7CXNd6tBr1libqPTh48qlqjF8e6amnFIbLj8aOow/pg8NdZS
         X9/srKsghsb6iM56AGm8w6cSJxI7I1vlpyca0cwdFtYWCK4EBimHRKuzcsDvblaBvvHn
         b3Hu4bXBEzYLDFUVku9Lq/+S5pSyeaMtdXFBs/TEqZhf+PTE5+5f9LlZVEnaA5WrR5GU
         UhGHICCsM7ugaVJqJ2yEQdli10D1MsopI1nqPzgYP3EVaroVh9fLiui8UYz6Iz/dupQ3
         Qj+rByjizgpxeleC0V9QTGYot3DoXRq0aSAhxFy4sMDbjhF3T0REIYI6LzBvDS05LJMf
         fIEg==
X-Gm-Message-State: AOAM530b+26tUqGOvnum1dLrJ7c0m1/k1TEp02ghbmgcCsW+1mU2Anvk
	ZTxvcaIuJ+fDjYqDJB8lhqz4FWB1/JsuSgD26nt6aLeuElU=
X-Google-Smtp-Source: ABdhPJwNkssC8u2z7ZcgEClJd2MdjDqrZhACjdu455ozFc6sVk4ugXZxb0ndBOX6KekuuFbm+SLNNLb32jMw4B7ChQg=
X-Received: by 2002:a05:6214:21aa:b0:461:b0d9:b265 with SMTP id
 t10-20020a05621421aa00b00461b0d9b265mr524993qvc.110.1652893649583; Wed, 18
 May 2022 10:07:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1spQTZVKKW8=ntd1--7A7g_uGE=k4fVEih5nYmBN85XrMw@mail.gmail.com>
 <13088.1652892457753604005@lists.yoctoproject.org>
In-Reply-To: <13088.1652892457753604005@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 18 May 2022 10:07:03 -0700
Message-ID: <CAMKF1spb8Q2ovrOF_-V0-A5SozYstciZUot+Wy4yBONZv1fwQA@mail.gmail.com>
Subject: Re: [poky] Need suggestion to handle COMBINED_FEATURES variable.
To: Rahul Chauhan <rahulchauhankitps@gmail.com>
Cc: poky <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

COMBINED_FEATURE gives you intersection of distro and machine
features, so if a feature is not in both of them
then it wont show up in COMBINED_FEATURES, so as long as you remove it
from DISTRO_FEATURES you might be ok

On Wed, May 18, 2022 at 9:47 AM Rahul Chauhan
<rahulchauhankitps@gmail.com> wrote:
>
> Is there any risk, If  I remove it from DISTRO_FEATURES not MACHINE_FEATURES.
>
> Actually I am using same machine file for multi devices but each device has separate distro.
> and singe image file for all the devices.
>
> So in my case i can use DISTRO_FEATURES_remove from distro file.
> but if modifying machine.conf file then all other device will impact.
>
> so in this case, is there any way to handle COMBINED_FEATURE.
>
> Your comment will very helpful for us.
>
> Thanks  Again
> Rahul Chauhan
> 
>
