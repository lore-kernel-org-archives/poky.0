Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id EA7834C8018D
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 22:37:27 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 30 Jan 2011 20:37:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,403,1291622400"; d="scan'208";a="702255606"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 30 Jan 2011 20:37:26 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 31 Jan 2011 12:36:18 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 31 Jan 2011 12:36:19 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 31 Jan 2011 12:36:18 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>
Date: Mon, 31 Jan 2011 12:36:17 +0800
Thread-Topic: [poky] [PATCH 1/5] gcc: Add "--enable-clocale=gnu" option
	explicitly
Thread-Index: AcvAwa9ir/4VdfjoTgiyl4j/IRdytgAPmGsg
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504E6294E305@shsmsx502.ccr.corp.intel.com>
References: <cover.1296372804.git.jingdong.lu@windriver.com>
	<c37a7d01caf39c6a67574be39932dbe54ce6581c.1296372804.git.jingdong.lu@windriver.com>
	<625BA99ED14B2D499DC4E29D8138F1504E6294E15B@shsmsx502.ccr.corp.intel.com>
	<4D45D2EF.6050706@intel.com>
In-Reply-To: <4D45D2EF.6050706@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/5] gcc: Add "--enable-clocale=gnu" option explicitly
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
X-List-Received-Date: Mon, 31 Jan 2011 04:37:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Wold, Saul
> Sent: Monday, January 31, 2011 5:07 AM
>=20
> On 01/30/2011 12:11 AM, Tian, Kevin wrote:
> >> From: Jingdong Lu
> >> Sent: Sunday, January 30, 2011 3:36 PM
> >>
> >> From: Jingdong Lu<jingdong.lu@windriver.com>
> >>
> >> Add "--enable-clocale=3Dgun" option for gcc configuration explicitly i=
n order to
> >> make sure C++ library can use correct locale module.
> >>
> >> Signed-off-by: Jingdong Lu<jingdong.lu@windriver.com>
> >> ---
> >>   meta/recipes-devtools/gcc/gcc-configure-common.inc |    2 +-
> >>   1 files changed, 1 insertions(+), 1 deletions(-)
> >>
> >> diff --git a/meta/recipes-devtools/gcc/gcc-configure-common.inc
> >> b/meta/recipes-devtools/gcc/gcc-configure-common.inc
> >> index 4393777..b212fdc 100644
> >> --- a/meta/recipes-devtools/gcc/gcc-configure-common.inc
> >> +++ b/meta/recipes-devtools/gcc/gcc-configure-common.inc
> >> @@ -27,7 +27,7 @@ EXTRA_OECONF_INTERMEDIATE ?=3D ""
> >>
> >>   GCCMULTILIB =3D "--disable-multilib"
> >>
> >> -EXTRA_OECONF =3D "${@['--enable-clocale=3Dgeneric',
> >> ''][bb.data.getVar('USE_NLS', d, 1) !=3D 'no']} \
> >> +EXTRA_OECONF =3D "${@['--enable-clocale=3Dgeneric', '
> >> --enable-clocale=3Dgnu'][bb.data.getVar('USE_NLS', d, 1) !=3D 'no']} \
> >>                   --with-gnu-ld \
> >>                   --enable-shared \
> >>                   --enable-languages=3D${LANGUAGES} \
> >> --
> >> 1.7.0.4
> >>
> >
> > PR bump is expected for all gcc recipes affected by this change.
> >
> Yes, I agree with Kevin on this, also what is the impact to generated
> binaries?  Does this add any size to compiled binaries?
>=20

This actually reminds me one optional task in original 1.0 planning, to pro=
vide a better
option level configurability for user's deep customization requirement. Now=
 similarly
we need this level of configurability to extend one recipe for different pu=
rpose...

Thanks
Kevin

