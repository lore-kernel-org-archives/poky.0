Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5BD9A4C81231
	for <poky@yoctoproject.org>; Tue, 30 Nov 2010 19:48:48 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 30 Nov 2010 17:48:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,282,1288594800"; d="scan'208";a="682594309"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 30 Nov 2010 17:48:46 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 1 Dec 2010 09:48:23 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Wed, 1 Dec 2010
	09:48:22 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Date: Wed, 1 Dec 2010 09:48:20 +0800
Thread-Topic: [poky] [PATCH 0/1][RFC] Optimize file parsing speed
Thread-Index: AcuPwuE4MAq8eiMkSTG+vB6HFn8cjgBNcIWw
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A303B2ED8@shsmsx501.ccr.corp.intel.com>
References: <cover.1290405852.git.dongxiao.xu@intel.com>
	<1290954465.27143.226.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A30346BE1@shsmsx501.ccr.corp.intel.com>
	<1291034516.14277.966.camel@rex>
In-Reply-To: <1291034516.14277.966.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/1][RFC] Optimize file parsing speed
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
X-List-Received-Date: Wed, 01 Dec 2010 01:48:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Richard Purdie wrote:
> On Mon, 2010-11-29 at 13:45 +0800, Xu, Dongxiao wrote:
>> Richard Purdie wrote:
>>> I'm going to take the patch but I'd like to be clear where the speed
>>> gains come from with this change. I suspect some are due to a
>>> smaller number of keys but I also suspect the smaller number of
>>> tasks involved helps too!
>>=20
>> I did a profiling for the parsing time w/ and w/o the patch.
>>=20
>> Here a piece of the profiling result:
>>=20
>> W/ PATCH:
>>=20
>> Mon Nov 29 13:23:42 2010    profile.log
>>=20
>>          32756805 function calls (31268348 primitive calls) in 60.195
>> CPU seconds
>>=20
>>    Ordered by: internal time
>>=20
>>    ncalls  tottime  percall  cumtime  percall
>>   filename:lineno(function) 3572737    4.950    0.000   12.849  =20
>>   0.000
>> /sda1/yocto/scripts/..//bitbake/lib/bb/data_smart.py:285(getVarFlag)
>>   3917977    4.464    0.000    4.464    0.000
>>  =20
>>  =20
>>     =20
>>  =20
>> /sda1/yocto/scripts/..//bitbake/lib/bb/data_smart.py:191(_findVar)
>>      873129/431998    3.040    0.000   16.824    0.000
>> /sda1/yocto/scripts/..//bitbake/lib/bb/data_smart.py:86(expandWithRefs)
>> 1745340    3.007    0.000    4.555    0.000
>> /usr/lib/python2.6/copy.py:65(copy) 286785    2.570    0.000 =20
>> 20.051    0.000
>> /sda1/yocto/scripts/..//bitbake/lib/bb/data.py:271(build_dependencies)
>> 565710    2.532    0.000    5.015    0.000
>> /sda1/yocto/scripts/..//bitbake/lib/bb/COW.py:97(__getitem__) 917  =20
>> 2.394    0.003   27.726    0.030
>> /sda1/yocto/scripts/..//bitbake/lib/bb/data.py:299(generate_dependencies=
)
>> 288439    2.350    0.000   11.607    0.000
>> /sda1/yocto/scripts/..//bitbake/lib/bb/data_smart.py:212(setVar)
>> 1428066/1144003    1.882    0.000   16.762    0.000
>> /sda1/yocto/scripts/..//bitbake/lib/bb/data_smart.py:246(getVar) ...
>> 2389    0.004    0.000    2.528    0.001
>> /sda1/yocto/scripts/..//bitbake/lib/bb/data.py:267(update_data)    =20
>>=20
>>=20
>> W/O PATCH:
>>=20
>> Mon Nov 29 13:28:36 2010    profile.log
>>=20
>>          49110091 function calls (47618793 primitive calls) in 75.338
>> CPU seconds
>>=20
>>    Ordered by: internal time
>>=20
>>    ncalls  tottime  percall  cumtime  percall
>>   filename:lineno(function) 7547331    8.230    0.000   19.467  =20
>>   0.000
>>     =20
>> =20
>>   =20
>> /sda1/yocto/scripts/..//bitbake/lib/bb/data_smart.py:285(getVarFlag)
>>    7908236    8.113    0.000    8.113    0.000
>>   /sda1/yocto/scripts/..//bitbake/lib/bb/data_smart.py:191(_findVar)
>>    917    3.987    0.004   43.045    0.047
>>    =20
>> /sda1/yocto/scripts/..//bitbake/lib/bb/data.py:299(generate_dependencies=
)
>> 5061763    3.812    0.000    5.633    0.000
>> /sda1/yocto/scripts/..//bitbake/lib/bb/data.py:301(<genexpr>) 84656=20
>> 3.318    0.000   13.475    0.000
>> /sda1/yocto/scripts/..//bitbake/lib/bb/data.py:302(<genexpr>)
>> 897804/450300    2.838    0.000   15.801    0.000
>> /sda1/yocto/scripts/..//bitbake/lib/bb/data_smart.py:86(expandWithRefs)
>> 294083    2.777    0.000   18.854    0.000
>> /sda1/yocto/scripts/..//bitbake/lib/bb/data.py:271(build_dependencies)
>> 1783941    2.740    0.000    4.154    0.000
>> /usr/lib/python2.6/copy.py:65(copy) 592115    2.432    0.000  =20
>> 5.179    0.000
>> /sda1/yocto/scripts/..//bitbake/lib/bb/COW.py:97(__getitem__) ...
>> 2389    0.004    0.000    2.656    0.001
>> /sda1/yocto/scripts/..//bitbake/lib/bb/data.py:267(update_data)    =20
>>=20
>> From the profiling result we can see that, generate_dependencies()
>> time reduces from 43 seconds to 27 seconds, while
>> build_dependencies()=20
>> mostly keeps unchanged (From 20 seconds to 18.8 seconds). Therefore
>> the biggest overhead reduced by the patch should be the two lines of
>> code to parsing keys in generate_dependencies() function.
>>=20
>>>=20
>>> Also, a lot of those keys are override keys so perhaps its speeding
>>> up update_data() calls and some of the gain is from there too?
>>=20
>> Update_data() has some gains but not much, see the above profile
>> result.=20
>=20
> Looks good, thanks.
>=20
> Interestingly looking at the profile overall, we dropped from 49
> million function calls to 32 million function calls which is always a
> good way to speed things up. =20
>=20
> getVarFlag and _findVar each dropped by 3 million calls each (which
> is from the construction of the keys() list).=20
>=20
> So a very valid speedup :). I still think we might be able to speed
> this area up further though such as if we directly keep an index of
> exported variables. =20

Hi Richard,

Like the whole d.keys(), exported variables are also different among
recipes, since recipe may export or unset certain variables for itself.
So to implement this, we need to keep a common list, and then handle
recipe specific export/unset variables.

Does my understanding correct?=20

Thanks,
Dongxiao



>=20
> Cheers,
>=20
> Richard


