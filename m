Return-Path: <Andreas.Zoufal@ait.ac.at>
Received: from mail.ait.ac.at (arcss01.ait.ac.at [62.218.164.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC632E01374
	for <poky@yoctoproject.org>; Mon, 26 Mar 2012 09:23:56 -0700 (PDT)
Received: from Mailbox.arc.local ([169.254.1.137]) by S0HCN2.arc.local ([::1])
	with mapi; Mon, 26 Mar 2012 18:23:56 +0200
From: Zoufal Andreas <Andreas.Zoufal@ait.ac.at>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 26 Mar 2012 18:23:55 +0200
Thread-Topic: [poky] gcc -print-file-name option without path?
Thread-Index: AQHNC2nXNOXaYCxRS0uHRzeRERNfVJZ8v7gw
Message-ID: <9F69795E29C890408AC2DAF646C89BB379D69623E6@MAILBOX.arc.local>
References: <9F69795E29C890408AC2DAF646C89BB379D69623E5@MAILBOX.arc.local>
	<CAEsOVNdCKXjEhtMGTUVwCcKmexUMy=6RZXTU7B9CBwy3SfLAsg@mail.gmail.com>
In-Reply-To: <CAEsOVNdCKXjEhtMGTUVwCcKmexUMy=6RZXTU7B9CBwy3SfLAsg@mail.gmail.com>
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
X-List-Received-Date: Mon, 26 Mar 2012 16:23:57 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Matthew, yes it seems this is the solution. I tried it manually.=20
I wonder, I sourced the environment file and the CFLAGS, LDFLAGS and so on =
should be set with --sysroot. Can it be, kernel make file overwrite this op=
tions? And how can I make this option available to kernels makefile without=
 modifying it?
Andi=20

-----Original Message-----
From: McClintock Matthew-B29882 [mailto:B29882@freescale.com]=20
Sent: Monday, March 26, 2012 6:02 PM
To: Zoufal Andreas
Cc: poky@yoctoproject.org
Subject: Re: [poky] gcc -print-file-name option without path?

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

-M

