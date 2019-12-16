Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.53.1576540553488682567
 for <poky@lists.yoctoproject.org>;
 Mon, 16 Dec 2019 15:55:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Oc3T1r8E;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0003CE01256; Mon, 16 Dec 2019 15:55:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB625E010DB
	for <poky@yoctoproject.org>; Mon, 16 Dec 2019 15:55:50 -0800 (PST)
Received: by mail-wr1-f66.google.com with SMTP id t2so9387082wrr.1
        for <poky@yoctoproject.org>; Mon, 16 Dec 2019 15:55:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=P5QL4Xzo/aHj7QW4648iPDjcGw6FhTqBByztY0kHWZY=;
        b=Oc3T1r8E1v+f0lD/ywHkmmd4oMuerN76/i0LgtlFCeI2tHIG1J4nMKlFmUVeVJRcIE
         GY1Wmx1TKsZ8F7qym+Tm/MXYWiNmVtNqxUEIx0yqx2n2j/avI1GD/yJ+AmVhJUzpN2YR
         JD9TBbk24aN605Ap0OOS2+lYotfUwxJAhxTuM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=P5QL4Xzo/aHj7QW4648iPDjcGw6FhTqBByztY0kHWZY=;
        b=E9KH8RCFt0KzNUF1KRzIKcGNQVM1wsVZ89MrIafpZcTgNE4RQ1RwYr+1sB7svULUfC
         s0pHjcq9PtZj8Btdn/D22JjSwsfbKWsww5bK4zkB84CSCE2LLs0BHSL6cNlj4NOxUwcS
         e8/FkcSG+0FF2DwrswrL2HNwEIzWHF7RG+6dbSKcdBuwhd04Hlb1EV3AxUQl1Z9LS00c
         vj1K1yfV2UtGoeCepE2/ghVt/QWJ9lp8Uqfl/V7wxiLb0vIqbJ6uInpuB++/5bpj+zTu
         Sj4mLhc8IsknCancB5j7YlLBSSO8IQbJ2TQphduoRJWPMhw/U07Wi1dnslCHi6+PGJhe
         xcUA==
X-Gm-Message-State: APjAAAXk/H2+FLuO3rCqsPP+bHZqVcfAh0iLWGMYDBMCVQalrYvulTIS
	Gr+vc4w6YI76RD5c5/v1cRSCen5i298=
X-Google-Smtp-Source: APXvYqzdTBl+GM4tnR31kId/V3hef0mkxRdnmlxxHmxOCzY5u6zeiuq1Lw5JlSeq3Xi16pQzyiR8sA==
X-Received: by 2002:adf:ea8a:: with SMTP id s10mr32501211wrm.278.1576540550032;
        Mon, 16 Dec 2019 15:55:50 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id z3sm23341191wrs.94.2019.12.16.15.55.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2019 15:55:49 -0800 (PST)
Message-ID: <9dfc6360e37ff298058ae89a9ca289dc973c3b32.camel@linuxfoundation.org>
Subject: Re: [poky] [meta-poky][PATCH] poky.conf: Debian 8 is no longer supported
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Adrian Bunk <bunk@stusta.de>, poky@yoctoproject.org
Date: Mon, 16 Dec 2019 23:55:48 +0000
In-Reply-To: <20191216040627.29272-1-bunk@stusta.de>
References: <20191216040627.29272-1-bunk@stusta.de>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2019-12-16 at 06:06 +0200, Adrian Bunk wrote:
> Upstream LTS EOL will be June 2020,
> and Python 3.4 is now too old for bitbake.
> 
> Signed-off-by: Adrian Bunk <bunk@stusta.de>
> ---
>  meta-poky/conf/distro/poky.conf | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-
> poky/conf/distro/poky.conf
> index 8a0f28a863..995dd826ac 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -59,7 +59,6 @@ SANITY_TESTED_DISTROS ?= " \
>              fedora-29 \n \
>              fedora-30 \n \
>              centos-7 \n \
> -            debian-8 \n \
>              debian-9 \n \
>              debian-10 \n \
>              opensuseleap-15.1 \n \

We still have such a worker in the autobuilder right now as it can work
using our buildtools tarball...

Cheers,

Richard

