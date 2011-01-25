Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ew0-f48.google.com (mail-ew0-f48.google.com
	[209.85.215.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 63ACE4C8085F
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 11:52:39 -0600 (CST)
Received: by ewy20 with SMTP id 20so2686273ewy.35
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 09:52:38 -0800 (PST)
Received: by 10.216.184.66 with SMTP id r44mr59636wem.110.1295977957804;
	Tue, 25 Jan 2011 09:52:37 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id n78sm7291905weq.27.2011.01.25.09.52.36
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 25 Jan 2011 09:52:36 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1295958916.5641.8.camel@scimitar>
Date: Tue, 25 Jan 2011 18:52:35 +0100
Message-Id: <3E839C39-204D-41DE-A334-E10C2761F807@dominion.thruhere.net>
References: <1295958916.5641.8.camel@scimitar>
To: Joshua Lock <josh@linux.intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky <poky@yoctoproject.org>
Subject: Re: Please ensure you are using layout variables in recipes
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
X-List-Received-Date: Tue, 25 Jan 2011 17:52:40 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 25 jan 2011, om 13:35 heeft Joshua Lock het volgende geschreven:

> Hi all,
>=20
> When creating/editing recipes can we please ensure consistent use of
> layout variables, rather than absolute paths.
>=20
> For example use:
>=20
> ${bindir}/foo
> ${datadir}/bar
> and
> ${base_sbindir}/baz
>=20
> rather than:
>=20
> /usr/bin/foo
> /usr/share/bar
> and
> /sbin/baz
>=20
> The layout variables are defined in bitbake.conf and we should have
> pretty much everything we need there, if you feel some are missing
> please submit a patch (we've recently added some for cross and =
nativesdk
> use, for example).

Some care needs to be taking with that, though, since things like =
initscripts, config files and udev rules might have the hardcoded paths =
inside. In OE the 'micro' distro sets $prefix to "" instead of "/usr", =
which uncovered a world of hurt. Adding a sed s:usr/bin:${bindir}:g -i =
initscript to do_install is an easy enough way to fix it :)

regards,

Koen=

