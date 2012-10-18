Return-Path: <B29882@freescale.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe006.messaging.microsoft.com [216.32.180.189])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58612E01275
	for <poky@yoctoproject.org>; Thu, 18 Oct 2012 09:39:41 -0700 (PDT)
Received: from mail65-co1-R.bigfish.com (10.243.78.230) by
	CO1EHSOBE003.bigfish.com (10.243.66.66) with Microsoft SMTP Server id
	14.1.225.23; Thu, 18 Oct 2012 16:39:41 +0000
Received: from mail65-co1 (localhost [127.0.0.1])	by mail65-co1-R.bigfish.com
	(Postfix) with ESMTP id 131CD9C01A7;
	Thu, 18 Oct 2012 16:39:41 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202h1d1ah1d2ahzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hd25hf0ah107ah10d2h1288h12a5h12a9h12bdh137ah13b6h1441hbe9i1155h)
Received: from mail65-co1 (localhost.localdomain [127.0.0.1]) by mail65-co1
	(MessageSwitch) id 1350578379777761_2532;
	Thu, 18 Oct 2012 16:39:39 +0000 (UTC)
Received: from CO1EHSMHS020.bigfish.com (unknown [10.243.78.234])	by
	mail65-co1.bigfish.com (Postfix) with ESMTP id BC35B880075;
	Thu, 18 Oct 2012 16:39:39 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO1EHSMHS020.bigfish.com
	(10.243.66.30) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 18 Oct 2012 16:39:38 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.88]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0309.003; Thu, 18 Oct 2012 16:39:37 +0000
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Gary Thomas <gary@mlbassoc.com>
Thread-Topic: [poky] Issue with git fetcher
Thread-Index: AQHNrU8piGXTBLzpCEqxUDUX2ON4+w==
Date: Thu, 18 Oct 2012 16:39:36 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A70879A@039-SN1MPN1-002.039d.mgd.msft.net>
References: <5080305D.2060001@mlbassoc.com>
In-Reply-To: <5080305D.2060001@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Issue with git fetcher
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 18 Oct 2012 16:39:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <8ABC76ADAE9C3A45858092C1E7DE7025@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 18, 2012 at 11:37 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> I like to run Poky/Yocto with a pre-populated source cache,
> built up over time, and rely on BB_NO_NETWORK to tell me
> when stuff actually needs to come from the network.  This
> works quite well - only when there is a new/changed recipe
> do I have to relax BB_NO_NETWORK and once I've built the
> offending recipe, I save the sources (I also use
> BB_GENERATE_MIRROR_TARBALLS=3D"1")
> back to my source cache.
>
> I ran across an issue with this with a recipe I imported from
> meta-openembedded/meta-oe.  It contained these lines:
>   SRCREV =3D "2fb4be9a99a2c2a9435339830e3d940171cc0d9b"
>   SRC_URI =3D "git://git.libav.org/libav.git;protocol=3Dgit;branch=3Drele=
ase/0.8"
>
> So, the first time I built it without BB_NO_NETWORK, then I saved
> the resulting tar file.  However, when I tried to build it again,
> this time in a new build tree with BB_NO_NETWORK set, it failed!
> I went looking through the tar file (just a bare clone of the git tree)
> and found that the revision in question was not there.
>
> The only thing I could see that's unique about this recipe is the
> 'branch=3Drelease/0.8'.  To see if this was the issue, I removed it
> and replayed the whole process (rebuilding the tar file) & now fetch
> works even with BB_NO_NETWORK :-)
>
> Is this expected, or is it a bug?
>
> n.b. I hammer on this functionality as I have to deliver fixed source
> packages to customers (some of whom may not have easy network access,
> some who just want to know what they are getting/using), so I rely
> on being able to build with BB_NO_NETWORK set.

Was there some recent discussion on oe-core about this?

-M=


