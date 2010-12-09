Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B1A334C81227
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 06:14:01 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 Dec 2010 04:14:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,319,1288594800"; d="scan'208";a="634697443"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 09 Dec 2010 04:14:00 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 9 Dec 2010 20:13:59 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 9 Dec 2010 20:13:59 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Thu, 9 Dec 2010
	20:13:58 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>, Chris Larson
	<clarson@kergoth.com>
Date: Thu, 9 Dec 2010 20:13:57 +0800
Thread-Topic: [poky] About the operator "??="
Thread-Index: AcuXk6N/JJdI/9LoRe2im2ugkKcZ3QAAlDYA
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A314F30F3@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A303B2EF0@shsmsx501.ccr.corp.intel.com>
	<1291804222.1554.256.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D515D0DC5@shsmsx502.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F2BAE@shsmsx501.ccr.corp.intel.com>
	<1291819067.1554.606.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F2E1C@shsmsx501.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D515D10E7@shsmsx502.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F3004@shsmsx501.ccr.corp.intel.com>
	<1291893846.1554.793.camel@rex>
In-Reply-To: <1291893846.1554.793.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: About the operator "??="
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
X-List-Received-Date: Thu, 09 Dec 2010 12:14:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Richard Purdie wrote:
> On Thu, 2010-12-09 at 15:59 +0800, Xu, Dongxiao wrote:
>> Tian, Kevin wrote:
>>>> From: Xu, Dongxiao
>>>> Sent: Thursday, December 09, 2010 11:33 AM During the file parsing
>>>> process, the getVar is called "1435156/1148654"
>>>> times (actually I am still confused what "/" means...), and among
>>>> them, 322121 times of getVar call return "None", thus about 1/3 or
>>>> 1/4 of the total calls.
>=20
> Ok, that is a pretty significant portion of the time.
>=20
>>>> I tried to use the following patch to have a test. Also I paste a
>>>> profile log. From the result we can see it has over 15%
>>>> performance gain. (from=20
>>>> 39.3
>>>> secs to 33.7 secs).
>=20
> So despite that, it still significantly helps performance. Could you
> also give some raw performance numbers? By this I mean make the
> timing runs with profiling turned off so work out the time it takes
> before and after the patch with the profiling off so the numbers are
> "real" with "time bitbake xxx"?   =20
>=20
> It always pays just to sanity check and this gives the "real"
> performance gain.

Hi richard,

Here are some raw timing result:

w/ patch:
time bitbake -p

real    0m26.189s
user    0m25.480s
sys     0m0.420s

w/o patch:
time bitbake -p

real    0m30.940s
user    0m30.230s
sys     0m0.460s

Thanks,
Dongxiao

>=20
>>>> In usermanual, the "??=3D" definition is:
>>>>=20
>>>> Setting a default value (??=3D)
>>>> 	A ??=3D "somevalue"
>>>> 	A ??=3D "someothervalue"
>>>> If A is set before the above, it will retain that value.  If A is
>>>> unset prior to the above, A will be set to someothervalue.  This is
>>>> a lazy version of ?=3D, in that the assignment does not occur until
>>>> the end of the parsing process, so that the last, rather than the
>>>> first, ??=3D assignment to a given variable will be used.
>>>>=20
>>>> Our patch logic isn't strickly following the "??=3D" definition,
>>>> since the assignment doesn't occurs in end of parsing process...
>>>> Except this one, I think other behaviors for ??=3D do not change.
>>>=20
>>> I think it is, as long as a getVar on a variable happens after all
>>> the evaluations of that variable which I think should be true or
>>> else even current design has problem. In that way when evaluating
>>> variable assignments, you keep 'defaultvalue' updated until the
>>> last "??=3D" assignment. Then later a getVar() on that variable
>>> happens which then=20
>>> you just return the right defaultvalue. :-)
>>=20
>> Agree.
>=20
> I also agree, I think we can adjust the definition of how this is
> handled slightly. There is also a change in behaviour as now, when
> one of these variables is looked up, it will get the default value
> rather than None if finalise() hasn't been called. I don't think this
> is much of an issue though.   =20
>=20
>>>> --- a/bitbake/lib/bb/parse/ast.py
>>>> +++ b/bitbake/lib/bb/parse/ast.py
>>>> @@ -109,10 +109,8 @@ class DataNode(AstNode):
>>>>         if 'flag' in groupd and groupd['flag'] !=3D None:
>>>>             bb.data.setVarFlag(key, groupd['flag'], val, data)
>>>>         elif groupd["lazyques"]:
>>>> -            assigned =3D bb.data.getVar("__lazy_assigned", data) or
>>>> []=20
>>>> -            assigned.append(key)
>>>> -            bb.data.setVar("__lazy_assigned", assigned, data)
>>>>             bb.data.setVarFlag(key, "defaultval", val, data)
>>>> +            bb.data.setVar(key, None, data)
>>>=20
>>> This I think is incorrect. You actually wiped out previous
>>> assignment before ??=3D, and thus end up to always have default value
>>> favored unless there're other direct assignments after ??=3D
>>> evaluation. Just touch the flag should be enough.
>>=20
>> Ah, yes, I need to check whether the value has been setVar before,
>> see following patch.=20
>>=20
>> This two lines are necessary in the following patch
>>=20
>> +            if bb.data.getVarFlag(key, "content", data) is None:
>> +                bb.data.setVar(key, None, data)
>>=20
>> because setVar will add the key into override list, which could not
>> be=20
>> achieved by just calling "setVarFlag". For the later formal patch, I
>> will add comments on the two lines.
>=20
> This is a little worrying and I think we have insight into a new bug
> here which is that if you just have a variable:=20
>=20
> foo_OVERA[bar] =3D "x"
>=20
> and foo is never set as a variable directly, the override is never
> expanded.=20
>=20
> There is a strong argument here to make setVar(...) a special case of
> setVarFlag(..., "content") although I worry about the performance
> implications. =20
>=20
> Chris: Any opinion?
>=20
> Cheers,
>=20
> Richard


