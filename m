Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
 by mx.groups.io with SMTP id smtpd.web10.51193.1606222311246616767
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Nov 2020 04:51:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BHMuaq9M;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.66, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f66.google.com with SMTP id 1so2747708wme.3
        for <poky@lists.yoctoproject.org>; Tue, 24 Nov 2020 04:51:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=RII83dE5ZNa8QjAZGsmUIg/wwpTQaEtWf0xNCT1iZ9w=;
        b=BHMuaq9MUfDd4VO6VpKcovL1mCDX1QGp2Vr7POLvLSQ8uNGtGBy5z+XQSIvexVnXym
         gRhVzGPXKYrCTQ8ch85KkIooMGGNXEQEI2Jru/6HuFKITosGi/vwMbhMcBe5NEhTEhSj
         m+js2NwaEJR+ZTJUHKXkKl91/d0JlZZZF1VhQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=RII83dE5ZNa8QjAZGsmUIg/wwpTQaEtWf0xNCT1iZ9w=;
        b=IMvMOiDa8OUQPH9g/sNldY1DUTsl8A0qKXB/szt/lFW4c0bQaRWMH+9Xv19twJKE1b
         jhb+SQzw0bdTJ1sGuLQke9fqyf5JEcm9dYqGtJGdHhKdAytqoeOO2ONDkgCAbed2qq7a
         r+PgISU0cPRmP8BGvXBum/ZZi9I0feDKZQG1mJQ2BCysk3d15JohNHvbE8RnnWecoLWW
         0Bb4I+EnJxfnaUEWWFeObegYLLu6cyvf9Fu5OKZYU+aaW5+89GGiKsx/CebhMXWYtCI0
         5u77eZZdamqP2ar47sWFzPaCPXdjpRq52eT1deygcO6YkGY65uvZEXteF8+vO6wkcN7r
         dRSA==
X-Gm-Message-State: AOAM530dxTmkxtX9nS1/ppdKQUSM6sRmrSWBCYt4A4Nq9ZEQ0LdWZYsM
	1l5Q18ud48tEIvFGMgJnZ9kktw==
X-Google-Smtp-Source: ABdhPJyXapojyHjdhNsPt/yCHXioz0x2bZR1uBBLSfYz33KrXUFaYk7Zcd5sS3Dm/tpj/gc+SAtfRA==
X-Received: by 2002:a1c:c205:: with SMTP id s5mr4383479wmf.122.1606222309764;
        Tue, 24 Nov 2020 04:51:49 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 4.3.1.2.4.d.e.0.6.7.2.2.d.6.0.9.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (4.3.1.2.4.d.e.0.6.7.2.2.d.6.0.9.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:906d:2276:ed4:2134])
        by smtp.gmail.com with ESMTPSA id n4sm5537243wmc.30.2020.11.24.04.51.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2020 04:51:49 -0800 (PST)
Message-ID: <d99fb8c9fbc13a0ff994fec17a8331f4913c3c41.camel@linuxfoundation.org>
Subject: Re: [poky] [master/gatesgarth/dunfell PATCH] local.conf.sample: Update list of qemu machines
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Paul Barker <pbarker@konsulko.com>, poky@lists.yoctoproject.org
Date: Tue, 24 Nov 2020 12:51:47 +0000
In-Reply-To: <20201124124431.25294-1-pbarker@konsulko.com>
References: <20201124124431.25294-1-pbarker@konsulko.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2020-11-24 at 12:44 +0000, Paul Barker wrote:
> The `qemuarmv5` and `qemuriscv64` machines have been support since
> the
> warrior and zeus releases respectively. Add them to the local.conf
> sample so that they're easier for new users to discover.
> 
> Signed-off-by: Paul Barker <pbarker@konsulko.com>
> ---
>  meta-poky/conf/local.conf.sample | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/meta-poky/conf/local.conf.sample b/meta-
> poky/conf/local.conf.sample
> index 68e71b930b..df23af0a71 100644
> --- a/meta-poky/conf/local.conf.sample
> +++ b/meta-poky/conf/local.conf.sample
> @@ -19,11 +19,13 @@
>  #
>  #MACHINE ?= "qemuarm"
>  #MACHINE ?= "qemuarm64"
> +#MACHINE ?= "qemuarmv5"
>  #MACHINE ?= "qemumips"
>  #MACHINE ?= "qemumips64"
>  #MACHINE ?= "qemuppc"
>  #MACHINE ?= "qemux86"
>  #MACHINE ?= "qemux86-64"
> +#MACHINE ?= "qemuriscv64"
> 

I think those ones aren't listed as we don't actually test them
currently...

Cheers,

Richard

