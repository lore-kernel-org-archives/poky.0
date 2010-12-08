Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6EEF84C811F9
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 21:01:34 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 07 Dec 2010 19:01:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,314,1288594800"; d="scan'208";a="865713546"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 07 Dec 2010 19:01:33 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 8 Dec 2010 11:00:52 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Wed, 8 Dec 2010
	11:00:51 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Date: Wed, 8 Dec 2010 11:00:49 +0800
Thread-Topic: About the operator "??="
Thread-Index: AcuQ+xGLEfP2UAIORSyAo5XLjNLiFAFiOa3w
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A314F28F6@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: About the operator "??="
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
X-List-Received-Date: Wed, 08 Dec 2010 03:01:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

Do you have comments on this one?

Thanks,
Dongxiao

Xu, Dongxiao wrote:
> Hi Richard,
>=20
> Recently when investigating the file parsing speed, I found the
> implementation of "??=3D" is another hot spot. This operator will not
> apply the default assignment until the end of the parse, which is
> different from "?=3D". According to current poky, the users for "??=3D"
> is mostly the scm revisions stored in poky-default-revisions.inc.   =20
>=20
> Currently the final assignment logic for "??=3D" is added in
> finalize(), which costs about 20% parsing time.=20
>=20
> The differences between "??=3D" and "?=3D" are straight forward, however
> I don't fully understand in which senario the "??=3D" should be used.
> Or in other word, why those scm revisions should use "??=3D". Could you
> help to clarify a bit? Thanks so much!  =20
>=20
> BTW, I noticed that openembedded doesn't use this operator.
>=20
> Best Regards,
> -- Dongxiao


