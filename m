Return-Path: <B29882@freescale.com>
Received: from DB3EHSOBE006.bigfish.com (db3ehsobe006.messaging.microsoft.com
	[213.199.154.144])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54B42E0030F
	for <poky@yoctoproject.org>; Mon,  5 Dec 2011 09:26:00 -0800 (PST)
Received: from mail5-db3-R.bigfish.com (10.3.81.249) by
	DB3EHSOBE006.bigfish.com (10.3.84.26) with Microsoft SMTP Server id
	14.1.225.23; Mon, 5 Dec 2011 17:25:59 +0000
Received: from mail5-db3 (localhost [127.0.0.1])	by mail5-db3-R.bigfish.com
	(Postfix) with ESMTP id 37C072C01B0;
	Mon,  5 Dec 2011 17:25:59 +0000 (UTC)
X-SpamScore: -12
X-BigFish: VS-12(zz9371K1432N98dKzz1202hzz8275bhz2dhb2ch2a8h668h839h8e2h8e3h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail5-db3 (localhost.localdomain [127.0.0.1]) by mail5-db3
	(MessageSwitch) id 1323105958396029_8764;
	Mon,  5 Dec 2011 17:25:58 +0000 (UTC)
Received: from DB3EHSMHS001.bigfish.com (unknown [10.3.81.240])	by
	mail5-db3.bigfish.com (Postfix) with ESMTP id 59D52C0045;
	Mon,  5 Dec 2011 17:25:58 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS001.bigfish.com
	(10.3.87.101) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 5 Dec 2011 17:25:58 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.83]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.01.0339.002; Mon, 5 Dec 2011 11:25:56 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Gary Thomas <gary@mlbassoc.com>
Thread-Topic: [poky] Can't build glib-2.0
Thread-Index: AQHMs3HjZORPUNQKRkOr0cdFac1JypXN4uUAgAAAkgA=
Date: Mon, 5 Dec 2011 17:25:55 +0000
Message-ID: <CAEsOVNfr99_yxZ-FuNxRW3qucbesqdj4HknAmK2KdnBhx4pWPg@mail.gmail.com>
References: <4EDCFB28.9010402@mlbassoc.com>
	<CAEsOVNfgTpENJvuQCjGd+BEytb7W4+MmPgJtrX4YqL9Q1-RXZw@mail.gmail.com>
	<4EDCFE10.4000208@mlbassoc.com>
In-Reply-To: <4EDCFE10.4000208@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	Poky Project <poky@yoctoproject.org>
Subject: Re: Can't build glib-2.0
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
X-List-Received-Date: Mon, 05 Dec 2011 17:26:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <8AD92B95FD370743836022ED69E64262@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 5, 2011 at 11:23 AM, Gary Thomas <gary@mlbassoc.com> wrote:=0A=
> What's missing is the functions which should be coming from base.bbclass.=
=0A=
> I looked at an older build of glib-2.0 and these functions are missing:=
=0A=
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=0A=
> oe_runmake() {=0A=
> =A0 =A0 =A0 =A0if [ x"$MAKE" =3D x ]; then MAKE=3Dmake; fi=0A=
> =A0 =A0 =A0 =A0bbnote make -j 4 =A0"$@"=0A=
> =A0 =A0 =A0 =A0make -j 4 =A0"$@" || die "oe_runmake failed"=0A=
>=0A=
> }=0A=
>=0A=
> die() {=0A=
> =A0 =A0 =A0 =A0bbfatal "$*"=0A=
>=0A=
> }=0A=
>=0A=
> bbnote() {=0A=
> =A0 =A0 =A0 =A0echo "NOTE: $*"=0A=
>=0A=
> }=0A=
>=0A=
> bbfatal() {=0A=
> =A0 =A0 =A0 =A0echo "ERROR: $*"=0A=
> =A0 =A0 =A0 =A0exit 1=0A=
>=0A=
> }=0A=
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=0A=
>=0A=
> Why would they be missing from this run.do_install script?=0A=
=0A=
Is your recipe inheriting anything from base.bbclass?=0A=
=0A=
-M=0A=


