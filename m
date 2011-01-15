Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 96AB74C80039
	for <poky@yoctoproject.org>; Sat, 15 Jan 2011 05:55:22 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Jan 2011 03:55:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,326,1291622400"; d="scan'208";a="697154428"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 15 Jan 2011 03:55:21 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sat, 15 Jan 2011 19:55:20 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Sat, 15 Jan 2011 19:55:19 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'Koen Kooi' <koen@dominion.thruhere.net>, 'Richard Purdie'
	<richard.purdie@linuxfoundation.org>
Date: Sat, 15 Jan 2011 19:55:18 +0800
Thread-Topic: [poky] [PATCH 1/2] libgcc: use the new recipe (rather than
	gcc-runtime) to install libgcc_s.so* and crt*.o
Thread-Index: Acu0qI4zmrjak6awS+mtV8qNgBfnFwAAHWCA
Message-ID: <1865303E0DED764181A9D882DEF65FB685AFA1B329@shsmsx502.ccr.corp.intel.com>
References: <cover.1295089968.git.dexuan.cui@intel.com>
	<1fbef243a72576df8cac5fa1304569fddf9e9c4d.1295089968.git.dexuan.cui@intel.com>
	<2912EC4A-4B47-40DB-AC12-8C9DC27F3C25@dominion.thruhere.net>
In-Reply-To: <2912EC4A-4B47-40DB-AC12-8C9DC27F3C25@dominion.thruhere.net>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/2] libgcc: use the new recipe (rather than gcc-runtime) to install libgcc_s.so* and crt*.o
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
X-List-Received-Date: Sat, 15 Jan 2011 11:55:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Koen Kooi wrote:
> Op 15 jan 2011, om 12:23 heeft Dexuan Cui het volgende geschreven:
>=20
>> Currently gcc-runtime installs the files, but actually gcc-runtime's
>> do_configure checks if the files are available, so before we build
>> gcc-runtime,=20
>> we should have some recipe install the files first! -- currently
>> gcc-cross-intermediate actually does that(gcc-cross also installs
>> the files,=20
>> but it installs into the gcc-build-internal* directory), but
>> gcc-cross-intermediate will have its own sysroot in future, after
>> that,=20
>> gcc-runtime won't build. So let us add this new target recipe and
>> move the=20
>> installation of the files from gcc-runtime into it.
>=20
> I understand the problem, but...
>=20
>> diff --git a/meta/recipes-devtools/gcc/libgcc_4.5.1.bb
>> b/meta/recipes-devtools/gcc/libgcc_4.5.1.bb=20
>>=20
>> +do_install () {
>> +	target=3D`echo ${MULTIMACH_TARGET_SYS} | sed -e s#-nativesdk##` +
>> +	# Install libgcc from our gcc-cross saved data
>> +	install -d ${D}${base_libdir} ${D}${libdir}
>> +	cp -fpPR ${STAGING_INCDIR_NATIVE}/gcc-build-internal-$target/* ${D}
>=20
> ... why can't gcc-cross create the libgcc(-dev) packages? You're
> using the exact files gcc-cross installs, so why have an extra
> recipe? It feels backwards to have one package grab files from
> another package from sysroots and package those.  =20
I discussed this with Richard in the #yocto IRC channel several days ago.
Richard thinks the packaging of the files should be in a target recipe rath=
er than a cross one.
Cc Richard for further explanation why doing the packaging in a gcc-cross i=
s a mistake. :-)

Thanks,
-- Dexuan=

