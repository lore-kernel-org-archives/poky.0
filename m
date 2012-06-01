Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe001.messaging.microsoft.com [216.32.181.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90522E00747
	for <poky@yoctoproject.org>; Fri,  1 Jun 2012 12:27:25 -0700 (PDT)
Received: from mail129-ch1-R.bigfish.com (10.43.68.237) by
	CH1EHSOBE012.bigfish.com (10.43.70.62) with Microsoft SMTP Server id
	14.1.225.23; Fri, 1 Jun 2012 19:26:53 +0000
Received: from mail129-ch1 (localhost [127.0.0.1])	by
	mail129-ch1-R.bigfish.com (Postfix) with ESMTP id 4A0BA3201C6;
	Fri,  1 Jun 2012 19:26:53 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -6
X-BigFish: VS-6(z10d0kz9371I1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3hf0ahbe9i)
Received: from mail129-ch1 (localhost.localdomain [127.0.0.1]) by mail129-ch1
	(MessageSwitch) id 1338578811908066_14280;
	Fri,  1 Jun 2012 19:26:51 +0000 (UTC)
Received: from CH1EHSMHS005.bigfish.com (snatpool2.int.messaging.microsoft.com
	[10.43.68.230])	by mail129-ch1.bigfish.com (Postfix) with ESMTP id
	D1F96260043;	Fri,  1 Jun 2012 19:26:51 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS005.bigfish.com
	(10.43.70.5) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 1 Jun 2012 19:26:50 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.135]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0298.005; Fri, 1 Jun 2012 14:27:21 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Bob Cochran <yocto@mindchasers.com>
Thread-Topic: [poky] best way to purge stale packages?
Thread-Index: AQHNQCyQi62RgXuWAki6lDe/wJ4Vdw==
Date: Fri, 1 Jun 2012 19:27:21 +0000
Message-ID: <CAEsOVNerOSK+HJX7UvzM_O7t8vt=FEaZ1W5MWmUFeTVcSGe0mw@mail.gmail.com>
References: <4FC90484.6010007@mindchasers.com>
In-Reply-To: <4FC90484.6010007@mindchasers.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: best way to purge stale packages?
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
X-List-Received-Date: Fri, 01 Jun 2012 19:27:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <FFD76F92E2BF2F45A5BB35619F6C2867@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 1, 2012 at 1:05 PM, Bob Cochran <yocto@mindchasers.com> wrote:
> Hello,
>
> Inside my work directory, I have three versions of openssl:
> openssl-1.0.0i-r15.2, openssl-1.0.0i-r0.1, and openssl-1.0.0h-r15.1, with
> the latter two being stale. =A0I also have artifacts from these stale pac=
kages
> in tmp/stamps.
>
> I haven't come along a bitbake option or ancillary script to remove stale
> packages as my recipes bump. =A0Is there one?

./scripts/cleanup-workdir ?

-M=


