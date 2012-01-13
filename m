Return-Path: <B29882@freescale.com>
Received: from TX2EHSOBE006.bigfish.com (tx2ehsobe003.messaging.microsoft.com
	[65.55.88.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9A66E00307
	for <poky@yoctoproject.org>; Fri, 13 Jan 2012 07:40:25 -0800 (PST)
Received: from mail49-tx2-R.bigfish.com (10.9.14.235) by
	TX2EHSOBE006.bigfish.com (10.9.40.26) with Microsoft SMTP Server id
	14.1.225.23; Fri, 13 Jan 2012 15:40:24 +0000
Received: from mail49-tx2 (localhost [127.0.0.1])	by mail49-tx2-R.bigfish.com
	(Postfix) with ESMTP id 360A18027B;
	Fri, 13 Jan 2012 15:40:24 +0000 (UTC)
X-SpamScore: -7
X-BigFish: VS-7(zz9371I1432N98dKzz1202hzz8275bhz2dhc1ahc1bh2a8h668h839h8e2h8e3hbe9k61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail49-tx2 (localhost.localdomain [127.0.0.1]) by mail49-tx2
	(MessageSwitch) id 1326469223955558_18921;
	Fri, 13 Jan 2012 15:40:23 +0000 (UTC)
Received: from TX2EHSMHS006.bigfish.com (unknown [10.9.14.254])	by
	mail49-tx2.bigfish.com (Postfix) with ESMTP id CDBE41C0211;
	Fri, 13 Jan 2012 15:40:23 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS006.bigfish.com
	(10.9.99.106) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Fri, 13 Jan 2012 15:40:23 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.86]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0355.003; Fri, 13 Jan 2012 09:40:23 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Gary Thomas <gary@mlbassoc.com>
Thread-Topic: [poky] sstate info
Thread-Index: AQHM0Uq8oQGAPfjfAUCEy4RiWbY3epYJWxqAgAAEiwCAAD7AAIAAAU+AgAEw5wCAAASbgA==
Date: Fri, 13 Jan 2012 15:40:22 +0000
Message-ID: <CAEsOVNeuCt3aqoTm_LG=8TLKZtXQwg+ptYPX8+rc1UaBkfOkDw@mail.gmail.com>
References: <4F0EAE81.8030800@mlbassoc.com>
	<20120112131352.GC3452@jama.jama.net> <4F0EE095.1090709@mlbassoc.com>
	<20120112133749.GD3452@jama.jama.net> <4F0EFD47.1070708@mlbassoc.com>
	<CAEsOVNcLNJ2iD2YANL6z2ris6kjbQ1kbky2onu8hZrNTim=P+Q@mail.gmail.com>
	<4F0F1321.8080706@mlbassoc.com>
	<CAEsOVNfC5t6p3enJdauZDSiPZxDA3MkHCwPMgqkOD8s9qyz3Zg@mail.gmail.com>
	<4F0F4B94.3020604@mlbassoc.com>
	<CABcZAN=HJjD8uq-00s0=_ho6DXRbEFHBEpF-jQQk0J=qGFFq8A@mail.gmail.com>
	<4F104C72.8010605@mlbassoc.com>
In-Reply-To: <4F104C72.8010605@mlbassoc.com>
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
X-List-Received-Date: Fri, 13 Jan 2012 15:40:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <BC087E7CD438704686FA466B8813756C@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 13, 2012 at 9:23 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>>
>> You can't just override DATE in local.conf? I don't see the point in
>> holding off, unless your builds will take till tomorrow to finish?
>
>
> Actually, I didn't think of that. =A0I also didn't see this message
> until Friday (the next day) due to some network issues, so it's moot.
>
> That notwithstanding, I tried it today (new DATE) and it behaved as
> I would like. =A0The only problem was that dbus-1 is still being rebuilt.
> I compared the siginfo files between the two builds and they are
> identical, so I don't know why.

Are the hashes the same too?

-M=


