Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1EC404C80050
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 20:07:51 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 18:07:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,269,1291622400"; d="scan'208";a="693249030"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 18:07:50 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx603.amr.corp.intel.com ([10.22.226.49]) with mapi; Mon, 3 Jan 2011
	18:07:50 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Saul Wold <sgw@linux.intel.com>
Date: Mon, 3 Jan 2011 18:07:48 -0800
Thread-Topic: [poky] [PATCH 0/5] perl and other devel/toolchain recipe upgrades
Thread-Index: Acuox9qY+xcbdnq0RPm8u9yemGMWYgC65wbQ
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE9405385E1E@orsmsx504.amr.corp.intel.com>
References: <cover.1293729977.git.nitin.a.kamble@intel.com>
	<4D1D9974.7090409@linux.intel.com>
In-Reply-To: <4D1D9974.7090409@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/5] perl and other devel/toolchain recipe upgrades
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
X-List-Received-Date: Tue, 04 Jan 2011 02:07:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> >    perl, perl-native: upgrade from 5.8.8 to 5.12.2
> Nitin, in the perl/rdepends_perl, did you miss RDEPENDS_ in front of
> some of the names?

Saul,=20
  Good catch, Yes all the assignments need RDEPENDS_ in front. I will fix t=
his and send an update.

>=20
> Also, you mentioned a fakeroot patch of somekind, is that something
> from
> the debian? I did not find it in either versions.


  The fakeroot patch is at location: meta/recipes-devtools/perl/perl-5.12.2=
/debian/fakeroot.patch
And it was conflicting with the Makefile.SH.patch patch.

Thanks,
Nitin

>=20
> Sau!





