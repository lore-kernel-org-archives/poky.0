Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4986D4C80039
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 22:14:39 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 Jan 2011 20:14:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,336,1291622400"; d="scan'208";a="375952773"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by azsmga001.ch.intel.com with ESMTP; 17 Jan 2011 20:14:38 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.226.128) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 17 Jan 2011 20:14:38 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx606.amr.corp.intel.com ([10.22.226.128]) with mapi;
	Mon, 17 Jan 2011 20:14:38 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
Date: Mon, 17 Jan 2011 20:14:34 -0800
Thread-Topic: [poky] [PATCH 10/12] dates: fix build issue with gcc dso
	linking change
Thread-Index: Acu2wVcANwUZiCN6TZex4QOZb4OZHgABKOcg
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE94056314A6@orsmsx504.amr.corp.intel.com>
References: <cover.1295304080.git.nitin.a.kamble@intel.com>
	<77d22ac6e219167f0611a2136326979a96f634c4.1295304080.git.nitin.a.kamble@intel.com>
	<4D350B71.2010306@windriver.com>
In-Reply-To: <4D350B71.2010306@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 10/12] dates: fix build issue with gcc dso linking change
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
X-List-Received-Date: Tue, 18 Jan 2011 04:14:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


> Only concern I have with this patch is that, at first glance it looks
> like there
> might be a problem with the libgtkdatesview.la or one of the existing
> $(...)
> items causing the missing dependency.
>=20
> I'd like to make sure that the .la files have been inspected and verify
> they do
> not require libm or libpango.  Assuming they do not, could you add a
> comment to
> the patch indicating that's been checked so when the next person looks
> they
> won't be confused by whats going on.
>=20
> --Mark

Hi mark,
 Thanks for your review. I will check the .la files and update the comments=
.

Thanks,
Nitin


