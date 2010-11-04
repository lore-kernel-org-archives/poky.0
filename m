Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id DB1B64C80287
	for <poky@pokylinux.org>; Wed,  3 Nov 2010 19:28:59 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Nov 2010 17:28:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,292,1286175600"; d="scan'208";a="674084474"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga001.jf.intel.com with ESMTP; 03 Nov 2010 17:28:58 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 4 Nov 2010 08:28:57 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Thu, 4 Nov 2010
	08:28:56 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'Mike Detwiler' <j.michael.detwiler@gmail.com>, "Wold, Saul"
	<saul.wold@intel.com>
Date: Thu, 4 Nov 2010 08:28:55 +0800
Thread-Topic: [poky] Extending meta-toolchain-sdk
Thread-Index: Act7ZgkTDUsvuX8cTg2YQUyOI0cO4QAT7rhQ
Message-ID: <1865303E0DED764181A9D882DEF65FB67A65C6F4AF@shsmsx502.ccr.corp.intel.com>
References: <AANLkTi=iHsCxaWVUaD1fMCsRZot4+SHUHAK9xpdku1Cv@mail.gmail.com>
	<1865303E0DED764181A9D882DEF65FB67A65C6F4AD@shsmsx502.ccr.corp.intel.com>
	<4CD0DB45.7000607@intel.com>
	<AANLkTi=b9YK0+beYcCL4Ddyx3dc873Uem6u1d+h_N-iM@mail.gmail.com>
In-Reply-To: <AANLkTi=b9YK0+beYcCL4Ddyx3dc873Uem6u1d+h_N-iM@mail.gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: Extending meta-toolchain-sdk
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Nov 2010 00:29:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Mike Detwiler wrote:
> I tried the following line instead:
>=20
> SDK-EXTRAS +=3D "gmp-dev"
>=20
> This did not produce an error, but it also did not seem to add the
> library to the sdk. Is it possible that this is because the variable
> SDK-EXTRAS is also set in meta/recipes-gnome/tasks/task-sdk-gmae.inc
> with the line below.
>=20
> SDK-EXTRAS =3D ""
> It looks like this could clobber my setting of the variable, depending
> on the order of evaluation.
I think we can change the line of task-sdk-gmae.inc to
SDK-EXTRAS ?=3D ""
This allows the setting of environment variable to be used if a user does s=
et it.
And I think increasing the PR of the related recipe files is also necessary=
, or else, the change may not actually take effect, unless we build from sc=
ratch or do a "bitbake -c clean xxx".

Thanks,
-- Dexuan=

