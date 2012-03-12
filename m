Return-Path: <B29882@freescale.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe004.messaging.microsoft.com [213.199.154.207])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53591E011D1
	for <poky@yoctoproject.org>; Mon, 12 Mar 2012 09:11:16 -0700 (PDT)
Received: from mail102-am1-R.bigfish.com (10.3.201.252) by
	AM1EHSOBE006.bigfish.com (10.3.204.26) with Microsoft SMTP Server id
	14.1.225.23; Mon, 12 Mar 2012 16:11:14 +0000
Received: from mail102-am1 (localhost [127.0.0.1])	by
	mail102-am1-R.bigfish.com (Postfix) with ESMTP id E91A91200E1;
	Mon, 12 Mar 2012 16:11:14 +0000 (UTC)
X-SpamScore: -10
X-BigFish: VS-10(zz9371Ic89bh936eK1432N98dKzz1202hzz8275ch8275bh8275dhz2dh2a8h668h839h8e2h8e3hbe9k)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail102-am1 (localhost.localdomain [127.0.0.1]) by mail102-am1
	(MessageSwitch) id 1331568672431286_31726;
	Mon, 12 Mar 2012 16:11:12 +0000 (UTC)
Received: from AM1EHSMHS020.bigfish.com (unknown [10.3.201.239])	by
	mail102-am1.bigfish.com (Postfix) with ESMTP id 611D1C0341;
	Mon, 12 Mar 2012 16:11:12 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS020.bigfish.com
	(10.3.206.23) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 12 Mar 2012 16:11:10 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.230]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0355.003; Mon, 12 Mar 2012 11:11:02 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: =?iso-8859-1?Q?Bj=F6rn_Stenberg?= <bjst@enea.com>
Thread-Topic: [poky] [PATCH] Add pigz as gzip-native alternative.
Thread-Index: AQHNAGq487QzuGflDky+v18POY9krQ==
Date: Mon, 12 Mar 2012 16:11:02 +0000
Message-ID: <CAEsOVNcXW_AAuq3aJORztmW9-pCH9ztJsUZ8PwGzFX2yjs8uzQ@mail.gmail.com>
References: <1331567239-20200-1-git-send-email-bjst@enea.com>
In-Reply-To: <1331567239-20200-1-git-send-email-bjst@enea.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] Add pigz as gzip-native alternative.
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 12 Mar 2012 16:11:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <20360A6C3403C54BB19982DD5C4BAC85@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

I thought about doing this - can you share any performance numbers?

-M

On Mon, Mar 12, 2012 at 10:47 AM, Bj=F6rn Stenberg <bjst@enea.com> wrote:
> pigz, which stands for parallel implementation of gzip, is a fully functi=
onal replacement for gzip that exploits multiple processors and multiple co=
res to the hilt when compressing data. pigz was written by Mark Adler, and =
uses the zlib and pthread libraries.
>
> This recipe adds pigz as an alternative provider of gzip-native. Pigz is =
much faster than gzip on multi-core machines.
>
> Signed-off-by: Bj=F6rn Stenberg <bjst@enea.com>
> ---
> =A0meta/recipes-extended/pigz/files/ldflags.patch | =A0 11 +++++++++++
> =A0meta/recipes-extended/pigz/pigz.inc =A0 =A0 =A0 =A0 =A0 =A0| =A0 21 ++=
+++++++++++++++++++
> =A0meta/recipes-extended/pigz/pigz_2.2.4.bb =A0 =A0 =A0 | =A0 =A09 ++++++=
+++
> =A03 files changed, 41 insertions(+), 0 deletions(-)
> =A0create mode 100644 meta/recipes-extended/pigz/files/ldflags.patch
> =A0create mode 100644 meta/recipes-extended/pigz/pigz.inc
> =A0create mode 100644 meta/recipes-extended/pigz/pigz_2.2.4.bb
>
> diff --git a/meta/recipes-extended/pigz/files/ldflags.patch b/meta/recipe=
s-extended/pigz/files/ldflags.patch
> new file mode 100644
> index 0000000..534d280
> --- /dev/null
> +++ b/meta/recipes-extended/pigz/files/ldflags.patch
> @@ -0,0 +1,11 @@
> +--- pigz-2.2.3/Makefile.orig =A0 2012-01-01 02:46:58.000000000 +0100
> ++++ pigz-2.2.3/Makefile =A0 =A0 =A0 =A02012-03-09 08:47:40.025094863 +01=
00
> +@@ -2,7 +2,7 @@
> + CFLAGS=3D-O3 -Wall -Wextra
> +
> + pigz: pigz.o yarn.o
> +- =A0 =A0 =A0$(CC) -o pigz pigz.o yarn.o -lpthread -lz
> ++ =A0 =A0 =A0$(CC) $(LDFLAGS) -o pigz pigz.o yarn.o -lpthread -lz
> + =A0 =A0 =A0 ln -f pigz unpigz
> +
> + pigz.o: pigz.c yarn.h
> diff --git a/meta/recipes-extended/pigz/pigz.inc b/meta/recipes-extended/=
pigz/pigz.inc
> new file mode 100644
> index 0000000..b501d7a
> --- /dev/null
> +++ b/meta/recipes-extended/pigz/pigz.inc
> @@ -0,0 +1,21 @@
> +SUMMARY =3D "A parallel implementation of gzip"
> +DESCRIPTION =3D "pigz, which stands for parallel implementation of gzip,=
 is a \
> +fully functional replacement for gzip that exploits multiple processors =
and \
> +multiple cores to the hilt when compressing data. pigz was written by Ma=
rk \
> +Adler, and uses the zlib and pthread libraries."
> +HOMEPAGE =3D "http://zlib.net/pigz/"
> +SECTION =3D "console/utils"
> +LICENSE =3D "Zlib"
> +
> +SRC_URI =3D "http://zlib.net/pigz/pigz-${PV}.tar.gz \
> + =A0 =A0 =A0 =A0 =A0 file://ldflags.patch"
> +
> +PROVIDES +=3D "gzip-native"
> +
> +DEPENDS_virtclass-native =3D "zlib-native"
> +
> +do_install () {
> + =A0 =A0 =A0 =A0install -d ${D}${bindir}
> + =A0 =A0 =A0 =A0install ${B}/pigz ${D}${bindir}/gzip
> + =A0 =A0 =A0 =A0install ${B}/unpigz ${D}${bindir}/gunzip
> +}
> diff --git a/meta/recipes-extended/pigz/pigz_2.2.4.bb b/meta/recipes-exte=
nded/pigz/pigz_2.2.4.bb
> new file mode 100644
> index 0000000..598bbe3
> --- /dev/null
> +++ b/meta/recipes-extended/pigz/pigz_2.2.4.bb
> @@ -0,0 +1,9 @@
> +require pigz.inc
> +
> +PR =3D "r0"
> +
> +BBCLASSEXTEND =3D "native"
> +
> +SRC_URI[md5sum] =3D "9df2a3c742524446fa4e797c17e8fd85"
> +SRC_URI[sha256sum] =3D "7e7967c47f66c07be97cbfa25c8816b72f9d35258466ea31=
eddc7666c914160e"
> +LIC_FILES_CHKSUM =3D "file://pigz.c;md5=3D53f47c097bbf11b937a421b1816a8d=
c5"
> --
> 1.7.5.4
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky=


