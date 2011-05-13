Return-Path: <koen@dominion.thruhere.net>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id AFFE54C811BD
	for <poky@yoctoproject.org>; Fri, 13 May 2011 06:05:42 -0500 (CDT)
Received: by fxm7 with SMTP id 7so2790590fxm.35
	for <poky@yoctoproject.org>; Fri, 13 May 2011 04:05:41 -0700 (PDT)
Received: by 10.223.37.153 with SMTP id x25mr1534288fad.117.1305284741502;
	Fri, 13 May 2011 04:05:41 -0700 (PDT)
Received: from [10.17.6.224] ([217.237.167.130])
	by mx.google.com with ESMTPS id f14sm803977fai.17.2011.05.13.04.05.38
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 13 May 2011 04:05:39 -0700 (PDT)
References: <1305157370-3264-1-git-send-email-yanok@emcraft.com>
	<201105131117.29367.paul.eggleton@linux.intel.com>
In-Reply-To: <201105131117.29367.paul.eggleton@linux.intel.com>
Mime-Version: 1.0 (iPhone Mail 8J2)
Message-Id: <A8547C1F-B908-46D2-B77D-9CEEB73E8BCD@dominion.thruhere.net>
X-Mailer: iPhone Mail (8J2)
From: Koen Kooi <koen@dominion.thruhere.net>
Date: Fri, 13 May 2011 13:05:36 +0200
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	Ilya Yanok <yanok@emcraft.com>, "openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: [RFC][PATCH] qt4: add target qmake to qt4-tools package
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
X-List-Received-Date: Fri, 13 May 2011 11:05:43 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Putting it in qttools would be fine by me

Op 13 mei 2011 om 12:17 heeft Paul Eggleton <paul.eggleton@linux.intel.com> h=
et volgende geschreven:

> This exclusion of qmake of course comes from OE, and I'm not sure but I'm=20=

> guessing the reason this was not installed is because qmake is already=20
> provided by the qmake2 package in OE. We don't have that currently in oe-c=
ore=20
> and the question is do we want to bring that over rather than simply=20
> installing it as part of qt4*tools?
>=20
> Cheers,
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

