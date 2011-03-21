Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3EF7C4C800AC
	for <poky@yoctoproject.org>; Mon, 21 Mar 2011 10:35:56 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 21 Mar 2011 08:35:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,219,1299484800"; d="scan'208";a="899524906"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga001.fm.intel.com with ESMTP; 21 Mar 2011 08:35:55 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx604.amr.corp.intel.com ([10.250.113.17]) with mapi;
	Mon, 21 Mar 2011 08:35:55 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Denys Dmytriyenko <denis@denix.org>, Patches and discussions about the
	oe-core layer <openembedded-core@lists.openembedded.org>
Date: Mon, 21 Mar 2011 08:35:50 -0700
Thread-Topic: [poky] [OE-core] [PATCH 0/7] Non-GPLv3 Changes & a dependency Fix
Thread-Index: Acvnwcw9Z/2QJ2mMTma6h3ySOFEpuQAG43hA
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE9432118217@orsmsx504.amr.corp.intel.com>
References: <cover.1300355683.git.sgw@linux.intel.com>
	<1300384055.30423.2078.camel@rex> <20110321062422.GB5575@denix.org>
In-Reply-To: <20110321062422.GB5575@denix.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [OE-core] [PATCH 0/7] Non-GPLv3 Changes & a dependency Fix
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
X-List-Received-Date: Mon, 21 Mar 2011 15:35:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Denys Dmytriyenko
> Sent: Sunday, March 20, 2011 11:24 PM
> To: Patches and discussions about the oe-core layer
> Cc: poky@yoctoproject.org
> Subject: Re: [poky] [OE-core] [PATCH 0/7] Non-GPLv3 Changes & a
> dependency Fix
>=20
> On Thu, Mar 17, 2011 at 05:47:35PM +0000, Richard Purdie wrote:
> > On Thu, 2011-03-17 at 02:58 -0700, Saul Wold wrote:
> > > From: Saul Wold <sgw@linux.intel.com>
> > >
> > > This set of changes enables both poky-image-minimal and poky-image-
> basic
> > > to build non-gplv3 core image. These are bound for bernard
> > >
> > > There is also a fix for the gnome-vfs dependency on ACL. This is
> > > a potential build stopper and should be considered for bernard
> > >
> > > Pull URL: git://git.openembedded.org/openembedded-core-contrib
> > >   Branch: sgw/non-gplv3
> > >   Browse: http://git.openembedded.org/cgit.cgi/openembedded-core-
> contrib/log/?h=3Dsgw/non-gplv3
> > >
> > > Thanks,
> > >     Saul Wold <sgw@linux.intel.com>
> > > ---
> > >
> > >
> > > Saul Wold (7):
> > >   util-linux: Setup for GPLv2 Recipe
> >
> > I don't like this patch at all, there are some typos in it and some
> > other issues. Too risky for bernard for sure. I'm leaving it for now.
>=20
> FYI, in Arago I had to repackage util-linux-ng source tarball w/o lscpu
> pieces
> to completely avoid GPLv3, instead of removing them on the fly... In
> case when
> said source tarball needs to be mirrored or distributed with the build.
>=20
> And, BTW, there is one more little script under GPLv3 -
> tests/ts/lscpu/lscpu

In the updated commit, all the lscpu files from tests directory also are re=
moved.

+do_remove_lscpu() {
+    if [ "x${REMOVELSCPU}" =3D "xyes" ]; then
+         rm -f sys-utils/lscpu.c sys-utils/lscpu.1
+         rm -rf tests/ts/lscpu tests/expected/lscpu
+    fi
+}

Thank you,
Nitin

>=20
> --
> Denys
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


