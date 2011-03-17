Return-Path: <david.c.stewart@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id A610D4C805A8
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 19:21:01 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 Mar 2011 17:21:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,196,1299484800"; d="scan'208";a="403811087"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 16 Mar 2011 17:20:41 -0700
Received: from orsmsx501.amr.corp.intel.com ([10.22.226.209]) by
	orsmsx603.amr.corp.intel.com ([10.22.226.49]) with mapi;
	Wed, 16 Mar 2011 17:20:33 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Darren Hart
	<dvhart@linux.intel.com>
Date: Wed, 16 Mar 2011 17:15:42 -0700
Thread-Topic: [poky] [PATCH A or B] Fix for bug #853 - matchbox-panel
	segfaults, X becomes unusable
Thread-Index: AcvkOEq0MxHiPurmRgGmNhvyFmKNbwAACHiA
Message-ID: <B27EBC40D200ED48A3F4CC2EBEABAE0B25CC1E9E75@orsmsx501.amr.corp.intel.com>
References: <4D812FD5.5050504@linux.intel.com>
	<1300320837.30423.1924.camel@rex>
In-Reply-To: <1300320837.30423.1924.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH A or B] Fix for bug #853 - matchbox-panel segfaults, X becomes unusable
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
X-List-Received-Date: Thu, 17 Mar 2011 00:21:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Great job finding this, Darren!

>-----Original Message-----
>From: poky-bounces@yoctoproject.org [mailto:poky-
>bounces@yoctoproject.org] On Behalf Of Richard Purdie
>Sent: Wednesday, March 16, 2011 5:14 PM
>To: Darren Hart
>Cc: poky@yoctoproject.org
>Subject: Re: [poky] [PATCH A or B] Fix for bug #853 - matchbox-panel
>segfaults, X becomes unusable
>
>On Wed, 2011-03-16 at 14:47 -0700, Darren Hart wrote:
>> The root cause of the matchbox-panel segfault is the same as for the
>> previous two bugs addressing the same issue:
>>
>> o Bug 224 - [Netbook/emenlow] matchbox-panel segfault after X startup
>> o Bug 738 - matchbox-panel segfault after X startup
>>
>> There apparently is a bug in gcc which results in the omission of some
>> code leading to the segfault on core2. The following flags resolve the
>> problem.
>>
>> FULL_OPTIMIZATION =3D "-fexpensive-optimizations -frename-registers -O2
>> -ggdb -feliminate-unused-debug-types"
>>
>> We can continue to patch each new machine's gtk+ recipe that is based
>on
>> atom-pc.conf, or we can just add the above to tune-atom.conf. I've
>> tested both on both the n450 and a Toshiba NB305 netbook, and each
>> solution is effective.
>>
>> Chaging it in tune-atom.conf likely fixes other bugs we either haven't
>> solved yet or simply haven't hit. It is also much more invasive, and
>we
>> may not be willing to accept that this close to 1.0. The patches
>follow,
>> and we can include one or the other.
>>
>> Preferences?
>
>I'm in favour of C which is to add this to tune-atom.inc:
>
>FULL_OPTIMIZATION_pn-gtk+ =3D "-fexpensive-optimizations -frename-
>registers -O2 -ggdb -feliminate-unused-debug-types"
>
>:)
>
>Cheers,
>
>Richard
>
>
>_______________________________________________
>poky mailing list
>poky@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/poky

