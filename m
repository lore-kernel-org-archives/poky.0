Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f51.google.com (mail-ww0-f51.google.com [74.125.82.51])
	by mx1.pokylinux.org (Postfix) with ESMTP id 445344C810AF
	for <poky@pokylinux.org>; Fri,  7 Jan 2011 02:37:49 -0600 (CST)
Received: by wwe15 with SMTP id 15so16950689wwe.8
	for <poky@pokylinux.org>; Fri, 07 Jan 2011 00:37:48 -0800 (PST)
Received: by 10.216.48.6 with SMTP id u6mr1440231web.77.1294389467866;
	Fri, 07 Jan 2011 00:37:47 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	f52sm12251074wes.35.2011.01.07.00.37.46
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Fri, 07 Jan 2011 00:37:46 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1294354570.17519.25325.camel@rex>
Date: Fri, 7 Jan 2011 09:37:45 +0100
Message-Id: <DBA49951-F753-42CB-BDEE-1A3B98896465@dominion.thruhere.net>
References: <1294354570.17519.25325.camel@rex>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.1082)
Cc: poky <poky@pokylinux.org>
Subject: Re: RFC/RFT Checksums as part of stamp files
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
X-List-Received-Date: Fri, 07 Jan 2011 08:37:50 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 6 jan 2011, om 23:56 heeft Richard Purdie het volgende geschreven:

> We've been working on checksums and sstate for a while, one of the
> pieces we've not put in place so far is using the checksums in the =
stamp
> files.
>=20
> What this would mean in English is the end of PR bumps since when you
> change the recipe, the checksums of the appropriate tasks change and
> everything automatically rebuilds that changed.
>=20
> It also means if you change something in the core packaging, =
everything
> should repackage and so on.
>=20
> The final key to enabling this is this commit:
>=20
> =
http://git.pokylinux.org/cgit.cgi/poky-contrib/commit/?h=3Drpurdie/bitbake=
-wip&id=3Db82259b901cae11b0e5715a92a580c9432af52cc
>=20
> This hasn't been merged to master yet but we should discuss when this
> change could/should be merged and under what criteria.
>=20
> I've only just started testing full builds with the change myself so
> keep that in mind. I'd appreciate testing but the change is still very
> new and likely has bugs to iron out.
>=20
> I'm also aware that this idea isn't going to be universally liked,
> particularly I can guess that Koen is going to have concerns about =
this
> and Angstrom since the lack of PR bumps means package feeds could =
start
> to suffer.

You saved me from writing a lengthy email about that :)=20

> My proposal for dealing with this will be to start having the =
packaging
> backend take ownership of PE and PR fields. These should be auto
> incremented when the build changes. That in itself is easy enough if =
you
> have one build area, the tricky bit is where you have multiple build
> sources feeding into a common packages repo like Angstrom.
>=20
> For this we're going to need some kind of network service that takes a
> version and provides the PE/PR values back, incrementing them each =
time
> it sees a new version/checksum.

As a simpler short term solution, can the build "master" write the info =
to disk (e.g. sqlite) so we can put it in a layer and build "slaves" =
would just read that back? That we we only need a variable to either =
read (slaves) or write (master) to that file. It also involves as little =
as possible network access, since it sits in the metadata git.

regards,

Koen=

