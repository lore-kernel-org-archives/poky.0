Return-Path: <kevin.tian@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 84D6F4C80BD4
	for <poky@lists.pokylinux.org>; Thu, 28 Oct 2010 07:55:39 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 28 Oct 2010 05:55:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,252,1286175600"; d="scan'208";a="341590609"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by azsmga001.ch.intel.com with ESMTP; 28 Oct 2010 05:55:29 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 28 Oct 2010 20:55:27 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 28 Oct 2010 20:55:27 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 28 Oct 2010 20:55:26 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, "Ke, Liping" <liping.ke@intel.com>
Date: Thu, 28 Oct 2010 20:54:57 +0800
Thread-Topic: [poky] Using prebuilt toolchains
Thread-Index: Act2lApatHSmOn47SHeLHzV4P7+RSwACt4fw
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D1277934F@shsmsx502.ccr.corp.intel.com>
References: <4CC89AA5.7080900@mlbassoc.com>
	<8EA2C2C4116BF44AB370468FBF85A77701969CD2DE@orsmsx504.amr.corp.intel.com>
	<4CC8B08D.10402@mlbassoc.com>
	<789F9655DD1B8F43B48D77C5D30659732FC450EE@shsmsx501.ccr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D30659732FC45129@shsmsx501.ccr.corp.intel.com>
	<4CC95FAD.9050801@mlbassoc.com>
In-Reply-To: <4CC95FAD.9050801@mlbassoc.com>
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
X-List-Received-Date: Thu, 28 Oct 2010 12:55:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Gary Thomas [mailto:gary@mlbassoc.com]
>Sent: Thursday, October 28, 2010 7:34 PM
>
>On 10/27/2010 08:35 PM, Ke, Liping wrote:
>> Hi, Gary
>>
>> Seems I misunderstand something. Seems what you want is about how to
>> create a recipe which could reuse you pre-build images and save build
>> time.
>>
>> But anyway, for normal application developers, providing an easy-to-use
>> sdk-toolchain tarball is helpful. In theory, they have no needs to build
>> the whole poky system by themselves.
>
>Sadly, that's what they insist on :-(
>
>Mostly my customers want to be able to [re]build exactly what's in their
>embedded environment, typically from scratch.  Poky does this great, but
>the overhead of rebuilding the toolchain is a huge portion of the effort.

that's reasonable, as people want the full control of the given bits. Actua=
lly this is one
major reason why people go to open source side. :-)

>
>As for Kevin's comment:
>>
>> On the other hand, I think the new checksum and task based prebuilt can =
serve similar
>> purpose for you... or even more since your users should be happier if yo=
u could provide
>more
>> prebuilt stuff to them besides just toolchain. This is the merit of this=
 project, to have end
>> user really focusing on their own customization and value-added bits. :-=
)
>>
>
>This would be great and I've been working with Richard on it for a long ti=
me.
>Sadly, it still doesn't work correctly and provides no benefit in its curr=
ent
>state.

well, please report any issues you encountered with it, and we'll work toge=
ther to make
this fancy feature dancing well.

>
>... I keep using Poky (at the very bleeding edge) and hoping :-)

it's always good to see such mails from you. :-)

Thanks
Kevin

>
>>>>> -----Original Message-----
>>>>> From: poky-bounces@pokylinux.org [mailto:poky-bounces@pokylinux.org]
>>>> On Behalf Of Gary Thomas
>>>>> Sent: Wednesday, October 27, 2010 2:33 PM
>>>>> To: Poky
>>>>> Subject: [poky] Using prebuilt toolchains
>>>>>
>>>>> Congratulations on Laverne (4.0) and Yocto - I hope they are
>>>>> prosperous for all :-)
>>>>>
>>>>> Is there any way to configure Poky (laverne) with a prebuilt
>>>>> toolchain, e.g. a meta-toolchain setup?  I no longer see any
>>>>> mention of this in the manual (although I've never succeeded
>>>>> to use such, no matter how hard I've tried)
>>>>>
>>>>
>>>> --
>>>> ------------------------------------------------------------
>>>> Gary Thomas                 |  Consulting for the
>>>> MLB Associates              |    Embedded world
>>>> ------------------------------------------------------------
>>>> _______________________________________________
>>>> poky mailing list
>>>> poky@pokylinux.org
>>>> https://lists.pokylinux.org/listinfo/poky
>>> _______________________________________________
>>> poky mailing list
>>> poky@pokylinux.org
>>> https://lists.pokylinux.org/listinfo/poky
>
>--
>------------------------------------------------------------
>Gary Thomas                 |  Consulting for the
>MLB Associates              |    Embedded world
>------------------------------------------------------------

