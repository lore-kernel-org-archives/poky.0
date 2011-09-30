Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB9A0E012A0
	for <poky@yoctoproject.org>; Fri, 30 Sep 2011 14:31:39 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 30 Sep 2011 14:31:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,469,1312182000"; d="scan'208";a="57546243"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by azsmga001.ch.intel.com with ESMTP; 30 Sep 2011 14:31:32 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 30 Sep 2011 14:31:32 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.109]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.120]) with mapi id
	14.01.0323.003; Fri, 30 Sep 2011 14:31:32 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Wolfgang Denk
	<wd@denx.de>
Thread-Topic: [poky] debian.o-hand.com unreachable ?
Thread-Index: AQHMf5pTPjDoWr1fekWfTiObbPvCOJVm5TmA//+LtbA=
Date: Fri, 30 Sep 2011 21:31:31 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237916E8466F@ORSMSX101.amr.corp.intel.com>
References: <20110930175612.667D21208F1C@gemini.denx.de>
	<1317417965.12332.234.camel@ted>
In-Reply-To: <1317417965.12332.234.camel@ted>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: debian.o-hand.com unreachable ?
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
X-List-Received-Date: Fri, 30 Sep 2011 21:31:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

If any references were removed from the Poky Handbook sources it would have=
 been by someone other than me.  The Poky Reference Manual has no such refe=
rences.

Scott

-----Original Message-----
From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Richard Purdie
Sent: Friday, September 30, 2011 2:26 PM
To: Wolfgang Denk
Cc: poky@yoctoproject.org
Subject: Re: [poky] debian.o-hand.com unreachable ?

On Fri, 2011-09-30 at 19:56 +0200, Wolfgang Denk wrote:
> Hello,
>=20
> there are several parts of the Poky Handbok that refer to the
> OpenedHand repository at http://debian.o-hand.com/
>=20
> However, this site seems to be down, and has been unreachable for some
> time.
>=20
> Is there some alternative address for example for the Debian packages
> poky-depends and poky-scripts ?

The packages that were in there were ancient and not likely of any use
on modern distros having not been maintained for a long time.

If we had replacements and someone to maintain it we could reinstate
this but I'm not aware of having anything at this point. I thought the
references had been removed from the manual?

Cheers,

Richard

_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky

