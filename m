Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0AEDC27C7A
	for <webhook@archiver.kernel.org>; Thu, 17 Aug 2023 07:29:27 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web10.181837.1692257362219493503
 for <poky@lists.yoctoproject.org>;
 Thu, 17 Aug 2023 00:29:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=F6OlQuVd;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-3fe9c20f449so39142365e9.3
        for <poky@lists.yoctoproject.org>; Thu, 17 Aug 2023 00:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1692257360; x=1692862160;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Dyx/9RSMhbZir4LCQPLiKugV5u35BsS3DlNBDB6Qf1I=;
        b=F6OlQuVdUxSnBmNCITCbovE4z62J7crjYV1swnBGjN365+pCb/pPYKZBzkvjh3/Obh
         Z3/qIqIFWQsRQ0zadT1iRDbtBU16H41Yo/++ViVMC8w00nz0Ae2aIUqoL/aUsjNbes5j
         WjxehNfCFC3SUL1dRpe+tS4+2a7UIhmH9gOfU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692257360; x=1692862160;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Dyx/9RSMhbZir4LCQPLiKugV5u35BsS3DlNBDB6Qf1I=;
        b=LN6sbl5Z8KVL5bsCKMnQbftcymXj/E78ve9jav/67RSyHQ/MHGMU/NeSdUt6qO75/j
         8wEcQgtigoq5VAw3He3AHGLjl35PlFn1s+P1g9/Wn6k2NLLxfocKmUBN7pVUQbKxMNpv
         NICBM8hupVHDgxlh8hidAIrvHdWi7VHxlzftpXjxmIGL1EWTmhAFJVR8NP+DNLmLKCRr
         x/qCHQjyYocAREjDVWCHH5ZM9ygE007YwLi7AkNyplgKx+1gFGtBSVwh3rzIDdqlzdcQ
         EqUnOc4Iyv8066+3jQJV2cY+VtoEtCAtyA5da38txeRo93vq70GNzyW4RiZJZBVaH1uc
         ZdHg==
X-Gm-Message-State: AOJu0YxBI/SE18sZSd0FrmIcnCKnsaU5mlAqz6xL4jz0vXbmEqsv9Plm
	XnM2v/2zn6QVS+c6G2JjLQi2aQ==
X-Google-Smtp-Source: AGHT+IFQnZr26o55NL9zEAMwinjfmFqly5/HnLh82cAOy2iG6wDJixN6HWiQo0Wdnf5jzs6cVEdYeA==
X-Received: by 2002:adf:dd84:0:b0:319:6ec3:79c7 with SMTP id x4-20020adfdd84000000b003196ec379c7mr3622386wrl.36.1692257360342;
        Thu, 17 Aug 2023 00:29:20 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:ce81:b365:d63f:4c86? ([2001:8b0:aba:5f3c:ce81:b365:d63f:4c86])
        by smtp.gmail.com with ESMTPSA id o17-20020adfe811000000b0031762e89f94sm23719501wrm.117.2023.08.17.00.29.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Aug 2023 00:29:19 -0700 (PDT)
Message-ID: <b05667d60595cb9e96b2d1040d6bdc621a756399.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] scripts: use the monotonic clock to compute time
 elapsed
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: michael.opdenacker@bootlin.com, jtilahun@astranis.com
Cc: poky@lists.yoctoproject.org
Date: Thu, 17 Aug 2023 08:29:19 +0100
In-Reply-To: <d0d0a045-666b-47ea-9759-4d05f439fe36@bootlin.com>
References: <20230817045433.495995-1-jtilahun@astranis.com>
	 <d0d0a045-666b-47ea-9759-4d05f439fe36@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 17 Aug 2023 07:29:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13130

On Thu, 2023-08-17 at 08:35 +0200, Michael Opdenacker via
lists.yoctoproject.org wrote:
> On 17.08.23 at 06:54, jtilahun via lists.yoctoproject.org wrote:
> > From: Joseph Tilahun <jtilahun@astranis.com>
> >=20
> > The monotonic clock is preferable over the system clock when
> > computing the time elapsed.
>=20
>=20
> I agree. Otherwise, if you suspend your laptop, the time information=20
> counts the time spent sleeping.
> I submitted a patch to BitBake a while ago, but there was the fear that=
=20
> my change would break other parts (though it was working fine in my tests=
).

The issue was that the python manual page clearly says:

"""
The reference point of the returned value is undefined, so that only
the difference between the results of two calls is valid.
"""

and the timestamps being sent out by parts of bitbake may be used as
absolute time values (e.g. displayed to the user), not just for
comparison.

Cheers,

Richard



