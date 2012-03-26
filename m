Return-Path: <B29882@freescale.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe002.messaging.microsoft.com [65.55.88.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C11FFE01374
	for <poky@yoctoproject.org>; Mon, 26 Mar 2012 09:27:36 -0700 (PDT)
Received: from mail92-tx2-R.bigfish.com (10.9.14.253) by
	TX2EHSOBE001.bigfish.com (10.9.40.21) with Microsoft SMTP Server id
	14.1.225.23; Mon, 26 Mar 2012 16:27:23 +0000
Received: from mail92-tx2 (localhost [127.0.0.1])	by mail92-tx2-R.bigfish.com
	(Postfix) with ESMTP id 6E2894A053D;
	Mon, 26 Mar 2012 16:27:23 +0000 (UTC)
X-SpamScore: -1
X-BigFish: VS-1(zz9371I98dKzz1202hzzz2dh2a8h668h839h8e2h8e3hbe9k)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail92-tx2 (localhost.localdomain [127.0.0.1]) by mail92-tx2
	(MessageSwitch) id 1332779242273709_17824;
	Mon, 26 Mar 2012 16:27:22 +0000 (UTC)
Received: from TX2EHSMHS017.bigfish.com (unknown [10.9.14.250])	by
	mail92-tx2.bigfish.com (Postfix) with ESMTP id 3CF594800DE;
	Mon, 26 Mar 2012 16:27:22 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS017.bigfish.com
	(10.9.99.117) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Mon, 26 Mar 2012 16:27:21 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.230]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0355.003; Mon, 26 Mar 2012 11:27:33 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Zoufal Andreas <Andreas.Zoufal@ait.ac.at>
Thread-Topic: [poky] gcc -print-file-name option without path?
Thread-Index: AQHNC2nXNOXaYCxRS0uHRzeRERNfVA==
Date: Mon, 26 Mar 2012 16:27:32 +0000
Message-ID: <CAEsOVNfEs7F9RgY4SGvKvrXekK=dSZV9tU168YaS+7zYi3X1YQ@mail.gmail.com>
References: <9F69795E29C890408AC2DAF646C89BB379D69623E5@MAILBOX.arc.local>
	<CAEsOVNdCKXjEhtMGTUVwCcKmexUMy=6RZXTU7B9CBwy3SfLAsg@mail.gmail.com>
	<9F69795E29C890408AC2DAF646C89BB379D69623E6@MAILBOX.arc.local>
In-Reply-To: <9F69795E29C890408AC2DAF646C89BB379D69623E6@MAILBOX.arc.local>
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
X-List-Received-Date: Mon, 26 Mar 2012 16:27:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <B31DF6DDEF7BF947B856AF8D0FDBEEB3@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 26, 2012 at 11:23 AM, Zoufal Andreas
<Andreas.Zoufal@ait.ac.at> wrote:
> Thanks Matthew, yes it seems this is the solution. I tried it manually.
> I wonder, I sourced the environment file and the CFLAGS, LDFLAGS and so o=
n should be set with --sysroot. Can it be, kernel make file overwrite this =
options? And how can I make this option available to kernels makefile witho=
ut modifying it?

Basically, the Makefile for whatever you are building is not passing it thr=
ough.

-M=


