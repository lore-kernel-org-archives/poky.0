Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 76FF04C81001
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 02:07:29 -0600 (CST)
Received: by wye20 with SMTP id 20so5470897wye.35
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 00:07:27 -0800 (PST)
Received: by 10.227.128.82 with SMTP id j18mr5857125wbs.138.1296461247764;
	Mon, 31 Jan 2011 00:07:27 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id w25sm3897658wbd.17.2011.01.31.00.07.26
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 31 Jan 2011 00:07:26 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4D46639A.4000000@intel.com>
Date: Mon, 31 Jan 2011 09:07:25 +0100
Message-Id: <7CC1C0E4-A55A-4E6A-8EDE-2A97C572BC48@dominion.thruhere.net>
References: <cover.1296399890.git.dexuan.cui@intel.com>
	<2E18009D-3031-4DBD-8185-62182404D5C5@dominion.thruhere.net>
	<1865303E0DED764181A9D882DEF65FB685EBCB6C41@shsmsx502.ccr.corp.intel.com>
	<4D46639A.4000000@intel.com>
To: "Zhai, Edwin" <edwin.zhai@intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: [Dexuan: Jan 30: gdk-pixbuf: PULL 0/1] gdk-pixbuf: add jpeg into DEPENDS
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
X-List-Received-Date: Mon, 31 Jan 2011 08:07:29 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 31 jan 2011, om 08:24 heeft Zhai, Edwin het volgende geschreven:

> Koen,
>=20
> The gtk+ on OE is not latest version, that is, gdk-pixbuf is still =
part of it. I think the function is not clear-cut.
>=20
> On poky, gtk+ is latest stable version, where gdk-pxibuf is separated =
as a stand-alone bb file. Running of gdk-pixbuf-csource need one config =
file produced by gdk-pixbuf-query-loaders, so native and target =
packages' installation are different. Target package need postinst to =
run it when 1st boot, while native package need install_append to run it =
before populate_sysroot.
>=20
> Does it make sense? Is there any way to avoid duplicatation?

I just read up on gdk-pixbuf an noticed it was split out again of gtk+ =
like you said :) So using BBCLASS_EXTEND in the gdk-pixbuf recipe would =
seem the way to go.

regards,

Koen

>=20
> Thanks,
> edwin
>=20
>=20
> Cui, Dexuan wrote:
>>=20
>> Koen Kooi wrote:
>> > Op 30 jan 2011, om 16:06 heeft Dexuan Cui het volgende geschreven:
>> >
>> >> From: Dexuan Cui <dexuan.cui@intel.com>
>> >>
>> >> meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb |    2 ++
>> >
>> > OE is using BBCLASS_EXTEND in gtk+ to provide the pixbug loaders,
>> > doing this in yocto would reduce duplicate functionality a lot.
>> Hi Koen,
>> I think you meant in Poky whether we could add BBCLASSEXTEND =3D =
"native" into  gdk-pixbuf_2.22.1.bb and remove =
gdk-pixbuf-native_2.22.1.bb.
>>=20
>> The two recipes look quite different so I doubt we can do that. Let =
me Cc the original patch submitter Edwin for the background.
>>=20
>> Thanks,
>> -- Dexuan
>>=20


