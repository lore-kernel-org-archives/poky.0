Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web11.8105.1620300925165407504
 for <poky@lists.yoctoproject.org>;
 Thu, 06 May 2021 04:35:25 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4FbWj625rFz5tl9;
	Thu,  6 May 2021 13:35:22 +0200 (CEST)
Date: Thu, 6 May 2021 13:35:21 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: dan@engineeredarts.co.uk, poky@lists.yoctoproject.org
Subject: Re: [poky] no dt overlay example in meta-skeleton
Message-ID: <20210506113521.6fis6kmgiel32bx2@qschulz>
References: <Mlpg.1620293245950505523.Z7tz@lists.yoctoproject.org>
 <3117f6331a0ede5a381da496b23a75a1f38b033a.camel@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <3117f6331a0ede5a381da496b23a75a1f38b033a.camel@linuxfoundation.org>
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 06, 2021 at 10:35:55AM +0100, Richard Purdie wrote:
> On Thu, 2021-05-06 at 02:27 -0700, dan@engineeredarts.co.uk wrote:
> > Hi,=20
> >=20
> > In the=A0 the meta-skeleton repo there is an example that shows how t=
o=A0
> > build a standalone kernel module but no example of how to include or
> > build an accompanying device tree overlay. Is there an existing "stan=
dard" way
> > to achieve this? I am aware it can be done via the a .append on the l=
inux kernel.=20
>=20
> I'm not aware of one but it would be something that could be nice to
> add if you do work it out and were willing!
>=20

I agree on this.

Probably just need DEPENDS =3D "dtc-native" and do proper dtc calls in
do_compile.

I would expect this to be allarch too.

The tricky thing is that in order for dtbo to be usable, the original
dtb should keep the references of Device Tree nodes (which it does not
by default, or at least didn't, don't know for the more recent kernels).

See what I had to do for a project a while ago:
https://github.com/QSchulz/linux-at91/commit/c1ddbd31090bc8d82d5df38af2a1=
2e8c053bb01f

I think we have support for DTC_FLAGS in Yocto now:
https://docs.yoctoproject.org/ref-manual/variables.html#term-KERNEL_DTC_F=
LAGS
so that could be a way to pass this flag without requiring users to patch=
 the
sources of their Linux kernel.

Thinking about it, maybe that is something that could be added to
KERNEL_DTC_FLAGS if some other variable in set in, e.g. a machine
configuration file. Let's say KERNEL_DTBO_SUPPORT =3D "1" would add "-@"
to KERNEL_DTC_FLAGS.

Anyway, that's outside of the scope of the patch you could to send.

Just pointers :)

Looking forward to your patch,
Cheers,
Quentin
