Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B1BC71157
	for <webhook@archiver.kernel.org>; Tue, 24 Jun 2025 13:58:49 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web11.9044.1750773521590431332
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Jun 2025 06:58:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=JlA2rX5Y;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-451d54214adso3675645e9.3
        for <poky@lists.yoctoproject.org>; Tue, 24 Jun 2025 06:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1750773520; x=1751378320; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JvgXgGu089Sex50+x7dpCGE9muBX7fFR0i3uUBNg/88=;
        b=JlA2rX5Y1jfWdTBuY738MY33Od19b+ZQMkV3CjqZHT1Y72RnC9t1En7iJI0Omu0P0v
         fwkdM2cyNBpMa5pJnFN77QpeBMV6TC7rkRUh3jOPekvPIabn8bgl77G/N0p83vKWV9Yq
         Xeznz7p8LaImxhSDNpd1nbV/GD0ptpaVypU0w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750773520; x=1751378320;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JvgXgGu089Sex50+x7dpCGE9muBX7fFR0i3uUBNg/88=;
        b=dFPg4JKsQlZQPkr9kEYblmIAE+V+etqT51xU1B5cLhND6i2ubnaPCf6ESFMRTLSRfv
         W+P/CWrY+gpc8wCbML81kU668YZHMZZSHZcV4BjNBSz41ZoiBxxEL/KxjhqbOnaTRn53
         2Ygk/hUCwwhFrNlCNS0lsTJexDWGaQQVrteG6A1/LWnsGhCdOMtR4UHqcz6Rz1WZe0t8
         +rKVa/XjOQhL47sRyCfbHhUqt5D5tXN9QDZtb+EHzggYbvUBQ4OAI/jxCkf1Jjrv+t4L
         tcyCugeLCI+JaNGeZkrAV0hO6yBR9hqWTs9CuDLPOOZ0FkLRXgU5CJMxI9JXeAcls+96
         g+LA==
X-Gm-Message-State: AOJu0YzBhAfl+cQyFVf7330H0RnA2KYsI+nFEg3mJkadSJeLB40ifNPL
	yzdoc7pwJY7WGWYKpzDRP3bqcDxfzh+uJGhwQYaK2bH9reh1C4INrZDRSb1uPYlwGdY=
X-Gm-Gg: ASbGncv2XxnENISlYIxY/Duec7F/EkPm1vWRlWsi5geelaYOoGm9fn3pt44cQiINRDI
	S6bSH3PIDfIWwiVrkLbNU62EHfS59+k/ojdtquhtUAphUuzZxCSR/GWU2rZneilErbwOFweTAWj
	Ue6UJuINVufNfvbt+8Ijoep7+csO7m4paH1zdNwOpTEIslvAsHLYrRKVhMSgU1tCA8ndvqpaKTd
	xbaiwr960LK9uwH49+Y11iTD/n5P3LuN+XJU+r+rj/9QLMxo/pnm12abrU71JQkwhapSxWnpkWM
	49xYhiyLSPEnWJgaNI4zM0kErs0y2nKbJtj3N3dNxqXetG/iehG6Sf5/ZOw9f51mW8GhhLQPgI6
	3gYOCnxwTM5pTbqtl7ZArxlSkOPhw4ZiwZerltRdRKt9UIj3BJRc=
X-Google-Smtp-Source: AGHT+IFjM6Ah+xwwSTPGymnsnvBOOLwaEHCQs068I3bYFwLrd56283Uj8K1W/5tqvsjHgW8hrtXhtQ==
X-Received: by 2002:a05:600c:1d14:b0:43c:e7ae:4bcf with SMTP id 5b1f17b1804b1-4536b4be314mr126906745e9.0.1750773519896;
        Tue, 24 Jun 2025 06:58:39 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:341b:1360:3bd8:8ecc? ([2001:8b0:aba:5f3c:341b:1360:3bd8:8ecc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45364703f1esm143881405e9.32.2025.06.24.06.58.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 06:58:39 -0700 (PDT)
Message-ID: <749dde0c3ed74dc938085cd15316245eeaa15cc4.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH 1/2]
 meta-poky/conf/templates/default/bblayers.conf.sample: do not assume
 integrated poky repo
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: poky@lists.yoctoproject.org, Alexander Kanavin <alex@linutronix.de>
Date: Tue, 24 Jun 2025 14:58:38 +0100
In-Reply-To: <CANNYZj8bcMto=-OHPNEZs_aEM4vr9K1ujVOZ77EDBT-9xC5sRw@mail.gmail.com>
References: <20250623165507.1633860-1-alex.kanavin@gmail.com>
	 <6fb30604dfb196088f07c6b59f437eeb0f1df788.camel@linuxfoundation.org>
	 <CANNYZj8bcMto=-OHPNEZs_aEM4vr9K1ujVOZ77EDBT-9xC5sRw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 24 Jun 2025 13:58:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13670

On Tue, 2025-06-24 at 15:42 +0200, Alexander Kanavin wrote:
> On Tue, 24 Jun 2025 at 15:11, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > > This requires a custom tweak to bblayers.conf when it makes its
> > > way
> > > from meta-yocto into poky that would strip the ../meta-yocto/
> > > part in
> > > BBLAYERS. As there are already numerous other tweaks of similar
> > > nature, I think this is feasible.
> >=20
> > Which other tweaks of a similar nature are made? I'm not aware of
> > any
> > file contents changing between repos...
>=20
> Right, this refers to the poky integration process that cherry-picks
> files and directories from original repos, e.g. the default template
> from oe-core (meta/conf/templates/default) does not make it into poky
> at all.
>=20
> The patch follows the suggestion that such a tweak is possible:
> https://lists.openembedded.org/g/openembedded-architecture/message/2129

Ah, that is a bit different. There aren't tweaks of a similar nature.
I'll need to give this more thought...

Cheers,

Richard

