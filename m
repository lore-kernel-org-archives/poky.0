Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id EEB7C4C80BD4
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 10:37:39 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 20 Jan 2011 08:37:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,351,1291622400"; d="scan'208";a="594864874"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga002.jf.intel.com with ESMTP; 20 Jan 2011 08:37:39 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.226.128) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 20 Jan 2011 08:37:39 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx606.amr.corp.intel.com ([10.22.226.128]) with mapi;
	Thu, 20 Jan 2011 08:37:39 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>
Date: Thu, 20 Jan 2011 08:37:35 -0800
Thread-Topic: [poky] [PATCH 1/1] libzypp: fix build issue with gcc dso
	linking change
Thread-Index: Acu4BbgUBLSll5LcSvO8D3V631RqwQAuohkw
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE940570D16E@orsmsx504.amr.corp.intel.com>
References: <cover.1295400220.git.nitin.a.kamble@intel.com>
	<fdb315f366138ac08fd05d0b3609e1243a043edf.1295400220.git.nitin.a.kamble@intel.com>
	<4D372BB2.9000503@intel.com>
In-Reply-To: <4D372BB2.9000503@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] libzypp: fix build issue with gcc dso linking change
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
X-List-Received-Date: Thu, 20 Jan 2011 16:37:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> Nitin,
>=20
> This comment does not make any sense for libzypp, I don't think libzypp
> needs to be linked with libX11, looks like the comment should mention
> pthreads.
>=20
> Sau!
Saul,
   You are right. I have already fixed this comment issue in the contrib. b=
ranch.

Thanks,
Nitin



