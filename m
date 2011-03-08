Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 843C44C8009A
	for <poky@yoctoproject.org>; Tue,  8 Mar 2011 09:52:37 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Mar 2011 07:52:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,284,1297065600"; d="scan'208";a="610401691"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga002.jf.intel.com with ESMTP; 08 Mar 2011 07:52:09 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx602.amr.corp.intel.com ([10.22.226.211]) with mapi;
	Tue, 8 Mar 2011 07:52:09 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Lu Jingdong <jingdong.lu@windriver.com>
Date: Tue, 8 Mar 2011 07:49:56 -0800
Thread-Topic: [PATCH 1/1] gcc-runtime: fix LSB library checks for
	libstdc++.so.6
Thread-Index: AcvdLF+U4wvjFt7DQfC5RZcXLC1kIQAfAOrg
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE9431E29156@orsmsx504.amr.corp.intel.com>
References: <cover.1299516806.git.nitin.a.kamble@intel.com>
	<0cfc1314469e2fe9412ec0285a9bbe577a195258.1299516806.git.nitin.a.kamble@intel.com>
	<4D757F97.8090601@windriver.com>
In-Reply-To: <4D757F97.8090601@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] gcc-runtime: fix LSB library checks for libstdc++.so.6
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
X-List-Received-Date: Tue, 08 Mar 2011 15:52:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


> -----Original Message-----
> From: Lu Jingdong [mailto:jingdong.lu@windriver.com]
> Sent: Monday, March 07, 2011 5:00 PM
> To: Kamble, Nitin A
> Cc: poky@yoctoproject.org
> Subject: Re: [PATCH 1/1] gcc-runtime: fix LSB library checks for
> libstdc++.so.6
>=20
> On 03/08/2011 12:55 AM, Nitin A Kamble wrote:
> > ...
> >
> > diff --git a/meta/recipes-devtools/gcc/gcc-configure-runtime.inc
> b/meta/recipes-devtools/gcc/gcc-configure-runtime.inc
> > index 6cc11e2..d4dfbc2 100644
> > --- a/meta/recipes-devtools/gcc/gcc-configure-runtime.inc
> > +++ b/meta/recipes-devtools/gcc/gcc-configure-runtime.inc
> > @@ -1,5 +1,6 @@
> >   require gcc-configure-common.inc
> >
> > +CXXFLAGS_EXTA =3D ""
> Maybe a little spell mistake, should be "EXTRA". :-)


Jingdong, Good Catch. I will update the commit.
Thanks,
Nitin


> >   EXTRA_OECONF_PATHS =3D " \
> >       --with-local-prefix=3D${STAGING_DIR_TARGET}${prefix} \
> >       --with-gxx-include-dir=3D${includedir}/c++/ \
> > diff --git a/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
> b/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
> > index 093f9bf..c1e680d 100644
> > --- a/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
> > +++ b/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
> > @@ -1,4 +1,4 @@
> > -PR =3D "r2"
> > +PR =3D "r3"
> >
> >   require gcc-${PV}.inc
> >   require gcc-configure-runtime.inc
>=20
>=20
> --
> Lu Jingdong
> jingdong.lu@windriver.com
> China, Wind River


