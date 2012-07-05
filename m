Return-Path: <B29882@freescale.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe004.messaging.microsoft.com [213.199.154.207])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68FE6E006EA
	for <poky@yoctoproject.org>; Thu,  5 Jul 2012 10:43:47 -0700 (PDT)
Received: from mail28-am1-R.bigfish.com (10.3.201.229) by
	AM1EHSOBE006.bigfish.com (10.3.204.26) with Microsoft SMTP Server id
	14.1.225.23; Thu, 5 Jul 2012 17:41:40 +0000
Received: from mail28-am1 (localhost [127.0.0.1])	by mail28-am1-R.bigfish.com
	(Postfix) with ESMTP id 7E698200DB;
	Thu,  5 Jul 2012 17:41:40 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -4
X-BigFish: VS-4(zzbb2dI98dI9371I936eI1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ahbe9i)
Received: from mail28-am1 (localhost.localdomain [127.0.0.1]) by mail28-am1
	(MessageSwitch) id 1341510098137835_3030;
	Thu,  5 Jul 2012 17:41:38 +0000 (UTC)
Received: from AM1EHSMHS001.bigfish.com (unknown [10.3.201.246])	by
	mail28-am1.bigfish.com (Postfix) with ESMTP id 1F7C84C008B;
	Thu,  5 Jul 2012 17:41:38 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS001.bigfish.com
	(10.3.207.101) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 5 Jul 2012 17:41:37 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.163]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.02.0298.005; Thu, 5 Jul 2012 12:43:41 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [poky] [denzil][PATCH 0/9] bitbake fetch improvements backport
	to denzil
Thread-Index: AQHNWtW30o6p2gTeeUKORNK7wVnWBg==
Date: Thu, 5 Jul 2012 17:43:41 +0000
Message-ID: <CAEsOVNcE9FmBaegT8JDN7e=TSxtW8oLXCfWnKoo1m9trK0ByRQ@mail.gmail.com>
References: <cover.1341354357.git.raj.khem@gmail.com>
	<4FF5B4EA.5000302@intel.com> <1341504720.19821.18.camel@ted>
	<CAMKF1sp-HfyDNGoiY+aYUojx02Ywd8E2RZxx8Gs65dktxNAdVg@mail.gmail.com>
In-Reply-To: <CAMKF1sp-HfyDNGoiY+aYUojx02Ywd8E2RZxx8Gs65dktxNAdVg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [denzil][PATCH 0/9] bitbake fetch improvements backport to denzil
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
X-List-Received-Date: Thu, 05 Jul 2012 17:43:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <805679448DF54A40AC5F2E0B70A5C004@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 5, 2012 at 12:30 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>
> On Thursday, July 5, 2012, Richard Purdie wrote:
>>
>> On Thu, 2012-07-05 at 08:38 -0700, Scott Garman wrote:
>> > On 07/03/2012 03:31 PM, Khem Raj wrote:
>> > > On denzil bitbake was still trying to go out to internet for git rep=
os
>> > > when BB_NO_NETWORK was set. This set of backports fix that issue
>> > > and now BB_NO_NETWORK works as expected
>> >
>> > Hi Khem,
>> >
>> > Denzil 1.2.1 is already in release candidate phase and going through Q=
A.
>> > I'm not sure if we can take this for 1.2.1, it may have to wait for
>> > 1.2.2. Richard should probably weigh in here.
>>
>> Its 1.2.2 material at this point but we should try and get things into
>> the branch sooner than later after release.
>>
>> I am worried about this series introducing bugs. We did have some bugs
>> found in some of the series of fetcher changes I made in master.
>
>
> Sure I am fine for it to get more testing before it goes in, my testing h=
as
> been good so far

I'm all for having these in 1.2.2 - I will be doing lots of testing as well=
.

-M


>>
>>
>> Cheers,
>>
>> Richard
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>=


