Return-Path: <B29882@freescale.com>
Received: from AM1EHSOBE004.bigfish.com (am1ehsobe004.messaging.microsoft.com
	[213.199.154.207])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 660D5E006B0
	for <poky@yoctoproject.org>; Fri, 13 Jan 2012 11:36:08 -0800 (PST)
Received: from mail103-am1-R.bigfish.com (10.3.201.249) by
	AM1EHSOBE004.bigfish.com (10.3.204.24) with Microsoft SMTP Server id
	14.1.225.23; Fri, 13 Jan 2012 19:36:05 +0000
Received: from mail103-am1 (localhost [127.0.0.1])	by
	mail103-am1-R.bigfish.com (Postfix) with ESMTP id 007332606E5;
	Fri, 13 Jan 2012 19:36:06 +0000 (UTC)
X-SpamScore: -12
X-BigFish: VS-12(zz9371IfecM1432N98dKzz1202hzz8275bhz2dhc1ahc1bh2a8h668h839h8e2h8e3hbe9k)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail103-am1 (localhost.localdomain [127.0.0.1]) by mail103-am1
	(MessageSwitch) id 1326483365904961_19663;
	Fri, 13 Jan 2012 19:36:05 +0000 (UTC)
Received: from AM1EHSMHS006.bigfish.com (unknown [10.3.201.252])	by
	mail103-am1.bigfish.com (Postfix) with ESMTP id CD672140043;
	Fri, 13 Jan 2012 19:36:05 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS006.bigfish.com
	(10.3.207.106) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 13 Jan 2012 19:36:05 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.86]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0355.003; Fri, 13 Jan 2012 13:36:03 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Gary Thomas <gary@mlbassoc.com>
Thread-Topic: [poky] sstate info
Thread-Index: AQHM0Uq8oQGAPfjfAUCEy4RiWbY3epYJWxqAgAAEiwCAAD7AAIAAAU+AgAEw5wCAAASbgIAADWmAgAAHOoCAABVAAIAAAtAAgAAVJYA=
Date: Fri, 13 Jan 2012 19:36:02 +0000
Message-ID: <CAEsOVNe0_hZtHTd6Rh_Vi1obvzUxayWfKeceYwMvy7oJ27it9g@mail.gmail.com>
References: <4F0EAE81.8030800@mlbassoc.com>
	<20120112131352.GC3452@jama.jama.net> <4F0EE095.1090709@mlbassoc.com>
	<20120112133749.GD3452@jama.jama.net> <4F0EFD47.1070708@mlbassoc.com>
	<CAEsOVNcLNJ2iD2YANL6z2ris6kjbQ1kbky2onu8hZrNTim=P+Q@mail.gmail.com>
	<4F0F1321.8080706@mlbassoc.com>
	<CAEsOVNfC5t6p3enJdauZDSiPZxDA3MkHCwPMgqkOD8s9qyz3Zg@mail.gmail.com>
	<4F0F4B94.3020604@mlbassoc.com>
	<CABcZAN=HJjD8uq-00s0=_ho6DXRbEFHBEpF-jQQk0J=qGFFq8A@mail.gmail.com>
	<4F104C72.8010605@mlbassoc.com>
	<CAEsOVNeuCt3aqoTm_LG=8TLKZtXQwg+ptYPX8+rc1UaBkfOkDw@mail.gmail.com>
	<1326472079.15389.43.camel@ted> <4F10619F.4080002@mlbassoc.com>
	<1326478194.18815.1.camel@ted> <4F1075CE.2020108@mlbassoc.com>
In-Reply-To: <4F1075CE.2020108@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	Chris Larson <clarson@kergoth.com>, Poky Project <poky@yoctoproject.org>
Subject: Re: sstate info
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
X-List-Received-Date: Fri, 13 Jan 2012 19:36:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <B72155F8A116DC4DB93BC839C91DD19B@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 13, 2012 at 12:19 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> While you're looking at gcc, I noticed something else. =A0I have
> multiple MACHINE configurations which are all the same basic
> hardware (OMAP3530), the only difference being kernel settings
> and other minor target variations. =A0As far as things like the
> compiler and common ARM tools, they are identical.
>
> I tried sharing the sstate between two of these and for the
> most part, all was well - only the truly machine dependent
> recipes were rebuilt. =A0Except for gcc-cross-4.6.2 which seems
> to have a dependency on the MACHINE variable. =A0This cascaded
> into also building a few other packages (glib, libtool, shadow?
> and udev) =A0[note: I was building a board with SDK tools which
> may have brought some of these in]. =A0Does this seem reasonable
> to you? =A0I would hope that these packages, which are placed
> in the architecture (armv7a-vfp-neon-amltd-linux-gnueabi) tree
> should *not* depend on MACHINE.
>
> Thanks for your help with this.

More than likely the MACHINE variable should not be a dependency.
Which variable is depending on MACHINE? You should do some more
investigation.

-M=


