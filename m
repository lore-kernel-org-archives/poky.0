Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A7BAC35274
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 10:33:59 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web11.48433.1703154833455692454
 for <poky@lists.yoctoproject.org>;
 Thu, 21 Dec 2023 02:33:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Faic8j0y;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-40c256ffdbcso7043815e9.2
        for <poky@lists.yoctoproject.org>; Thu, 21 Dec 2023 02:33:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1703154832; x=1703759632; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XOefkvhfeKVebnk8dJ7TqO+37eLKLiB5hP3dgAx/uVg=;
        b=Faic8j0yEnON51+shlmJE/k3DzQq8KfENrUrzYLFc9e5/l5D1RBHgxUu72lnQ136gJ
         U6Rv/LcOzozRaZ9VNH7tNj++1UPodmEwl+gEmU2x8G6Sj6rmFQTLf+9dQ84cP+HNTJ/A
         S3V64JwwxCt/kR7myvpHr4AX5pds7uhR+qI6o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703154832; x=1703759632;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XOefkvhfeKVebnk8dJ7TqO+37eLKLiB5hP3dgAx/uVg=;
        b=FO3xUzl1oP5vnIl43t6pG9dIpW5daP2TPsOiBHMCNWi9BAqLaSk1EcI6uRqGOA8520
         6oW2nYqRq7E8f+LaMCvdZUDN2hwBnZy7gV6n32+YmG41jNs4ahI+3BZtd5OlDn6X4Zrw
         Eb4p7/zJGt4J7tFn2lB7Z1JpA7juEXwgCZlW3ZdRjIgLpn2Y41BYR0SPuYgd7zLEpXda
         A3BYMk29ZZuTFB2auJ/5MqanobHEeJ3XLAl4YbpG6TrcG+0PYRcOZl9SCBwXy0JVLVZF
         xmae7enRbXwyCCnd6j2URw79CB4sPEh7/ZlU52U6LxHlfKc0adCn4YYdnk6sVTt1mUEG
         q2kw==
X-Gm-Message-State: AOJu0Yyt9xqQwbHq9ooMwRegyIiGn5ppzARPiHHK9BbQ2Exrk/e+C4mT
	N9gD3c2U2qslAZC0yiNIunxJTg==
X-Google-Smtp-Source: AGHT+IFL1/n3bNMFqmTWJfAKRp0hgKs01cx5/2PMzykQ3vgHBOQIsS+vzOK5S4Mxwud5WDDZOpTNqQ==
X-Received: by 2002:a05:600c:4f54:b0:40d:1c96:f2bd with SMTP id m20-20020a05600c4f5400b0040d1c96f2bdmr599747wmq.93.1703154831849;
        Thu, 21 Dec 2023 02:33:51 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:916f:409d:c5db:4918? ([2001:8b0:aba:5f3c:916f:409d:c5db:4918])
        by smtp.gmail.com with ESMTPSA id bg6-20020a05600c3c8600b00405c7591b09sm2808661wmb.35.2023.12.21.02.33.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Dec 2023 02:33:51 -0800 (PST)
Message-ID: <84c17f66fbf33707c4141a00a937056df99c373c.camel@linuxfoundation.org>
Subject: Re: [poky] Add a new OpenSuse Leap 15.5 worker?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Michael Opdenacker <michael.opdenacker@bootlin.com>, Michael Halstead
	 <mhalstead@linuxfoundation.org>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Date: Thu, 21 Dec 2023 10:33:50 +0000
In-Reply-To: <0a61857d-2f2f-4ab4-a1e3-f20dfd40b9b3@bootlin.com>
References: <cd61b01b-32e1-4edc-bf05-d9e5bb31dc1b@bootlin.com>
	 <200bb2ba062142fe0bb75bbeddd6cfae1290ecd3.camel@linuxfoundation.org>
	 <4fd92d9a-1a05-45bf-ada3-23bd1e81fefc@bootlin.com>
	 <1aecfabe198d4d76dbd975e8e38533012be32814.camel@linuxfoundation.org>
	 <0a61857d-2f2f-4ab4-a1e3-f20dfd40b9b3@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 21 Dec 2023 10:33:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13227

On Thu, 2023-12-21 at 11:25 +0100, Michael Opdenacker wrote:
> On 21.12.23 at 10:47, Richard Purdie wrote:
> > On Thu, 2023-12-21 at 10:23 +0100, Michael Opdenacker wrote:
> > > Hi Richard,
> > >=20
> > > On 21.12.23 at 00:28, Richard Purdie wrote:
> > > > On Wed, 2023-12-20 at 16:13 +0100, Michael Opdenacker via
> > > > lists.yoctoproject.org wrote:
> > > > > Checking our workers, I see that we just have an "opensuse154" wo=
rker,
> > > > > but OpenSuse Leap 15.4 reaches end of life soon, at the end of th=
is year
> > > > > (see https://en.wikipedia.org/wiki/OpenSUSE)
> > > > >=20
> > > > > To go on supporting OpenSuse in 2024, could we have a new 15.5 wo=
rker?
> > > > I believe that is already in progress.
> > > Thanks for the good news. I was asking because I wasn't seeing such a
> > > work on https://autobuilder.yoctoproject.org/typhoon/#/workers yet.
> > You mean https://autobuilder.yoctoproject.org/typhoon/#/workers/79 ?
>=20
>=20
> Oops, I missed it, sorry, having the wrong impression that all inactive=
=20
> workers were old ones.
> Thanks for your help, I updated my notes and I'll remember it next time!

I just cleaned up the list a bit more. There is the "show old workers"
checkbox at the bottom of:

https://autobuilder.yoctoproject.org/typhoon/#/workers

which allows you to remove the ones no longer in the config from the
list.

I think there are a few more which should be removed but I need to
check with Michael Halstead about which ones are just offline for other
reasons.

Cheers,

Richard


