Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f180.google.com (mail-iw0-f180.google.com
	[209.85.214.180])
	by mx1.pokylinux.org (Postfix) with ESMTP id 29A0B4C81233
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 14:11:51 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn37 with SMTP id 37so2182045iwn.25
	for <poky@yoctoproject.org>; Wed, 08 Dec 2010 12:11:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=o2wJZf7cx5aCwjnNLtVuDcNsOM6HgOHbTpga6JjdLJw=;
	b=oGMEkC+DiL/9CqbXJ5u96E/qZfVEH9L8l6X3lcQpjDsX+ESAi9urzqfTW7qAz7KqdP
	BoIhrpEnXOw8gNf7QjXWk9/LdgnvtHpIEdO2NQu2vO22UsnbddKVGq2UZXLG1BcCRNOn
	15E8qKElMhwVsndf9+KcSvNZwJs0x5MNorzl8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=H9YngevzKBzZJcN5ex+qnvQ5pWoUlffiGr2eFOD3sxAqXkCBpbmpliAOTgiRHZR2cr
	MquaARpPF+szzzxKmkZLuxBlir/B6V89kBbJ+qDd4P/rarOY2ZdPogw+JWGdO5mkvIg2
	fiC4e04dWERX4AuUt/5rA/FcHLLPFMs3z1ArA=
MIME-Version: 1.0
Received: by 10.231.14.10 with SMTP id e10mr9710210iba.132.1291839110564; Wed,
	08 Dec 2010 12:11:50 -0800 (PST)
Received: by 10.231.200.140 with HTTP; Wed, 8 Dec 2010 12:11:50 -0800 (PST)
In-Reply-To: <1291803453.3076.13.camel@eric-desktop>
References: <1291803453.3076.13.camel@eric-desktop>
Date: Wed, 8 Dec 2010 21:11:50 +0100
Message-ID: <AANLkTim-h+UbTH8py-ik_8XcfXY+k+8RiJ4MdKqncG+U@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Lu Jingdong <jingdong.lu@windriver.com>
Cc: poky <poky@yoctoproject.org>
Subject: Re: [PATCH 5/8] perl-uri: Add perl-uri
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 08 Dec 2010 20:11:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

2010/12/8 Lu Jingdong <jingdong.lu@windriver.com>:
> Subject: [PATCH 5/8] perl-uri: Add perl-uri
>
> Add perl-uri in order to enable graphic LSB test(OLVER-Core test).
>
> Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
> ---
> =A0meta/recipes-devtools/perl/perl-uri_1.56.bb | =A0 25
> +++++++++++++++++++++++++
> =A01 files changed, 25 insertions(+), 0 deletions(-)
> =A0create mode 100644 meta/recipes-devtools/perl/perl-uri_1.56.bb

Is there a particular naming scheme for this.
OE has liburi-perl_1.55.bb

and poky has e.g.
meta/recipes-devtools/perl/libxml-parser-perl_2.36.bb

I would have expected this to be called liburi-perl_1.56.bb
>
> diff --git a/meta/recipes-devtools/perl/perl-uri_1.56.bb
> b/meta/recipes-devtools/perl/perl-uri_1.56.bb
> new file mode 100644
> index 0000000..7dd5668
> --- /dev/null
> +++ b/meta/recipes-devtools/perl/perl-uri_1.56.bb
> @@ -0,0 +1,25 @@
> +DESCRIPTION =3D "This package contains the URI.pm module with friends. \
> +The module implements the URI class. URI objects can be used to access
> \
> +and manipulate the various components that make up these strings."
> +
> +SECTION =3D "libs"
> +LICENSE =3D "Artistic"

This does not seem correct:
http://www.cpan.org/authors/id/G/GA/GAAS/URI-1.56.readme says:

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

THis is also what the README file says

and http://dev.perl.org/licenses/ says:

Perl5 is Copyright (C) 1993-2005, by Larry Wall and others.

It is free software; you can redistribute it and/or modify it under
the terms of either:

a) the GNU General Public License as published by the Free Software
Foundation; either external linkversion 1, or (at your option) any
later versionexternal link, or

b) the "Artistic License".

So I'd say it should be:

LICENSE =3D "Artistic|GPLv1+"


> +PR =3D "r0"
> +
> +LIC_FILES_CHKSUM =3D
> "file://README;beginline=3D26;endline=3D30;md5=3D6c33ae5c87fd1c4897714e12=
2dd9c23d"
> +
> +DEPENDS +=3D "perl"

This DEPENDS is already dragged in by the
inherit cpan
below. It it in meta/classes/cpan.class and says:
DEPENDS  +=3D "${@["perl", "perl-native"][(bb.data.inherits_class('native',=
 d))]}"
RDEPENDS  +=3D "${@["perl", ""][(bb.data.inherits_class('native', d))]}"

> +
> +SRC_URI =3D "http://www.cpan.org/authors/id/G/GA/GAAS/URI-${PV}.tar.gz"Y
> +
> +S =3D "${WORKDIR}/URI-${PV}"
> +
> +EXTRA_CPANFLAGS =3D "EXPATLIBPATH=3D${STAGING_LIBDIR} EXPATINCPATH=3D
> ${STAGING_INCDIR}"
> +
> +inherit cpan
> +
> +do_compile() {
> + =A0 =A0 =A0 export LIBC=3D"$(find ${STAGING_DIR_TARGET}/${base_libdir}/=
 -name
> 'libc-*.so')"
> + =A0 =A0 =A0 cpan_do_compile
> +}
> +
As this is a pure perl recipe it is hw independent, so it should have

PACKAGE_ARCH =3D "all"

also maybe one might want to add
BBCLASSEXTEND=3D"native"

Otherwise (at least that is my understanding) recipes that depend on
this one do not build (but maybe the new style staging made the native
recipe unneeded).

Anyway (and slightly off-topic here):
we also have
meta/recipes-devtools/perl/libxml-simple-perl-native_2.18.bb
meta/recipes-devtools/perl/libxml-parser-perl-native_2.36.bb
and I guess that might well be for that reason. (and not sure why
these do not use BBCLASSEXTEND, the OE version does!)




Best regards, Frans

> --
> 1.7.0.4
> --
> Lu Jingdong
> jingdong.lu@windriver.com
> China, Wind River
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

