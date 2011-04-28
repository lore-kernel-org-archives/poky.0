Return-Path: <liping.ke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9A9834C8057C
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 20:24:00 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Apr 2011 18:24:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,277,1301900400"; d="scan'208";a="739442008"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga001.jf.intel.com with ESMTP; 27 Apr 2011 18:23:57 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 28 Apr 2011 09:22:11 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 28 Apr 2011 09:22:10 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: Joshua Lock <josh@linux.intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Thu, 28 Apr 2011 09:22:08 +0800
Thread-Topic: [poky] Processing extra field requested by bitbake -u in Cache
Thread-Index: AcwFCmmQYOWQ6pXgQTWaD2gjvWUorAANv2YQ
Message-ID: <789F9655DD1B8F43B48D77C5D30659734C09DE4D@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659734C09DCDE@shsmsx501.ccr.corp.intel.com>
	<1303929543.2242.20.camel@scimitar>
In-Reply-To: <1303929543.2242.20.camel@scimitar>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: Processing extra field requested by bitbake -u in Cache
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
X-List-Received-Date: Thu, 28 Apr 2011 01:24:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> Why must we change the invalidation mechanisms when having a separate
> cache file per UI.
Hi, Josh

Considering the following usage sequence, ui 1 -> non-ui (made changes) 2 -=
> ui (made changes)  3 -> non-ui (made changes) 4

If we use option 1, no cache invalidation needed.

But if we use option 2, we need invalidate cache each time. I collect some =
local feedback here, they said it's unbearable.=20

if we want to reduce the unnecessary invalidation, we need very careful tri=
cky mechanism,
such as, could it be possible that when ui->no-ui, we don't' invalidation c=
ache when the mode switching? It's not a two step state machine,
but more steps?

And also, yes extra 6 M files are the disk is not a big problem. But actual=
ly the extra three fields are not a big burden in memory,=20
it's only about size(fields of the 3) * file_no (<1000)? So the extra 6M vs=
 extra three fields in memory is a dilemma from my me plus the extra invali=
dation.
That's why I feel RP's suggestion is reasonable at that time?

I am still in a dilemma...

Thanks indeed for your idea!
criping



>=20
> My thought is that we'll have a cache file name which encodes the UI and
> then run the usual invalidation tests against that cache.
>=20
> Say that the UI name is known by the cache and stored in variable
> currentui we can achieve this by:
>=20
> -        self.cachefile =3D os.path.join(self.cachedir, "bb_cache.dat")
> +        self.cachefile =3D os.path.join(self.cachedir, "bb_cache_%s.dat"
> % currentui)
>=20
> Also, surely we *do* need alter the cache invalidation mechanisms for
> multiple files, at least insofar as we must test more than one cache
> file some times.
>=20
> >
> > 2. Have two big cache files, one is for ui mode, one is for non-ui mode
> >   Advantage: Code change will be a little smaller. When loading, if it'=
s non-ui
> mode, load smaller cache file. Otherwise, load bigger cache file.
> >   Disadvantage: 1) Cache invalidation mechanism (timestamp) is broken.
> When mode switching, we need to invalidate all caches, reparsing, reloadi=
ng
> time 30s.
> >               s) disk file size is bigger. 2*original_size (2*6M)
>=20
> I'm not sure that 6MB disk overhead is worth the code complexity
> increase by having multiple cache files stitched together.
>=20
> I am definitely keen to hear others opinions here.
>=20
> Cheers,
> Joshua
> --
> Joshua Lock
>         Yocto Build System Monkey
>         Intel Open Source Technology Centre
>=20
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

