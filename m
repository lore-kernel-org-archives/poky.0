Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0EE4F4C81069
	for <poky@yoctoproject.org>; Tue, 14 Dec 2010 06:33:01 -0600 (CST)
Received: by wye20 with SMTP id 20so454915wye.35
	for <poky@yoctoproject.org>; Tue, 14 Dec 2010 04:33:00 -0800 (PST)
Received: by 10.216.145.147 with SMTP id p19mr3043780wej.86.1292329980840;
	Tue, 14 Dec 2010 04:33:00 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id p4sm25289wej.4.2010.12.14.04.32.59
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 14 Dec 2010 04:32:59 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <cover.1292320885.git.ke.yu@intel.com>
Date: Tue, 14 Dec 2010 13:32:59 +0100
Message-Id: <657D8911-61AF-4B18-A02E-08007B063534@dominion.thruhere.net>
References: <cover.1292320885.git.ke.yu@intel.com>
To: Yu Ke <ke.yu@intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] SRC_URI checksum support v2
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
X-List-Received-Date: Tue, 14 Dec 2010 12:33:02 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 14 dec 2010, om 11:01 heeft Yu Ke het volgende geschreven:

> This patch add SRC_URI checksum support. With this patch,fetcher
> can verify the MD5 and SHA256 checksum of download src with the
> value defined in recipes SRC_URI.

Awesome, I have been waiting for that!

>=20
> This is the V2 patch. The major change compared to V1 is:
> moving the logic from poky bbclass to bitbake fetcher, per
> Richard's comment
>=20
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>  Branch: kyu3/srcuri-v2
>  Browse: =
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dkyu3/srcuri-v2
>=20
> Thanks,
>    Yu Ke <ke.yu@intel.com>
> ---
>=20
>=20
> Yu Ke (1):
>  FetchData: add SRC_URI checksum
>=20
> bitbake/lib/bb/fetch/__init__.py |   36 =
++++++++++++++++++++++++++++++++++++
> 1 files changed, 36 insertions(+), 0 deletions(-)
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


