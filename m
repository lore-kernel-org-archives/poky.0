Return-Path: <liping.ke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A37EF4C8009D
	for <poky@yoctoproject.org>; Mon,  9 May 2011 01:59:13 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 08 May 2011 23:59:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,339,1301900400"; d="scan'208";a="690004698"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 08 May 2011 23:59:12 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 9 May 2011 14:58:34 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 9 May 2011 14:58:34 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Mon, 9 May 2011
	14:58:33 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Lock, Joshua" <joshua.lock@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>
Date: Mon, 9 May 2011 14:58:31 +0800
Thread-Topic: [poky] [PATCH 0/4][Image Creator]Put extra requested fields
	into	different cache files
Thread-Index: AcwOFXEDP1+hwUHUSd6hwvV/NLCBSAAAAzqgAAAXr9A=
Message-ID: <789F9655DD1B8F43B48D77C5D30659734C510B50@shsmsx501.ccr.corp.intel.com>
References: <cover.1304922517.git.liping.ke@intel.com>
	<789F9655DD1B8F43B48D77C5D30659734C510B3F@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D30659734C510B3F@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/4][Image Creator]Put extra requested fields into	different cache files
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
X-List-Received-Date: Mon, 09 May 2011 06:59:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Josh

Those patches are rebased with latest poky master today. I noticed Richard
has changed the code of cache, making sure skipped info is saved for avoidi=
ng
unnecessary parsing, so that the cache file will remain the same size each =
time.
( I found before this change, cache file kept increased).
I verified that our new introduced patch working with this latest cache cha=
nges.

Thanks a lot!
criping

> -----Original Message-----
> From: Ke, Liping
> Sent: Monday, May 09, 2011 2:53 PM
> To: Ke, Liping; poky@yoctoproject.org
> Subject: RE: [poky] [PATCH 0/4][Image Creator]Put extra requested fields =
into
> different cache files
>=20
> Hi, all
>=20
> Send twice with the modified subjects since those patches are introduced =
for
> image creator backend.
>=20
> Thanks a lot!
> criping
>=20
> > -----Original Message-----
> > From: poky-bounces@yoctoproject.org
> > [mailto:poky-bounces@yoctoproject.org] On Behalf Of Liping Ke
> > Sent: Monday, May 09, 2011 2:40 PM
> > To: poky@yoctoproject.org
> > Subject: [poky] [PATCH 0/4][Image Creator]Put extra requested fields in=
to
> > different cache files
> >
> > From: Liping Ke <liping.ke@intel.com>
> >
> > Below four patches are for putting extra requested fields inito differe=
nt
> > cache files instead of using only on bb_cache.dat. Now image creator ne=
ed
> > extra three fields. And in the future, there might be more similar requ=
ests.
> > For each extra requestor, we will save the requested fields data into a
> > separate cache files so that those who don't need it will not be impact=
ed
> > with larger fields and large data files.
> >
> > Pull URL: git://git.pokylinux.org/poky-contrib.git
> >   Branch: lke/cache_impl
> >   Browse:
> > http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dlke/cache_impl
> >
> > Thanks,
> >     Liping Ke <liping.ke@intel.com>
> > ---
> >
> >
> > Liping Ke (4):
> >   Introduce new param bitbake_mode into Cache.py
> >   Split Cache Data Retrieve method from Data Fields
> >   Introduce Extra required fields for image creator
> >   Implement independent cache for Extra Cache Fields Request
> >
> >  bitbake/lib/bb/cache.py  |  189
> > +++++++++++++++++++++++++++++++++++++---------
> >  bitbake/lib/bb/cooker.py |   55 ++++++++++----
> >  2 files changed, 193 insertions(+), 51 deletions(-)
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky

