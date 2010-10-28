Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id DB4D94C80FA4
	for <poky@lists.pokylinux.org>; Wed, 27 Oct 2010 20:07:31 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Oct 2010 18:07:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,248,1286175600"; d="scan'208";a="568033754"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 27 Oct 2010 18:07:30 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 28 Oct 2010 09:07:29 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 28 Oct 2010 09:07:29 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 28 Oct 2010 09:07:28 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, "Kamble, Nitin A"
	<nitin.a.kamble@intel.com>
Date: Thu, 28 Oct 2010 09:07:26 +0800
Thread-Topic: [poky] Using prebuilt toolchains
Thread-Index: Act2K67zDKhUAK1/Rr2DMzgOQAr8ygAD7FQg
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D12778EF8@shsmsx502.ccr.corp.intel.com>
References: <4CC89AA5.7080900@mlbassoc.com>
	<8EA2C2C4116BF44AB370468FBF85A77701969CD2DE@orsmsx504.amr.corp.intel.com>
	<4CC8B08D.10402@mlbassoc.com>
In-Reply-To: <4CC8B08D.10402@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
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
X-List-Received-Date: Thu, 28 Oct 2010 01:07:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Gary Thomas
>Sent: Thursday, October 28, 2010 7:07 AM
>
>On 10/27/2010 03:58 PM, Kamble, Nitin A wrote:
>> Hi Gary,
>>   The tool chain is customized to work well for all the recipes. If you =
are going to build
>just one package a separate tool chain may work, but it's unlikely that a =
separate toolchain
>will work well for all the recipes.
>>
>
>That's not really what I'm looking for.  What I want is to build
>the tools *once* and then reuse them, without having to rebuild
>them every time I start a Poky build from scratch.  I'm happy using
>the Poky "customized" tools, but I really dislike having to rebuild
>them over and over again...  I also am really keen to deliver a Poky
>setup to my customers which they can use to build their target systems.
>They shouldn't have to be bothered with building the tools themselves.

That's a reasonable requirement, but to be honest I haven't tried it.

So have you ever succeeded with previous release? If yes and it's broken wi=
th current master,
you can report a bug.=20

On the other hand, I think the new checksum and task based prebuilt can ser=
ve similar=20
purpose for you... or even more since your users should be happier if you c=
ould provide more
prebuilt stuff to them besides just toolchain. This is the merit of this pr=
oject, to have end
user really focusing on their own customization and value-added bits. :-)

Thanks
Kevin

>
>> -----Original Message-----
>> From: poky-bounces@pokylinux.org [mailto:poky-bounces@pokylinux.org] On =
Behalf Of
>Gary Thomas
>> Sent: Wednesday, October 27, 2010 2:33 PM
>> To: Poky
>> Subject: [poky] Using prebuilt toolchains
>>
>> Congratulations on Laverne (4.0) and Yocto - I hope they are
>> prosperous for all :-)
>>
>> Is there any way to configure Poky (laverne) with a prebuilt
>> toolchain, e.g. a meta-toolchain setup?  I no longer see any
>> mention of this in the manual (although I've never succeeded
>> to use such, no matter how hard I've tried)
>>
>
>--
>------------------------------------------------------------
>Gary Thomas                 |  Consulting for the
>MLB Associates              |    Embedded world
>------------------------------------------------------------
>_______________________________________________
>poky mailing list
>poky@pokylinux.org
>https://lists.pokylinux.org/listinfo/poky

