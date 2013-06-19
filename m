Return-Path: <Teemu.Keskinarkaus@Maximatecc.com>
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0475E014E2
	for <poky@yoctoproject.org>; Tue, 18 Jun 2013 22:56:12 -0700 (PDT)
Received: from [216.82.249.131:24487] by server-3.bemta-12.messagelabs.com id
	67/A0-03515-BF741C15; Wed, 19 Jun 2013 05:56:11 +0000
X-Env-Sender: Teemu.Keskinarkaus@Maximatecc.com
X-Msg-Ref: server-15.tower-28.messagelabs.com!1371621370!27654433!1
X-Originating-IP: [207.250.73.122]
X-StarScan-Received: 
X-StarScan-Version: 6.9.6; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 884 invoked from network); 19 Jun 2013 05:56:11 -0000
Received: from unknown (HELO ammail.actuant.com) (207.250.73.122)
	by server-15.tower-28.messagelabs.com with AES128-SHA encrypted SMTP;
	19 Jun 2013 05:56:11 -0000
Received: from AMDTCEX12.actuant.pri ([fe80::1ff:ff4d:9ac5:22e8]) by
	AMDTCEX11.actuant.pri ([fe80::f86b:7a40:d71b:bb92%21]) with mapi id
	14.02.0342.003; Wed, 19 Jun 2013 00:56:08 -0500
From: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@Maximatecc.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] Creating library
Thread-Index: Ac5snwom99rGKKbESGy3P3MBnpMK9wAMQ7uAAAfCihA=
Date: Wed, 19 Jun 2013 05:56:07 +0000
Message-ID: <83DB4EC8FADD45428E3CC4E3664761FD015B23F8@AMDTCEX12.actuant.pri>
References: <83DB4EC8FADD45428E3CC4E3664761FD015B210C@AMDTCEX12.actuant.pri>
	<51C134AB.5030007@mlbassoc.com>
In-Reply-To: <51C134AB.5030007@mlbassoc.com>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.100]
x-ems-proccessed: 52bwn4SPvyFdxH+yW9O0UA==
x-ems-stamp: Uw0t9HG3hJiALDSK1W7NxQ==
MIME-Version: 1.0
Subject: Re: Creating library
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 19 Jun 2013 05:56:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

That helped a little. Now the build process didn't end with an error, but t=
he image itself doesn't have the library. I think the deb-package is used t=
o install stuff to the actual image that is being generated and not the dir=
ectory that is under build-directory.

So, real fix would be figure out somehow how to get the library.deb to be g=
enerated properly instead just those those dev/dbg-packages.

I tried looking for example under poky, but majority, if not all, of them u=
se autotools so they are not that much help.

-Teemu Keskinarkaus

-----Original Message-----
From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Gary Thomas
Sent: 19. kes=E4kuuta 2013 7:34
To: poky@yoctoproject.org
Subject: Re: [poky] Creating library

On 2013-06-19 04:45, Keskinarkaus, Teemu wrote:
> Hi,
>
> Hopefully this is the correct mailing list.
>
> I'm using Yocto/Poky to create Linux distribution and so far everything h=
as gone rather smoothly, but now I have come up to a problem that I cannot =
seem to be able to fix.
>
> I'm adding existing old software to Yocto/Poky and they don't use autotoo=
ls so there is ready made Makefile that does everything.
>
> Problem comes with the library that is compiled that way too. Makefile
> has targets 'all' and 'install' that does the compilation and
> installation. Library compiles ok and installs ok too under -build direct=
ory, but when bitbake creates the deb-packages it creates only library-dev.=
deb, library-dbg.deb and library-staticdev.deb. The package library.deb doe=
s not get created and that causes build to fail. I looked the logs and bitb=
ake says that NOTE: not creating empty library.deb - package. or something =
like that.
>
> I've tried anything that comes to my mind and also searched
> documentation and google and looked other libraries that are in
> yocto/poky, but just cannot get that work. I've also tried add FILES_${PN=
} to the recipe to force the files in the library.deb package, but that did=
n't help.  Makefile installs the files to DESTDIR and files are installed j=
ust fine in the temporary image that is created under build-directory.
>
> For some reason, maybe because lack of autotools, I had to set S and B
> dir to point to the dir where library sources are. Would that be causing =
the problems even though the library gets installed to image in build-direc=
tory?
>
> Library.deb isn't the actual name, but just an example.
>
> I wouldn't want to convert all the software to use autotools since
> there are quite many of them and they are used in other projects as well =
so it would be rather big task. Any idea how to get that library thing to w=
ork?

See if this helps; tell bitbake to allow empty packages like this:
   ALLOW_EMPTY_${PN} =3D "1"
Put this line in your recipe and you should be able to move forward.

>
> I have few kernel modules where I also had to set S and B to point the
> dir where the kernel module sources are, but in those cases there were no=
 problems. Only the library gives me hard time.
>
> -Teemu Keskinarkaus

--
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------
_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky

________________________________

Actuant Corporation Email Notice

This message is intended only for the use of the Addressee and may contain =
information that is PRIVILEGED and/or CONFIDENTIAL.
This email is intended only for the personal and confidential use of the re=
cipient(s) named above. If the reader of this email is not an intended reci=
pient, you have received this email in error and any review, dissemination,=
 distribution or copying is strictly prohibited.
If you have received this email in error, please notify the sender immediat=
ely by return mail and permanently delete the copy you received.

Thank you.

