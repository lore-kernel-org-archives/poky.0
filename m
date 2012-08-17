Return-Path: <B29882@freescale.com>
Received: from db3outboundpool.messaging.microsoft.com
	(db3ehsobe002.messaging.microsoft.com [213.199.154.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08217E0027F
	for <poky@yoctoproject.org>; Fri, 17 Aug 2012 11:33:00 -0700 (PDT)
Received: from mail8-db3-R.bigfish.com (10.3.81.235) by
	DB3EHSOBE008.bigfish.com (10.3.84.28) with Microsoft SMTP Server id
	14.1.225.23; Fri, 17 Aug 2012 18:32:58 +0000
Received: from mail8-db3 (localhost [127.0.0.1])	by mail8-db3-R.bigfish.com
	(Postfix) with ESMTP id 2BF572E00D2;
	Fri, 17 Aug 2012 18:32:58 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i1155h)
Received: from mail8-db3 (localhost.localdomain [127.0.0.1]) by mail8-db3
	(MessageSwitch) id 1345228376550882_17463;
	Fri, 17 Aug 2012 18:32:56 +0000 (UTC)
Received: from DB3EHSMHS007.bigfish.com (unknown [10.3.81.242])	by
	mail8-db3.bigfish.com (Postfix) with ESMTP id 81E1A220047;
	Fri, 17 Aug 2012 18:32:56 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS007.bigfish.com
	(10.3.87.107) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 17 Aug 2012 18:32:51 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.41]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.02.0298.005; Fri, 17 Aug 2012 13:32:32 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [poky] [PATCH] poky.conf: update distro ID string for Ubuntu
	12.04.1 LTS
Thread-Index: AQHNfKapi2GHylpQdEax1tcnizpZbw==
Date: Fri, 17 Aug 2012 18:32:31 +0000
Message-ID: <CAEsOVNfLjOkFUy682fjcj0L+vKtkaRZ83Rn5CHgGNc3Ppe7=oA@mail.gmail.com>
References: <1345200925-3178-1-git-send-email-paul.eggleton@linux.intel.com>
In-Reply-To: <1345200925-3178-1-git-send-email-paul.eggleton@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Fri, 17 Aug 2012 18:33:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <5F7FBD200E8F684395AFCC62A68D8CD0@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 17, 2012 at 5:55 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> If you have 12.04 LTS it will now have been updated to 12.04.1.
>
> Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
> ---
>  meta-yocto/conf/distro/poky.conf |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/po=
ky.conf
> index cc9fa6c..711087b 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -69,7 +69,7 @@ SANITY_TESTED_DISTROS ?=3D " \
>              Yocto (Built by Poky 7.0) 1.2 \n \
>              Ubuntu 10.04.4 LTS \n \
>              Ubuntu 11.10 \n \
> -            Ubuntu 12.04 LTS \n \
> +            Ubuntu 12.04.1 LTS \n \

Wait, wouldn't you keep the old one too? Or do we just validate poky
for the latest only?

-M

>              Fedora release 15 (Lovelock) \n \
>              Fedora release 16 (Verne) \n \
>              Fedora release 17 (Beefy Miracle) \n \
> --
> 1.7.9.5
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky=


