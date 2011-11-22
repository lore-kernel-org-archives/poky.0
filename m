Return-Path: <B29882@freescale.com>
Received: from VA3EHSOBE010.bigfish.com (mail-va3.bigfish.com [216.32.180.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 107DAE0059C
	for <poky@yoctoproject.org>; Tue, 22 Nov 2011 09:49:35 -0800 (PST)
Received: from mail109-va3-R.bigfish.com (10.7.14.253) by
	VA3EHSOBE010.bigfish.com (10.7.40.12) with Microsoft SMTP Server id
	14.1.225.22; Tue, 22 Nov 2011 17:48:55 +0000
Received: from mail109-va3 (localhost [127.0.0.1])	by
	mail109-va3-R.bigfish.com (Postfix) with ESMTP id 1FD817002DA;
	Tue, 22 Nov 2011 17:54:08 +0000 (UTC)
X-SpamScore: -15
X-BigFish: VS-15(zzbb2dK9371K1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 0,
Received: from mail109-va3 (localhost.localdomain [127.0.0.1]) by mail109-va3
	(MessageSwitch) id 132198444833473_23831;
	Tue, 22 Nov 2011 17:54:08 +0000 (UTC)
Received: from VA3EHSMHS011.bigfish.com (unknown [10.7.14.254])	by
	mail109-va3.bigfish.com (Postfix) with ESMTP id F1EF46C0048;
	Tue, 22 Nov 2011 17:54:07 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS011.bigfish.com
	(10.7.99.21) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Tue, 22 Nov 2011 17:48:53 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.83]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.01.0339.002; Tue, 22 Nov 2011 11:49:32 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Saul Wold <sgw@linux.intel.com>
Thread-Topic: [poky] [PATCH] Self Hosted Image: Added Task and Images
Thread-Index: AQHMqT8W73szdQ/pYkuMZnt6G5QZEw==
Date: Tue, 22 Nov 2011 17:49:32 +0000
Message-ID: <CAEsOVNcOXXjXKivhWnCeHOyMubDFXABaFXatjp+LL0iPHpjCjQ@mail.gmail.com>
References: <1321058705-8230-1-git-send-email-sgw@linux.intel.com>
	<4ECBBEBF.2030308@linux.intel.com>
	<CE673F23-1499-4A3D-BF35-79D7B0455A0F@dominion.thruhere.net>
	<4ECBD9C4.50005@linux.intel.com>
In-Reply-To: <4ECBD9C4.50005@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] Self Hosted Image: Added Task and Images
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
X-List-Received-Date: Tue, 22 Nov 2011 17:49:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <34E10C08962AC340BBE1F036F382FE59@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 22, 2011 at 11:20 AM, Saul Wold <sgw@linux.intel.com> wrote:
> On 11/22/2011 08:27 AM, Koen Kooi wrote:
>>
>> Op 22 nov. 2011, om 16:24 heeft Saul Wold het volgende geschreven:
>>
>>>
>>> Ping?
>>
>> put it in oe-core?
>>
>
> Yeah, I guess it could be core, but I was initial thinking it was buildin=
g
> Poky and was not sure if everyone would be interested. It is also not ver=
y
> stable yet, it will build minimal with a couple more patches.

I'm interested in this..

-M=


