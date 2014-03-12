Return-Path: <Mats.Karrman@tritech.se>
Received: from tritech.se (tritech.se [46.59.120.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCD02E0077C
	for <poky@yoctoproject.org>; Wed, 12 Mar 2014 01:00:26 -0700 (PDT)
Received: from post.tritech.se (post.tritech.se [10.75.60.100])
	by tritech.se (8.14.3/8.14.3) with ESMTP id s2C80J7V025140;
	Wed, 12 Mar 2014 09:00:24 +0100
Received: from POST.tritech.se ([fe80::b4fc:968e:bbef:54cb]) by
	post.tritech.se ([fe80::b4fc:968e:bbef:54cb%10]) with mapi id
	14.02.0387.000; Wed, 12 Mar 2014 09:00:18 +0100
From: =?iso-8859-1?Q?Mats_K=E4rrman?= <Mats.Karrman@tritech.se>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Thread-Topic: [poky] Schedule for Poky Dora point release
Thread-Index: AQHPPRK8/Y4Bao77GUWLtOPzG3XLWZrcwl4AgABU0gg=
Date: Wed, 12 Mar 2014 08:00:17 +0000
Message-ID: <ED3E0BCACD909541BA94A34C4A164D4C5B18123B@post.tritech.se>
References: <ED3E0BCACD909541BA94A34C4A164D4C5B180D0A@post.tritech.se>,
	<1394596414.19455.57.camel@ted>
In-Reply-To: <1394596414.19455.57.camel@ted>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [194.132.137.82]
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Schedule for Poky Dora point release
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
X-List-Received-Date: Wed, 12 Mar 2014 08:00:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

on Wednesday, March 12, 2014 4:53 AM, Richard Purdie wrote:=0A=
> On Tue, 2014-03-11 at 10:14 +0000, Mats K=E4rrman wrote:=0A=
>> Considering the recent discovery and fix of a serious bug in the compile=
r for ARM:=0A=
>> commit        97c9163d97911dad0afcd0dae39e5c426e27e921=0A=
>> "gcc: Include patch scheduled for GCC 4.8.3 to fix epilogue on ARM"=0A=
>> is there a new point-release scheduled for Dora?=0A=
>> If so, when it is expected to be released?=0A=
>=0A=
> Firstly we need to get this backported to dora. Is there a version of=0A=
> this change backported and tested there? If not, someone needs to sort=0A=
> out that patch.=0A=
=0A=
Looking at http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/?h=3Ddora=0A=
it is there since 2014-02-14.=0A=
=0A=
BR // Mats=0A=
Richard=0A=
=0A=

