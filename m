Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.6355.1580956831982932982
 for <poky@lists.yoctoproject.org>;
 Wed, 05 Feb 2020 18:40:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=flRTAr2A;
 spf=softfail (domain: konsulko.com, ip: 140.211.169.56, mailfrom: trini@konsulko.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A91DEE0166F; Wed,  5 Feb 2020 18:40:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.219.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41159E01625
	for <poky@yoctoproject.org>; Wed,  5 Feb 2020 18:40:27 -0800 (PST)
Received: by mail-qv1-f48.google.com with SMTP id n8so2162048qvg.11
        for <poky@yoctoproject.org>; Wed, 05 Feb 2020 18:40:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Bu3FpqRd3obHg4F9lB1GiCJta6LV9fs4vMvL31Dzb1w=;
        b=flRTAr2AMcCercd2t6Pmy15fJXepM4BuiBvakeop4kiCH7XVg+kCd6+GmVLNfIynC7
         yhF2syks19BbuaTXNo9qpnOhuI81cJV3kw/vpFx+eGVpeNSWBIr0w+xaHCeIWUC1YANP
         fyooNmuNCNWbNXNIeu7aSdlJs+jE/AvLWMAzk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Bu3FpqRd3obHg4F9lB1GiCJta6LV9fs4vMvL31Dzb1w=;
        b=ddL3YxAcvDlz8bptviUhin6yCWdfJy2hrWQKo4GrHp/FmugD+spiIfdZffaznnO6dj
         Ui79aWZE/K9khqr7FpMKl+Lb/8cjcVgZcJdEuo21B6+nsRyuXQd3JjIh/FRZjp9z4wlw
         Fk5NCLEZlJZzYusW5VP1tYW1AlMTMAkuroowk77M/vZOA4gwpQpqcXOSqvC7uAc7mi+C
         GuNx2T631gtkXnPndEoaXSh9cSHZa8z8YbBCLJxPlqWTUQg7S56aOBHWRoR6j5pkUoyc
         eZIPlS0TvoJxmcJQ5ROhnoyK32htpXTH9QEjHPvsU1xT7MVtKFsMsEw4gah2jGpGpM+L
         n2Kw==
X-Gm-Message-State: APjAAAWhzGZYQciqltpur8OjaNZOTqOoM+JIUJSLMvcGZyR8gVaohBKr
	26HEfcKLSNs3yYMrr0Vz9S5yJg==
X-Google-Smtp-Source: APXvYqzWx38BFElL6Rksl8xT5wg7mEAz8WA3ju3fw1lt4+veDwORadHNCOJex/31f8/UZvWvSMpiMQ==
X-Received: by 2002:a05:6214:8cb:: with SMTP id da11mr572925qvb.228.1580956826184;
        Wed, 05 Feb 2020 18:40:26 -0800 (PST)
Received: from bill-the-cat (2606-a000-1401-86dd-f42c-d4f1-baee-e8eb.inf6.spectrum.com. [2606:a000:1401:86dd:f42c:d4f1:baee:e8eb])
        by smtp.gmail.com with ESMTPSA id 141sm746959qkk.62.2020.02.05.18.40.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 05 Feb 2020 18:40:25 -0800 (PST)
Date: Wed, 5 Feb 2020 21:40:23 -0500
From: "Tom Rini" <trini@konsulko.com>
To: Junling Zheng <zhengjunling@huawei.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>,
	Wang Nan <wangnan0@huawei.com>,
	Poky Project <poky@yoctoproject.org>
Subject: Re: [poky] Python2 maintenance will expired
Message-ID: <20200206024023.GV13379@bill-the-cat>
References: <13c1169c-fcba-7b49-ea23-0531cc497282@huawei.com>
 <d5aac15a1c87981785f589046a6e8ead05c09e70.camel@linuxfoundation.org>
 <CANNYZj8-bTua-Tq2k+qRt7GcX=S_U8zOxS47x+LL6g0CsYMt7A@mail.gmail.com>
 <20191121204251.GO971@bill-the-cat>
 <a3c2090b-54b0-58cd-6502-e77eb4cf5b43@huawei.com>
MIME-Version: 1.0
In-Reply-To: <a3c2090b-54b0-58cd-6502-e77eb4cf5b43@huawei.com>
X-Clacks-Overhead: GNU Terry Pratchett
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Groupsio-MsgNum: 11932
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eU5H5UOlkolEcjGi"
Content-Disposition: inline

--eU5H5UOlkolEcjGi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 06, 2020 at 10:29:30AM +0800, Junling Zheng wrote:
> On 2019/11/22 4:42, Tom Rini wrote:
> > On Thu, Nov 21, 2019 at 12:07:14PM +0100, Alexander Kanavin wrote:
> >> On Thu, 21 Nov 2019 at 09:39, Richard Purdie <
> >> richard.purdie@linuxfoundation.org> wrote:
> >>
> >>> The project has been working hard to remove python2 dependencies where
> >>> we can and in OE-Core, on target usage has been removed and at build
> >>> time, u-boot is one of the main remaining pieces that still needs it.
> >>> Their next release should address that issue.
> >>>
> >>> There is still a need for python2 in HOSTTOOLS but that is also being
> >>> looked at.
> >>>
> >>
> >> I can confirm (from local testing) that as far as oe-core is concerned,
> >> u-boot is actually the last piece, and after it's been moved to use py=
3,
> >> py2 can be removed entirely, including a link in HOSTTOOLS, and native=
 and
> >> target recipes.
> >=20
> > And for the slightly wider audience, the v2020.01 release is scheduled =
for
> > release on January 6th and Alex has tested the current -rc within
> > oe-core to confirm we're all good with respect to just using Python 3
> > now.
> >=20
>=20
> Hi,
>=20
> Is the "v2020.01" released? And, what's the name of this release?

Yes, v2020.01 U-Boot was released back on January 6th, 2020.  There is
no codename for it.

--=20
Tom

--eU5H5UOlkolEcjGi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6HLbQJwaaH776GM2h/n2NdMddlIFAl47fJQACgkQh/n2NdMd
dlJDkhAAwQy/HU1Doqpivsxpc4pEsab1mPF56HQKjH/pMiIyJL6xrf9AsbXww4Bf
2DW/XIt5mHZsE1SmQvBStIYETS0f/u6OfgXmtcQpJZ1W/XxRA1dDqelhX1KFVkut
fqdgaIH7sN0Jz2XQ2NAoIA5autZ9SnknzQVnWzVaXZn1vdTR3sCj/spkVYn4vU6D
wTS0tPMCqzktP1mwsi7mkF3OXYmp3tWwwBmQGZeegvR8Un3a8TVmJu5LWHti3pCs
nSmkUxp7qH+s9dWT0nm98JlxMAxBfNxc3JJnt2JoAHxIxHq3CFaN7Cf6/Jc0bwy4
WQPHmjFuqHqUrvYtbfkT2Ad/AbV+kCBThYuWvNVpUK0CZvLAlEqq4amoMb7q8Vmq
EKxe3b5N5u9nHRIKEL9nrIEWyBvjigITHVtx6D0AaQmbN0ui6dLqmjzMDLkLJHbo
djnB41IV7TUp2dNCKWDBrMhEwAoKm6VUBiLwitggICDFDCxC5/WydGNX1yZcVJMf
52S4jpAumCGmEKrGgDL/xJTdyX+5ON8neZVRtBhGu8OLhwfl1VIFEsP/SHe9P1KE
klKfOUDOPIkeYcxNCRGil4AlBDGH7uPvC4S6mL0K+HlhKudB+Ld857nRzTfBu1pi
AQuja1nC3XQ1MYX72htWGOT3fYQR14IEiTPPRb7N/7p7D3/O084=
=mj1O
-----END PGP SIGNATURE-----

--eU5H5UOlkolEcjGi--
