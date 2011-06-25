Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 231414C800A6
	for <poky@yoctoproject.org>; Fri, 24 Jun 2011 23:59:02 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 24 Jun 2011 21:59:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,422,1304319600"; d="scan'208";a="20469599"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga002.fm.intel.com with ESMTP; 24 Jun 2011 21:59:01 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx602.amr.corp.intel.com ([10.22.226.211]) with mapi;
	Fri, 24 Jun 2011 21:59:01 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Fri, 24 Jun 2011 21:58:59 -0700
Thread-Topic: [PATCH 0/1] new kernel feature btrfs
Thread-Index: AcwvxQhKbK/dIET7Q+WLL5k0EomypgDL4Bbg
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE94DDF9002E@orsmsx504.amr.corp.intel.com>
References: <cover.1308618114.git.nitin.a.kamble@intel.com>
	<4E0012B0.4060207@windriver.com>
In-Reply-To: <4E0012B0.4060207@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "dvhart@linux.intel.com" <dvhart@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/1] new kernel feature btrfs
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
X-List-Received-Date: Sat, 25 Jun 2011 04:59:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Bruce for pushing forward.
Nitin


> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: Monday, June 20, 2011 8:41 PM
> To: Kamble, Nitin A
> Cc: poky@yoctoproject.org; dvhart@linux.intel.com
> Subject: Re: [PATCH 0/1] new kernel feature btrfs
>=20
> On 11-06-20 9:05 PM, nitin.a.kamble@intel.com wrote:
> > From: Nitin A Kamble<nitin.a.kamble@intel.com>
> >
> >
> > The following changes since commit
> 8888d948e0ddbc5f37bd3dc23cc1b398ab230e2e:
> >
> >    meta: add utrace feature for linux-yocto (2011-06-16 15:41:23 -
> 0400)
> >
> > are available in the git repository at:
> >    git://git.pokylinux.org/linux-yocto-2.6.37-contrib nitin/btrfs
> >    http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-
> contrib/log/?h=3Dnitin/btrfs
>=20
> Looks good here. I'm doing a config update at the moment, and I've
> pulled it into 2.6.37, once in, it'll propagate through to the dev
> kernels and follow us as we update.
>=20
> Cheers,
>=20
> Bruce
>=20
> >
> > Nitin A Kamble (1):
> >    btrfs.scc,cfg: add a new feature which enables btrfs kernel
> >      configuration
> >
> >   meta/cfg/kernel-cache/cfg/btrfs.cfg |    2 ++
> >   meta/cfg/kernel-cache/cfg/btrfs.scc |    1 +
> >   2 files changed, 3 insertions(+), 0 deletions(-)
> >   create mode 100644 meta/cfg/kernel-cache/cfg/btrfs.cfg
> >   create mode 100644 meta/cfg/kernel-cache/cfg/btrfs.scc
> >


