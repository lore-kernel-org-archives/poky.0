Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5049D4C80594
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 17:01:49 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Jan 2011 15:01:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,382,1291622400"; d="scan'208";a="596798533"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 26 Jan 2011 15:01:44 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 27 Jan 2011 07:01:42 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 27 Jan 2011 07:01:42 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Thu, 27 Jan 2011 07:01:40 +0800
Thread-Topic: [poky] question about the sender of this mailing list
Thread-Index: Acu9oBBtKdy4C0KXQHqyio9cPtVN9AADOMHA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504DB5BB7589@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504DB5BB7093@shsmsx502.ccr.corp.intel.com>
	<4D409213.1080703@linux.intel.com>
In-Reply-To: <4D409213.1080703@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: question about the sender of this mailing list
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
X-List-Received-Date: Wed, 26 Jan 2011 23:01:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Darren Hart [mailto:dvhart@linux.intel.com]
> Sent: Thursday, January 27, 2011 5:29 AM
> On 01/25/2011 04:20 PM, Tian, Kevin wrote:
> > Hi, all,
> >
> > I just found one weird change today.
> >
> > Normally I received mails from this list by:
> > 	Poky-bounces@yoctoproject.org on behalf of someone
> >
> > That way in my inbox I can sort the mails by the sender names, which is=
 also
> the most typical way I see in most projects
> >
> > However today I also saw some plain senders:
> > 	Poky-bounces@yoctoproject.org
> > (from Josh, Edwin, Scott...)
> >
> > Does anyone know what may be the cause for this?
>=20
> Sorry about that, it was from my previous commit to avoid sending
> patches as the git commit author. I have sent the fix to this list,
> pending merge.
>=20

Thanks for your quick fix
Kevin

