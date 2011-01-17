Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 42FE64C810D2
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 23:08:58 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Jan 2011 21:08:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,332,1291622400"; d="scan'208";a="647611360"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 16 Jan 2011 21:08:56 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 17 Jan 2011 13:08:54 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Mon, 17 Jan 2011 13:08:53 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'Richard Purdie' <richard.purdie@linuxfoundation.org>, Koen Kooi
	<koen@dominion.thruhere.net>
Date: Mon, 17 Jan 2011 13:08:52 +0800
Thread-Topic: [poky] [PATCH 1/2] libgcc: use the new recipe (rather than
	gcc-runtime) to install libgcc_s.so* and crt*.o
Thread-Index: Acu1DNGZQcAXgkQASoilRo+9kuRTfwANeGsgAC/qNlA=
Message-ID: <1865303E0DED764181A9D882DEF65FB685AFA1B32E@shsmsx502.ccr.corp.intel.com>
References: <cover.1295089968.git.dexuan.cui@intel.com>
	<1fbef243a72576df8cac5fa1304569fddf9e9c4d.1295089968.git.dexuan.cui@intel.com>
	<2912EC4A-4B47-40DB-AC12-8C9DC27F3C25@dominion.thruhere.net>
	<1865303E0DED764181A9D882DEF65FB685AFA1B329@shsmsx502.ccr.corp.intel.com>
	<467D1FAB-0557-4C3F-BC6B-1D010DC18DD3@dominion.thruhere.net>
	<1295134450.14388.10147.camel@rex>
	<1865303E0DED764181A9D882DEF65FB685AFA1B32B@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <1865303E0DED764181A9D882DEF65FB685AFA1B32B@shsmsx502.ccr.corp.intel.com>
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
X-List-Received-Date: Mon, 17 Jan 2011 05:08:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Cui, Dexuan wrote:
> BTW: after careful checking, I found the crt*.o files are actually
> not packaged properly into the target image (the log is below) :-(
> Looks my patch missed something? But looks the original gcc-runtime
> recipe also hasn't any special? =20
> I'm debugging this. Any quick hint is appreciated!
>=20
> NOTE: the following files were installed but not shipped in any
>   package: /lib/libgcc_s.so
> NOTE:   /lib/libgcc_s.so
>   /usr/lib/i586-poky-linux/4.5.1/crtbeginS.o
Hi, the issue was fixed: I didn't define PREFERRED_PROVIDER and PROVIDES pr=
operly.

I'll resend the new pull request soon.
=20
Thanks,
-- Dexuan

