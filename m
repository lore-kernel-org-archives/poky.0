Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe005.messaging.microsoft.com [216.32.181.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9750EE0030C
	for <poky@yoctoproject.org>; Thu, 12 Jan 2012 13:14:06 -0800 (PST)
Received: from mail42-ch1-R.bigfish.com (10.43.68.244) by
	CH1EHSOBE014.bigfish.com (10.43.70.64) with Microsoft SMTP Server id
	14.1.225.23; Thu, 12 Jan 2012 21:14:05 +0000
Received: from mail42-ch1 (localhost [127.0.0.1])	by mail42-ch1-R.bigfish.com
	(Postfix) with ESMTP id 43F251C0373;
	Thu, 12 Jan 2012 21:14:05 +0000 (UTC)
X-SpamScore: -7
X-BigFish: VS-7(zz9371I1432N98dKzz1202hzz8275bhz2dhc1ahc1bh2a8h668h839h8e2h8e3hbe9k)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 13,
Received: from mail42-ch1 (localhost.localdomain [127.0.0.1]) by mail42-ch1
	(MessageSwitch) id 1326402845210536_14323;
	Thu, 12 Jan 2012 21:14:05 +0000 (UTC)
Received: from CH1EHSMHS015.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.252])	by mail42-ch1.bigfish.com (Postfix) with ESMTP id
	2D7A7540042;	Thu, 12 Jan 2012 21:14:05 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS015.bigfish.com
	(10.43.70.15) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 12 Jan 2012 21:14:04 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.86]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0355.003; Thu, 12 Jan 2012 15:14:04 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Chris Larson <clarson@kergoth.com>
Thread-Topic: [poky] sstate info
Thread-Index: AQHM0Uq8oQGAPfjfAUCEy4RiWbY3epYJWxqAgAAEiwCAAD7AAIAAAU+AgAAAaAA=
Date: Thu, 12 Jan 2012 21:14:03 +0000
Message-ID: <CAEsOVNfk_CN=cZN5xPRKV1B-t5ku_UXbB0qrcEmQyMcEEyjGhQ@mail.gmail.com>
References: <4F0EAE81.8030800@mlbassoc.com>
	<20120112131352.GC3452@jama.jama.net> <4F0EE095.1090709@mlbassoc.com>
	<20120112133749.GD3452@jama.jama.net> <4F0EFD47.1070708@mlbassoc.com>
	<CAEsOVNcLNJ2iD2YANL6z2ris6kjbQ1kbky2onu8hZrNTim=P+Q@mail.gmail.com>
	<4F0F1321.8080706@mlbassoc.com>
	<CAEsOVNfC5t6p3enJdauZDSiPZxDA3MkHCwPMgqkOD8s9qyz3Zg@mail.gmail.com>
	<4F0F4B94.3020604@mlbassoc.com>
	<CABcZAN=HJjD8uq-00s0=_ho6DXRbEFHBEpF-jQQk0J=qGFFq8A@mail.gmail.com>
In-Reply-To: <CABcZAN=HJjD8uq-00s0=_ho6DXRbEFHBEpF-jQQk0J=qGFFq8A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	Poky Project <poky@yoctoproject.org>
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
X-List-Received-Date: Thu, 12 Jan 2012 21:14:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <1DA0D5158B598B4BAFF15E33B4202BF7@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 12, 2012 at 3:12 PM, Chris Larson <clarson@kergoth.com> wrote:
>> I'm trying this now. =A0Of course, touching that variable invalidates
>> the sstate cache, so I won't know until tomorrow if it works.
>
> You can't just override DATE in local.conf? I don't see the point in
> holding off, unless your builds will take till tomorrow to finish?

This would be a good way to test it out...

-M=


