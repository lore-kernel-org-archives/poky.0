Return-Path: <liping.ke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9A7AA4C805BB
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 00:36:54 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Mar 2011 22:36:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,197,1299484800"; d="scan'208";a="898135105"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 16 Mar 2011 22:36:53 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 17 Mar 2011 13:36:14 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 17 Mar 2011 13:36:13 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Ke, Liping" <liping.ke@intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Thu, 17 Mar 2011 13:36:10 +0800
Thread-Topic: [poky] [PATCH 0/1] ADT: bug fix for nameing and do_patch sequence
Thread-Index: AcvkY6bbtIocvJ/0TI6tc0O6GMrVCgAASjkw
Message-ID: <789F9655DD1B8F43B48D77C5D306597332FC859B@shsmsx501.ccr.corp.intel.com>
References: <cover.1300338196.git.liping.ke@intel.com>
In-Reply-To: <cover.1300338196.git.liping.ke@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: [PATCH 0/1] ADT: bug fix for nameing and do_patch sequence
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
X-List-Received-Date: Thu, 17 Mar 2011 05:36:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Saul

Now adt-installer tarball has been tested under both x86 and x86-64 host=20
for all target archs (arm, x86, x86_64, arm, ppc). So all naming
problems should have been fixed and tested.

There is a typo in the comment line "down->done". The patch
in the contrib tree was already corrected. So just skip this
typo in the patch notification mail.

Thanks a lot!
criping


> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Liping Ke
> Sent: Thursday, March 17, 2011 1:21 PM
> To: poky@yoctoproject.org
> Subject: [poky] [PATCH 0/1] ADT: bug fix for nameing and do_patch
> sequence
>=20
> From: Liping Ke <liping.ke@intel.com>
>=20
> This patch is for fixing the x86-64 image name bug and also,
> do_patch must be down before do_deploy.
>=20
>=20
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: lke/seq_fix
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-
> contrib/log/?h=3Dlke/seq_fix
>=20
> Thanks,
>     Liping Ke <liping.ke@intel.com>
> ---
>=20
>=20
> Liping Ke (1):
>   ADT: bug fix for nameing and do_patch sequence
>=20
>  .../installer/adt-installer/adt_installer          |   13 ++++++++----
> -
>  .../adt-installer/scripts/adt_installer_internal   |    6 +++---
>  .../installer/adt-installer_1.0.bb                 |    2 +-
>  3 files changed, 12 insertions(+), 9 deletions(-)
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

