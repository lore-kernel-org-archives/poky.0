Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BC12CAC5AE
	for <webhook@archiver.kernel.org>; Fri, 26 Sep 2025 16:05:53 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web11.21288.1758902747834039604
 for <poky@lists.yoctoproject.org>;
 Fri, 26 Sep 2025 09:05:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=cxfaBHQC;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3ee64bc6b90so1544164f8f.0
        for <poky@lists.yoctoproject.org>; Fri, 26 Sep 2025 09:05:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1758902746; x=1759507546; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LUI/PTOKpeatRWD91f3cM4caup0qn+xMdkG/HahHL8k=;
        b=cxfaBHQCReDi79AeRdQDnRfQXRVuB5NaKi6dbFQhPSSOFCo+pOOWasAgdUBV7VKPDu
         tTZNnLqFV+AIF+3AxZ6N8NOiSZh07iQQpoKAkxZti6ZpWBdeJB3BCCIwn5xQ7lu+y8pK
         0K8LpVgUwwi617knju2665SjZjHkGmldvSZuE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758902746; x=1759507546;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LUI/PTOKpeatRWD91f3cM4caup0qn+xMdkG/HahHL8k=;
        b=fkIJ8wfHTgCbiytAbJdQcy1I6we4BbDStAG+rAS4cDHFdF1XV5TNwd30gIiQbZWl8E
         P+no+6SD9D0fTsz5QDEmE8DngY9GSNNfyt5RC0CgZCW/VD5KFMnzCQdtPIceMmjLhVi2
         KIBh3RPImee+4D+Dq+37EyIG/t7SJRUMbDkix9xFVN8WGQMd8qBsUpYC0aq0ptii09Fn
         SW/9715ETYsRQd7YG1RVbUr8Yq4sMVal0BVOzHtGYKl2AH1i5sErhi6nlLAaPaHh/tRc
         Q75RnrGwbA5L/2DQVvbXnV2aKFAnXOAGq+R3SNkt6WeQu1NazYVk+RugGCnC6kE9Q7Ng
         scqw==
X-Forwarded-Encrypted: i=1; AJvYcCUMROtvO5gTVgP2KTXwM9YSf/dA7Tr1f40ITRhW84ISSg0plj9N6+fh80zEFqyWErHUekT+@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yx1U/Vn7lbvxQrTcIwCpEbhaGcfLP6PxteNJF/g7yd8zh+gZvEp
	PLRNFOgYUDx896deuOUyG3L9HnpY8rFz1gRuGL0dkKgV9uH6wyVATIaSUDddkMgzpuo=
X-Gm-Gg: ASbGncshwqJE9N7KYarRYZa02jpZ5cRqYIHfzHTv4I3sVoKfLxcrK3LLZL6NmAcxW5b
	bbsM4oRFP/MeTCob8M4t/e5dnNI2hjYEXW2l14GPJhzXTXSrd1TjeMGzC6kDFoWqy5/jHdiDhGp
	WNzcxYF1oBfGazdnPZhptZxs1EdoXl2tYVUmGSDibYnYVtfYxfFelwlr+pE370SwzQTCoZQRJXa
	i6OcAXqtFaX5LEx/WRANgZqcC4ZVfr5wLYT+aouacUZ8uD/R+o/jeQ/Z196DUJewzjwLzQ1nvdh
	z6EuV7bQ8EkpWFRgnDiOyLkC6XWwRpwXTHymc3n9cMftWdUCAVvB2ia40pBDWTFz3TZufqiAQ0t
	vEeJk6uSqqfRTLCEED9K+BsLGdIvhv6AszS02uhXzXGN3hUfnYKdl3OkvETnLAtIZR09FWCVdlD
	HP1FzK0CFwtSk7UqOJgvECsQ==
X-Google-Smtp-Source: AGHT+IHTtz0G1O1W8Zl+mBSuKW1tqTI2HJHfhlN12Slaln1OlWO6O21IVDF1zQAik/y17DeVvG7u+g==
X-Received: by 2002:a05:6000:430d:b0:3ec:d78d:8fe7 with SMTP id ffacd0b85a97d-40e4b851049mr7915481f8f.33.1758902746070;
        Fri, 26 Sep 2025 09:05:46 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:8a7a:1fb6:e6df:2fa7? ([2001:8b0:aba:5f3c:8a7a:1fb6:e6df:2fa7])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-410f2007372sm6681926f8f.16.2025.09.26.09.05.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 09:05:45 -0700 (PDT)
Message-ID: <8e978bc8666c0cc74330d75d068820ca48798685.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] poky-distro-alt-test-config.inc: don't override
 PREFERRED_VERSION_linux-yocto
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: mikko.rapeli@linaro.org, poky@lists.yoctoproject.org
Cc: Ross Burton <Ross.Burton@arm.com>, Bruce Ashfield
 <bruce.ashfield@gmail.com>
Date: Fri, 26 Sep 2025 17:05:44 +0100
In-Reply-To: <aNZF-z35JTa8PQg2@nuoska>
References: <20250904095943.2743917-1-mikko.rapeli@linaro.org>
	 <aNZF-z35JTa8PQg2@nuoska>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 26 Sep 2025 16:05:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13756

On Fri, 2025-09-26 at 10:51 +0300, Mikko Rapeli via lists.yoctoproject.org =
wrote:
> On Thu, Sep 04, 2025 at 12:59:43PM +0300, Mikko Rapeli wrote:
> > This overrides PREFERRED_VERSION_linux-yocto set in machine
> > config. Use ?=3D like in poky distro config so that machines
> > can override PREFERRED_VERSION_linux-yocto and for example
> > update to 6.16 kernel via machine config.
>=20
> genericarm64 does not work well on devices which are not known
> at compile time without udev and thus systemd.

You're asking we add code to mandate systemd and disable sysvinit
builds for genericarm64?

We should also mandate the 6.16 kernel and drop support for 6.12?

By extension that means that musl isn't supported for genericarm64
without security issues for example.

That would be a major change to our current plans/policies :(.

So no, this simple change really isn't that simple.

Cheers,

Richard

