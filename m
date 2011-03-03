Return-Path: <liping.ke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0EDE84C800A3
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 21:40:41 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Mar 2011 19:40:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,257,1297065600"; d="scan'208";a="396722395"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 02 Mar 2011 19:40:40 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 3 Mar 2011 11:38:55 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Thu, 3 Mar 2011
	11:38:53 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Ke, Liping" <liping.ke@intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Thu, 3 Mar 2011 11:38:53 +0800
Thread-Topic: [PATCH 0/1] ADT: Add libtool-nativesdk for ADT installer
Thread-Index: AcvZVAbwIerRdMaeTDOrVzNCcGA+4QAADmFw
Message-ID: <789F9655DD1B8F43B48D77C5D306597332E8BF7A@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D306597332E8BF71@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D306597332E8BF71@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: [PATCH 0/1] ADT: Add libtool-nativesdk for ADT installer
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
X-List-Received-Date: Thu, 03 Mar 2011 03:40:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Since today all kinds of Chinese proxies for wget does not work, speed is v=
ery slow, < 1K,
So auto create script does not work.

So I sent this pull request manually.=20

Any problem, just let me know.

Thanks & Regards,
criping

> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Ke, Liping
> Sent: Thursday, March 03, 2011 11:35 AM
> To: poky@yoctoproject.org
> Subject: [poky] [PATCH 0/1] ADT: Add libtool-nativesdk for ADT
> installer
>=20
> From: Liping Ke <liping.ke@intel.com>
>=20
> Add libtool-nativesdk for ADT
> We need to add libtool native sdk support in ADT installer.
> This patch fix #bug  791
>=20
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: lke/adt-libtool
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-
> contrib/log/?h=3Dlke/adt-libtool
>=20
> Thanks,
>     Liping Ke <liping.ke@intel.com>
> ---
>=20
>=20
> Liping Ke (1):
>   ADT: Add libtool-nativesdk for ADT installer
>=20
>  .../adt-installer/scripts/adt_installer_internal   |    3 +++
> 1 files changed, 3 insertions(+), 0 deletions(-)
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

