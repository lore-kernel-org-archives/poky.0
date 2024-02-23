Return-Path: <danismostlikely@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36268C5478C
	for <webhook@archiver.kernel.org>; Fri, 23 Feb 2024 16:26:39 +0000 (UTC)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
 by mx.groups.io with SMTP id smtpd.web10.16939.1708705592832237484
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Feb 2024 08:26:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DzY5hr0f;
 spf=pass (domain: gmail.com, ip: 209.85.219.179, mailfrom: danismostlikely@gmail.com)
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-dcdb210cb6aso1151856276.2
        for <poky@lists.yoctoproject.org>; Fri, 23 Feb 2024 08:26:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708705592; x=1709310392; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7bbCbpWzXzsrotf6jl7jz2uFIKjmUD/xedFYS/hn1Qs=;
        b=DzY5hr0fif8eKR2OGeo7DzEgS3E0ZW1ekOzZ2xc3rSIK7qQyOjsiMyM6hcZG1mko2M
         5IBsxrGY6/QzY2fSoaMtY3of9L1k27vf2KrAlfChwVXTf9ZABkBqXmQBKrEEmnlPqZ9N
         +7t7nU8+drUHe+EAgiREUeouBbcTtyTajWYeRq1UMNQMGFTNitq2MYg7f92RcJ9YmhHe
         YxSUaY8GcX2mlUvKZdR6shyKwr6qn/XRgFHqzG06rm56Dgj+T28SP0jjQ/ciyW2IHCoz
         V9KG0ILm67v5PRIWFOGJdf//DR2s+kAkvLDnMw/HXZsmeRgiEuesjoyRIfmcGPTQNjuH
         eAgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708705592; x=1709310392;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7bbCbpWzXzsrotf6jl7jz2uFIKjmUD/xedFYS/hn1Qs=;
        b=fHzqDGNWRiYQvXqvg79WNEl7osYoJy08M/1cGH7j9Qz846FzA3Uxebzlqn4Z1lW3dy
         N+p7Ch4eSB3vTIJpnGk+1lib97v/n/4F5VvDb0HCH7K5ZmRgtlSWR5XP4JNko0GFFScQ
         RlwJsprMmTm/DprhDCAkeEyRYrrD3J2a+QKbwcAeCQXbkDS1c4biC5Q4EVJr4540CWGk
         z1zUqWmLLhecA+MPZf2hfjoW5uKuFLFm3/aWOVtBCshIgmrj4haA2IZc/MCc/GMfI4da
         k8PiW1NdIPvnQ5KNDVsKd/Iytrys0t8MI2FxYqaeUXSbTNHhoA9AWjTxLNsqBIUamLV9
         tpTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWI96rkTGlBtsM4d8/C3HIyZKFsvHwuWm+Z+mIFrtdhqc7PEH71V0hgtvIXzMjwEQ2c4f6Ibp84qLp6m8BvssosqG4OaTnVtydzPCU=
X-Gm-Message-State: AOJu0YyJfrpGlwduInfxSu3HAxHOZwpW9OfS+NikJEcJ7PlyK+zPnFa2
	kufs858HUfH1z6vFdivFnzduIe3g51j48O84LQX0oSxtSv/IbPw6KLMKMw7B/SXXcyfG+xvZMK/
	jjOYA7ewUN76r88eTq5RQXMoBUUc=
X-Google-Smtp-Source: AGHT+IH7SucbunLYLS+xKkV5Vrh22K4xKnXceBTytqp+20I1WYXSOoVF7eIZzkS6+0lq0wyQ8xBq+xKYdYoAdOiXgn8=
X-Received: by 2002:a25:5f4e:0:b0:dc6:ebca:c2e8 with SMTP id
 h14-20020a255f4e000000b00dc6ebcac2e8mr303533ybm.5.1708705592048; Fri, 23 Feb
 2024 08:26:32 -0800 (PST)
MIME-Version: 1.0
References: <20240207164849.4039004-1-ross.burton@arm.com> <CACS+7ZSrh51t47vDT2XMiCLXV0Cg++BDMH5+JV0Hr4qE8pbFjw@mail.gmail.com>
 <d848ce0627c1c8d4f65190f1bb51caeb18486b4f.camel@linuxfoundation.org>
In-Reply-To: <d848ce0627c1c8d4f65190f1bb51caeb18486b4f.camel@linuxfoundation.org>
From: Dan McGregor <danismostlikely@gmail.com>
Date: Fri, 23 Feb 2024 10:26:20 -0600
Message-ID: <CACS+7ZRgPL+wbW14Tx6W8A8K=n2Y9P5xUKwYE4T4NtEd8UUJXg@mail.gmail.com>
Subject: Re: [poky] [PATCH v2] base-files: add usage warning to motd
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Ross Burton <ross.burton@arm.com>, poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 23 Feb 2024 16:26:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13275

On Fri, 23 Feb 2024 at 10:20, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Fri, 2024-02-23 at 10:15 -0600, Dan McGregor wrote:
> > On Wed, 7 Feb 2024 at 10:48, Ross Burton <ross.burton@arm.com> wrote:
> > <SNIP>
> > >
> > > diff --git a/meta-poky/recipes-core/base-files/base-
> > > files_%.bbappend b/meta-poky/recipes-core/base-files/base-
> > > files_%.bbappend
> > > new file mode 100644
> > > index 00000000000..8802adbb46b
> > > --- /dev/null
> > > +++ b/meta-poky/recipes-core/base-files/base-files_%.bbappend
> > > @@ -0,0 +1 @@
> > > +FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
> >
> > Should this be FILESEXTRAPATHS:prepend:poky :=.....? That way
> > meta-poky can be included (as it is with a default configuration)
> > even
> > with a custom distribution layer? This is what the psplash bbappend
> > in
> > meta-poky does.
> >
> > I need to start monitoring this mailing list more; I didn't see it
> > until it was merged :/
>
> I did ask this previously. The file is in a poky subdirectory under
> files so the change is only active for the poky distro.
>

Great, missed that. We can ignore the patch I just sent then.

> Cheers,
>
> Richard

