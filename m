Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1E8294C80052
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 10:31:24 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Dec 2010 08:31:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,288,1288594800"; d="scan'208";a="579917746"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2010 08:31:23 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 2 Dec 2010 08:31:23 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Thu, 2 Dec 2010 08:31:23 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Yu, Ke" <ke.yu@intel.com>, "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Thu, 2 Dec 2010 08:31:20 -0800
Thread-Topic: [poky] [RFC PATCH 0/2] Add SRC_URI checksum support
Thread-Index: AcuSKpVXCukHti8YSlOUh1llBhGmHwAE6d0g
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE94023D9923@orsmsx504.amr.corp.intel.com>
References: <cover.1291291436.git.ke.yu@intel.com>
In-Reply-To: <cover.1291291436.git.ke.yu@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [RFC PATCH 0/2] Add SRC_URI checksum support
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
X-List-Received-Date: Thu, 02 Dec 2010 16:31:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ke,
This automatic SRC_URI checksum is what I was looking for. Thanks for doing=
 it.=20

Nitin


> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Yu Ke
> Sent: Thursday, December 02, 2010 4:04 AM
> To: poky@yoctoproject.org
> Subject: [poky] [RFC PATCH 0/2] Add SRC_URI checksum support
>=20
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: kyu3/srcuri
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-
> contrib/log/?h=3Dkyu3/srcuri
>=20
> Thanks,
>     Yu Ke <ke.yu@intel.com>
> ---
>=20
>=20
> Yu Ke (2):
>   [RFC] Add SRC_URI checksum
>   [RFC] Automatically patch recipes to add the SRC_URI checksum
>=20
>  meta/classes/base.bbclass  |    4 +-
>  meta/classes/utils.bbclass |  101
> ++++++++++++++++++++++++++++++++++++++-----
>  2 files changed, 92 insertions(+), 13 deletions(-)
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

