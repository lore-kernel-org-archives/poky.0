Return-Path: <cristian.iorga@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A506E00736
	for <poky@yoctoproject.org>; Tue, 25 Feb 2014 23:16:01 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Feb 2014 23:16:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,545,1389772800"; d="scan'208";a="462419296"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by orsmga001.jf.intel.com with ESMTP; 25 Feb 2014 23:15:59 -0800
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 26 Feb 2014 07:15:58 +0000
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.202]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.192]) with mapi id
	14.03.0123.003; Wed, 26 Feb 2014 07:15:58 +0000
From: "Iorga, Cristian" <cristian.iorga@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>, Bryan Evenson
	<bevenson@melinkcorp.com>
Thread-Topic: [poky] Setup for hot plugging Ethernet
Thread-Index: Ac8vORk8KK7YruPHTpW/QlQUMhOYyAACkNcAAMA14uAAAMfQAAAeu/mw
Date: Wed, 26 Feb 2014 07:15:58 +0000
Message-ID: <969F26A8BAB325438E7EB80D3C3134FB16D02663@IRSMSX105.ger.corp.intel.com>
References: <54eef9b1596a474c8b0817db566f492d@BLUPR05MB037.namprd05.prod.outlook.com>
	<CAJTo0LZm5RVV2CNN7w9OyC0=Hk8vVrGL515p4H3sNN_r9iQ9zA@mail.gmail.com>
	<ba11cffc684b4f0588b819270e6539b2@BLUPR05MB037.namprd05.prod.outlook.com>
	<CAJTo0LapdJqMb53d0ZOn1iOvafZDV4ix9VTfrr22vVTTGJBOHw@mail.gmail.com>
In-Reply-To: <CAJTo0LapdJqMb53d0ZOn1iOvafZDV4ix9VTfrr22vVTTGJBOHw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Setup for hot plugging Ethernet
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 26 Feb 2014 07:16:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

To be more specific:
Specific support for sysvinit is added to poky's connman recipe, so it is w=
orking correctly.
/Cristian Iorga
YP
Intel Corporation

-----Original Message-----
From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Burton, Ross
Sent: Tuesday, February 25, 2014 6:34 PM
To: Bryan Evenson
Cc: poky@yoctoproject.org
Subject: Re: [poky] Setup for hot plugging Ethernet

On 25 February 2014 16:28, Bryan Evenson <bevenson@melinkcorp.com> wrote:
> In looking through the documentation for connman, all the examples appear=
 to assume systemd is used for init.  I am planning in the future to move f=
rom sysvinit to systemd.  In your opinion, would it be better to do that be=
fore attempting to use connman, or is connman setup relatively easy under s=
ysvinit?

connman works fine with sysvinit, the Poky images have been using connman f=
or several releases and they don't use systemd.

Ross
_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky

