Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E14D4C81246
	for <poky@pokylinux.org>; Thu, 27 Jan 2011 21:42:02 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Jan 2011 19:42:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,390,1291622400"; d="scan'208";a="701533942"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 27 Jan 2011 19:42:00 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 28 Jan 2011 11:40:05 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 28 Jan 2011 11:40:04 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 28 Jan 2011 11:40:03 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, "poky@pokylinux.org"
	<poky@pokylinux.org>
Date: Fri, 28 Jan 2011 11:40:02 +0800
Thread-Topic: [PATCH 0/5] a series of patches to address some LTP failures
Thread-Index: Acu+GV2PrdjZ6bSYSUqgrZj/Vr6fDgAg5GeQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504DB5E0584F@shsmsx502.ccr.corp.intel.com>
References: <1bdc18$jdga4u@fmsmga002.fm.intel.com>
In-Reply-To: <1bdc18$jdga4u@fmsmga002.fm.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PATCH 0/5] a series of patches to address some LTP failures
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
X-List-Received-Date: Fri, 28 Jan 2011 03:42:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Since bugzilla is up again, I've updated my commit messages to include BUGI=
D, and synced to
poky-contrib. I don't send new pull request due to simple change though.

Thanks
Kevin

> -----Original Message-----
> From: Tian, Kevin
> Sent: Thursday, January 27, 2011 7:39 PM
> To: poky@pokylinux.org
> Cc: Tian, Kevin
> Subject: [PATCH 0/5] a series of patches to address some LTP failures
>=20
> From: Kevin Tian <kevin.tian@intel.com>
>=20
> Because now bugzilla is not usable, no bug number is included in this ser=
ies.
> I'll report them later with these commits included for reference.
>=20
> With this series of fixes, all the LTP failures on Qemux86 target are aud=
ited
> which composed ~85% total failures on all platforms.
>=20
> For detail result, please check https://wiki.yoctoproject.org/wiki/LTP_re=
sult
>=20
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: tk/master
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dtk/mast=
er
>=20
> Thanks,
>     Kevin Tian <kevin.tian@intel.com>
> ---
>=20
>=20
> Kevin Tian (5):
>   base-files: remove ending colon from default $PATH for root user
>   cronie: enable multi-user crontab usage and make cron environment
>     complete
>   bash: use /bin/bash as default shell when bash is included
>   at: allow normal user to use 'at'
>   task-poky-sdk: add 'file' and 'ldd'
>=20
>  meta/recipes-core/base-files/base-files/profile   |    2 +-
>  meta/recipes-core/base-files/base-files_3.0.14.bb |    2 +-
>  meta/recipes-core/tasks/task-poky-sdk.bb          |    4 ++-
>  meta/recipes-extended/at/at_3.1.12.bb             |   29
> +++++++++++++++---
>  meta/recipes-extended/bash/bash.inc               |    5 +++
>  meta/recipes-extended/bash/bash_3.2.48.bb         |    2 +-
>  meta/recipes-extended/bash/bash_4.1.bb            |    2 +-
>  meta/recipes-extended/cronie/cronie/crontab       |   10 ++++++
>  meta/recipes-extended/cronie/cronie_1.4.6.bb      |   33
> +++++++++++++++++++-
>  9 files changed, 77 insertions(+), 12 deletions(-)
>  create mode 100644 meta/recipes-extended/cronie/cronie/crontab


