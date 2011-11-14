Return-Path: <B29882@freescale.com>
Received: from TX2EHSOBE007.bigfish.com (tx2ehsobe004.messaging.microsoft.com
	[65.55.88.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CA77E00305
	for <poky@yoctoproject.org>; Mon, 14 Nov 2011 09:07:33 -0800 (PST)
Received: from mail96-tx2-R.bigfish.com (10.9.14.244) by
	TX2EHSOBE007.bigfish.com (10.9.40.27) with Microsoft SMTP Server id
	14.1.225.22; Mon, 14 Nov 2011 17:07:01 +0000
Received: from mail96-tx2 (localhost.localdomain [127.0.0.1])	by
	mail96-tx2-R.bigfish.com (Postfix) with ESMTP id B23EA11004E4;
	Mon, 14 Nov 2011 17:07:17 +0000 (UTC)
X-SpamScore: -12
X-BigFish: VS-12(zz9371K1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 0,
Received: from mail96-tx2 (localhost.localdomain [127.0.0.1]) by mail96-tx2
	(MessageSwitch) id 1321290398479303_32494;
	Mon, 14 Nov 2011 17:06:38 +0000 (UTC)
Received: from TX2EHSMHS029.bigfish.com (unknown [10.9.14.238])	by
	mail96-tx2.bigfish.com (Postfix) with ESMTP id 6539E72804E;
	Mon, 14 Nov 2011 17:06:38 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS029.bigfish.com
	(10.9.99.129) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Mon, 14 Nov 2011 17:06:22 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.83]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.01.0339.002; Mon, 14 Nov 2011 11:06:51 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: chinmaya hoshing <cahoshing@gmail.com>
Thread-Topic: [poky] Error in compilation for Cpluff library
Thread-Index: AQHMou/MFXX60zMkaUiXihMwlpwXjw==
Date: Mon, 14 Nov 2011 17:06:50 +0000
Message-ID: <CAEsOVNcXnvQ8gqLJS8m=c0C692JtrxuD0YRAYLmxHTLuWBwjWg@mail.gmail.com>
References: <CAMTw45A5mG11yxRKF16A8YVA4eG420gRk6hBCnchbuiNRcg3fw@mail.gmail.com>
In-Reply-To: <CAMTw45A5mG11yxRKF16A8YVA4eG420gRk6hBCnchbuiNRcg3fw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Error in compilation for Cpluff library
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
X-List-Received-Date: Mon, 14 Nov 2011 17:07:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <DAE9A7822E836842B58DBD5D2BA119C6@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 14, 2011 at 5:29 AM, chinmaya hoshing <cahoshing@gmail.com> wro=
te:
> | ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric
> -mfpmath=3Dsse --sysroot=3D/home/poky/build/tmp/sysroots/fishriver -share=
d
> =A0.libs/psymbol.o .libs/pscan.o .libs/ploader.o .libs/pinfo.o
> .libs/pcontrol.o .libs/serial.o .libs/logging.o .libs/context.o
> .libs/cpluff.o .libs/util.o .libs/list.o .libs/hash.o .libs/thread_posix.=
o
> =A0-L/home/poky/build/tmp/sysroots/fishriver/usr/lib /usr/lib/libexpat.so=
 -ldl
> =A0-m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfpmath=3Dsse -Wl,-soname
> -Wl,libcpluff.so.0 -o .libs/libcpluff.so.0.0.3
> | /usr/lib/libexpat.so: could not read symbols: File in wrong format
> | collect2: ld returned 1 exit status
> | make[3]: *** [libcpluff.la] Error 1
> | make[3]: Leaving directory
> `/home/poky/build/tmp/work/atom-poky-linux/cpluff-0.1.3-r0/cpluff-0.1.3/l=
ibcpluff'
> | make[2]: *** [all-recursive] Error 1
> | make[2]: Leaving directory
> `/home/poky/build/tmp/work/atom-poky-linux/cpluff-0.1.3-r0/cpluff-0.1.3/l=
ibcpluff'
> | make[1]: *** [all-recursive] Error 1
> | make[1]: Leaving directory
> `/home/poky/build/tmp/work/atom-poky-linux/cpluff-0.1.3-r0/cpluff-0.1.3'
> | make: *** [all] Error 2
> | FATAL: oe_runmake failed
> | ERROR: Function 'do_compile' failed (see
> /home/poky/build/tmp/work/atom-poky-linux/cpluff-0.1.3-r0/temp/log.do_com=
pile.546
> for further information)
> NOTE: package cpluff-0.1.3-r0: task do_compile: Failed
> ERROR: Task 8
> (/home/sct/black_gigabyte/poky/meta-sct/recipes-sct/cpluff/cpluff_0.1.3.b=
b,
> do_compile) failed with exit code '1'
>
> After going through the error it seems that during compilation it is taki=
ng
> the expat library from my system instead it should take from poky
> environment =A0so throwing error.
> So what changes should I make in my recipe .Can any one help me too solve
> the error.

You need to edit the Makefile for the project either via a patch or
EXTRA_OEMAKE options to override where this build systmems looks for
things to link against.

-M=


