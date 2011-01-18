Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1E8834C80039
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 22:17:04 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Jan 2011 20:17:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,336,1291622400"; d="scan'208";a="593902816"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga002.jf.intel.com with ESMTP; 17 Jan 2011 20:17:03 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.226.128) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 17 Jan 2011 20:17:03 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx606.amr.corp.intel.com ([10.22.226.128]) with mapi;
	Mon, 17 Jan 2011 20:17:03 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
Date: Mon, 17 Jan 2011 20:16:59 -0800
Thread-Topic: [poky] [PATCH 12/12] screenshot: fix build issue with gcc dso
	linking change
Thread-Index: Acu2wYHZ/m01Ay/VR0qqt/zEyRMthgABNCpQ
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE94056314A8@orsmsx504.amr.corp.intel.com>
References: <cover.1295304080.git.nitin.a.kamble@intel.com>
	<9e69f662636b4cd4f9c21b9e5cddf3054d9a65a0.1295304080.git.nitin.a.kamble@intel.com>
	<4D350BC3.7030409@windriver.com>
In-Reply-To: <4D350BC3.7030409@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 12/12] screenshot: fix build issue with gcc dso linking change
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
X-List-Received-Date: Tue, 18 Jan 2011 04:17:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>=20
> Similar to the last one.  On first look, the GTK_LIBS or libshot.la
> might be
> incorrect causing this failure.  If it's been verified that both
> GTK_LIBS values
> and the libshot.la match the contents of the library.... and these
> things are
> application specific the change is fine.. I'd just like a comment
> explaining that.
>=20
> --Mark

Hi mark,
    Thanks for this review. I will check the .la file for this one also and=
 update the comments.
Thanks,
Nitin


