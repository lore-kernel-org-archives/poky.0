Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7ABAC5B543
	for <webhook@archiver.kernel.org>; Wed,  4 Jun 2025 09:47:50 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web10.12693.1749030460374947851
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Jun 2025 02:47:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=dfJmF14p;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3a361b8a66cso4027166f8f.2
        for <poky@lists.yoctoproject.org>; Wed, 04 Jun 2025 02:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1749030459; x=1749635259; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EfRDMoPTboRzYt25P8OqUfywZ8L9uKB4+nRz4e+GNXE=;
        b=dfJmF14pnV8guxwWePRGLeEnpVfu00lxgRssbpFOGdfy4IobHJmYm16zswNhpmNIyU
         m4Mn2DgESxUFBnCC6ZY9RMbTyM5q5oVJHbn88XjaW/D6DNdEd9vonm1yJptAM66phyd0
         NO0pEHsi4R1R+dOcwcWvgvuREVUrTyPiZHgcA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749030459; x=1749635259;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EfRDMoPTboRzYt25P8OqUfywZ8L9uKB4+nRz4e+GNXE=;
        b=qXDACzo0lvM1eoD/byA84jSU+zbNsbmF+sSrks8yMfkibB7xYe9NcNlln7M2cD6mkz
         QUGaLLCECHjzZheDk2vVj9wiQ72ZfaYJzdudIXqC/zPzko1jNHQdMpPl0Bk6rhxjTNiC
         D3IYQxkM3EV26ubdJWw3dQCKqwTWs2dEYSDV2Oh9gpBXWeyMKC2JSOlOeyT3/WXmspB0
         9FnKN2Hrgs18W11odHewDAilF+8cloLfXad+vbQtT/9miDfEWBEokD8KynJmUpQe+Oyz
         bXcrw6njfHeYQo0PMT+Xzrlsg8bPDRIGv5k3TwyGjaFXEIdaXcpKJffzCbHrcK3E6Zuy
         7GeQ==
X-Gm-Message-State: AOJu0YxVASVZgOnR+u0PBuZdma/BP2p55IhA213ww91UmI7V3n2M6Kp2
	oBlfFAf0NVSFGrd5qZBDe2rgXAPdhgBfkoNpG/LdhGPYb1pS5RAny1NJAYzhwgpNJd8=
X-Gm-Gg: ASbGncu/RtEjUfI4c1II9TFTWAB4O1rZqaNKP0CSpJqE4XKdx6c6W5IRW19MtetiwjI
	myEMIT0FnL9+0pvjGIUGm1GHjyooimT3D+AJO/we2NGrgaWNuFG6KOhuknjnBCloB6f/QrjRvqO
	ijZoHmmTFiUIK4BLJWPcZ1v7FTPwHNqMPaZl6pUkm/ggZp3m9+Dw7gYd5bblljtNN3B0liMGt5j
	D5Nes4PuYn8iBylXgo2ujpSEAyGU6Ldv1+Apt+tp8SwQeQEb95Sxe6eFk7UysDs0ZLYIm+Nc/qX
	iNqkEcCHtPggxCAj8u40wqJgwkiqfShwTetj43Ur5FCgHQjZ3XoeZJh6jZIAgUNn2wMuePFKGaf
	GmIecvKUhU97IrK9W/NoYLk6jEQdxeFvX4HHuxV/l
X-Google-Smtp-Source: AGHT+IFsiWrVGb+2t0T0nH43CAA1SFH8D0PmjVynI0L8sIMxgJcYEhqdl5mdbocZq1OTKWYnCgalDg==
X-Received: by 2002:a05:6000:18a5:b0:3a4:f6ba:51da with SMTP id ffacd0b85a97d-3a51d922d6cmr1873919f8f.15.1749030458765;
        Wed, 04 Jun 2025 02:47:38 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:204c:fb2e:c462:29df? ([2001:8b0:aba:5f3c:204c:fb2e:c462:29df])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4efe73eebsm20898460f8f.44.2025.06.04.02.47.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 02:47:37 -0700 (PDT)
Message-ID: <9a662df92ce0918c77ec8a66bc39a2191cd942d6.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH 2/4] conf/fragments: add fragments for qemux86-64
 and qemuarm64
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: poky@lists.yoctoproject.org, Alexander Kanavin <alex@linutronix.de>
Date: Wed, 04 Jun 2025 10:47:37 +0100
In-Reply-To: <CANNYZj-jTjD281=McMDzQtABizNqZ5csbbE9aiJZLRA2U6BX5g@mail.gmail.com>
References: <20250603113558.3104618-1-alex.kanavin@gmail.com>
	 <20250603113558.3104618-2-alex.kanavin@gmail.com>
	 <b8f9ba8524090623e0e13ef36724839c140f99a6.camel@linuxfoundation.org>
	 <CANNYZj9wRaL3Biwhdjn7B0wW3v61ieoEMCO6MFH15n_aLvtDAg@mail.gmail.com>
	 <e94887f831142516ccf60e3f477155b5b6e5f92d.camel@linuxfoundation.org>
	 <CANNYZj-jTjD281=McMDzQtABizNqZ5csbbE9aiJZLRA2U6BX5g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 04 Jun 2025 09:47:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13646

On Wed, 2025-06-04 at 11:05 +0200, Alexander Kanavin wrote:
> On Wed, 4 Jun 2025 at 10:48, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > > I think bitbake-config-build should be extended to have
> > > 'list-machines/set-machine/list-distros/set-distro', and then
> > > bitbake-setup would call out to that, like it already does for
> > > fragments. There's already 'show-machines' in bitbake-layers, which
> > > should be renamed and moved, so that bitbake-layers is less
> > > over-stuffed with sub-commands.
> >=20
> > Maybe. I do like the idea of being able to express a configuration with
> > just a list of fragments so a magic mapping of machine/XXX and
> > distro/XXX does still have some appeal. We could code something:
> >=20
> > BBCONFIG_FRAGMENT_VARIABLE_MAPS =3D "machine/:MACHINE and distro/:DISTR=
O"
> >=20
> > to make the code generic?
>=20
> My idea was to do away with fragments for machine/distro, and have
> 'bitbake-config-build set-machine XXX' write 'MACHINE =3D 'XXX' into
> conf/auto.conf.

Let me just throw some ideas around here. I'm not saying any are
right/wrong, this is in the spirit of sharing ideas.

Moving the "machine" commands into one standard place would make sense
so I do like that aspect of what you're suggesting.

I have some caution about teaching "bitbake" commands machine/distro
specific as it breaks layers of separation. Note that bitbake-layers
list-machines is part of OE-Core, not bitbake.

I also have an idea in the back of my mind that being able to reproduce
common setups with a list of fragments would be a nice idea. If you
have to say:

set-machine XXX
set-distro YYY
set-features A B C

it isn't a very succinct explanation to people. If you can say:

set-features A B C machine/XXX distro/YYY

then it becomes a bit of a nicer thing for someone else to copy. This
is all generic in that someone else can add their own fragments. The
autobuilder can also then simplify configs too. Someone could add an
extra variable mapping for an extra level of config, say
toolchain/clang to set TOOLCHAIN =3D "clang", not that I'm suggesting
that specifically but you get the idea.

> And then bitbake-setup config files would have a particular syntax for
> that, e.g. replace the current:
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "qemux=
86-64-poky": {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 "description": "Poky reference distro build for qemux86-=
64",
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 "oe-template": "poky-blank",
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 "oe-fragments":
> ["core/machines/qemux86-64","yocto/distros/poky","core/yocto/sstate-mirro=
r-cdn","core/qemu/enable-native-sdl"],
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 "targets": ["bitbake core-image-minimal
> core-image-full-cmdline core-image-sato-sdk core-image-weston"]
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 },
>=20
> with
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "qemux86-64-poky":=
 {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 "description": "Poky reference distro build for qemux86-=
64",
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 "oe-template": "poky-blank",
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 "oe-distro": "poky",
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 "oe-machine": "qemux86-64",
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 "oe-fragments":
> ["core/yocto/sstate-mirror-cdn","core/qemu/enable-native-sdl"],
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 "targets": ["bitbake core-image-minimal
> core-image-full-cmdline core-image-sato-sdk core-image-weston"]
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 },
>=20
> I don't have a strong opinion either way, perhaps it's best to 'upload
> discussion data in brain and process', while fixing further do_unpack
> rework fails :) If you can respond with further points I'd appreciate
> that! (so I better see the forest)

playing devils advocate:

          "qemux86-64-poky": {
                "description": "Poky reference distro build for qemux86-64"=
,
                "oe-template": "poky-blank",
                "oe-fragments": ["core/yocto/sstate-mirror-cdn","core/qemu/=
enable-native-sdl", "machine/qemux86-64 distro/poky],
                "targets": ["bitbake core-image-minimal core-image-full-cmd=
line core-image-sato-sdk core-image-weston"]
            },

Cheers,

Richard


