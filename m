Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DCBBC5B552
	for <webhook@archiver.kernel.org>; Wed,  4 Jun 2025 07:44:08 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web11.10774.1749023045908687700
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Jun 2025 00:44:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=b203P3ff;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-450cd6b511cso39889275e9.2
        for <poky@lists.yoctoproject.org>; Wed, 04 Jun 2025 00:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1749023044; x=1749627844; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qgCZkgBekS0zOf+dMvuBOzZRzy2HOH/9nUHL6odk8YM=;
        b=b203P3ffpOdIe6UVbloTuOhsRNHh4k1Z+Q87U5eDUpqIzfKUvkYt1D3EuBpRiySXgL
         yaU5U9Gkm3ZsyVf81hEFf7nnaczUgsU1vVnIrxwPzlUFLYuHsHD4lvNgj+SnoijT1PgI
         LAknE8rdEUcn/eD8xBJEV6rug7IwD8qYoZWVw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749023044; x=1749627844;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qgCZkgBekS0zOf+dMvuBOzZRzy2HOH/9nUHL6odk8YM=;
        b=X1h4f+YPT6WsQ+qZQKqbr0+jdY/xFgR9Xd5KGpeOs9yvZAUPFi39wqe7vWzOs5BYxf
         mFBrSYcOgmeHwCdFkUC8+/pGRS4kgLRnudadUSMWF2ytBd6IMYbXvxsBRcRQzZ2xG+7/
         Q5W7tg5truGWSKIs29xEax+6bnooiikm0lyu9oMnbW4nG0H2QROTFKWEozVjMZyjNkPt
         bErkJHpH8IYXWGO1sCdj2UwMnzr+XF4pYuuFvr1YUHKdwRYtU/45d1nCE74mkDndNZec
         q45ZDKHbWqdsUdT3saxol0tqMvRakJVkq0GnA5i1EzkItsSyTfPQ9J8VVdi+eeqYVhaN
         NrHg==
X-Gm-Message-State: AOJu0YwQpPRsfBfm2xaT7vd2zgN3DfEbu4ZiE+DeoINE5dYPFoQ5M3Ya
	RBUwHnOI5Se7b1bDDTzZ6mKTpPCyUevt3wTmqbkksVpWgxjrR8e3IyTlEP6pi06AfQ4=
X-Gm-Gg: ASbGncuAhYxvuo8/SCptvYaDYmU8koGfM25ZHIFF+W9/g5q2Upc0oLes60TJ5FTan0M
	85SMf6JwTVR1klT89ya5h678iBQCo/IPkdIxHcKTYj4eqKpgdB5f92y17GgiY6K2f8B2zYscNdl
	1IxCm7I+f+Qs0rymMYdm5ZGCtU/H1Lr3t3heJsfm+du7JxFLGpsCdCMVmXfJbqfqJSlAlr1eDEV
	DPN5fPoTa6vzNEDldZWdyXw48F15uw2FqVUP43cHbLAkvLL1bbiPUiUd5BWarGXwRdwo3xZ9ItA
	joSkfXIDF5JcXuslVfPnf8a3Ai6C/YydmmCjj4T/IvABHVFkEoJ/lOk8EmQy5iaBQuw6Ks1Vmjd
	CZ6HitCWt9s9jS4TKjb04f59fomYmwBtKATU84OxTE5bLQHfUelM=
X-Google-Smtp-Source: AGHT+IHR/jrUULGyE6hsgR33mcbhb6TZPYPF4mUhbEO8sipugyV6hO3P67kpvsqJxwtugYB6Dq7B2A==
X-Received: by 2002:a05:600c:1c0b:b0:43c:f81d:34 with SMTP id 5b1f17b1804b1-451f0f2cf85mr13569275e9.9.1749023039252;
        Wed, 04 Jun 2025 00:43:59 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:204c:fb2e:c462:29df? ([2001:8b0:aba:5f3c:204c:fb2e:c462:29df])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4f00a0a96sm21036799f8f.96.2025.06.04.00.43.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 00:43:58 -0700 (PDT)
Message-ID: <3cd453b924ff346dc23e30726aff2e2cadc4cb36.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH 4/4] fragments/qemu: add support for enabling sdl
 in qemu
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: poky@lists.yoctoproject.org, Alexander Kanavin <alex@linutronix.de>
Date: Wed, 04 Jun 2025 08:43:57 +0100
In-Reply-To: <CANNYZj_mirwAyyB__KM5yZLa+w78zuZD2KNgx96f=JzNYEca6Q@mail.gmail.com>
References: <20250603113558.3104618-1-alex.kanavin@gmail.com>
	 <20250603113558.3104618-4-alex.kanavin@gmail.com>
	 <1f7282940782670021af9610eeac664737b07f14.camel@linuxfoundation.org>
	 <CANNYZj_mirwAyyB__KM5yZLa+w78zuZD2KNgx96f=JzNYEca6Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 04 Jun 2025 07:44:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13642

On Wed, 2025-06-04 at 09:40 +0200, Alexander Kanavin wrote:
> On Tue, 3 Jun 2025 at 21:44, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > > This has been the default in poky's local.conf template for
> > > a long time, but it's not enabled directly in poky distro.
> > > To allow better sstate reuse and a better user experience
> > > on a typical laptop (qemu will pop up a graphical window
> > > directly),
> > > let's add this fragment and enable it in official bitbake-setup
> > > configurations.
>=20
> > I have to wonder whether rather than making this a fragment, we
> > should just change the default...
>=20
> Yes. I am somewhat unsure where to set it: in the recipe, or in poky
> distro? I'm leaning towards the former, as both oe-core and poky
> default local.conf templates add the setting.

I agree, I think we should change the recipe.

Cheers,

Richard

