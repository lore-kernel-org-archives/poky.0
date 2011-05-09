Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C02E64C8026D
	for <poky@yoctoproject.org>; Mon,  9 May 2011 01:53:10 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 08 May 2011 23:53:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,339,1301900400"; d="scan'208";a="690002895"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga002.fm.intel.com with ESMTP; 08 May 2011 23:53:09 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 9 May 2011 14:52:48 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Mon, 9 May 2011
	14:52:48 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Ke, Liping" <liping.ke@intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Mon, 9 May 2011 14:52:46 +0800
Thread-Topic: [poky] [PATCH 0/4][Image Creator]Put extra requested fields
	into	different cache files
Thread-Index: AcwOFXEDP1+hwUHUSd6hwvV/NLCBSAAAAzqg
Message-ID: <789F9655DD1B8F43B48D77C5D30659734C510B3F@shsmsx501.ccr.corp.intel.com>
References: <cover.1304922517.git.liping.ke@intel.com>
In-Reply-To: <cover.1304922517.git.liping.ke@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
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
X-List-Received-Date: Mon, 09 May 2011 06:53:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, all

Send twice with the modified subjects since those patches are introduced fo=
r image creator backend.

Thanks a lot!
criping

> -----Original Message-----
> From: poky-bounces@yoctoproject.org
> [mailto:poky-bounces@yoctoproject.org] On Behalf Of Liping Ke
> Sent: Monday, May 09, 2011 2:40 PM
> To: poky@yoctoproject.org
> Subject: [poky] [PATCH 0/4][Image Creator]Put extra requested fields into
> different cache files
>=20
> From: Liping Ke <liping.ke@intel.com>
>=20
> Below four patches are for putting extra requested fields inito different
> cache files instead of using only on bb_cache.dat. Now image creator need
> extra three fields. And in the future, there might be more similar reques=
ts.
> For each extra requestor, we will save the requested fields data into a
> separate cache files so that those who don't need it will not be impacted
> with larger fields and large data files.
>=20
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: lke/cache_impl
>   Browse:
> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dlke/cache_impl
>=20
> Thanks,
>     Liping Ke <liping.ke@intel.com>
> ---
>=20
>=20
> Liping Ke (4):
>   Introduce new param bitbake_mode into Cache.py
>   Split Cache Data Retrieve method from Data Fields
>   Introduce Extra required fields for image creator
>   Implement independent cache for Extra Cache Fields Request
>=20
>  bitbake/lib/bb/cache.py  |  189
> +++++++++++++++++++++++++++++++++++++---------
>  bitbake/lib/bb/cooker.py |   55 ++++++++++----
>  2 files changed, 193 insertions(+), 51 deletions(-)
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

