Return-Path: <kevin.tian@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id ED23E4C81003
	for <poky@pokylinux.org>; Thu, 30 Dec 2010 05:24:27 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 30 Dec 2010 03:23:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,249,1291622400"; d="scan'208";a="368031100"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 30 Dec 2010 03:23:20 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 30 Dec 2010 19:23:19 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 30 Dec 2010 19:23:18 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Lu, Lianhao" <lianhao.lu@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Date: Thu, 30 Dec 2010 19:23:17 +0800
Thread-Topic: [poky] --with-gxx-include-dir and sysroot
Thread-Index: AcujeC7vLPJ2FqwSRn2bA/8ItThJHQB2iecAAKuAw4AAAKl/cAAEGfOw
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D64C314E4@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D5F72D6C3@shsmsx502.ccr.corp.intel.com>
	<1293201465.17519.1428.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D64C30AAB@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D64C314AE@shsmsx502.ccr.corp.intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F1DC19AA448@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F1DC19AA448@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: --with-gxx-include-dir and sysroot
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
X-List-Received-Date: Thu, 30 Dec 2010 11:24:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Lu, Lianhao
>Sent: Thursday, December 30, 2010 5:43 PM
>>>>
>>>> I really don't think its this simple.
>>>>
>>>> Looking at the gcc code, I propose we patch cppdefault.c so instead
>>>> of
>>>>
>>>> GPLUSPLUS_INCLUDE_DIR "G++", 1, 1, 0, 0
>>>>
>>>> is says
>>>>
>>>> GPLUSPLUS_INCLUDE_DIR "G++", 1, 1, 1, 0
>>>>
>>>> and then we only ever specify:
>>>>
>>>> --with-gxx-include-dir=3D${includedir}/c++/ to build the compiler.
>>>>
>>>> Since we set always set --sysroot for the compiler correctly, this
>>>> should then fix all the problems in a clean and simple way.
>>>>
>>>> Why? Changing the 0 -> 1 above will cause c++ to add the sysroot to
>>>> GPLUSPLUS_INCLUDE_DIR and in turn this means it should start to
>>>> behave sanely.
>>>>
>>>> I don't like patching gcc like this but in this case I believe the
>>>> standard settings are just plain wrong and with that simple change,
>>>> things will just work as they should...
>>>>
>>>> Of course I've not tested this so I'd appreciate feedback but I
>>>> think it will solve the problem in the simplest way :)
>>>>
>>>
>>> That's a good and simple idea! I'll try it, but the test may take
>>> time... :-)
>>>
>>
>> I've at least verified this change working in one of my sstate build,
>> where c++ include dir could be searched successfully relative to sysroot=
.
>>
>> Lianhao is helping me test SDK multiple sysroot scenario, and I'm
>> testing more archs to ensure it not breaking normal build.
>
>The simple helloworld CPP can be built successfully by Kevin's new cross-c=
andian-gcc now.
>But another complex CPP project Sudoku still have the building problems, c=
omplaining about
>not finding c++ header "#include <algorithm>". The strace output shows tha=
t the failure
>is caused by not finding the algorithm.gch on the target.
>
>> http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dtk/cplusplu=
 s
>>
>

where is that algorithm.gch supposed to stay? I searched my standard c++ in=
clude
dir (usr/include/c++) with below finding:

usr/include/c++/ext/algorithm
usr/include/c++/algorithm

is above "algorithm" the one you mentioned as "algorithm.gch"?

Thanks
Kevin

