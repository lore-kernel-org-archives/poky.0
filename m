Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 895AC4C805AF
	for <poky@yoctoproject.org>; Wed, 11 May 2011 10:35:13 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 11 May 2011 08:35:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,353,1301900400"; d="scan'208";a="641285170"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 11 May 2011 08:35:13 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.226.10) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 11 May 2011 08:35:12 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx605.amr.corp.intel.com ([10.22.226.10]) with mapi;
	Wed, 11 May 2011 08:35:12 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Wed, 11 May 2011 08:35:10 -0700
Thread-Topic: [poky] GCC 4.6.0 on ARM?
Thread-Index: AcwPysCH6TTDEUkLRyqIsLrSE/GgcAAJeaVg
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE94D88F0328@orsmsx504.amr.corp.intel.com>
References: <4DB99F31.4000308@mlbassoc.com>
	<BANLkTikaf3MHYrnbvHDno3dSv_LhsLyFVg@mail.gmail.com>
	<BANLkTi=G-4UfXNdnJSy7qF3gb0-xLr6+4Q@mail.gmail.com>
	<4DBEAA2C.1020601@mlbassoc.com>
	<9DA5872FEF993D41B7173F58FCF6BE94D88F0101@orsmsx504.amr.corp.intel.com>
	<4DCA6C60.6050203@mlbassoc.com>
In-Reply-To: <4DCA6C60.6050203@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Poky Project <poky@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: GCC 4.6.0 on ARM?
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
X-List-Received-Date: Wed, 11 May 2011 15:35:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> Yes, that's the only change.  Building the kernel from the same
> source repository with 4.5.2 (using patches from you and Khem Raj)
> works perfectly.
>=20
Hi Gary,
  The yocto-linux kernel had to go through few changes to mute some compile=
r warnings with gcc 4.6.0. Are you building your own kernel?

Thanks,
Nitin


