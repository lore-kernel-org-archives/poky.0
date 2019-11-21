Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBCB6E00DA3; Thu, 21 Nov 2019 12:42:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com
	[209.85.166.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D489E00BA1
	for <poky@yoctoproject.org>; Thu, 21 Nov 2019 12:42:56 -0800 (PST)
Received: by mail-il1-f181.google.com with SMTP id f6so667473ilh.9
	for <poky@yoctoproject.org>; Thu, 21 Nov 2019 12:42:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=yizTAQYo2/gfnl663iFdtglZxg+xo6idLQlvImSHtTM=;
	b=p3UhQipqz5qXtJPrvaq6Q/cWRRehiIRyfYreH7DurEbCZg9Rpv2Ce0rKArzP6BoU77
	FAkNtgVmruPuvl0q4V9PmXb8zqOMqosQA3ehd4Yx9D4OHMG2sHR1qQQ79L+onz9HZtXS
	+2kYAA+eThA/Jk2n7rm4Ju2Rc2+osy9CkUv1c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=yizTAQYo2/gfnl663iFdtglZxg+xo6idLQlvImSHtTM=;
	b=M1OpYYV4sPdAXEBx6CCHIbOSdbJZvAvhwPE3Wm9FK+nbj3yX27FL6KKTkUFpB538GP
	ZKngGNoaoQZnpBbe8RjsYGcvtZTHNuIiKMSIXRRjjrDpOyGdUNbSgv3tkGpt55IgEzd/
	vUd0qIjjxysqu6ktnaP9TiayPP0D1FNhY75fim6yoiCVfaI5T+V0k+c9bCT2aucB11e/
	JhAHkz+1bNuQUinQqa9Cwe5Hw8AImSDdR7zzEdJqAjXLIVGNW/piSeKIPhWASBa+PktS
	IJdcUMlCKo37LkG7n1vESdFWLHAKDOytz4yqgJRCb4HHEUvR/3V618scLvK2FBdGaeNQ
	JJ0g==
X-Gm-Message-State: APjAAAXbSCASdy/KT/fNfrbbxCnf/azCt4q/IwuVUEE2ACSQn56XGkj7
	Frb0c+/ltQqiMs0jSyAs5ZU1ew==
X-Google-Smtp-Source: APXvYqyAugRI9+IWb9W7W8WPC2hq5yeK+iEjGEq/rjbR1YKNSS23ifPHBsMCeqTAm+vv+VVNavWuIA==
X-Received: by 2002:a92:d450:: with SMTP id r16mr11882079ilm.147.1574368975930;
	Thu, 21 Nov 2019 12:42:55 -0800 (PST)
Received: from bill-the-cat
	(2606-a000-1401-86dd-d15b-50ee-ef30-b467.inf6.spectrum.com.
	[2606:a000:1401:86dd:d15b:50ee:ef30:b467])
	by smtp.gmail.com with ESMTPSA id z4sm1327919ioj.76.2019.11.21.12.42.53
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 21 Nov 2019 12:42:54 -0800 (PST)
Date: Thu, 21 Nov 2019 15:42:51 -0500
From: Tom Rini <trini@konsulko.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Message-ID: <20191121204251.GO971@bill-the-cat>
References: <13c1169c-fcba-7b49-ea23-0531cc497282@huawei.com>
	<d5aac15a1c87981785f589046a6e8ead05c09e70.camel@linuxfoundation.org>
	<CANNYZj8-bTua-Tq2k+qRt7GcX=S_U8zOxS47x+LL6g0CsYMt7A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANNYZj8-bTua-Tq2k+qRt7GcX=S_U8zOxS47x+LL6g0CsYMt7A@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
User-Agent: Mutt/1.9.4 (2018-02-28)
Cc: Wang Nan <wangnan0@huawei.com>, Poky Project <poky@yoctoproject.org>
Subject: Re: Python2 maintenance will expired
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Nov 2019 20:42:57 -0000
X-Groupsio-MsgNum: 11818
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9DptZICXTlJ7FQ09"
Content-Disposition: inline

--9DptZICXTlJ7FQ09
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 21, 2019 at 12:07:14PM +0100, Alexander Kanavin wrote:
> On Thu, 21 Nov 2019 at 09:39, Richard Purdie <
> richard.purdie@linuxfoundation.org> wrote:
>=20
> > The project has been working hard to remove python2 dependencies where
> > we can and in OE-Core, on target usage has been removed and at build
> > time, u-boot is one of the main remaining pieces that still needs it.
> > Their next release should address that issue.
> >
> > There is still a need for python2 in HOSTTOOLS but that is also being
> > looked at.
> >
>=20
> I can confirm (from local testing) that as far as oe-core is concerned,
> u-boot is actually the last piece, and after it's been moved to use py3,
> py2 can be removed entirely, including a link in HOSTTOOLS, and native and
> target recipes.

And for the slightly wider audience, the v2020.01 release is scheduled for
release on January 6th and Alex has tested the current -rc within
oe-core to confirm we're all good with respect to just using Python 3
now.

--=20
Tom

--9DptZICXTlJ7FQ09
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6HLbQJwaaH776GM2h/n2NdMddlIFAl3W9sEACgkQh/n2NdMd
dlIa7hAAlaRoy/9IzA94T9j+zAH33Y69Uc9+5sBQpoA7DVzzKEuteo3J9pgUZaZy
yiBfKsDGIApAb/c6TfVgTIIhwNTIh5prdMq3h3SBoIMqaOlnWBBKkOf6OsAjIifM
dJtmFR5ZDoX8YLMuVouWI98bZBWdLivUcILw0gvmyqhaZ1yaxxriTY93xExU55sa
WSfxwtr2NMGTPOfPcfJz+HrMSPhb6PlcvCe5yb28EsU1W1boT/0mJisW7E5zqSTY
jtBKxFe+uYl+mXJzqpFkRRLV0PgQciOBVFvq9T/c6BsS6n6uKLCQooPnj/gOmjtD
j8VsQ8XETjUQKKQosJGxFWzfvmKkJCSD8pP/YF6YlAPocdYI8BfB2MyxlfA+3gTx
zan6JajogTqhMgcBch7TMXJ1zpeJS1ms1yv8LG7Urdk9AlM2Qxq9TzFVb0uLxsm7
5OQsdEm5qU2264PQ2G59nxS3ReK/XJm4Y/dnpLcCiZdxqmMAPw1M2zFoNP9nojSG
dPW6lkIXzwAZplDQt/AI8r1uxud3Ua3fwsepTHEIodF8YRbHVeyN+D64OZDQdx9d
fIenoO5QwbePHKqeqfxuTbdHwKL0GF2DhToT+ZTIBuOdcWLiBzR9jmXA+dpzMexc
oVKdAv9UEqLByPALF0k5pgc8AXTwIdzXemKtw17f/JfeliWyWF8=
=ebyS
-----END PGP SIGNATURE-----

--9DptZICXTlJ7FQ09--
