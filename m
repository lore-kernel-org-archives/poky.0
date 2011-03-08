Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B28724C800AC
	for <poky@yoctoproject.org>; Tue,  8 Mar 2011 00:19:12 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 07 Mar 2011 22:19:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,283,1297065600"; d="scan'208";a="664933340"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 07 Mar 2011 22:19:11 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 8 Mar 2011 14:18:03 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Tue, 8 Mar 2011
	14:18:02 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: kubera samrat <kubera.samrat@gmail.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Tue, 8 Mar 2011 14:17:59 +0800
Thread-Topic: [poky] error while adding alsa-utils to my recipe
Thread-Index: AcvdU4Dq/9XljpAhSPKgGf2bu8QAnwABMzxg
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A3357397C@shsmsx501.ccr.corp.intel.com>
References: <AANLkTi=up7xTGUbD85evMyutLjjqhAsUnfPTjXy+vZkH@mail.gmail.com>
In-Reply-To: <AANLkTi=up7xTGUbD85evMyutLjjqhAsUnfPTjXy+vZkH@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: error while adding alsa-utils to my recipe
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
X-List-Received-Date: Tue, 08 Mar 2011 06:19:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ncurses should provide that library. Did you add 'ncurses' to the alsa-util=
s DEPENDS?

You can refer to ${POKYBASE}/meta/recipes-multimedia/alsa/alsa-utils_1.0.23=
.bb as an example.

Alsa-utils 1.0.23 is the current version in poky and the build should work.

Thanks,
Dongxiao

kubera samrat wrote:
> Hi all,
>                      While compilation alsa-utils 1.0.21 I got:
> checking for form.h... yes checking for new_panel in -lpanelw... no
> configure: error: panelw library not found.
> Could you please suggest me a solution.
>=20
> I am using ubunti 10.04 on 64 bit machine
>=20
>=20
>=20
> Thanks and regards


