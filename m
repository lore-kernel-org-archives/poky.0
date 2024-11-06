Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E4D4D44D46
	for <webhook@archiver.kernel.org>; Wed,  6 Nov 2024 10:57:26 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web11.43121.1730890636802661013
 for <poky@lists.yoctoproject.org>;
 Wed, 06 Nov 2024 02:57:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Q8tV9L5F;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43159c9f617so51316075e9.2
        for <poky@lists.yoctoproject.org>; Wed, 06 Nov 2024 02:57:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1730890635; x=1731495435; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jZoxq7NIs19BlEYhOGNEFbNAaIGx3zHTSXbPoI1SIyA=;
        b=Q8tV9L5FY4iqjTGL5wqrShtyyEV7W3Iaig9wzGOKKe16pkbLZqKFOeOIn1b9XdNWkx
         TyDSgwIiiee4a2rHAmpUIMpszZSqOLEjcUYEwxhj4qcZlE3ypN9QVp8WGqAbaqkRICXp
         oijHGbwR2+GRP6E8mOL9miyQtFZDLZ+PR4D+s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730890635; x=1731495435;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jZoxq7NIs19BlEYhOGNEFbNAaIGx3zHTSXbPoI1SIyA=;
        b=KWx5BRBuf1HQdwApuu0n3vW8E4lKpLeM699gm3doJwiudbBcwte6zakpzlzweW/AK7
         AhnxFXCJZm2IKXeufkITJb8IYM0TxMwv58x84lAWbyuwSE+TdN4BiUYlcGHT/4Z9Hmpy
         tU9Cnpa+ED6pbP0BDgApM531ggBVPU3w+GhmLhkY/FG48ValCWgnalVV7najBlNvX2Iu
         VRShBvqb1kXuHkFldIIJ3myHTa3ML6FH6u69WEyhl31DQYEiw3qr1rf1lNBVTYyerDNR
         a0POBHe1jTGfQZiKVvsKeDHPuPrbrPOjcOO6KCRlG9cCB1nKpIxFjNRp9qxtLCw+F/rs
         RnUA==
X-Gm-Message-State: AOJu0YxxbLUvBdUywtf70y5HPyxtVR62BtPKmUzvS0YnxdVzYUDffGuc
	v0vfkTEvh6W4oFvBoE0gjxMpiFPWApRU/XEuOIikMeXSTF+0mf/CtaIKtZJ2IJQ=
X-Google-Smtp-Source: AGHT+IFbqgx9jUzh9fWSaRuyPfXpPB4zb5A+c3QWseyHjOWvgxgzcDwNoeV8h7KuFLVWs0VQ60Y8hg==
X-Received: by 2002:a05:600c:354c:b0:42f:7e87:3438 with SMTP id 5b1f17b1804b1-4319ab8d515mr367366955e9.0.1730890635230;
        Wed, 06 Nov 2024 02:57:15 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:de00:615d:c4fc:749b? ([2001:8b0:aba:5f3c:de00:615d:c4fc:749b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c10b7d2bsm18732157f8f.16.2024.11.06.02.57.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 02:57:14 -0800 (PST)
Message-ID: <27270d33ba31945912e47b5a3c4acd2461ca6471.camel@linuxfoundation.org>
Subject: Re: [poky] One recipe for fetch a bigger repo, multiple recipes to
 build parts of it
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: star@gmx.li, bruce.ashfield@gmail.com, "Bruce Ashfield via
 lists.yoctoproject.org" <bruce.ashfield=gmail.com@lists.yoctoproject.org>
Cc: poky@lists.yoctoproject.org
Date: Wed, 06 Nov 2024 10:57:14 +0000
In-Reply-To: <1AC79676-8721-4811-8EDD-4137CB6E5C78@gmx.li>
References: <9d150f03-34b6-4a6e-93d9-2530f12ba3e4@gmx.li>
	 <CANNYZj_i=Wg_S2dXNRMUVZ0v0AzkWRwrNASBSxHMoe9SqDv4zQ@mail.gmail.com>
	 <47da8641-7a74-4d64-afc4-84c81ba713b0@gmx.li>
	 <CANNYZj8RpypOLJKRMbpL1ZESu2urWHFmr2yhL2pXXCwKiDWwgQ@mail.gmail.com>
	 <7fb2177d-8d4a-47fe-9458-919c19631d15@gmx.li>
	 <CADkTA4PkbOgqwNoN4TjXZ5JeEgheo3mHNuOH3p6O6+1WC2D=ng@mail.gmail.com>
	 <1AC79676-8721-4811-8EDD-4137CB6E5C78@gmx.li>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 06 Nov 2024 10:57:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13480

On Wed, 2024-11-06 at 11:49 +0100, Steve via lists.yoctoproject.org
wrote:
> Well, the idea with work-shared sounds good. But I didn't figure out
> what param makes fetcher to checkout into work-shared?
> Just modify $S doesn't help, it is checked out still to tmp/work/<my-
> arch>/my-fw/${TAG}+git${SRCPV}/git
> To workaround that for the moment I create a link, but that doesn't
> work reliable.

The way gcc handles it is a single recipe responsible for the source
(gcc-source) which the other recipes all then depend upon.

The kernel works a bit differently as the kernel creates the shared
source and then the other recipes depend on virtual/kernel.

Both approaches have complications and end up needing to be special
cased in various places (archiver.bbclass for example) so they're
definitely advanced usage.

Cheers,

Richard

