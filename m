Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
 by mx.groups.io with SMTP id smtpd.web11.8048.1605370464681859063
 for <poky@lists.yoctoproject.org>;
 Sat, 14 Nov 2020 08:14:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=QBdSYvPx;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.65, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f65.google.com with SMTP id 23so13671876wrc.8
        for <poky@lists.yoctoproject.org>; Sat, 14 Nov 2020 08:14:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=j6qSCHPXzq8FR8+/gUGtI30PtpHfMEUfHFb4nqNtu58=;
        b=QBdSYvPxONo133ca8nnKccg5OiFClNhqLeszAbsfiovDoXY83/EkJurqT4mAW/n9QE
         rVK7aGJMvVbjo5ViYJAMeGB0x7OIeqZclpJvEqWF2mMPyW5ES3wZpsUfBV4hdwXchFWI
         EMxYflp6BWifHJZTTOJkn1WzxKv4U3/2GUzrc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=j6qSCHPXzq8FR8+/gUGtI30PtpHfMEUfHFb4nqNtu58=;
        b=du+pKUXDOYlHz4OWGlceTasEDEh9jb4JRQqZqlOnXiqk16m8UzIuzRQcfeN8pCfukk
         qM5hwPwK2hoWK4CkvjdDQlm2Dhupy/C+xQ0jVpqnh9+ZliDV2anq3RqtqIFmiLOkB8or
         5RBcKi8W79qPNE3e31sRvpoqDZ16S2dDv93z4cXKPIKClXh8iz0nL3MjeyCIbFzhTnTc
         OS8XcMkimg5Xge102pFykmzThgGL3d6Qp+sXN3Z4yAuNwBmSn17Qqjk0X7Vogl1GUULn
         r71UBBYxgAd+4o5mHsQyP2QSnK50LXr9A8A/Vzle/34NJMsthfpPPBrHDjBaCWxj/UjK
         FCNg==
X-Gm-Message-State: AOAM530Ti5W2bXbet8TpCzL5Zg1sERO3L4HOG4SAE/USjAo4puSLDIpb
	VLFDFxN+JJ7kdNYZS+EjGBj6GQ==
X-Google-Smtp-Source: ABdhPJy4p5CY4t5tAQuqbyO7jjjcmj5xqpL1YlfAm14PuRVkjcnEpZDha/p+M3bTCyS5GfSmyZTBRA==
X-Received: by 2002:adf:ecc9:: with SMTP id s9mr10518885wro.246.1605370463202;
        Sat, 14 Nov 2020 08:14:23 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from e.3.a.b.8.4.f.3.4.e.5.7.b.c.8.4.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (e.3.a.b.8.4.f.3.4.e.5.7.b.c.8.4.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:48cb:75e4:3f48:ba3e])
        by smtp.gmail.com with ESMTPSA id f2sm16753069wre.63.2020.11.14.08.14.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2020 08:14:22 -0800 (PST)
Message-ID: <c2b80e97acb250037828311a1c741a8870f64477.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH v6] poky-tiny: enable section removal
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Sinan Kaya <okaya@kernel.org>, poky@lists.yoctoproject.org
Date: Sat, 14 Nov 2020 16:14:20 +0000
In-Reply-To: <20201113221425.5106-1-okaya@kernel.org>
References: <20201113221425.5106-1-okaya@kernel.org>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2020-11-13 at 22:14 +0000, Sinan Kaya wrote:
> Use GCC sections flags so that unused sections can be garbage
> collected at link time.
> 
> Signed-off-by: Sinan Kaya <okaya@kernel.org>
> ---
>  meta-poky/conf/distro/include/gcsections.inc | 19
> +++++++++++++++++++
>  meta-poky/conf/distro/poky-tiny.conf         |  3 +++
>  2 files changed, 22 insertions(+)
>  create mode 100644 meta-poky/conf/distro/include/gcsections.inc

Still seems to be the same?

https://autobuilder.yoctoproject.org/typhoon/#/builders/15/builds/2984

How are you testing this? I know people can have problems with patches
but this is getting a little silly :(.

Cheers,

Richard

