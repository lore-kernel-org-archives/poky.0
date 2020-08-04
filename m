Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web12.1142.1596528773149675408
 for <poky@lists.yoctoproject.org>;
 Tue, 04 Aug 2020 01:12:53 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4BLSDL4Ct1z5tlB;
	Tue,  4 Aug 2020 10:12:50 +0200 (CEST)
Date: Tue, 4 Aug 2020 10:12:49 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Ashish <ashishm@mvista.com>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] ERROR: Kernel configuration is invalid
Message-ID: <20200804081248.ga734e2my62cl5gu@qschulz>
References: <E02h.1596524350140620056.DK0t@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <E02h.1596524350140620056.DK0t@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Ashish,

On Mon, Aug 03, 2020 at 11:59:10PM -0700, Ashish wrote:
> Hi All ,
>=20
> I am trying to build an out-of-tree hello-world module=A0 using the RPI=
4 setup & compile an hello-world kernel module
>=20
> A) Steps followed :
> 1) Create an basic hello-world-module.c & Makefile in any known locatio=
n ( say custom layer )

First, make a recipe for those.

> 2) $ bitbake -c devshell virtual/kernel
> $ make M=3D<Location of module created in step 1 above>=A0 modules
>=20

I'd have used devtool for doing that and not devshell but I've almost
never used devshell so I might be biased :)

devtool modify hello-world-module

Then, go into the devtool workspace and modify step by step until you've
something that compiles with devtool build hello-world-module.

https://www.youtube.com/watch?v=3DzYyE-xah7jg for a tutorial on the
minimal out of tree kernel driver compilation/recipe.

Let us know if you hit issues after this :)

Cheers,
Quentin
