Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8FD564C8106A
	for <poky@lists.pokylinux.org>; Mon, 24 Jan 2011 18:00:47 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 24 Jan 2011 16:00:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,372,1291622400"; d="scan'208";a="880568038"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 24 Jan 2011 16:00:46 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 25 Jan 2011 08:00:45 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 25 Jan 2011 08:00:44 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, "Zanussi, Tom" <tom.zanussi@intel.com>
Date: Tue, 25 Jan 2011 08:00:43 +0800
Thread-Topic: [poky] Build failure
Thread-Index: Acu8G0+wx3CdlWIPTDOhUBHh/qauvAAByBig
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504DB5BB6AE6@shsmsx502.ccr.corp.intel.com>
References: <4D3DF0F8.50704@mlbassoc.com>
	<1295905978.10128.65.camel@elmorro> <4D3E05CA.8080002@mlbassoc.com>
In-Reply-To: <4D3E05CA.8080002@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Build failure
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
X-List-Received-Date: Tue, 25 Jan 2011 00:00:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Gary Thomas
> Sent: Tuesday, January 25, 2011 7:06 AM
>=20
> On 01/24/2011 02:52 PM, Tom Zanussi wrote:
> > On Mon, 2011-01-24 at 13:36 -0800, Gary Thomas wrote:
> >> Trying to build poky-image-sato-live:
> >>     OE Build Configuration:
> >>     BB_VERSION        =3D "1.11.0"
> >>     METADATA_BRANCH   =3D "master"
> >>     METADATA_REVISION =3D
> "74783fec56d6ced1a793b36410233472e7daf445"
> >>     TARGET_ARCH       =3D "i586"
> >>     TARGET_OS         =3D "linux"
> >>     MACHINE           =3D "qemux86"
> >>     DISTRO            =3D "poky"
> >>     DISTRO_VERSION    =3D "0.9+snapshot-20110124"
> >>     TARGET_FPU        =3D ""
> >>
> >> ERROR: Function 'build_boot_bin' failed (see
> /home/local/pc_poky/tmp/work/i586-poky-linux/poky-image-sato-live-1.0-r0/=
te
> mp/log.do_bootimg.10954 for further information)
> >> ERROR:
> '/tmp/poky-amltd2/meta/recipes-sato/images/poky-image-sato-live.bb' faile=
d
> >> ERROR: Logfile of failure stored in:
> /home/local/pc_poky/tmp/work/i586-poky-linux/poky-image-sato-live-1.0-r0/=
te
> mp/log.do_bootimg.10954
> >> Log data follows:
> >> | install: cannot stat
> `/home/local/pc_poky/tmp/sysroots/qemux86-poky-linux/kernel/bzImage': No
> such file or directory
> >> | Function 'build_boot_bin' failed (see
> /home/local/pc_poky/tmp/work/i586-poky-linux/poky-image-sato-live-1.0-r0/=
te
> mp/log.do_bootimg.10954 for further information)
> >> | ERROR: Function 'build_boot_bin' failed (see
> /home/local/pc_poky/tmp/work/i586-poky-linux/poky-image-sato-live-1.0-r0/=
te
> mp/log.do_bootimg.10954 for further information)
> >> NOTE: package poky-image-sato-live-1.0-r0: task build_boot_bin: Failed
> >> ERROR: Task 9
> (/tmp/poky-amltd2/meta/recipes-sato/images/poky-image-sato-live.bb,
> do_bootimg) failed with exit code '1'
> >>
> >> n.b. I tried to access BugZilla to report this, but that
> >> failed as well :-(
> >>
> >
> > The problem is this commit:
> >
> > commit bc9d2fbfd4eaad0df5647dd5d07dfb9fcff80ff3
> > Author: Dongxiao Xu<dongxiao.xu@intel.com>
> > Date:   Tue Jan 18 16:17:58 2011 +0800
> >
> >      staging: Use relative path in sysroot-destdir for target recipes
> >
> > Dongxiao is aware of the problem and working on a fix.  In the meantime=
,
> > you could try the fix below from Dongxiao, cut and pasted from IRC, or
> > back up to the commit before that...
> >
> > Hope that helps,
> >
> > Tom
> >
> > diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
> > index 9d3b2bb..d1b5398 100644
> > --- a/meta/classes/kernel.bbclass
> > +++ b/meta/classes/kernel.bbclass
> > @@ -512,3 +512,5 @@ EXPORT_FUNCTIONS do_deploy
> > PACKAGES =3D+ "perf"
> > FILES_perf =3D "${bindir}/* \
> > ${libexecdir}"
> > +
> > +do_populate_sysroot[sstate-outputdirs] =3D
> "${STAGING_DIR}/${MACHINE}${HOST_VENDOR}-${HOST_OS}/"
>=20
> Yes, this helped, but I did have to run 'bitbake virtual/kernel -c clean'
> before it made any difference.
>=20
> Thanks

PR needs to be bumped in this case, which however reminds me one confusing =
area
I didn't think about before.

How do we handle the class changes which are inherited by many recipes? Gen=
erally
we need bump PRs once the output of a recipe gets changed, but it looks cla=
ss file
is usually ignored.

Is there any easy way to have all recipes inheriting same class file bumpin=
g their PRs,
or has to be done by manual check?

Thanks
Kevin

