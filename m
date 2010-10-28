Return-Path: <liping.ke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id EA9414C80BD4
	for <poky@lists.pokylinux.org>; Wed, 27 Oct 2010 21:17:15 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Oct 2010 19:17:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,248,1286175600"; d="scan'208";a="568048936"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 27 Oct 2010 19:17:14 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 28 Oct 2010 10:16:31 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 28 Oct 2010 10:16:30 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, "Kamble, Nitin A"
	<nitin.a.kamble@intel.com>
Date: Thu, 28 Oct 2010 10:16:34 +0800
Thread-Topic: [poky] Using prebuilt toolchains
Thread-Index: Act2K666OCgN3lFPSmS/jr4LkH4b2wAGMy/Q
Message-ID: <789F9655DD1B8F43B48D77C5D30659732FC450EE@shsmsx501.ccr.corp.intel.com>
References: <4CC89AA5.7080900@mlbassoc.com>
	<8EA2C2C4116BF44AB370468FBF85A77701969CD2DE@orsmsx504.amr.corp.intel.com>
	<4CC8B08D.10402@mlbassoc.com>
In-Reply-To: <4CC8B08D.10402@mlbassoc.com>
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
X-List-Received-Date: Thu, 28 Oct 2010 02:17:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> That's not really what I'm looking for.  What I want is to build
> the tools *once* and then reuse them, without having to rebuild
> them every time I start a Poky build from scratch.  I'm happy using
> the Poky "customized" tools, but I really dislike having to rebuild
> them over and over again...  I also am really keen to deliver a Poky
> setup to my customers which they can use to build their target systems.
> They shouldn't have to be bothered with building the tools themselves.

Hi, Gary

In poky source tree, after bitbake meta-toolchain-sdk, you will get a tarba=
ll
under Poky_tree/build_folder/tmp/deploy/sdk.  Current usage scenario is tha=
t
you can untar this tarball too the root Folder /, and you will get a sdk
development toolchain folder /opt/poky.

If you want to cross-build something on your host, you can source
the environment setup script file(environement-setup-XXX) under /opt/poky,
and then go on compile/debug. And also, some other tools such as poky unfs
file system extraction, running qemu scripts are also under this folder.
This folder also include target sysroot environment.

Currently we did not encapsulate qemu emulator image in this tarball.
In the next release, we might do so. So currently if you want to
run qemu, you still need to bitbake poky-qemu-sdk.

There're one eclipse plugin as well as anjuta IDE plugin, which provide sup=
port
for developing applications. What we need to do is just point to the correc=
t
poky toolchain position in the plugin preference setup page, such as /opt/p=
oky
folder or {poky_tree/build/tmp if you want to use the build tree}. If neede=
d,
we might provide further detailed documents about how to use those plugins.

Hope above information is useful to you:)

Thanks a lot for your help!
criping


>=20
> > -----Original Message-----
> > From: poky-bounces@pokylinux.org [mailto:poky-bounces@pokylinux.org]
> On Behalf Of Gary Thomas
> > Sent: Wednesday, October 27, 2010 2:33 PM
> > To: Poky
> > Subject: [poky] Using prebuilt toolchains
> >
> > Congratulations on Laverne (4.0) and Yocto - I hope they are
> > prosperous for all :-)
> >
> > Is there any way to configure Poky (laverne) with a prebuilt
> > toolchain, e.g. a meta-toolchain setup?  I no longer see any
> > mention of this in the manual (although I've never succeeded
> > to use such, no matter how hard I've tried)
> >
>=20
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> _______________________________________________
> poky mailing list
> poky@pokylinux.org
> https://lists.pokylinux.org/listinfo/poky

