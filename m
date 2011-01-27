Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 48D344C8123C
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 17:32:55 -0600 (CST)
Received: by wwb31 with SMTP id 31so2850092wwb.11
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 15:32:54 -0800 (PST)
Received: by 10.227.128.208 with SMTP id l16mr1895136wbs.53.1296171174025;
	Thu, 27 Jan 2011 15:32:54 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id y29sm7076351wbd.22.2011.01.27.15.32.52
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Thu, 27 Jan 2011 15:32:53 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4D41FE3A.7080407@linux.intel.com>
Date: Fri, 28 Jan 2011 00:32:51 +0100
Message-Id: <599CB0CC-7971-4DA6-813B-58B05B48968B@dominion.thruhere.net>
References: <4D41FE3A.7080407@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: quilt-native failing with clean master
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
X-List-Received-Date: Thu, 27 Jan 2011 23:32:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Op 28 jan 2011, om 00:22 heeft Darren Hart het volgende geschreven:

> Trying to build poky-image-sato-live for atom-pc out of current =
master:
>=20
> 	021cf7dabf891316a1e909d3972a5232ca53ec80
>=20
> Results in the following for me:
>=20
> ERROR: Error executing a python function in =
/home/dvhart/source/poky.git/meta/recipes-devtools/quilt/quilt-native_0.48=
.bb:
> NameError: global name 'f' is not defined
>=20
> Is anyone seeing something similar? I've just replaced the memory in =
this machine after discovering it was bad, I suppose it's possible I =
have a corrupted python interpreter or something like that.

could it be this one: =
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Dbb7a42ee4e3487=
24060ec3010ad1a904c17d2d25 ?=

