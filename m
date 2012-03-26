Return-Path: <Andreas.Zoufal@ait.ac.at>
Received: from mail.ait.ac.at (arcss01.ait.ac.at [62.218.164.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E33DE00596
	for <poky@yoctoproject.org>; Mon, 26 Mar 2012 10:12:14 -0700 (PDT)
Received: from Mailbox.arc.local ([169.254.1.137]) by S0HCN2.arc.local ([::1])
	with mapi; Mon, 26 Mar 2012 19:12:13 +0200
From: Zoufal Andreas <Andreas.Zoufal@ait.ac.at>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 26 Mar 2012 19:12:12 +0200
Thread-Topic: [poky] gcc -print-file-name option without path?
Thread-Index: AQHNC2nXNOXaYCxRS0uHRzeRERNfVJZ8z/KQ
Message-ID: <9F69795E29C890408AC2DAF646C89BB379D69623E8@MAILBOX.arc.local>
References: <9F69795E29C890408AC2DAF646C89BB379D69623E5@MAILBOX.arc.local>
	<CAEsOVNdCKXjEhtMGTUVwCcKmexUMy=6RZXTU7B9CBwy3SfLAsg@mail.gmail.com>
	<9F69795E29C890408AC2DAF646C89BB379D69623E6@MAILBOX.arc.local>
	<CAEsOVNfEs7F9RgY4SGvKvrXekK=dSZV9tU168YaS+7zYi3X1YQ@mail.gmail.com>
In-Reply-To: <CAEsOVNfEs7F9RgY4SGvKvrXekK=dSZV9tU168YaS+7zYi3X1YQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: gcc -print-file-name option without path?
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 26 Mar 2012 17:12:14 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes look like that. It is a Kernel build system, I try to use KCFLAGS=3D$CF=
LAGS

-----Original Message-----
From: McClintock Matthew-B29882 [mailto:B29882@freescale.com]=20
Sent: Monday, March 26, 2012 6:28 PM
To: Zoufal Andreas
Cc: poky@yoctoproject.org
Subject: Re: [poky] gcc -print-file-name option without path?

On Mon, Mar 26, 2012 at 11:23 AM, Zoufal Andreas <Andreas.Zoufal@ait.ac.at>=
 wrote:
> Thanks Matthew, yes it seems this is the solution. I tried it manually.
> I wonder, I sourced the environment file and the CFLAGS, LDFLAGS and so o=
n should be set with --sysroot. Can it be, kernel make file overwrite this =
options? And how can I make this option available to kernels makefile witho=
ut modifying it?

Basically, the Makefile for whatever you are building is not passing it thr=
ough.

-M

