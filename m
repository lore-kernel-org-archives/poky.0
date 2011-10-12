Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A89DFE005BB
	for <poky@yoctoproject.org>; Wed, 12 Oct 2011 00:37:31 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Oct 2011 00:37:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,333,1315206000"; d="scan'208";a="72648692"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 12 Oct 2011 00:37:30 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 12 Oct 2011 15:35:44 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 12 Oct 2011 15:34:58 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 12 Oct 2011 15:34:56 +0800
Thread-Topic: [poky] [PATCH 1/1] xserver-xf86-dri-lite: rename it to
	xserver-xorg
Thread-Index: AcyIsEd6QQZzKM7SS7WeU60cZ3qEaAAAFINA
Message-ID: <1865303E0DED764181A9D882DEF65FB6D23164EA25@shsmsx502.ccr.corp.intel.com>
References: <cover.1318403772.git.dexuan.cui@intel.com>
	<ad155bb2f7c2032a923332275d698d0787c764d2.1318403772.git.dexuan.cui@intel.com>
	<20111012072254.GL27073@jama.jama.net>
	<20111012072624.GM27073@jama.jama.net>
In-Reply-To: <20111012072624.GM27073@jama.jama.net>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] xserver-xf86-dri-lite: rename it to xserver-xorg
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
X-List-Received-Date: Wed, 12 Oct 2011 07:37:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Martin Jansa wrote on 2011-10-12:
> On Wed, Oct 12, 2011 at 09:22:54AM +0200, Martin Jansa wrote:
>> On Wed, Oct 12, 2011 at 03:17:53PM +0800, Dexuan Cui wrote:
>>> Recently poky's commit c09f0eb561a53b97a769dd0744076af7d904eafb
>>> (xserver-xf86(-dri)-lite: rename to xserver-xorg and
>>> xserver-xorg-lite) breaks BSP building.
>>> This patch makes changes accordingly.
>>> common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite =3D>=20
>>> xserver-xorg}/nodolt.patch (100%)  rename=20
>>> common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite_1.9.3.
>>> bb
>>> =3D> xserver-xorg_1.11.1.bb} (87%)
>>=20
>> just curious, why there is whole xserver-xorg_1.11.1.bb recipe and=20
>> patches not just small .bbappend?
Yes, it seems strange to me, too.
I suppose Tom may know the history?=20

> looking at
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/common/recip
> es-grap hics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bb i don't know=20
> why it's here at all :)

Thanks,
-- Dexuan



