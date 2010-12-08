Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A9AFE4C811C4
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 21:01:28 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Dec 2010 19:01:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,314,1288594800"; d="scan'208";a="581600908"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 07 Dec 2010 19:01:17 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 8 Dec 2010 10:59:11 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 8 Dec 2010 10:59:11 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Wed, 8 Dec 2010
	10:59:10 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Wed, 8 Dec 2010 10:59:06 +0800
Thread-Topic: [poky] Master Stability
Thread-Index: AcuVslfjC50uvF0hSGmWLFZLvYFNYAAz94ZA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D515D0A66@shsmsx502.ccr.corp.intel.com>
References: <4CFD94DD.7010906@intel.com>
In-Reply-To: <4CFD94DD.7010906@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Master Stability
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
X-List-Received-Date: Wed, 08 Dec 2010 03:01:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Saul Wold
>Sent: Tuesday, December 07, 2010 9:59 AM
>
>
>Folks,
>
>We had a rash of changes that have broken master, I am trying to resolve
>the last few breakages, which mostly are in meta-toolchain-sdk build. I
>realized that this is not in our normal test build path.
>
>I have fixes for most of the break (I hope), there are still a couple of
>items that we need to address.
>
>There is a failure for libatomics on mips, there may be a configuration
>issue.
>
>Please be sure to verify your builds before makeing pull requests.
>
>

In our 0.9 cycle, I think the rule was to have people develop in an increme=
ntal
way (cover all archs), and then do a full build on one target arch complete=
ly different=20
from the build arch before the pull request.=20

Above should expose most problems without posing too much test burdens on
developers given the long cycle of a nightly test.

Of course this still leaves some potential issues such as parallel make iss=
ues, or
occasional bugs exposed in full build on a non-verified arch.

The reality is that current build cycle is too long. I'd suggest to pull ba=
ck the concept=20
of distro/stage, and then only push our bash requests to master after verif=
ying it in=20
distro/stage. This gives us an intermediate filter on master quality.

Once sstate is in good shape, we can then ask people do full build on all a=
rchs
before sending pull requests to further ensure the quality.

Thanks
Kevin



