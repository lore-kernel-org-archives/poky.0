Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 65DCD4C800AC
	for <poky@yoctoproject.org>; Mon, 21 Mar 2011 06:49:47 -0500 (CDT)
Received: by wyb40 with SMTP id 40so7061827wyb.35
	for <poky@yoctoproject.org>; Mon, 21 Mar 2011 04:49:46 -0700 (PDT)
Received: by 10.227.179.138 with SMTP id bq10mr4104937wbb.12.1300708186199;
	Mon, 21 Mar 2011 04:49:46 -0700 (PDT)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id g7sm2718656wby.31.2011.03.21.04.49.44
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 21 Mar 2011 04:49:45 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <63726.2611.qm@web95703.mail.in.yahoo.com>
Date: Mon, 21 Mar 2011 12:49:43 +0100
Message-Id: <93102E2F-F094-409F-AB37-B9887256A219@dominion.thruhere.net>
References: <63726.2611.qm@web95703.mail.in.yahoo.com>
To: Sparsh Wid hope <sparsh150847@yahoo.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky <poky@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: Need help to build poky image for beagle board
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
X-List-Received-Date: Mon, 21 Mar 2011 11:49:48 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 21 mrt 2011, om 11:29 heeft Sparsh Wid hope het volgende geschreven:

> Hi All,
>=20
> I'm trying to build poky image for beagle board.=20

I'll address the 'beagleboard' portion of your question below.

> I got the following error-=20
> FATAL: Error when parsing []: file classes/packaged-staging.bbclass =
not found in =
/home/surya/Surya/pro/POKY/meta-texasinstruments:/home/surya/Surya/pro/POK=
Y/meta
>=20
> I followed the steps below-
>=20
> 1.Downloaded the source=20
> wget -c =
http://git.pokylinux.org/cgit/cgit.cgi/poky/snapshot/poky-laverne-4.0.1.ta=
r.bz2
>=20
> and rename it as POKY.
> 2. Get TI's overlay
> git clone git://github.com/mrchapp/meta-texasinstruments.git
> cd meta-texasinstruments
> git checkout -b gitomapzoom --track origin/gitomapzoom

That's not a TI overlay, it's an overlay done by someone to add the =
dspbridge stuff to OE. If you want better beagleboard support, use the =
following layer:

http://gitorious.org/angstrom/angstrom-layers/

If you don't want to manually resolve all the layer dependencies have a =
look at the scripts mentioned in the readme:

http://gitorious.org/angstrom/angstrom-layers/blobs/master/README

The 'better' in the above is aimed at hw support like cpufreq, DSP, =
1GHz/720MHz, etc. The standard yocto kernel lacks all that because it's =
focussed at different things like 100% POSIX compliance.

regards,

Koen

>=20
> 3. Copy configuration
> cp -p POKY/meta-texasinstruments/conf/misc/local.conf =
POKY/build/conf/local.conf
>=20
> 4. Build!
> cd POKY
> source poky-init-build-env
>=20
> from the link http://elinux.org/BeagleBoard/Poky
> Help me to solve this error.
> Thanks in advance         =20
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


