Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 277114C8106A
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 18:38:52 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Jan 2011 16:38:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,341,1291622400"; d="scan'208";a="878683697"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga001.fm.intel.com with ESMTP; 18 Jan 2011 16:38:51 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.226.128) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 18 Jan 2011 16:38:51 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx606.amr.corp.intel.com ([10.22.226.128]) with mapi;
	Tue, 18 Jan 2011 16:38:51 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>, Mark Hatle
	<mark.hatle@windriver.com>
Date: Tue, 18 Jan 2011 16:38:46 -0800
Thread-Topic: [poky] [PATCH 12/12] screenshot: fix build issue with gcc dso
	linking change
Thread-Index: Acu2wYHZ/m01Ay/VR0qqt/zEyRMthgABNCpQACqkaZA=
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE94056AA7B3@orsmsx504.amr.corp.intel.com>
References: <cover.1295304080.git.nitin.a.kamble@intel.com>
	<9e69f662636b4cd4f9c21b9e5cddf3054d9a65a0.1295304080.git.nitin.a.kamble@intel.com>
	<4D350BC3.7030409@windriver.com> 
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 12/12] screenshot: fix build issue with gcc dso linking change
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
X-List-Received-Date: Wed, 19 Jan 2011 00:38:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Mark,
  I have created a bug for this libtool issue: http://bugzilla.pokylinux.or=
g/show_bug.cgi?id=3D664
Feel free to add more information in the bug.

Thanks,
Nitin

> -----Original Message-----
> From: Kamble, Nitin A
> Sent: Monday, January 17, 2011 8:17 PM
> To: 'Mark Hatle'
> Cc: poky@yoctoproject.org
> Subject: RE: [poky] [PATCH 12/12] screenshot: fix build issue with gcc
> dso linking change
>=20
> >
> > Similar to the last one.  On first look, the GTK_LIBS or libshot.la
> > might be
> > incorrect causing this failure.  If it's been verified that both
> > GTK_LIBS values
> > and the libshot.la match the contents of the library.... and these
> > things are
> > application specific the change is fine.. I'd just like a comment
> > explaining that.
> >
> > --Mark
>=20
> Hi mark,
>     Thanks for this review. I will check the .la file for this one also
> and update the comments.
> Thanks,
> Nitin


