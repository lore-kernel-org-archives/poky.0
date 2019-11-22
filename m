Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.2435.1574447708424901705
 for <poky@lists.yoctoproject.org>;
 Fri, 22 Nov 2019 10:35:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=IXhE/hfw;
 spf=softfail (domain: konsulko.com, ip: 140.211.169.56, mailfrom: trini@konsulko.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0830CE00E42; Fri, 22 Nov 2019 10:35:08 -0800 (PST)
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
	*      [209.85.219.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yb1-f195.google.com (mail-yb1-f195.google.com [209.85.219.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD477E00A9A
	for <poky@yoctoproject.org>; Fri, 22 Nov 2019 10:35:06 -0800 (PST)
Received: by mail-yb1-f195.google.com with SMTP id q18so3050590ybq.6
        for <poky@yoctoproject.org>; Fri, 22 Nov 2019 10:35:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=uGZuOOQysnrerk9Q3IP0sjvswxf2dxzYlpu9BvZkRVc=;
        b=IXhE/hfwqQyO5UKeX/yE7+B9FJcp8wIV7Ov96aPeKidxC2ol/Z48qOBrLjO6d4W2an
         i0pvUYFjjktovIxkKpFZcWpKILWfGDIJd4oOhqelP7nC9wOGgwHfWZUnojlnWZaBL2oC
         kcnBvhUxaUYBMAyXF6AnB3N1VkO3jU3GPdCnA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=uGZuOOQysnrerk9Q3IP0sjvswxf2dxzYlpu9BvZkRVc=;
        b=bJcgRQDn6juPy2gncAo8KZLuFTrgV65NETO2BdlSIO1cNxz6MxcSsZTamkwvXbZPtC
         AXSaVBBGYbwvw3kZWKUje5eAwlRwlW7V62ubnjZ12xtGFTpHC0dnFPoLokxFN6R/R6cm
         e9LQjYMQglEvTih7VObz2cvDOTw4Pchr09kJIy8Nx9cyH6rX0R9iwlT9Hx1f7TC60ViF
         mvo0mNmrmw5BOAYsP2rddKL7LXaRcjjwyl72JrMyw1Jh/7hvttdJ/mugRr4r4nxmjibz
         vKARdYR4/J+Bh3JAjt9cdjEaEKNwUHhpe5M2CsYO/1o5KZ83aFzm/WbdX3GwE40VfHVg
         US5A==
X-Gm-Message-State: APjAAAWhm8z6PBz9BxEql6RsNN3G6sgUfntgp8/l7NGZXOG19tWByPU/
	9t9FWP3FWXhZ+L9+VrCrJjYkqg==
X-Google-Smtp-Source: APXvYqzbf810kvh2da4YofZXhjkpRoW8vJkfgI3uYJdLBdMDFACzbTR+FMk/fHJj2HyLacZIyfFcfg==
X-Received: by 2002:a25:ca07:: with SMTP id a7mr11744436ybg.340.1574447705782;
        Fri, 22 Nov 2019 10:35:05 -0800 (PST)
Received: from bill-the-cat (2606-a000-1401-86dd-7421-68dc-01dc-1703.inf6.spectrum.com. [2606:a000:1401:86dd:7421:68dc:1dc:1703])
        by smtp.gmail.com with ESMTPSA id b204sm1794656ywe.106.2019.11.22.10.35.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 22 Nov 2019 10:35:04 -0800 (PST)
Date: Fri, 22 Nov 2019 13:35:02 -0500
From: "Tom Rini" <trini@konsulko.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Alexander Kanavin <alex.kanavin@gmail.com>,
	Junling Zheng <zhengjunling@huawei.com>,
	Poky Project <poky@yoctoproject.org>,
	Wang Nan <wangnan0@huawei.com>
Subject: Re: [poky] Python2 maintenance will expired
Message-ID: <20191122183502.GA15966@bill-the-cat>
References: <13c1169c-fcba-7b49-ea23-0531cc497282@huawei.com>
 <d5aac15a1c87981785f589046a6e8ead05c09e70.camel@linuxfoundation.org>
 <CANNYZj8-bTua-Tq2k+qRt7GcX=S_U8zOxS47x+LL6g0CsYMt7A@mail.gmail.com>
 <1c708581fdcbcc81e3fab40ef6d88175860eba0d.camel@linuxfoundation.org>
 <CAMKF1spJ1YhhKLxBE3ZvJXOQRVzNHJ_9SgwEyKfW2FktKx4S8A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1spJ1YhhKLxBE3ZvJXOQRVzNHJ_9SgwEyKfW2FktKx4S8A@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Groupsio-MsgNum: 11826
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BXVAT5kNtrzKuDFl"
Content-Disposition: inline

--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 22, 2019 at 10:17:03AM -0800, Khem Raj wrote:
> On Fri, Nov 22, 2019 at 10:12 AM Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> >
> > On Thu, 2019-11-21 at 12:07 +0100, Alexander Kanavin wrote:
> > > On Thu, 21 Nov 2019 at 09:39, Richard Purdie <
> > > richard.purdie@linuxfoundation.org> wrote:
> > > > The project has been working hard to remove python2 dependencies
> > > > where
> > > > we can and in OE-Core, on target usage has been removed and at
> > > > build
> > > > time, u-boot is one of the main remaining pieces that still needs
> > > > it.
> > > > Their next release should address that issue.
> > > >
> > > > There is still a need for python2 in HOSTTOOLS but that is also
> > > > being
> > > > looked at.
> > >
> > > I can confirm (from local testing) that as far as oe-core is
> > > concerned, u-boot is actually the last piece, and after it's been
> > > moved to use py3, py2 can be removed entirely, including a link in
> > > HOSTTOOLS, and native and target recipes.
> >
> > FWIW I'm tempted to suggest we take a pre-release u-boot into OE-Core
> > for now until it does come out, letting us proceed with the rest of the
> > py2 rearrangement...
>=20
> this should be fine, I think, downside is we might have to ship it if
> u-boot upstream does not release in time for spring release but
> chances of that happening are low

Impossibly low.  It's scheduled for January 6th and I can't imagine what
would cause us to be so late as to miss the April release date.  It's
not like I'm suggesting v2020.04 which would be a tight fit :)

--=20
Tom

--BXVAT5kNtrzKuDFl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6HLbQJwaaH776GM2h/n2NdMddlIFAl3YKlMACgkQh/n2NdMd
dlLm6A/9HwqJRLDZ0DqB4IZwiK5ME8Q7zIRvJOdvqt5Pq92pYS37dtPfvvBE32o6
4R8V775fZj4qCIXoc5s47FNqGeu2pO7BDSPjRZ3ntz6O788vlSM4TW+00HFMuR+A
2xUW63f0ah5RCzjnnEYx96gTs0iOI5Sxd0OlPcytSFqrrRLN1w++w+EtduAkPnXu
tyHi067vj9Vx09zCtwwR+aCWZb9yBz2S4Z2w30xEo+OeW7/oHf+GuosPNYsO8bM7
fVlo/BGDQj7jWMQvx0QqENK49+KYqK5TPtR9wSi2Dm/TSnbuQJi31GvO/GH9sglO
PBs3drvHAjS5QBaTDyK0Rsi4jtRnNpMLMmM6Ct6wGUwUOc/FFJTgonsxvswnN1py
wRgh6CWTox5Vh3yfnXtUlb1HQTPcbgclzMufXPObKY4/OwcJRS7jjStYqKfv1ewa
7a1NTIuTOPc20xOFQ5lTXhAfmRmhZOkGMiVDsF3MJH3eKPVRSYjQcBYn3gGwKiRm
MTf651tO3VnJTk0qi3tzY7oF2tUltNM5uMRcjEKP9vqj8Kwlc3m6JAu9rPaJ3DOr
lqk2MmHrGNqjmOstf2M9d+o5r1Wzum0OK91Pz8q5dlahyPzeTRSgxOCCgebQIlYw
kkmpb+UV1wc3mg7xid8bv1LWqkyPhyPVnMYvGiQsh0kEOx4jEL8=
=AYDf
-----END PGP SIGNATURE-----

--BXVAT5kNtrzKuDFl--
