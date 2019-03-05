Return-Path: <jeff.dagenais@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57337E00D26; Tue,  5 Mar 2019 07:32:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jeff.dagenais[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
	[209.85.160.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DEC0E006B3
	for <poky@yoctoproject.org>; Tue,  5 Mar 2019 07:32:38 -0800 (PST)
Received: by mail-qt1-f193.google.com with SMTP id j36so9337124qta.7
	for <poky@yoctoproject.org>; Tue, 05 Mar 2019 07:32:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=V3CyNMwQoZi5QWBUg7GlpIVZoGLtJT9enveFFwXbXSg=;
	b=rAFftXOSc/j1EVKxI3Q8NliuovPb4BJJT2jt2+KCCO9gESlTZuNqVxut+ltBUs3POd
	/lgZNrZEuQD4hG7S32Ah2SuycyYAtL/dMAgJwDwbxjVTa9mfzjIzMVpqtapWpj3LVUja
	n/cPtwVpHSggAgCj8ULA29Tsg3e2Q2kZAaA+VzD7WeejQZwPBcAMR6ywSUJEV+4j7gMr
	mzi4fts6qi9sZPAEgJ1p5MrwIDMEqu+ueIwI1rd62HtDxLGaDQNb6SzI1+c6C2zn9cDD
	/aJAPKUhC6wznhiomK19luA6KyM1bgpj0Og230EYHYtS9pukNa0gfnRfjvbj3z82zZ49
	Pm2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=V3CyNMwQoZi5QWBUg7GlpIVZoGLtJT9enveFFwXbXSg=;
	b=HGfw2EVLdrhZkXObkjfwKqbjRzl9q/y0BHRCRxmT4cvCUhHoHM7v7Nco0IXfIBodOv
	gm7Sw9SxtikqVJuQIwWMb8CjU6WbU1nuFfwjIskRcC6eAt36jCzPu+Yk0+Tb0qfmm//O
	oGuDAS4hxrI1dz0pJFplaY3OJcLS9zDeBPWfqqFyqeLGBkXGbK8rxQsET6RfWQz+Xg3n
	P/K4PzjNouJaHLGRfWeuQuPTlz/I93exfPxdKuUyjDh64XsTNmMG46z7ctwFsqoZYF+E
	58z3YrJSXfjAqjWtz49Y15KxUouLATsgFAyOkLRqqDfh307yuBrBIriwxeXutFjquJ5b
	9wqw==
X-Gm-Message-State: APjAAAXcxROAl/SU04oeCz2TPsP0B+A/aHXG7Z8Z+KNzRTZlMN+EUdAD
	5anEQSI+rB7sQZ6THl3W5GVPBAkTBaY=
X-Google-Smtp-Source: APXvYqyJGBGnF8Zg2m5rXFOT/d+KKIYasS7hCUqcJpX32T7DYt3jwKyZ/rApVHRLGDsECok43K2XFA==
X-Received: by 2002:aed:22d6:: with SMTP id q22mr1870331qtc.171.1551799957753; 
	Tue, 05 Mar 2019 07:32:37 -0800 (PST)
Received: from jfdmac.sonatest.net
	(ipagstaticip-d73c7528-4de5-0861-800b-03d8b15e3869.sdsl.bell.ca.
	[174.94.156.236]) by smtp.gmail.com with ESMTPSA id
	i20sm6164518qta.19.2019.03.05.07.32.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 05 Mar 2019 07:32:36 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 12.2 \(3445.102.3\))
From: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
In-Reply-To: <20190304185937.GC1170@localhost>
Date: Tue, 5 Mar 2019 10:32:35 -0500
Message-Id: <9DD11444-CE07-4C32-BA50-E20C733A7AE4@gmail.com>
References: <D67743D4-7A14-4AB5-AAC4-CC5E4999EB6D@gmail.com>
	<20190304185937.GC1170@localhost>
To: Adrian Bunk <bunk@stusta.de>
X-Mailer: Apple Mail (2.3445.102.3)
Cc: paul.eggleton@linux.intel.com, Poky Project <poky@yoctoproject.org>
Subject: Re: /usr/include/libnl3 or /usr/include
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
X-List-Received-Date: Tue, 05 Mar 2019 15:32:39 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Adrian, all,

> On Mar 4, 2019, at 13:59, Adrian Bunk <bunk@stusta.de> wrote:
>=20
> On Mon, Mar 04, 2019 at 11:50:43AM -0500, Jean-Francois Dagenais =
wrote:
>>=20
>> Since libnl does explicitly that it cannot co-exist with it's =
previous versions:
>> RREPLACES_${PN} =3D "libnl2"
>> RCONFLICTS_${PN} =3D "libnl2"
>>=20
>> what is the point of the sub-path?
>=20
> It's where upstream installs their headers.

I understand that. I meant since in the yocto packaging, we ensure =
libnl2 cannot
live along side libnl3, in our particular context, wouldn't it make =
dependents
of the library simpler by making the library look and feel like all the =
other
libraries yocto packages?

>=20
>> Would you receive a patchset which moves libnl's headers files back =
at /usr/include (or rather: ${includedir}) ?
>>=20
>> I suspect this would also set a precedent.
>=20
> Diverging libnl from upstream does not sound good to me.

Although I share the general spirit of this philosophy, in the case of =
yocto, I
would argue diverging from upstream using patches and other "hacks" is =
quite a
common occurence. I would also argue that the fact that the upstream =
automake
configuration hard-codes the libnl3 subpath within /usr/include is =
misplaced.
But that is a debate for another crowd. In poky, we could make the patch =
which
would make the subpath configurable with a default to libnl3 and submit =
it
upstream... Thoughts?

>=20
> The correct fix would be for wpa_supplicant to use
> "pkg-config --cflags libnl-3.0", and the upstream
> sources are already doing that.

I tried many variations of pkg-config use inspired by all the examples =
already
present in poky and meta-oe, none worked. I get=20

| DEBUG: Executing shell function do_compile
| Package libnl was not found in the pkg-config search path.
| Perhaps you should add the directory containing `libnl.pc'
| to the PKG_CONFIG_PATH environment variable
| No package 'libnl' found



>=20
> If this is not working without the hack in wpa_supplicant then it =
should=20
> be fixed there, but it is also possible that this hack is just a =
leftover
> from ancient wpa_supplicant versions and can simply be removed.

You are correct. I removed the two lines which append paths in the
.config in wpa-supplicant:do_configure and sure enough, it still works =
on thud
(3541f019a505). I also removed the -I/usr/include/libnl3 in
wpa_supplicant-2.6/src/drivers/drivers.mk and manually poisoned my =
system's
/usr/include/libnl3/*.h just to be sure. All is fine.

But my problem on my wavemon recipe remains, I cannot get it to work out =
of the
box. My recipe is inspired from
=
https://github.com/koenkooi/meta-dominion/blob/master/recipes-wifi/wavemon=
/wavemon_git.bb
where I tried removing the -I${STAGING_INCDIR}/libnl3 and aclocal.m4 =
hacks. I
get the "no such file" on #include <netlink/netlink.h>

Any clues?


