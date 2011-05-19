Return-Path: <david.c.stewart@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id BC88A4C800AC
	for <poky@yoctoproject.org>; Thu, 19 May 2011 10:28:50 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 19 May 2011 08:28:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,238,1304319600"; 
   d="scan'208";a="4666978"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga001.fm.intel.com with ESMTP; 19 May 2011 08:28:50 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 19 May 2011 08:28:50 -0700
Received: from orsmsx501.amr.corp.intel.com ([10.22.226.209]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Thu, 19 May 2011 08:28:49 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: 'Gary Thomas' <gary@mlbassoc.com>, Mark Hatle <mark.hatle@windriver.com>
Date: Thu, 19 May 2011 08:28:49 -0700
Thread-Topic: [poky] RPM vs IPK
Thread-Index: AcwWMMle/IzgQ511SgetLS/RHyucrAACd+6w
Message-ID: <B27EBC40D200ED48A3F4CC2EBEABAE0B260257458C@orsmsx501.amr.corp.intel.com>
References: <4DD5239A.30404@mlbassoc.com> <4DD52666.6050003@windriver.com>
	<4DD52886.80003@mlbassoc.com>
In-Reply-To: <4DD52886.80003@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: RPM vs IPK
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
X-List-Received-Date: Thu, 19 May 2011 15:28:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Gary Thomas
> Sent: Thursday, May 19, 2011 7:26 AM
>=20
> On 05/19/2011 08:17 AM, Mark Hatle wrote:
> > On 5/19/11 9:05 AM, Gary Thomas wrote:
> >> Building Poky for various targets, I see some striking differences
> >> based on the packaging.  I'm building for the beagleboard (RPM) and
> >> my own OMAP/3530 (IPK), so everything is the same for these packages
> >> (same compiler, architecture, etc), only the package method differs.
> >> This was built on an otherwise idle box
> >> 4-way (Intel(R) Core(TM)2 Quad CPU    Q6600  @ 2.40GHz), with
> >>     BB_NUMBER_THREADS ?=3D "4"
> >>     PARALLEL_MAKE ?=3D "-j 4"
> >>
> >> Each of these tests are a complete build of the package, with all
> >> dependencies already built.  For example, I use this sequence:
> >>     % bitbake perl
> >>     % bitbake perl -c clean
> >>     % rm sstate-cache/sstate-perl-arm*
> >>     % time bitbake perl
> >>
> >> perl -      RPM                         IPK
> >>          real    12m15.520s          real    9m43.228s
> >>          user    5m42.988s           user    4m40.692s
> >>          sys     3m56.636s           sys     2m19.860s
> >>
> >> eglibc     RPM                          IPK
> >>          real    32m19.984s          real    23m52.124s
> >>          user    15m32.732s          user    20m48.214s
> >>          sys     17m28.087s          sys     9m3.936s
> >>
> >> Bottom line - it seems to take 20-30% longer to package via RPM.
> >>
> >> I know there are reasons and tradeoffs for different packaging
> >> methods, but 30% extra?
> >>
> >
> > This matches my expectations for the most part.  RPM creates and
> > processes a lot more metadata then IPK.  IPK is well optimized for
> > small systems, and certainly I would advise someone generating a small
> system to use IPK.
> >
> > For medium and (especially) large systems, RPM starts to give more
> > abilities that IPK due to the additional meta data.  This includes
> > individual file type information, file checksum generation and
> > evaluation on install, sparse file support, conflict detection and
> > resolution [for multilib systems], ACID style upgrade, repackaging
> > abilities for rollback, etc..  (Some of the items for RPM are not yet
> > enabled in oe-core, but could be by individual developers.)
> >
> > (I also wouldn't be surprised if we've got integration optimizations
> > in the RPM backend in oe-core that could help with those numbers.  The
> > numbers seem to be much worse on packages with large numbers of files,
> > vs the typical package with only a few to a hundred or so files.)
> >
> > Downside of RPM for small systems is the Berkley DB and the amount of
> meta data.
> >   If you will be doing on-device upgrades the space required to handle
> > the berkley DB and related items is quite large..  Also many of the
> > advanced features available in RPM simple are not needed in small
> systems.
>=20
> Fair enough.  Perhaps the packaging type should be chosen based on the
> target, e.g. the BeagleBoard probably would be best served by IPK.
>=20
> Certainly, these data/tradeoffs should be made clear somewhere in the
> documentation.

I agree - hey Gary, can you please file a Bugzilla to add this to the Refer=
ence Manual?  Thanks...

