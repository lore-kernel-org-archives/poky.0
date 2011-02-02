Return-Path: <koen@dominion.thruhere.net>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 535454C8007E
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 23:19:42 -0600 (CST)
Received: by bwz8 with SMTP id 8so230305bwz.35
	for <poky@yoctoproject.org>; Tue, 01 Feb 2011 21:19:41 -0800 (PST)
Received: by 10.204.53.78 with SMTP id l14mr7703218bkg.16.1296623980125;
	Tue, 01 Feb 2011 21:19:40 -0800 (PST)
Received: from [10.87.17.5] ([88.128.95.133])
	by mx.google.com with ESMTPS id q18sm11405540bka.3.2011.02.01.21.19.36
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 01 Feb 2011 21:19:38 -0800 (PST)
References: <1296248841-8015-1-git-send-email-tom_rini@mentor.com>
	<4D47BC03.6010008@linux.intel.com> <4D481DD1.9050804@mentor.com>
	<4D4828EE.5000002@linux.intel.com>
	<9DA5872FEF993D41B7173F58FCF6BE9411BF170D@orsmsx504.amr.corp.intel.com>
	<4D483C23.2070203@mentor.com>
In-Reply-To: <4D483C23.2070203@mentor.com>
Mime-Version: 1.0 (iPhone Mail 8C148)
Message-Id: <108F8058-1B84-42D2-B5EE-EA4FE81088DA@dominion.thruhere.net>
X-Mailer: iPhone Mail (8C148)
From: Koen Kooi <koen@dominion.thruhere.net>
Date: Wed, 2 Feb 2011 06:18:53 +0100
To: Tom Rini <tom_rini@mentor.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] perl-native: Update for userelocatableinc and non-shared libperl
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
X-List-Received-Date: Wed, 02 Feb 2011 05:19:42 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

FWIW, I'm seeing the same problem with lib*-perl-native in OE

Op 1 feb. 2011 om 18:00 heeft Tom Rini <tom_rini@mentor.com> het volgende ge=
schreven:

> On 02/01/2011 09:57 AM, Kamble, Nitin A wrote:
>>=20
>>=20
>>> -----Original Message-----
>>> From: poky-bounces@yoctoproject.org [mailto:poky-
>>> bounces@yoctoproject.org] On Behalf Of Darren Hart
>>> Sent: Tuesday, February 01, 2011 7:38 AM
>>> To: Tom Rini
>>> Cc: poky@yoctoproject.org
>>> Subject: Re: [poky] [PATCH] perl-native: Update for userelocatableinc
>>> and non-shared libperl
>>>=20
>>> On 02/01/2011 06:50 AM, Tom Rini wrote:
>>>> On 02/01/2011 12:53 AM, Darren Hart wrote:
>>>>> On 01/28/2011 01:07 PM, Tom Rini wrote:
>>>>>> Rather than using a wrapper switch to using upstreams support for
>>>>>> relocation. While in here, bring in the mangling to use
>>>>>> /usr/bin/env perl rather than /full/path/to in order to work
>>>>>> in deep directory paths.
>>>>>>=20
>>>>>> Signed-off-by: Tom Rini<tom_rini@mentor.com>
>>>>>=20
>>>>> perl fails do_compile with this patch, reverting it resolves the
>>>>> problem. The log.do_compile is available here (600k):
>>>>>=20
>>>>> http://bugzilla.pokylinux.org/show_bug.cgi?id=3D691
>>>>=20
>>>> Taken the bug. That'll teach me to short-circuit my testing when
>>> double
>>>> posting patches...
>>>>=20
>>>=20
>>> I'll be happy to test patches to this as well as I am able to easily
>>> reproduce it (I expect others can too - but haven't yet heard of
>>> someone
>>> else hitting the exact same problem).
>>>=20
>> I am able to reproduce this issue too. If needed I will be happy to help f=
ix or test.
>=20
> To give everyone a quick update, I've double checked and the way we config=
ure perl 5.10.x (OE) and 5.12.x (poky) are the same, really.  So I'm double c=
hecking now which part of the changes are breaking and if perhaps we need to=
 instead of using the relative paths that work in 5.10.x using full paths an=
d trusting userelocatableinc to work (and then verifying that it does work).=

>=20
> --=20
> Tom Rini
> Mentor Graphics Corporation
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

