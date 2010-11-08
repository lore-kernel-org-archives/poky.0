Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B18004C803D6
	for <poky@lists.pokylinux.org>; Sun,  7 Nov 2010 21:17:02 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 07 Nov 2010 19:17:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,312,1286175600"; d="scan'208";a="675212743"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 07 Nov 2010 19:17:01 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 8 Nov 2010 11:16:44 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Mon, 8 Nov 2010
	11:16:11 +0800
From: "Yu, Ke" <ke.yu@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, Gary Thomas <gary@mlbassoc.com>,
	Poky <poky@lists.pokylinux.org>
Date: Mon, 8 Nov 2010 11:16:10 +0800
Thread-Topic: [poky] Crazy QT packaging
Thread-Index: Act9skc1zb8uBKdhSDOIxxtjLqcXkgAke4HAACsxMwA=
Message-ID: <33AB447FBD802F4E932063B962385B3530241DC8@shsmsx501.ccr.corp.intel.com>
References: <4CD550D9.30601@mlbassoc.com>
	<625BA99ED14B2D499DC4E29D8138F1504D190FD7B0@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D190FD7B0@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Crazy QT packaging
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
X-List-Received-Date: Mon, 08 Nov 2010 03:17:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes, QT cleanup is already one thing in my mind for quite long time, please=
 submit the bug and I will take look.

Regards
Ke

> -----Original Message-----
> From: poky-bounces@yoctoproject.org
> [mailto:poky-bounces@yoctoproject.org] On Behalf Of Tian, Kevin
> Sent: Sunday, November 07, 2010 2:30 PM
> To: Gary Thomas; Poky
> Subject: Re: [poky] Crazy QT packaging
>=20
> >From: Gary Thomas
> >Sent: Saturday, November 06, 2010 8:58 PM
> >
> >I just tried to install 'fotowall', a QT application.  Much to
> >my surprise, a whole bunch of QT packages were installed, many
> >of which I have no need and don't understand why they are "required".
> >
> >In particular, the examples and demos, plus QT-designer (I have
> >no development tools installed on my platform).
> >
> >Any ideas why this happens?  how to fix it?
> >
> >Install log is attached.
> >
>=20
> qt4.inc recommends all packages but some of them should be selectively
> depended by actual recipe. Could you report a bug for it?
>=20
> BTW, fotowall doesn't really work yet. There're several hard bugs reporte=
d
> around
> fotowall, e.g. 348, 349, 336, 280, ...)
>=20
> Thanks
> Kevin
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

