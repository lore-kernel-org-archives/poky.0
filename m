Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web10.512.1595518312600115706
 for <poky@lists.yoctoproject.org>;
 Thu, 23 Jul 2020 08:31:53 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4BCGXP6lpzz5tlB;
	Thu, 23 Jul 2020 17:31:49 +0200 (CEST)
Date: Thu, 23 Jul 2020 17:31:48 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: kar_947@hotmail.fr
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] How to install Compiler g++ in Yocto #yocto #g++ #gcc #compiler #package #library #poky
Message-ID: <20200723153148.fqszi7imsnv2uakn@qschulz>
References: <20200723150108.th2jqqu3injaegzq@qschulz>
 <10615.1595517378175516979@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <10615.1595517378175516979@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 23, 2020 at 08:16:18AM -0700, kar_947@hotmail.fr wrote:
> Hi,
>=20
> First of all, thank you for sending me vid=E9os, i really need to learn=
 more about Yocto Project.
>=20
> Then, you told me that it's better for me to use a "normal" distributio=
n but i dont have the choice. I actually use an IMX6 SMARC com board and =
the distribution is a Yocto.
> So i can't use an other distribution.
>=20

There's always a choice ;) Except if your board is locked with vendors
keys (and even... then there's probably security breaches).

You can just replace Yocto with Buildroot (which would have the same
issue with package management AFAICT). Or replace the Yocto on your
board currently with your own. Ask your vendor about this, they'll
probably provide layers and if lucky instructions.

> Moreover, why the yocto Project is not like Ubuntu? I mean, it"s REALLY=
 easier to install package with a command like "apt-get install mypackage=
". Why Yocto complicates the thing?

It's REALLY easier for the user. Absolutely nightmare-inducing for the
people providing you the distro.

Do you think you could use Fedora packages on Ubuntu? Same for Yocto.
Except, basically every build ever done by different companies (and even
for different projects or releases within a company) are a different
distro. So you'd have "Fedora" for one, "Ubuntu" for another, "Arch" for
a third, whatever. They're **not** compatible in any way, and you
understand that because of the Fedora/Ubuntu comparison.

Yocto is not complicating the thing, it is targetting a different
segment of the embedded market. You build a distro, you control
everything from it. You **own** whatever you build and don't rely on
third party. There are different needs and use-cases and Ubuntu/normal
desktop distro aren't doing what Yocto can (not 1:1 anyway) and
vice-versa.

> In yocto project, i need to modify some files and recompile all the BSP=
 and Kernel Yocto, just for adding a package like "g++"?
>=20

Simply put, yes. Or you maintain your own package feed for your own
distribution but that's a rather advanced topic.

Quentin
