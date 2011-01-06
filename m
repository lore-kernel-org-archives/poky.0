Return-Path: <liping.ke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2B44C4C8106A
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 19:19:57 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 05 Jan 2011 17:19:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,280,1291622400"; d="scan'208";a="590300805"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 05 Jan 2011 17:19:55 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 6 Jan 2011 09:19:04 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Thu, 6 Jan 2011
	09:19:03 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: Saul Wold <sgw@linux.intel.com>, "Zhang, Jessica" <jessica.zhang@intel.com>
Date: Thu, 6 Jan 2011 09:19:02 +0800
Thread-Topic: [poky] [PATCH 0/1] single patch for new adt-installer feature
Thread-Index: AcutJJgiSk6QfMY9QtqIEM5qulIKIgAGnR8g
Message-ID: <789F9655DD1B8F43B48D77C5D3065973315F093F@shsmsx501.ccr.corp.intel.com>
References: <cover.1294126930.git.jessica.zhang@intel.com>
	<4D24EB02.7000807@linux.intel.com>
In-Reply-To: <4D24EB02.7000807@linux.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/1] single patch for new adt-installer feature
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
X-List-Received-Date: Thu, 06 Jan 2011 01:19:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Saul

Thanks for your review!


> Liping,
>=20
> I notice that you have GPLv2 Headers in the scripts, but the .bb file
> refers to a MIT and the Poky main license, you should probably change
> these scripts to point use MIT Headers and copyright should be 2010-
> 2011.
>=20
I will correct the license information when resend pull request.

> You should not be exposing internal intel host information in the .conf
> files, maybe you can use the autobuilder repos instead of an internal
> on
> since outside people will use this code also.
>=20
Yes, this is only for internal testing since the infrastructure for install=
er
(should be in autobuilder for external access?) is not ready. The correct
address will given after the repo is setup.

> I am not sure I like the idea of /opt/poky being hardcoded, will this
> be
> addressed in the future?  I think that /opt/poky is still hard-coded in
> some of the tools, but I hope this will be changing in the future, so
> more of a heads up.

Yes, if the /opt/poky problem is fixed in the future, surely we'll update i=
t.
But I guess it will not be ready in 1.0 release. So I will keep an eye on t=
his.
Once modified, I will change it accordingly.

So, I will resend the patch after our external repo is setup.

Thanks a lot for your help!
criping
>=20
> Sau!

