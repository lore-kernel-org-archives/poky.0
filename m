Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web08.53793.1629291225636345655
 for <poky@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 05:53:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=OD6EyVaE;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id c129-20020a1c35870000b02902e6b6135279so1743601wma.0
        for <poky@lists.yoctoproject.org>; Wed, 18 Aug 2021 05:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=sUnivv1FVQQzP8u7VR85MGhNUXwkqcSewSgULm03sGo=;
        b=OD6EyVaEsp2K1c+XnW3+afi0tvUkfkhq8vT/YMDoQxXyI0zM25TQLZ0nwYKv3A2JSW
         pZrwazN7gxEjp+eOOr1E/2yiSx40XvOcOZs85Px210jpPaCanzKWbxCLYRsG5JkK8+2U
         3tckx/29P0hpBeA+OdgKgK6DsLPNmkMy0bzek=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=sUnivv1FVQQzP8u7VR85MGhNUXwkqcSewSgULm03sGo=;
        b=BXuHQtTLGYJSYBh7ujaJXraoxWv+RvGI94f+fU5A0dTjKBlm6YnuTnX0LcXJDi+X/y
         qRenQPia9YNpDffcbnf4e6U7nVDK5oP+ldqqPgrdVicuI5OgcDI3xywVYtVHWQ50uDNh
         FuKV7zh2B53RIpqASEJdWr1QL8DRVft7gfRQQxgOlu9E5vBMEEc50eiwuGJDsuRo5suA
         YG6vglNkJr6gyPMTpllb0uj7dAFXTcvmzyo1X+XW48sR3Defl+Rj6mLPHH/6Z8QfCdF5
         a7YivQASaXNox3SqppUxeK58WZhzFPF9Q0YJo+AWenCODn/aopurFdTaNIn/XHIwODii
         m48Q==
X-Gm-Message-State: AOAM531aAmnelUjCLudxTP3yhGhtgN++j1vQMMSkaqt2ZMT6A8xhk2FC
	Osjpj/WtFvgq5CFL4Z0J3E+z7g==
X-Google-Smtp-Source: ABdhPJxW/J6KeYKNDql+h9quykPx/ZuLKJd3ECYIlcu4KWxCNoucQlsHbDKN2+FOKmeKpiXp+cFhTw==
X-Received: by 2002:a05:600c:294:: with SMTP id 20mr8439451wmk.133.1629291224092;
        Wed, 18 Aug 2021 05:53:44 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:2c5b:67f4:375e:5ae2? ([2001:8b0:aba:5f3c:2c5b:67f4:375e:5ae2])
        by smtp.gmail.com with ESMTPSA id p8sm4839097wme.22.2021.08.18.05.53.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 05:53:43 -0700 (PDT)
Message-ID: <f6060698fa60ca0f95237aa048fa2bd139851ba7.camel@linuxfoundation.org>
Subject: Re: [poky] multilib32: libtool-cross_2.4.6.bb configure failure
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Geller, Nir" <nir.geller@servotronix.com>,
 "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Date: Wed, 18 Aug 2021 13:53:42 +0100
In-Reply-To: <VI1PR0702MB36950F17D66F68F5FF67F31090FF9@VI1PR0702MB3695.eurprd07.prod.outlook.com>
References: <169BCA55EF9029C7.23238@lists.yoctoproject.org>
	 <VI1PR0702MB3695095B3B3F5644E1CED65C90FF9@VI1PR0702MB3695.eurprd07.prod.outlook.com>
	 <3c57bb766749d9db7f179edb313574209ada5681.camel@linuxfoundation.org>
	 <VI1PR0702MB369599699CD389BD2EA8359E90FF9@VI1PR0702MB3695.eurprd07.prod.outlook.com>
	 <3d7d1c721499eff07bfabd2219bc81b56d5a7466.camel@linuxfoundation.org>
	 <VI1PR0702MB36950F17D66F68F5FF67F31090FF9@VI1PR0702MB3695.eurprd07.prod.outlook.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2021-08-18 at 12:33 +0000, Geller, Nir wrote:
> Adding 
> TARGET_VENDOR = "-oe"
> To conf/local.conf didn't do the trick.
> 
> So I modified
> sources/meta-arago/meta-arago-distro/conf/distro/include/toolchain-arm.inc
> -TARGET_VENDOR = ""
> +TARGET_VENDOR = "-oe"
> 
> And then
> bitbake lib32-libtool-cross
> finished successfully.

I think you'd need to ask the arago people how to make this work then. I'm
not sure multilib support has ever worked with TARGET_VENDOR = "".

Cheers,

Richard

