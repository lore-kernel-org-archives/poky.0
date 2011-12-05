Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe006.messaging.microsoft.com [216.32.181.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1E6EE0030F
	for <poky@yoctoproject.org>; Mon,  5 Dec 2011 09:18:26 -0800 (PST)
Received: from mail29-ch1-R.bigfish.com (10.43.68.248) by
	CH1EHSOBE008.bigfish.com (10.43.70.58) with Microsoft SMTP Server id
	14.1.225.23; Mon, 5 Dec 2011 17:18:25 +0000
Received: from mail29-ch1 (localhost [127.0.0.1])	by mail29-ch1-R.bigfish.com
	(Postfix) with ESMTP id 9839F5602B8;
	Mon,  5 Dec 2011 17:18:25 +0000 (UTC)
X-SpamScore: -6
X-BigFish: VS-6(zz9371K98dKzz1202hzz8275bhz2dhb2ch2a8h668h839h8e2h8e3h)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 13,
Received: from mail29-ch1 (localhost.localdomain [127.0.0.1]) by mail29-ch1
	(MessageSwitch) id 1323105505139322_12799;
	Mon,  5 Dec 2011 17:18:25 +0000 (UTC)
Received: from CH1EHSMHS015.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.254])	by mail29-ch1.bigfish.com (Postfix) with ESMTP id
	13A8A180047;	Mon,  5 Dec 2011 17:18:25 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS015.bigfish.com
	(10.43.70.15) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 5 Dec 2011 17:18:23 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.83]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.01.0339.002; Mon, 5 Dec 2011 11:18:23 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Gary Thomas <gary@mlbassoc.com>
Thread-Topic: [poky] Can't build glib-2.0
Thread-Index: AQHMs3HjZORPUNQKRkOr0cdFac1Jyg==
Date: Mon, 5 Dec 2011 17:18:22 +0000
Message-ID: <CAEsOVNfgTpENJvuQCjGd+BEytb7W4+MmPgJtrX4YqL9Q1-RXZw@mail.gmail.com>
References: <4EDCFB28.9010402@mlbassoc.com>
In-Reply-To: <4EDCFB28.9010402@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Can't build glib-2.0
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
X-List-Received-Date: Mon, 05 Dec 2011 17:18:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <143A7751CC4B6E4D844BC4533B19BDEA@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 5, 2011 at 11:11 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> NOTE: package glib-2.0-1_2.30.1-r0: task do_install: Started
> ERROR: Function 'do_install' failed (see
> /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2.=
0-1_2.30.1-r0/temp/log.do_install.8610
> for further information)
> ERROR: Logfile of failure stored in:
> /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2.=
0-1_2.30.1-r0/temp/log.do_install.8610
> Log data follows:
> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common=
']
> | ERROR: Function 'do_install' failed (see
> /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2.=
0-1_2.30.1-r0/temp/log.do_install.8610
> for further information)
> |
> /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2.=
0-1_2.30.1-r0/temp/run.do_install.8610:
> line 96: oe_runmake: command not found
> NOTE: package glib-2.0-1_2.30.1-r0: task do_install: Failed

What's on line 96?

-M=


