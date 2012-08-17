Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe006.messaging.microsoft.com [216.32.181.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CCFDE002A5
	for <poky@yoctoproject.org>; Fri, 17 Aug 2012 11:42:17 -0700 (PDT)
Received: from mail139-ch1-R.bigfish.com (10.43.68.246) by
	CH1EHSOBE015.bigfish.com (10.43.70.65) with Microsoft SMTP Server id
	14.1.225.23; Fri, 17 Aug 2012 18:42:16 +0000
Received: from mail139-ch1 (localhost [127.0.0.1])	by
	mail139-ch1-R.bigfish.com (Postfix) with ESMTP id 6C56B200303;
	Fri, 17 Aug 2012 18:42:16 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail139-ch1 (localhost.localdomain [127.0.0.1]) by mail139-ch1
	(MessageSwitch) id 1345228935617864_30806;
	Fri, 17 Aug 2012 18:42:15 +0000 (UTC)
Received: from CH1EHSMHS012.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.240])	by mail139-ch1.bigfish.com (Postfix) with ESMTP id
	95179340079;	Fri, 17 Aug 2012 18:42:15 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS012.bigfish.com
	(10.43.70.12) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 17 Aug 2012 18:42:15 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.41]) by
	039-SN1MMR1-004.039d.mgd.msft.net ([::1]) with mapi id 14.02.0298.005;
	Fri, 17 Aug 2012 13:42:14 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [poky] [PATCH] poky.conf: update distro ID string for Ubuntu
	12.04.1 LTS
Thread-Index: AQHNfKapi2GHylpQdEax1tcnizpZb5deqNaAgAABmoA=
Date: Fri, 17 Aug 2012 18:42:13 +0000
Message-ID: <CAEsOVNcjJnqmZKw8MP=hDwQzs5-oHgT3eET_0jFGDyaydWJJJQ@mail.gmail.com>
References: <1345200925-3178-1-git-send-email-paul.eggleton@linux.intel.com>
	<CAEsOVNfLjOkFUy682fjcj0L+vKtkaRZ83Rn5CHgGNc3Ppe7=oA@mail.gmail.com>
	<1678065.OJgFiFFamQ@helios>
In-Reply-To: <1678065.OJgFiFFamQ@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] poky.conf: update distro ID string for Ubuntu 12.04.1 LTS
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
X-List-Received-Date: Fri, 17 Aug 2012 18:42:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <BF8F1D5F0D41B3449EAA972FA450B1AA@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 17, 2012 at 1:36 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Friday 17 August 2012 18:32:31 McClintock Matthew-B29882 wrote:
>> On Fri, Aug 17, 2012 at 5:55 AM, Paul Eggleton
>>
>> <paul.eggleton@linux.intel.com> wrote:
>> > If you have 12.04 LTS it will now have been updated to 12.04.1.
>> >
>> > Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
>> > ---
>> >
>> >  meta-yocto/conf/distro/poky.conf |    2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/meta-yocto/conf/distro/poky.conf
>> > b/meta-yocto/conf/distro/poky.conf index cc9fa6c..711087b 100644
>> > --- a/meta-yocto/conf/distro/poky.conf
>> > +++ b/meta-yocto/conf/distro/poky.conf
>> > @@ -69,7 +69,7 @@ SANITY_TESTED_DISTROS ?=3D " \
>> >
>> >              Yocto (Built by Poky 7.0) 1.2 \n \
>> >              Ubuntu 10.04.4 LTS \n \
>> >              Ubuntu 11.10 \n \
>> >
>> > -            Ubuntu 12.04 LTS \n \
>> > +            Ubuntu 12.04.1 LTS \n \
>>
>> Wait, wouldn't you keep the old one too? Or do we just validate poky
>> for the latest only?
>
> The thing is, you would only have the old version if you never ran the no=
rmal
> update process - the minor version update comes down automatically as par=
t of
> that, it's not a distro upgrade.

I understand - but I don't update ;)

-M

>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky=


