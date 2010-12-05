Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6742F4C80052
	for <poky@yoctoproject.org>; Sun,  5 Dec 2010 05:07:20 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Dec 2010 03:07:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,301,1288594800"; d="scan'208";a="633239533"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 05 Dec 2010 03:07:17 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sun, 5 Dec 2010 19:07:16 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Sun, 5 Dec 2010
	19:07:15 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Sun, 5 Dec 2010 19:07:13 +0800
Thread-Topic: sstate status
Thread-Index: AcuTCAh7OXwgyCKtSA2y++c8/WZYcABZEAQg
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D475430F3@shsmsx502.ccr.corp.intel.com>
References: <201012031634.56033.paul.eggleton@linux.intel.com>
In-Reply-To: <201012031634.56033.paul.eggleton@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: sstate status
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
X-List-Received-Date: Sun, 05 Dec 2010 11:07:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
>Sent: Saturday, December 04, 2010 12:35 AM
>
>Hi all,
>
>I've been doing some tests with sstate, and I've managed to get to a stage=
 where I can
>share the SSTATE_DIR between my two machines (one running Fedora 14 and th=
e other
>Kubuntu 10.10) and almost get a successful build from a clean TMPDIR. My l=
ast test got to
>poky-image-minimal.do_rootfs and then failed due to some kind of package d=
ependency
>issue:
>
>--------- snip ---------
>| Processing rpm...
>| Processing zypper...
>| error: Failed dependencies:
>|       elfutils >=3D 0.148 is needed by rpm-5.1.10-r7.i586
>|       libaugeas0 >=3D 0.7.3 is needed by
>zypper-1.4.7+git0+9eb0e248e06c8d20ad054be2439149d9ede37531-r1.i586
>| ERROR: Task failed: ('function do_rootfs failed',
>'/home/pokystuff/tmp/work/qemux86-poky-linux/poky-image-minimal-1.0-r0/tem=
p/log.
>do_rootfs.6874')
>--------- snip ---------
>
>A "bitbake -c clean augeas elfutils" and then "bitbake poky-image-minimal"=
 again went
>through OK (and built the aforementioned recipes from sstate) , so I'm not=
 sure what went
>wrong here.
>
>My current state of work is in the paule/sstate contrib branch, which is b=
ased on Kevin's
>tk/sstate branch. Kevin, I think the sooner we can move this towards maste=
r the better,
>then we can get some wider testing.

Thanks for your fixes. I made some mistakes when occasionally rebase and sm=
ash my=20
commits with master and it's good that you caught them. I agree that we nee=
d make it
into master as early as possible. I saw Richard has pushed some different e=
nhancements.
Let's give it some tests then.

Thanks
Kevin

>
>FYI Joshua has made bug #507 into a tracking bug for current sstate issues=
:
>http://bugzilla.pokylinux.org/show_bug.cgi?id=3D507
>



