Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0602D4C80FA8
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 19:19:12 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Dec 2010 17:19:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,358,1288594800"; d="scan'208";a="637290463"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga002.fm.intel.com with ESMTP; 16 Dec 2010 17:19:12 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.226.10) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 16 Dec 2010 17:19:11 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx605.amr.corp.intel.com ([10.22.226.10]) with mapi;
	Thu, 16 Dec 2010 17:19:10 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Joshua Lock <josh@openedhand.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Thu, 16 Dec 2010 17:19:10 -0800
Thread-Topic: [poky] elfutils build fails on Fedroa 14
Thread-Index: AcuceApTwRXjtrMhRUC3gHbmtTw3DABD7Smw
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE9405051258@orsmsx504.amr.corp.intel.com>
References: <20101205125755.1B42C351@gemini.denx.de>
	<20101211104711.GB10409@gmail.com>
	<9DA5872FEF993D41B7173F58FCF6BE9404FAD617@orsmsx504.amr.corp.intel.com>
	<1292431496.18631.2.camel@scimitar> <1292431754.18631.4.camel@scimitar>
In-Reply-To: <1292431754.18631.4.camel@scimitar>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: elfutils build fails on Fedroa 14
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
X-List-Received-Date: Fri, 17 Dec 2010 01:19:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>=20
> Actually, this theory makes less sense now that I've re-read the
> initial
> email and seen that the failure is in elfutils native - damn...
>=20
> I've not had any problems building that recipe on Fedora 14 x86_64
> here...
>=20
> Joshua
> --


Thanks Josh for looking at this. Actually we closed this bug. It was issue =
with PATH variable for the bug reporter. It had . in the path too early, ca=
using wrong ld to be chosen. Look at http://bugzilla.pokylinux.org/show_bug=
.cgi?id=3D572 for more information.

Thanks,
Nitin


