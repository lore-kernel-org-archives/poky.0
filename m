Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web10.29183.1598561981121491970
 for <poky@lists.yoctoproject.org>;
 Thu, 27 Aug 2020 13:59:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MBfFXDwq;
 spf=pass (domain: gmail.com, ip: 209.85.160.181, mailfrom: jeanmarie.lemetayer@gmail.com)
Received: by mail-qt1-f181.google.com with SMTP id 92so5773594qtb.6
        for <poky@lists.yoctoproject.org>; Thu, 27 Aug 2020 13:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4QhSfHbGRgXxJXEvytOXfyxPZRJ3YX5DK4PmWCmgktY=;
        b=MBfFXDwqUBjLu0xwUv+q5Ku9/eI62w9a0p7C483XPpAqIdb/BS1v6/cCUbmedk6+VE
         QSij7w87pPXR1kYOq+K9m4GPDXeVBEtr4GRlEJ//+fwcVrAW1lBWE4EoLcElv2Iyge3I
         J3FN0D6Mo2DAyLg0e9YBo5yM16KY7vwvRIXaIk6ZYstLynMSKmY47PXL5x39GAIz2cD2
         Fkx+ZD+cZPufgDbcHWCVs0XzqKxYtc6O3WWZ1oRWc/Cz54qz6zthosGfjRb2SJEmnnE/
         SR8x7r7RMgbjxEs0LA8dzG9TzTsJ+AVT0jFAuJWsopSWaS/XCejnjp0w07xU0vphNCoy
         weMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4QhSfHbGRgXxJXEvytOXfyxPZRJ3YX5DK4PmWCmgktY=;
        b=CFCNNpo+6XlFHuE+Zjl4di87IeVQnzKHrgQwSxDp3CDNR9/di8WJ4yQHFwoZzaoIQi
         l4O6rMRR1r/2qHjsxboeblZW2PHSiGgYwBe8Lu03pJkVypUrRzvtN6fQw8ckt43a9qhn
         Rn61k5upDtX6x6cHuC8QDt7iE2NSDmu99oR/VTBEfla7uo/I73MUY1f4I10N742KMIcM
         J73dLLcpoloukoARNGEmzs55OTzsq73OnbbJlWAkx7l+Q8v8rYa8EKDf94eHzsxwDaPh
         2y0/x0K1qcNfKK6uibG+A77MgkIXJ+bwpKloSeoRsqPVruKBiRFoeSQxmOG5Csy3xnK+
         5R5Q==
X-Gm-Message-State: AOAM533RvHiqsl16Qsccqd80ZLm20g5Q0Yi0paoggQsI5TAwRGlAH+zA
	R+wPnSq5RH06iDle98/8tjIqfq5MC65iTjiOg3g=
X-Google-Smtp-Source: ABdhPJwxURrCCPX14HEiiFS9czdZLb2JU63b0giTirgLFo8e7hTY/fcIgINqlWDFUcxOOw20rcw+bsHjjbVZWTRjtxc=
X-Received: by 2002:ac8:1387:: with SMTP id h7mr11521768qtj.386.1598561980218;
 Thu, 27 Aug 2020 13:59:40 -0700 (PDT)
MIME-Version: 1.0
References: <GQTI.1598533769490833114.wbns@lists.yoctoproject.org>
In-Reply-To: <GQTI.1598533769490833114.wbns@lists.yoctoproject.org>
From: "Jean-Marie Lemetayer" <jeanmarie.lemetayer@gmail.com>
Date: Thu, 27 Aug 2020 22:59:29 +0200
Message-ID: <CAAdc0hynJygsATvEZEpZGgc-sjKra7KRjf7bvdpTNSVUmoLQNw@mail.gmail.com>
Subject: Re: [poky] Fetch NPM package from private registry #poky
To: erwin@digitalbrain.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi Erwin,

I don't think registry authentication could work right now. When I
implemented both npm fetchers I had no private registry to test it.

The only thing which is implemented is the alternate repository
(tested with the frea registry: https://freajs.com). So you just have
to update the yocto url from:

    npm://registry.npmjs.org;package=foo;version=1.0.0

To something like that:

    npm://registry.freajs.org;package=foo;version=1.0.0

But it is a public registry...

You should try to update both npm fetcher to add some authentication
options to the url like this:

    npm://private.registry.com;package=foo;version=1.0.0;authentication=foobar

Best regards,
Jean-Marie


On Thu, Aug 27, 2020 at 3:09 PM <erwin@digitalbrain.com> wrote:
>
> Hi,
>
> We are using a private organization npm registry, but we are struggling a little bit with authentication.
>
> We tried to setup the auth token in a before do_fetch task, but without any success yet.
>
> What is the recommended way for using a private NPM registry?
>
> Erwin 
