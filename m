Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 78A804C800A3
	for <poky@yoctoproject.org>; Fri, 11 Mar 2011 03:29:49 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 11 Mar 2011 01:29:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,302,1297065600"; d="scan'208";a="401113311"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by azsmga001.ch.intel.com with ESMTP; 11 Mar 2011 01:29:48 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 11 Mar 2011 17:29:39 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 11 Mar 2011 17:29:37 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Fri, 11 Mar 2011 17:29:36 +0800
Thread-Topic: [poky] [PATCH 1/1] gcc/collect2: Added --sysroot support into
	collect2 in gcc.
Thread-Index: AcvfwnTOYXfaVvPiQgqVG0PQIJYvEwACu5mw
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F2185281C93@shsmsx502.ccr.corp.intel.com>
References: <cover.1299737813.git.lianhao.lu@intel.com>
	<6a1fe90d5a43e3260098dc90b8d467a1ba7d6335.1299737813.git.lianhao.lu@intel.com>
	<20110311080112.GA2478@sakrah.homelinux.org>
In-Reply-To: <20110311080112.GA2478@sakrah.homelinux.org>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] gcc/collect2: Added --sysroot support into collect2 in gcc.
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
X-List-Received-Date: Fri, 11 Mar 2011 09:29:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Khem Raj wrote on 2011-03-11:
> On (10/03/11 14:21), Lianhao Lu wrote:
>> From: Lianhao Lu <lianhao.lu@intel.com>
>>=20
>> [YOCTO #815] Added --sysroot into COLLECT_GCC_OPTIONS to allow the
>> collect2 support user specifed sysroot.
>=20
> interesting. What happens if you remove -frepo option while compiling
> your test program ?

By removing -frepo option, the problem seems gone. It seems that -frepo tri=
ggers the collect2 to recompile the object files which need template instan=
tiations. By removing the -frepo the object files don't get recompiled, so =
the missing --sysroot wouldn't be a problem.

-Lianhao

