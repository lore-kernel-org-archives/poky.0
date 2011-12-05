Return-Path: <B29882@freescale.com>
Received: from VA3EHSOBE004.bigfish.com (va3ehsobe004.messaging.microsoft.com
	[216.32.180.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C067E00747
	for <poky@yoctoproject.org>; Mon,  5 Dec 2011 09:24:41 -0800 (PST)
Received: from mail23-va3-R.bigfish.com (10.7.14.249) by
	VA3EHSOBE004.bigfish.com (10.7.40.24) with Microsoft SMTP Server id
	14.1.225.23; Mon, 5 Dec 2011 17:24:40 +0000
Received: from mail23-va3 (localhost [127.0.0.1])	by mail23-va3-R.bigfish.com
	(Postfix) with ESMTP id E21FA44032B;
	Mon,  5 Dec 2011 17:24:39 +0000 (UTC)
X-SpamScore: -6
X-BigFish: VS-6(zzc89bh1432Nzz1202hzzz2dhb2ch2a8h668h839h8e2h8e3h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 0,
Received: from mail23-va3 (localhost.localdomain [127.0.0.1]) by mail23-va3
	(MessageSwitch) id 1323105819681533_27054;
	Mon,  5 Dec 2011 17:23:39 +0000 (UTC)
Received: from VA3EHSMHS029.bigfish.com (unknown [10.7.14.247])	by
	mail23-va3.bigfish.com (Postfix) with ESMTP id 7BC44180047;
	Mon,  5 Dec 2011 17:23:39 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS029.bigfish.com
	(10.7.99.39) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 5 Dec 2011 17:23:25 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.83]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0339.002; Mon, 5 Dec 2011 11:23:24 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: =?iso-8859-1?Q?Matthias_D=FCbon?= <mail@ing-duebon.de>
Thread-Topic: [poky] external toolchain example
Thread-Index: AQHMs3KXyAxcoqnUQ0yhdMFSdJmV+A==
Date: Mon, 5 Dec 2011 17:23:24 +0000
Message-ID: <CAEsOVNcoydm=-ztxsvVPcf1WyComD5upCf3A7qA1C4H3t8wmbQ@mail.gmail.com>
References: <CANv1b=2D8rkzkDpf8Xbwau4_JwPP6_Q_bRicPofxafCnKxe9=A@mail.gmail.com>
In-Reply-To: <CANv1b=2D8rkzkDpf8Xbwau4_JwPP6_Q_bRicPofxafCnKxe9=A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: external toolchain example
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
X-List-Received-Date: Mon, 05 Dec 2011 17:24:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <B180EB5299B7134C8E732A375BF333DE@freescale.net>
Content-Transfer-Encoding: quoted-printable

2011/12/5 Matthias D=FCbon <mail@ing-duebon.de>:
> Hello,
>
> did anyone ever try to use the external example toolchain "csl-2008q3-72"
> (TCMODE =3D "external-csl2008q3")
> When building bitbake core-image-minimal I got an error in do_configure
> of=A0external-csl-toolchain_2008q3-72.bb:
>
> "sed: can't read
> /home/matthias/poky/build/tmp/work/armv5te-none-linux-gnueabi/external-cs=
l-toolchain-2008q3-72-r1/external-csl-toolchain-2008q3-72/elf/ldd.bash.in:
> No such file or directory
>
> Should I try to debug this? Is it of any interest?

I'm not sure if this is currently working. I think some have expressed
interest in it working again...

-M=


