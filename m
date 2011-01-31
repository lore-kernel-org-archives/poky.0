Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 583504C8018D
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 00:23:01 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Jan 2011 22:23:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,403,1291622400"; d="scan'208";a="882624729"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 30 Jan 2011 22:22:59 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 31 Jan 2011 14:21:24 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 31 Jan 2011 14:21:24 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'Koen Kooi' <koen@dominion.thruhere.net>
Date: Mon, 31 Jan 2011 14:21:22 +0800
Thread-Topic: [poky] [Dexuan: Jan 30: gdk-pixbuf: PULL 0/1] gdk-pixbuf: add
	jpeg into DEPENDS
Thread-Index: AcvAlKMmJj6PsHkYTRa7hkuigYBB5wAAUMlg
Message-ID: <1865303E0DED764181A9D882DEF65FB685EBCB6C41@shsmsx502.ccr.corp.intel.com>
References: <cover.1296399890.git.dexuan.cui@intel.com>
	<2E18009D-3031-4DBD-8185-62182404D5C5@dominion.thruhere.net>
In-Reply-To: <2E18009D-3031-4DBD-8185-62182404D5C5@dominion.thruhere.net>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Mon, 31 Jan 2011 06:23:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Koen Kooi wrote:
> Op 30 jan 2011, om 16:06 heeft Dexuan Cui het volgende geschreven:
>=20
>> From: Dexuan Cui <dexuan.cui@intel.com>
>>=20
>> meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb |    2 ++
>=20
> OE is using BBCLASS_EXTEND in gtk+ to provide the pixbug loaders,
> doing this in yocto would reduce duplicate functionality a lot.=20
Hi Koen,=20
I think you meant in Poky whether we could add BBCLASSEXTEND =3D "native" i=
nto  gdk-pixbuf_2.22.1.bb and remove gdk-pixbuf-native_2.22.1.bb.
The two recipes look quite different so I doubt we can do that. Let me Cc t=
he original patch submitter Edwin for the background.

Thanks,
-- Dexuan

