Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id EDE064C80BD4
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 10:47:45 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 06 Jan 2011 08:47:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,284,1291622400"; d="scan'208";a="875072573"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga001.fm.intel.com with ESMTP; 06 Jan 2011 08:47:45 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.226.10) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 6 Jan 2011 08:47:45 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx605.amr.corp.intel.com ([10.22.226.10]) with mapi; Thu, 6 Jan 2011
	08:47:44 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>
Date: Thu, 6 Jan 2011 08:47:43 -0800
Thread-Topic: [poky] [PATCH 5/8] perl, perl-native: upgrade from 5.8.8 to
	5.12.2
Thread-Index: AcutdGfPOD5QLsj0S1qJT03bartIwQATJ9Ug
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE94053F30D7@orsmsx504.amr.corp.intel.com>
References: <cover.1294237909.git.nitin.a.kamble@intel.com>
	<973479329b1beba63c53ffde7229202d794a6c75.1294237909.git.nitin.a.kamble@intel.com>
	<4D2570DA.1090409@intel.com>
In-Reply-To: <4D2570DA.1090409@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 5/8] perl, perl-native: upgrade from 5.8.8 to 5.12.2
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
X-List-Received-Date: Thu, 06 Jan 2011 16:47:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>=20
> Nitin,
>=20
> I am not sure how you tested this, but I got a couple of different
> failure modes when build this from scratch.  You can see the scratch
> failure on the autobuilder in distro-testing.
>=20
> Thanks
>=20
>    Sau!

Saul,
  It is building fine for me. And I am not doing anything special. Which pe=
rl branch did you pull in for testing. This branch has the latest code. htt=
p://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dnitin/perl-5.12.2=
_rebased_to_master

Also I did not see autobuilder failure from perl.

Thanks,
Nitin



