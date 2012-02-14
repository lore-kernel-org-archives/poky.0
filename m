Return-Path: <lianhao.lu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1944E0059B
	for <poky@yoctoproject.org>; Tue, 14 Feb 2012 01:34:15 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Feb 2012 01:34:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="117345174"
Received: from pgsmsx101.gar.corp.intel.com ([10.221.44.78])
	by fmsmga001.fm.intel.com with ESMTP; 14 Feb 2012 01:34:08 -0800
Received: from pgsmsx601.gar.corp.intel.com (10.221.43.69) by
	PGSMSX101.gar.corp.intel.com (10.221.44.78) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 14 Feb 2012 17:33:50 +0800
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 14 Feb 2012 17:29:53 +0800
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.36]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.142]) with mapi id
	14.01.0355.002; Tue, 14 Feb 2012 17:29:45 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: Patrick <kpa_info@yahoo.fr>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: [poky] Building sysroot for SDK
Thread-Index: AQHM6vUuNZijibUrRkykVFQBzSpZepY8GYcA
Date: Tue, 14 Feb 2012 09:29:45 +0000
Message-ID: <857BE142E5399E46B20FD45B9DB8A7BC0FCE74DE@SHSMSX102.ccr.corp.intel.com>
References: <1329209188.15247.YahooMailNeo@web29001.mail.ird.yahoo.com>
In-Reply-To: <1329209188.15247.YahooMailNeo@web29001.mail.ird.yahoo.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: Building sysroot for SDK
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
X-List-Received-Date: Tue, 14 Feb 2012 09:34:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Patrick wrote on 2012-02-14:
> Dear list,
>=20
> I use poky 6.0 to build a complete rootfs for my own target, it's
> working nicely !Now I would like to build a small application SDK for my
> system.
>=20
> I have red carefully the ADT manual and decided to build a toolchain with=
 meta-toolchain. The toolchain generated works properly but some
> libraries and headers are missing.
> For example my target use SQLite built in the rootfs. The sqlite library =
and the headers files are missing in the toolchain.
>=20
> I would like to know how to build the sysroot to add those files in the t=
oolchain or how to add it directly to the toolchain.
>=20
Hi Patrick,

If you want to add more packages into the sysroot built by meta-toolchain, =
you may add your extra packages(i.e. libsqlite3-dev) into the variable "TOO=
LCHAIN_TARGET_TASK".  Meta/recipes-core/meta/meta-toolchain-gmae.bb might b=
e an example of how to add more packages into the target sysroot.

Best Regards,
Lianhao



