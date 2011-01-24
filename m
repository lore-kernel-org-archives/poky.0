Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1D4304C810E3
	for <poky@pokylinux.org>; Mon, 24 Jan 2011 03:50:51 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Jan 2011 01:50:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,369,1291622400"; d="scan'208";a="595845597"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 24 Jan 2011 01:50:45 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 24 Jan 2011 17:50:11 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 24 Jan 2011 17:50:10 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>
Date: Mon, 24 Jan 2011 17:50:09 +0800
Thread-Topic: [poky] [PATCH 0/3] sstate fixes: whitelist and bitbake-diffsigs
Thread-Index: Acu7go5k5v8WhObLTUu+26o4nMOISAAKW4xg
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504DB5BB6A1F@shsmsx502.ccr.corp.intel.com>
References: <0d30dc$kqbuu6@orsmga001.jf.intel.com> <4D3D059D.2050609@intel.com>
In-Reply-To: <4D3D059D.2050609@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [PATCH 0/3] sstate fixes: whitelist and bitbake-diffsigs
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
X-List-Received-Date: Mon, 24 Jan 2011 09:50:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Wold, Saul
> Sent: Monday, January 24, 2011 12:53 PM
>=20
> On 01/20/2011 03:23 AM, Kevin Tian wrote:
> > this series include one whitelist fix about USER and USERNAME, which al=
lows
> sstate packages
> > generated from opensuse to be usable on ubuntu. other two fixes about
> bitbake-diffsigs, for
> > better output and correctness
> >
> > Pull URL: git://git.pokylinux.org/poky-contrib.git
> >    Branch: tk/master
> >    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dtk/m=
aster
> >
> > Thanks,
> >      Kevin Tian<kevin.tian@intel.com>
> > ---
> >
> >
> > Kevin Tian (3):
> >    bitbake.conf: add USERNAME to BB_HASHBASE_WHITELIST
> >    siggen.py: better print for task hash comparison
> >    siggen.py: remove path in 'runtaskdeps'
> This was not pulled into master at this time.

Does it mean that it will be pulled next time, or do you want more work fro=
m me?

Thanks
Kevin

>=20
> >
> >   bitbake/lib/bb/siggen.py |   27 +++++++++++++++++++--------
> >   meta/conf/bitbake.conf   |    2 +-
> >   2 files changed, 20 insertions(+), 9 deletions(-)
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> >
> Partial Pulled into master.
>=20
> Thanks
> 	Sau!
>=20


