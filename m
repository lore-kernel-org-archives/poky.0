Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7BC634C810AF
	for <poky@pokylinux.org>; Fri,  7 Jan 2011 05:33:20 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Jan 2011 03:33:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,288,1291622400"; d="scan'208";a="694546161"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 07 Jan 2011 03:33:19 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 7 Jan 2011 19:32:09 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 7 Jan 2011 19:32:08 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Fri, 7 Jan 2011
	19:32:07 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Date: Fri, 7 Jan 2011 19:32:06 +0800
Thread-Topic: [poky] RFC/RFT Checksums as part of stamp files
Thread-Index: AcuuW1C5gzMERx19RSu2nv49T+k/NgAAabBwAABF6NA=
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D786EE92C@shsmsx502.ccr.corp.intel.com>
References: <1294354570.17519.25325.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D786EE679@shsmsx502.ccr.corp.intel.com>
	<1294398518.17519.26801.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D786EE929@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D786EE929@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: poky <poky@pokylinux.org>
Subject: Re: RFC/RFT Checksums as part of stamp files
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
X-List-Received-Date: Fri, 07 Jan 2011 11:33:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Tian, Kevin
>Sent: Friday, January 07, 2011 7:23 PM
>
>>From: Richard Purdie [mailto:richard.purdie@linuxfoundation.org]
>>Sent: Friday, January 07, 2011 7:09 PM
>>
>>On Fri, 2011-01-07 at 12:49 +0800, Tian, Kevin wrote:
>>> >I'm also aware that this idea isn't going to be universally liked,
>>> >particularly I can guess that Koen is going to have concerns about thi=
s
>>> >and Angstrom since the lack of PR bumps means package feeds could star=
t
>>> >to suffer.
>>>
>>> worthy of a config option? We may need see from real use whether this w=
ill
>>> trigger many unnecessary rebuilds and how much impact to people's daily
>>> work. Basically the incremental builds will be much more heavier than b=
efore,
>>> though this in concept is more correct...
>>
>>They are potentially heavier, yes.
>>
>>With this and other factors in mind, I've merged a new signature
>>generator class into poky with this as the only added feature. Now with
>>poky's master branch you can add:
>>
>>BB_SIGNATURE_HANDLER =3D "basichash"
>>
>>to local.conf to enable this functionality (the default is "basic").
>>
>>At some point we are likely to decide to change the default in
>>bitbake.conf but this makes it easier for people to test.
>>
>>For reference, my test builds completed successfully.
>>
>
>my build finishes successfully too. I will manually bump PR to test its ch=
ain
>rebuild effect for some gut-feeling. :-)
>

I tried to bump PR for m4-native, and it's effectively rebuilt from task 74=
3 of
1625 with lots of native recipes rebuilt accordingly, as expected.

Thanks
Kevin

