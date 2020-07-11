Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.6409.1594461895744743021
 for <poky@lists.yoctoproject.org>;
 Sat, 11 Jul 2020 03:04:56 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: berg-solutions.de, ip: 140.211.169.56, mailfrom: rberg@berg-solutions.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4013CE01E4C; Sat, 11 Jul 2020 03:04:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [80.237.132.155 listed in list.dnswl.org]
X-Greylist: delayed 1716 seconds by postgrey-1.32 at yocto-www; Sat, 11 Jul 2020 03:04:53 PDT
Received: from wp148.webpack.hosteurope.de (wp148.webpack.hosteurope.de [80.237.132.155])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0D7FE01E07
	for <poky@yoctoproject.org>; Sat, 11 Jul 2020 03:04:53 -0700 (PDT)
Received: from ip1f126570.dynamic.kabel-deutschland.de ([31.18.101.112] helo=roelofs-mbp.fritz.box); authenticated
	by wp148.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1juBvc-0004D4-A2; Sat, 11 Jul 2020 11:36:16 +0200
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [poky] yocto under WSL
From: "Roelof" <rberg@berg-solutions.de>
In-Reply-To: <CAGNn0hYDMk+pSXarT1XbUOPmhyajUvcwTt7FmD78BEmeqZySzg@mail.gmail.com>
Date: Sat, 11 Jul 2020 11:36:15 +0200
Cc: poky@yoctoproject.org
Message-Id: <6753B8CB-00FC-44E2-821D-59E58DA45DE1@berg-solutions.de>
References: <CAGNn0hYDMk+pSXarT1XbUOPmhyajUvcwTt7FmD78BEmeqZySzg@mail.gmail.com>
To: R Srinivasan <s@srin.me>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-bounce-key: webpack.hosteurope.de;rberg@berg-solutions.de;1594461894;f0c0f9ae;
X-HE-SMSGID: 1juBvc-0004D4-A2
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Srini,

you can use docker on: Linux, Windows, Mac OS for Yocto development. =
It's better than a full VM. It starts in seconds, can easily exchange =
files and is probably also faster in build times.

Now it depends on what system you=E2=80=99re running on the laptop:

On Linux: Just install docker, add an image based on ubuntu, mount your =
working directory into docker with -v

On Windows: Upgrade Win 10 to Build 2004 (at least), install WSL2, =
install docker for windows, configure WSL2 in docker for windows, then =
call =E2=80=9Ebash=E2=80=9C in a console. =46rom there proceed as on =
linux (call "docker build" etc.)

On Mac: Install docker for mac, create a volume (this is not needed on =
Windows WSL2 and Linux), use docker on the command line as in =
Linux/Windows (docker build etc.), mount the volume with -v. Also mount =
an output directory, not as a volume, with a second -v, that can be used =
for outputting/inputting files to the docker image. For speed purposes =
two -v are needed on Mac.

Best regards,
R.


>=20
> I got myself a new laptop. Trying to decide whether to setup a VM for =
yocto development.
>=20
> Will the above work?
>=20
> thanks, srini

