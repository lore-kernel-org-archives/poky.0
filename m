Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5868EE00DA7; Tue,  2 Jan 2018 18:28:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7361E00D81
	for <poky@yoctoproject.org>; Tue,  2 Jan 2018 18:28:25 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Jan 2018 18:28:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,500,1508828400"; 
   d="scan'208";a="6995296"
Received: from kmsmsx155.gar.corp.intel.com ([172.21.73.106])
	by fmsmga008.fm.intel.com with ESMTP; 02 Jan 2018 18:28:24 -0800
Received: from pgsmsx105.gar.corp.intel.com ([169.254.4.167]) by
	KMSMSX155.gar.corp.intel.com ([169.254.15.215]) with mapi id
	14.03.0319.002; Wed, 3 Jan 2018 10:28:23 +0800
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] [PATCH 0/3] meta-yocto-bsp: genericx86* BSP kernel updates
Thread-Index: AQHTf4f8eCIsg97szk6PiKvVV+daCKNhdSvQ
Date: Wed, 3 Jan 2018 02:28:22 +0000
Message-ID: <C0207330DF60C5409302EC78C3FE68F34A0559@PGSMSX105.gar.corp.intel.com>
References: <1514429985-19328-1-git-send-email-anuj.mittal@intel.com>
In-Reply-To: <1514429985-19328-1-git-send-email-anuj.mittal@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZTRkZmI4M2EtZjhlMy00NjM3LWEyMGItZjJkYmE4MmEzZjIyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJ4eTY3ek9KZ3NxTEEwM3F3aXp1MERVTUI1MlR3YWxlWUlsVTRuUlNaZUdwUGtYVldCY0xZUDhaZnd2UitLYnB3In0=
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "Wold, Saul" <saul.wold@intel.com>
Subject: Re: [PATCH 0/3] meta-yocto-bsp: genericx86* BSP kernel updates
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Jan 2018 02:28:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org=
] On
> Behalf Of Anuj Mittal
> Sent: Thursday, December 28, 2017 11:00 AM
> To: poky@yoctoproject.org
> Cc: Wold, Saul <saul.wold@intel.com>
> Subject: [poky] [PATCH 0/3] meta-yocto-bsp: genericx86* BSP kernel update=
s
>=20
> These update the kernel SRCREVs for genericx86* BSPs and should be applie=
d after
> Kevin Hao's patch to update SRCREVs for non x86 BSPs.
>=20
> Anuj Mittal (3):
>   linux-yocto: update genericx86* SRCREVs for v4.4
>   linux-yocto: update genericx86* SRCREVs for v4.9
>   linux-yocto: update genericx86* SRCREVs for v4.12
>=20
>  meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend | 8 ++++--=
--  meta-
> yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend  | 8 ++++----  me=
ta-yocto-
> bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend  | 8 ++++----
>  3 files changed, 12 insertions(+), 12 deletions(-)

Please note that this series replaces the set sent by Alejandro which hasn'=
t been merged yet.

https://lists.yoctoproject.org/pipermail/poky/2017-November/011159.html

Thanks,
Anuj


>=20
> --
> 2.7.4
>=20
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

