Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id E898B4C811BC
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 00:13:53 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 30 Jan 2011 22:13:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,403,1291622400"; d="scan'208";a="381994987"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by azsmga001.ch.intel.com with ESMTP; 30 Jan 2011 22:13:52 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 31 Jan 2011 14:13:22 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Mon, 31 Jan 2011 14:13:21 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'Koen Kooi' <koen@dominion.thruhere.net>
Date: Mon, 31 Jan 2011 14:13:20 +0800
Thread-Topic: [poky] [Dexuan: Jan 28: PULL 06/16] pixman: upgrade from
	0.21.2 to 0.21.4
Thread-Index: Acu+xE4kFqt8SaGkS+q6vWJKzrc0/AB0ZOPg
Message-ID: <1865303E0DED764181A9D882DEF65FB685EBCB6C40@shsmsx502.ccr.corp.intel.com>
References: <cover.1296171287.git.dexuan.cui@intel.com>
	<444bda4d5ed4cbefc241d41a99940d37d6785427.1296171289.git.dexuan.cui@intel.com>
	<2DBBE42B-9A02-4123-9AF5-6D8A0848F008@dominion.thruhere.net>
In-Reply-To: <2DBBE42B-9A02-4123-9AF5-6D8A0848F008@dominion.thruhere.net>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [Dexuan: Jan 28: PULL 06/16] pixman: upgrade from 0.21.2 to 0.21.4
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
X-List-Received-Date: Mon, 31 Jan 2011 06:13:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Koen Kooi wrote:
> Op 28 jan 2011, om 00:40 heeft Dexuan Cui het volgende geschreven:
>=20
>> From: Dexuan Cui <dexuan.cui@intel.com>
>>=20
>> Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
>> ---
>> .../{pixman_0.21.2.bb =3D> pixman_0.21.4.bb}         |    6 +++---
>=20
> Both pixman 0.21.2 and 0.21.4 are from the unstable series with API
> changes, 0.20.x is the stable series.=20

Hi Koen,
Thanks for the reminer!  I've sent out a fix patch just now.

Thanks,
-- Dexuan=

