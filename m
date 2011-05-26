Return-Path: <liping.ke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 04E564C80334
	for <poky@yoctoproject.org>; Wed, 25 May 2011 22:12:13 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 25 May 2011 20:12:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,270,1304319600"; 
   d="scan'208";a="1937451"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 25 May 2011 20:12:12 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 26 May 2011 11:11:50 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 26 May 2011 11:11:49 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Ke, Liping" <liping.ke@intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Thu, 26 May 2011 11:11:47 +0800
Thread-Topic: [poky] [PATCH 0/4][Image Creator]Add mulitple extra cache
	fields	request support
Thread-Index: AcwbUcXnUoxGY/PaQemhrI9cN2l67gAAC/3Q
Message-ID: <789F9655DD1B8F43B48D77C5D30659734C7234C5@shsmsx501.ccr.corp.intel.com>
References: <cover.1306376361.git.liping.ke@intel.com>
In-Reply-To: <cover.1306376361.git.liping.ke@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: [PATCH 0/4][Image Creator]Add mulitple extra cache fields	request support
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
X-List-Received-Date: Thu, 26 May 2011 03:12:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, All

I have test the memory usage with htop. It will show that when loading cach=
e,
Bitbake will use 1.3~1.4%. There's no change compared with namedutple.
So I guess it should not impact memeory usage very much.

And the cahce file (core/base) part increased < 200k.=20

So this change should not impact performance greatly ( class vs namedtuple)

Thanks & Regards,
criping

> -----Original Message-----
> From: poky-bounces@yoctoproject.org
> [mailto:poky-bounces@yoctoproject.org] On Behalf Of Ke Liping
> Sent: Thursday, May 26, 2011 10:54 AM
> To: poky@yoctoproject.org
> Subject: [poky] [PATCH 0/4][Image Creator]Add mulitple extra cache fields
> request support
>=20
> From: Liping Ke <liping.ke@intel.com>
>=20
> The series of patch are for mplementing multiple extra cache fields
> request support.If user needs to request extra cache fields besides
> CoreRecipeInfo fields, just add a new XXXRecipeInfo class definition
> as Image Creator UI Hob Does.
> For implementing this new feature, we refactory current cache code,
> remove namedtuple and define corresponding class for dynamical cache
> fields support per different cache usage request.
>=20
> Liping Ke (4):
>   Refactory Current Cache implementation
>   Introduce extra cache class for image creator
>   Introduce new param caches_array into Cache impl.
>   Implement multiple extra cache fields request support
>=20
>  bitbake/lib/bb/cache.py       |  532
> ++++++++++++++++++++++-------------------
>  bitbake/lib/bb/cache_extra.py |   54 ++++
>  bitbake/lib/bb/cooker.py      |   70 ++++--
>  bitbake/lib/bb/shell.py       |    2 +-
>  bitbake/lib/bb/ui/hob.py      |    2 +
>  5 files changed, 396 insertions(+), 264 deletions(-)
>  create mode 100644 bitbake/lib/bb/cache_extra.py
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

