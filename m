Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2205.1574446656731853031
 for <poky@lists.yoctoproject.org>;
 Fri, 22 Nov 2019 10:17:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=s5U294sl;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 576B6E00E42; Fri, 22 Nov 2019 10:17:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.219.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4594EE00E40
	for <poky@yoctoproject.org>; Fri, 22 Nov 2019 10:17:35 -0800 (PST)
Received: by mail-qv1-f54.google.com with SMTP id cg2so3245446qvb.10
        for <poky@yoctoproject.org>; Fri, 22 Nov 2019 10:17:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BEpe/pbgAGiVgla8E9n8RSKcuz7WKyBtN/iOCyJ2Ij0=;
        b=s5U294sl+5XUULGClVmbWaGODkg2RqhTiRryoVX9CPBWLXQmyX/f0YR8xRmW84t4Xx
         oIqO39K5Lv8sfsaSEwLrUz5lgHPruTHCJQerIK+MPqofNVGQ38ZzeX0YeDBONxDgVuyj
         rU1KDfdMOdwDDPeEm3k8aMK7vZ2KoWE21RQIgFXCF0CqMIlzf9hl/arr51lNhihj/oN9
         8l9GBraqKuaIbhOU/kkZymU/8f68Db5BPLZXR7/CoDey8frKhgFQZg9BM1uzfIo/QczB
         a+Nzl6Jh+br5TYgjuG28yK4QMOilnLjUqjhN06Z7ZsRtXUvRoCmm4F0sNMMcuOIepex3
         kPKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BEpe/pbgAGiVgla8E9n8RSKcuz7WKyBtN/iOCyJ2Ij0=;
        b=faXyaxaFv6snl1YXIzMssXfXZnbnA6rGu8EY76EIbuVmw9SXJ02qF0lKKTY4U//4RD
         Jjh3oe77caoSRclbZYAudjZ+BZhr6LjF1g0u3aP/yZiTb/Lj2SrVZSRn6qfafjF1NdIQ
         gRVbJCldpOGDnmsp/AALbnEVMFQrXfTKzS5ikUNwvVqbM9+41wC70bjGQxACVE3D9zhW
         W5L2+Z5s+Rj8sr0PWgQoGoSdFiuBv0o9DUxBfxvMjb8zJRiSxwQItVa/EhWjJ/9dIddK
         Ofx7UpXuCO9NA1Hh76VdAFmLOKr/me4xhHVXLph5OSYi20WweoQgxbE4cvU8nNGzRTYH
         H4eg==
X-Gm-Message-State: APjAAAXPJjffhUXgr7Tc6KQUE9c9WiTZi53J6s2TiWpbg4j0OrG7bgMw
	NaWbR5lI6tFb0/TcPa5BhTdeG9TRvf5qrFqb5yo=
X-Google-Smtp-Source: APXvYqzLeVOKfhdU27zGDO+eG+w+5v+xeFxAgyScu8nOt56fkonOnrQxc1Va7ap8gc5k6IOpOCQkNtw5//6qOl2VFAQ=
X-Received: by 2002:a0c:fe69:: with SMTP id b9mr5231589qvv.206.1574446654071;
 Fri, 22 Nov 2019 10:17:34 -0800 (PST)
MIME-Version: 1.0
References: <13c1169c-fcba-7b49-ea23-0531cc497282@huawei.com>
 <d5aac15a1c87981785f589046a6e8ead05c09e70.camel@linuxfoundation.org>
 <CANNYZj8-bTua-Tq2k+qRt7GcX=S_U8zOxS47x+LL6g0CsYMt7A@mail.gmail.com> <1c708581fdcbcc81e3fab40ef6d88175860eba0d.camel@linuxfoundation.org>
In-Reply-To: <1c708581fdcbcc81e3fab40ef6d88175860eba0d.camel@linuxfoundation.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 22 Nov 2019 10:17:03 -0800
Message-ID: <CAMKF1spJ1YhhKLxBE3ZvJXOQRVzNHJ_9SgwEyKfW2FktKx4S8A@mail.gmail.com>
Subject: Re: [poky] Python2 maintenance will expired
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, Junling Zheng <zhengjunling@huawei.com>, 
	Poky Project <poky@yoctoproject.org>, Wang Nan <wangnan0@huawei.com>
Content-Type: text/plain; charset="UTF-8"

On Fri, Nov 22, 2019 at 10:12 AM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Thu, 2019-11-21 at 12:07 +0100, Alexander Kanavin wrote:
> > On Thu, 21 Nov 2019 at 09:39, Richard Purdie <
> > richard.purdie@linuxfoundation.org> wrote:
> > > The project has been working hard to remove python2 dependencies
> > > where
> > > we can and in OE-Core, on target usage has been removed and at
> > > build
> > > time, u-boot is one of the main remaining pieces that still needs
> > > it.
> > > Their next release should address that issue.
> > >
> > > There is still a need for python2 in HOSTTOOLS but that is also
> > > being
> > > looked at.
> >
> > I can confirm (from local testing) that as far as oe-core is
> > concerned, u-boot is actually the last piece, and after it's been
> > moved to use py3, py2 can be removed entirely, including a link in
> > HOSTTOOLS, and native and target recipes.
>
> FWIW I'm tempted to suggest we take a pre-release u-boot into OE-Core
> for now until it does come out, letting us proceed with the rest of the
> py2 rearrangement...
>

this should be fine, I think, downside is we might have to ship it if
u-boot upstream does not release in time for spring release but
chances of that happening are low

> Cheers,
>
> Richard
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#11824): https://lists.yoctoproject.org/g/poky/message/11824
> Mute This Topic: https://lists.yoctoproject.org/mt/61302503/1997914
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub  [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
