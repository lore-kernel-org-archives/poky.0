Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C7B0F4C80BD4
	for <poky@lists.pokylinux.org>; Wed, 27 Oct 2010 16:58:44 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Oct 2010 14:58:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,248,1286175600"; d="scan'208";a="567988162"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga002.jf.intel.com with ESMTP; 27 Oct 2010 14:58:44 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx603.amr.corp.intel.com ([10.22.226.49]) with mapi;
	Wed, 27 Oct 2010 14:58:44 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, Poky <poky@lists.pokylinux.org>
Date: Wed, 27 Oct 2010 14:58:41 -0700
Thread-Topic: [poky] Using prebuilt toolchains
Thread-Index: Act2Hp0E21ABa95+T22ICgS6EGaAhwAAyqoQ
Message-ID: <8EA2C2C4116BF44AB370468FBF85A77701969CD2DE@orsmsx504.amr.corp.intel.com>
References: <4CC89AA5.7080900@mlbassoc.com>
In-Reply-To: <4CC89AA5.7080900@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
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
X-List-Received-Date: Wed, 27 Oct 2010 21:58:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Gary,
 The tool chain is customized to work well for all the recipes. If you are =
going to build just one package a separate tool chain may work, but it's un=
likely that a separate toolchain will work well for all the recipes.

Thanks,
Nitin


-----Original Message-----
From: poky-bounces@pokylinux.org [mailto:poky-bounces@pokylinux.org] On Beh=
alf Of Gary Thomas
Sent: Wednesday, October 27, 2010 2:33 PM
To: Poky
Subject: [poky] Using prebuilt toolchains

Congratulations on Laverne (4.0) and Yocto - I hope they are
prosperous for all :-)

Is there any way to configure Poky (laverne) with a prebuilt
toolchain, e.g. a meta-toolchain setup?  I no longer see any
mention of this in the manual (although I've never succeeded
to use such, no matter how hard I've tried)

--=20
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------
_______________________________________________
poky mailing list
poky@pokylinux.org
https://lists.pokylinux.org/listinfo/poky

