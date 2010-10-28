Return-Path: <liping.ke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0CFE34C80BD4
	for <poky@lists.pokylinux.org>; Wed, 27 Oct 2010 21:35:47 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 27 Oct 2010 19:35:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,248,1286175600"; d="scan'208";a="851727706"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 27 Oct 2010 19:35:46 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 28 Oct 2010 10:35:45 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 28 Oct 2010 10:35:44 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Ke, Liping" <liping.ke@intel.com>, Gary Thomas <gary@mlbassoc.com>,
	"Kamble, Nitin A" <nitin.a.kamble@intel.com>
Date: Thu, 28 Oct 2010 10:35:47 +0800
Thread-Topic: [poky] Using prebuilt toolchains
Thread-Index: Act2K666OCgN3lFPSmS/jr4LkH4b2wAGMy/QAACHaRA=
Message-ID: <789F9655DD1B8F43B48D77C5D30659732FC45129@shsmsx501.ccr.corp.intel.com>
References: <4CC89AA5.7080900@mlbassoc.com>
	<8EA2C2C4116BF44AB370468FBF85A77701969CD2DE@orsmsx504.amr.corp.intel.com>
	<4CC8B08D.10402@mlbassoc.com>
	<789F9655DD1B8F43B48D77C5D30659732FC450EE@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D30659732FC450EE@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Using prebuilt toolchains
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Thu, 28 Oct 2010 02:35:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Gary

Seems I misunderstand something. Seems what you want is about how to
create a recipe which could reuse you pre-build images and save build
time.

But anyway, for normal application developers, providing an easy-to-use
sdk-toolchain tarball is helpful. In theory, they have no needs to build
the whole poky system by themselves.

Thanks& Regards,
criping

> > > -----Original Message-----
> > > From: poky-bounces@pokylinux.org [mailto:poky-bounces@pokylinux.org]
> > On Behalf Of Gary Thomas
> > > Sent: Wednesday, October 27, 2010 2:33 PM
> > > To: Poky
> > > Subject: [poky] Using prebuilt toolchains
> > >
> > > Congratulations on Laverne (4.0) and Yocto - I hope they are
> > > prosperous for all :-)
> > >
> > > Is there any way to configure Poky (laverne) with a prebuilt
> > > toolchain, e.g. a meta-toolchain setup?  I no longer see any
> > > mention of this in the manual (although I've never succeeded
> > > to use such, no matter how hard I've tried)
> > >
> >
> > --
> > ------------------------------------------------------------
> > Gary Thomas                 |  Consulting for the
> > MLB Associates              |    Embedded world
> > ------------------------------------------------------------
> > _______________________________________________
> > poky mailing list
> > poky@pokylinux.org
> > https://lists.pokylinux.org/listinfo/poky
> _______________________________________________
> poky mailing list
> poky@pokylinux.org
> https://lists.pokylinux.org/listinfo/poky

