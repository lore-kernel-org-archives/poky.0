Return-Path: <frederikbraendstrup@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A11EBCA0ED1
	for <webhook@archiver.kernel.org>; Fri, 15 Aug 2025 06:45:38 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web10.6370.1755240336387117574
 for <poky@lists.yoctoproject.org>;
 Thu, 14 Aug 2025 23:45:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=L6NUVx0m;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: frederikbraendstrup@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-afcb7a3a085so279393466b.2
        for <poky@lists.yoctoproject.org>; Thu, 14 Aug 2025 23:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755240335; x=1755845135; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0QIBuu9rjMxoj96uEL04KI4ChVsIrSrEXIEOZDNHRI8=;
        b=L6NUVx0mjSMnX4TQidmX5doFTgWfSKkUDN2Yg7VijbZ8FbY0257dN4uBfkuE5Mkyyb
         9aMqJlLF0BKUQvIiMrzxGqfYTs7kh7KbXFgwEpF/l6TL4Tnoj6mNfTcg/lCBgW9EnF4T
         yjua84gop3jvZebzQMOs0ZbgPkdldksK77LoY7+xG8lie/yZxkZ6v5slqa9tnyyuYKpT
         Er8nHmKewuQ6abD42+uHfJ4Lj8PZXh/zBGaZvLnkjcwWFVtaT5BC1y3f5crgou2Pu7KD
         DuieLHngtoej8YmRmr33UjoFspxGhanD6BJ8CTW4wGhfGFOONSdgy6NPQWdS7hLrLWPk
         ivzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755240335; x=1755845135;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0QIBuu9rjMxoj96uEL04KI4ChVsIrSrEXIEOZDNHRI8=;
        b=Fa/OJCfL37/xvLRFgLqCMiMkVggR7HiFbaJnOl/2x2kFgJATU+ydj3kFcIgfn8GL7E
         90aTkM2NIAdCRyQsvARlEkL3YfyeOjBeBhQWmf13IpbU+TWcJ4G6DPOt56LgAbNE9psL
         UnPhdDzRqTAE3RpYywXe0zfyXqWbaExAXQ5K2Y5nh6yhRwlEMbabS+roXKmVKE0+oSM+
         a+rTwpbYt2laB7DN01q5YozkMdzfqODeBPL3l1Sbi2Jiux5fSRHnQjzN3YxOeqhfbB1Q
         0b0A/I0/P/uMYbzD/5ElNvgVHVGxnlukoyV++nncSLuCB2GV5dSTHrq/2hukhmlu4sFm
         YWJw==
X-Gm-Message-State: AOJu0Yz78/Ee37jHeSxTnDxSbbaOHt7twYDyflCB2u0ZUvsOohDp0lzR
	ddIQM609JgvaZIJrzGT7hTME8SEP3Mz02p8c/HiuGXt9LwZC4yyaP4Nx
X-Gm-Gg: ASbGncvMg+xvTnqBCuv5lNpfkJI/5geX8ofp95H2lrCgc0mjBWOf87QgEEQ5KuGCGZS
	u8wsE+PruzHXk5umaJ2xfIhanDLJwGNQa/hmu6yM5kNR9EIKEGDTFjTIwQBPaLRHiC+azvUW/Xp
	RhJ66QZ/Bf54bL3I306tAIWWaBT2DD+RPBoIXvFz5hSyLlFGI+4BA4ZEhgWk1Otjfm/ZHRcABE/
	LskYoujuiL5h4VJ5UZWSvvO7Si1AU1vLQBiFpFz9s1UvomgntecNzFhCFTUiQ1qNhrcTFLtqby3
	PPlJhWUMxWT8ymv+tKUe1xScOzEzTqQbi7pvosdcm+csoJ5+wRhk8WGYI40Gr5gJIIyG2CjAjUk
	7CcqtWuufLJy3Wj7jlrk+Ryw=
X-Google-Smtp-Source: AGHT+IFszurJbMdBrOfe8FnS4NusgxBM8qSETZd4pR4ujqjBrEFR7tnHWBITdXpyCIdBJTpsse5pkA==
X-Received: by 2002:a17:907:3e11:b0:ae3:cc60:8ce7 with SMTP id a640c23a62f3a-afcdc1d3847mr94049066b.19.1755240334437;
        Thu, 14 Aug 2025 23:45:34 -0700 (PDT)
Received: from ws ([212.98.121.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afcdcfcacc3sm68172466b.72.2025.08.14.23.45.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 23:45:33 -0700 (PDT)
Date: Fri, 15 Aug 2025 06:45:33 +0000
From: Frede Braendstrup <frederikbraendstrup@gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>, 
	Niko Mauno <niko.mauno@vaisala.com>
Cc: poky@lists.yoctoproject.org, Ross Burton <ross.burton@arm.com>, 
	Vesa =?utf-8?B?SsOkw6Rza2Vsw6RpbmVu?= <vesa.jaaskelainen@vaisala.com>
Subject: Re: [poky] dnf5 and libdnf5 target release?
Message-ID: <w7mjh7otgu4t7ngtdlbakw47beveqk5oshn6mkaejd33wxiwlz@qkmbrhbairvd>
References: <5rcV.1754383432133968918.mcg9@lists.yoctoproject.org>
 <31515.1754384245429990929@lists.yoctoproject.org>
 <CANNYZj8hzb=MyNgG5uAd-HAqXkhrYphXasph=RrivhKLH30jxg@mail.gmail.com>
 <opg62v3xde6auwtpgveacv7urixrsan2kde6z6xwtdup7igocf@lom5oqfooe26>
 <18597ADCBAD905F0.18889@lists.yoctoproject.org>
 <CANNYZj9S-qXZGgN6WrZ_EhZkYYZ4yfrKs4W4GE6a1dtbO3i5pA@mail.gmail.com>
 <ba03d0b9-3311-4010-8ebb-5e2df1a41d3b@vaisala.com>
 <CANNYZj9X74cOCZsOp1w33ELrcFMMrC46TCd68dJTfjUtJcTYbw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s4jmsljf3nlusn25"
Content-Disposition: inline
In-Reply-To: <CANNYZj9X74cOCZsOp1w33ELrcFMMrC46TCd68dJTfjUtJcTYbw@mail.gmail.com>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 15 Aug 2025 06:45:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13725


--s4jmsljf3nlusn25
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [poky] dnf5 and libdnf5 target release?
MIME-Version: 1.0

On Wed, Aug 13, 2025 at 01:01:33PM +0200, Alexander Kanavin wrote:
> On Wed, 13 Aug 2025 at 12:25, Niko Mauno <niko.mauno@vaisala.com> wrote:
> > On related note, about 5 weeks ago we briefly tried out if using dnf5 w=
ould yield any improvement in do_rootfs() turnaround time -- which it didn'=
t (later on realized others seemed to also have expressed their surprise on=
 lack of dnf5 performance improvement over dnf4 in some online discussion t=
hreads).
>=20
> I'm not surprised. The bulk of do_rootfs is creating a repository
> index (not done by dnf), resolving dependencies (not done by dnf), and
> unpacking and writing out .rpm content (also not done by dnf). Dnf5
> might feel snappier in interactive command line sessions, but
> otherwise the whole project seems somewhat misguided.

For context, I wasn't after performance improvements, but rather the
native dbus interface provided by dnf5. I would be fine with just the
feature set, but I'll find another way, Thanks.

Frede

--s4jmsljf3nlusn25
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEJHy75INGducqKI4mZPwPSika/xoFAmie14kACgkQZPwPSika
/xpnQQ//TwYEvvE8GBUrOK2ogUuDo9dc5ahu++cGDnpr2egl8P/XIpuj2OSGCuOG
BH801UN6vTrKG0tM3nxZ9ogsEhB1nfByeEhj5zn73JVGP5QdG3DVX2IhkUpCY0GA
/BHj8bEYl0K/+LFWA4CgZZr7rexdbczq47ikwAQZENORfgO7y0n8T64ZZbmzN6Ou
u4jC6rkw9FFylpIGIRwPL6EwAaPaMg/nVKXdoDHC8WjG0hfPOF5yN4KEXjstQV4k
LvS9k29fu+SSymX4ZYdbs2DB/ixiMvvGadn1kum67inikXZQGNIKUczfHeEmoNEJ
ufUiBHWOomUtk7fDotTebnhlQe0sNIdFVCEVKRD2EeX9gUPOVnJKVLIhBqg7ZZt9
S9TfhZYSmUSjNMY+HzKbA4tm44hsCjyCwecHef8/3bnlJeVrblWIwFQnToyarYrJ
O0/capeCAEDeaJKVu5X9KWnp/mKqbn0JvEXANAUJrkUo17PC5Cjzact/sjmVYKm4
0elJEUPzIAZRZ1Tgh02gdg/heCjXnFEQIqrXD3ot7IYZc1QFPf3H7D7vNJtKOzer
Yv5S0hqxoaOEu9GgpL/fmtjoEgRsIRz2oY1e077pW66EsTvAcsi1IUjtFg14B7pu
eAZsqke15/0uHLhk/KEZ0qrn9/ye0WCu+bZl/6/jlHRz5Bau9Zw=
=Pe2Y
-----END PGP SIGNATURE-----

--s4jmsljf3nlusn25--

