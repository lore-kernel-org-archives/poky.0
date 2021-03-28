Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web08.8860.1616946300930962560
 for <poky@lists.yoctoproject.org>;
 Sun, 28 Mar 2021 08:45:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=g/PF4SLK;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id y124-20020a1c32820000b029010c93864955so7259534wmy.5
        for <poky@lists.yoctoproject.org>; Sun, 28 Mar 2021 08:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=9isO7h/RMeQ+eEh41OsTFm6xxjDbJiOvl2Gl9n0aokU=;
        b=g/PF4SLKWMkFXJEKWCOwuQpntE0W4UKNkMEv2ROVucxzeqqUh8KFrFGtWIyKYh4kHv
         prVZBWkSm09Lq/9xJIpHgGKr0Qyg88zcFInYcNUyd9GFKJ0I5ZaLCsYHbapWDZt1Lmtp
         Cbynx1unYhz/5e7mbDezAlIrS9ahx8cUI+qCA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=9isO7h/RMeQ+eEh41OsTFm6xxjDbJiOvl2Gl9n0aokU=;
        b=ZPi8mtcaoM91Y2Zpw/B5Y0pDjfeOMwM+NFv2YGXrQqng8xTfRANr23Pf0Q2d4atOw1
         m6BFw7fpBiobznoHvBY6ffhPjKpneKQ+9zn5z4ixeuZIMPyUcD9UH2lia5Fb38qj8VdP
         jF2y5Era4JFQKE5CMrsT03q7eZx+bYr5l3/lJtEt4oXR+6NPZQoYc7S02JlBlNKR+3Bk
         h3rKIoykMjkiDcnncNIK5LhAunZNao/mAfsD6WFcQLKUU1VKJcbOXQEFgyPs95MeCgD9
         HvTCdp2UYrTYv09buDg52Wr42nI/D2IrOGhR4DZOajs3URsUKC8RtIbkH3nSNAU5PoDt
         HzXg==
X-Gm-Message-State: AOAM530I6mbG6V/bydjmPP3dvN9vnoVSdara4Klcnr6cH1UfTNMs1ZJm
	LgiqKFFyfJ8uYO5pi6XbUmuqnQ==
X-Google-Smtp-Source: ABdhPJwsGQ8sNEpjPrK4NwXGmWn5ikgb9UwfZyM2WBUM7HHbDt75OYiMTQQO6yFDbui6wuS/lqrfbA==
X-Received: by 2002:a7b:ce16:: with SMTP id m22mr21884572wmc.65.1616946299253;
        Sun, 28 Mar 2021 08:44:59 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:1d2c:6290:11e9:3ac1? ([2001:8b0:aba:5f3c:1d2c:6290:11e9:3ac1])
        by smtp.gmail.com with ESMTPSA id k24sm20219111wmr.48.2021.03.28.08.44.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Mar 2021 08:44:58 -0700 (PDT)
Message-ID: <48f4196457da1450694707cf4f60d0cc537c71ed.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH 1/1] Allow to overrule the URL in a bbappend.
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: jan <jan.vermaete@gmail.com>, poky@lists.yoctoproject.org
Cc: Jan Vermaete <jan.vermaet@gmail.com>
Date: Sun, 28 Mar 2021 16:44:55 +0100
In-Reply-To: <20210328142957.3008-1-jan.vermaet@gmail.com>
References: <20210328142957.3008-1-jan.vermaet@gmail.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sun, 2021-03-28 at 16:29 +0200, jan wrote:
> With this small patch, it's possible to overrule the public
> URL with a local mirror for those without Internet access.
> 
> Signed-off-by: Jan Vermaete <jan.vermaet@gmail.com>
> ---
>  meta/recipes-core/meta/cve-update-db-native.bb | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

This sounds reasonable but could you please use a name which is a little
more specific, "BASE_URL" is rather generic and hard to understand out 
of context. Some of the class variables will end up in global scope.

Also, patches against openembedded-core need to be sent to the 
openembedded-core mailing list.

Cheers,

Richard

