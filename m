Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe002.messaging.microsoft.com [216.32.181.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D082DE013C2
	for <poky@yoctoproject.org>; Mon, 26 Mar 2012 09:02:32 -0700 (PDT)
Received: from mail149-ch1-R.bigfish.com (10.43.68.236) by
	CH1EHSOBE014.bigfish.com (10.43.70.64) with Microsoft SMTP Server id
	14.1.225.23; Mon, 26 Mar 2012 16:02:19 +0000
Received: from mail149-ch1 (localhost [127.0.0.1])	by
	mail149-ch1-R.bigfish.com (Postfix) with ESMTP id B8B001A05AF;
	Mon, 26 Mar 2012 16:02:19 +0000 (UTC)
X-SpamScore: -2
X-BigFish: VS-2(zz9371I1be0I98dKzz1202hzzz2dh2a8h668h839h8e2h8e3hbe9k)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail149-ch1 (localhost.localdomain [127.0.0.1]) by mail149-ch1
	(MessageSwitch) id 1332777737328347_27458;
	Mon, 26 Mar 2012 16:02:17 +0000 (UTC)
Received: from CH1EHSMHS005.bigfish.com (snatpool2.int.messaging.microsoft.com
	[10.43.68.230])	by mail149-ch1.bigfish.com (Postfix) with ESMTP id
	4C0C4140046;	Mon, 26 Mar 2012 16:02:17 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS005.bigfish.com
	(10.43.70.5) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 26 Mar 2012 16:02:16 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.230]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0355.003; Mon, 26 Mar 2012 11:02:27 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Zoufal Andreas <Andreas.Zoufal@ait.ac.at>
Thread-Topic: [poky] gcc -print-file-name option without path?
Thread-Index: AQHNC2nXNOXaYCxRS0uHRzeRERNfVA==
Date: Mon, 26 Mar 2012 16:02:26 +0000
Message-ID: <CAEsOVNdCKXjEhtMGTUVwCcKmexUMy=6RZXTU7B9CBwy3SfLAsg@mail.gmail.com>
References: <9F69795E29C890408AC2DAF646C89BB379D69623E5@MAILBOX.arc.local>
In-Reply-To: <9F69795E29C890408AC2DAF646C89BB379D69623E5@MAILBOX.arc.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: gcc -print-file-name option without path?
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
X-List-Received-Date: Mon, 26 Mar 2012 16:02:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <8E480EB9428D9F4A9198D8DA35D85676@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 26, 2012 at 10:57 AM, Zoufal Andreas
<Andreas.Zoufal@ait.ac.at> wrote:
> Hello,
> We am starting to use the Yocto/Poky toolchain as replacement for ELDK5. =
Trying to compile our existing kernel fails, but it worked fine with ELDK5.=
 Doing some investigation we recognized a different behavior which I guess =
is the reason for the problem: using the cross compiler to show the path of=
 the libgcc.a with the option "-print-libgcc-file-name" doesn't show the fu=
ll path, only the filename itself! But ELDK5 does.
> I'm using poky-1.2_M3.final for arm, and the build folder is in my home d=
irectory, like:
> /home/user/path/to/project/poky/build/tmp/sysroots =A0 ...and so on
> Am I doing something wrong? gcc --help says that the -print-file-name sho=
uld return the full path, which is even not true.
> Kind regards, Andi

Andi,

Make sure you are passing the --sysroot option to gcc, this is the
default CC used in Yocto. Then it should find libgcc OK.

-M=


