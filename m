Return-Path: <B29882@freescale.com>
Received: from TX2EHSOBE001.bigfish.com (tx2ehsobe001.messaging.microsoft.com
	[65.55.88.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89C64E01376
	for <poky@yoctoproject.org>; Thu, 12 Jan 2012 13:13:34 -0800 (PST)
Received: from mail120-tx2-R.bigfish.com (10.9.14.246) by
	TX2EHSOBE001.bigfish.com (10.9.40.21) with Microsoft SMTP Server id
	14.1.225.23; Thu, 12 Jan 2012 21:13:33 +0000
Received: from mail120-tx2 (localhost [127.0.0.1])	by
	mail120-tx2-R.bigfish.com (Postfix) with ESMTP id 14FAD80378;
	Thu, 12 Jan 2012 21:13:33 +0000 (UTC)
X-SpamScore: -1
X-BigFish: VS-1(zz9371I98dKzz1202hzz8275bhz2dhc1ahc1bh2a8h668h839h8e2h8e3hbe9k61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail120-tx2 (localhost.localdomain [127.0.0.1]) by mail120-tx2
	(MessageSwitch) id 1326402812888054_23968;
	Thu, 12 Jan 2012 21:13:32 +0000 (UTC)
Received: from TX2EHSMHS033.bigfish.com (unknown [10.9.14.254])	by
	mail120-tx2.bigfish.com (Postfix) with ESMTP id A9DC660237;
	Thu, 12 Jan 2012 21:13:32 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS033.bigfish.com
	(10.9.99.133) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 12 Jan 2012 21:13:32 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.86]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0355.003; Thu, 12 Jan 2012 15:13:31 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Gary Thomas <gary@mlbassoc.com>
Thread-Topic: [poky] sstate info
Thread-Index: AQHM0Uq8oQGAPfjfAUCEy4RiWbY3epYJWxqAgAAEiwCAAD7AAIAAAZCA
Date: Thu, 12 Jan 2012 21:13:31 +0000
Message-ID: <CAEsOVNc4JoP1wMR2QvA0CNdwrFCs0UyrJNKp7Cp0iDTgBe1gww@mail.gmail.com>
References: <4F0EAE81.8030800@mlbassoc.com>
	<20120112131352.GC3452@jama.jama.net> <4F0EE095.1090709@mlbassoc.com>
	<20120112133749.GD3452@jama.jama.net> <4F0EFD47.1070708@mlbassoc.com>
	<CAEsOVNcLNJ2iD2YANL6z2ris6kjbQ1kbky2onu8hZrNTim=P+Q@mail.gmail.com>
	<4F0F1321.8080706@mlbassoc.com>
	<CAEsOVNfC5t6p3enJdauZDSiPZxDA3MkHCwPMgqkOD8s9qyz3Zg@mail.gmail.com>
	<4F0F4B94.3020604@mlbassoc.com>
In-Reply-To: <4F0F4B94.3020604@mlbassoc.com>
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
X-List-Received-Date: Thu, 12 Jan 2012 21:13:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <476D0DD1F62957468F6C97A76F75420B@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 12, 2012 at 3:07 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> I'm trying this now. =A0Of course, touching that variable invalidates
> the sstate cache, so I won't know until tomorrow if it works.

Yes, it's hard (long) to test this. Then you will want to wait another
day to know for sure the DATE dependency is gone to know it's work for
sure. I'd recommend purchasing a large machine to do this testing
on.... it's well worth the investment ;)

-M=


