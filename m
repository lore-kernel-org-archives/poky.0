Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 12E5D4C8108C
	for <poky@yoctoproject.org>; Mon, 10 Jan 2011 02:44:19 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Jan 2011 00:44:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,299,1291622400"; d="scan'208";a="372261619"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by azsmga001.ch.intel.com with ESMTP; 10 Jan 2011 00:44:18 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 10 Jan 2011 16:44:17 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 10 Jan 2011 16:44:16 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Date: Mon, 10 Jan 2011 16:44:15 +0800
Thread-Topic: [poky] [PATCH 2/3] bitbake: Introduce stamp-extra-info into
	build stamp file
Thread-Index: AcuwTmyV4ZH4buL8QBu2hcp406ukWwAHwzuAAA009gA=
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A31B079C4@shsmsx501.ccr.corp.intel.com>
References: <cover.1294501386.git.dongxiao.xu@intel.com>
	<7798495f49f90ea669f2f396aacf3c5844f0dbed.1294501386.git.dongxiao.xu@intel.com>
	<1294612873.17519.33969.camel@rex> 
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 2/3] bitbake: Introduce stamp-extra-info into build stamp file
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
X-List-Received-Date: Mon, 10 Jan 2011 08:44:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Xu, Dongxiao wrote:
> Richard Purdie wrote:
>> On Sat, 2011-01-08 at 23:53 +0800, Dongxiao Xu wrote:
>>> For certain tasks, we need additional information in build stamp
>>> file except the task name and file name. stamp-extra-info is
>>> introduced as an flag adding to the end of stamp file name.
>>>=20
>>> We also implement a blacklist, in which extra stamp information will
>>> not be added.
>>=20
>> To be honest I much preferred the original version of this patch. The
>> problem with this approach is that the data dictionary you're storing
>> in the siggen code is just the global config data dict. This means
>> that if any recipe customises BB_STAMP_EXTRA or the stamp-extra-into
>> flag, those changes will not be seen by this code. This is why your
>> original of extracting the flag at parse time and caching it was
>> better.
>=20
> Hi Richard,
>=20
> I used the new method to handle stamp in bitbake because I could not
> avoid adding extra info for native stamps with previous
> implementation. =20
>=20
> I noticed an strange issue with the previous code that, if I set:
>=20
> do_populate_sysroot[stamp-extra-info] =3D "${MACHINE}" in
> staging.bbclass.=20
>=20
> and set:
>=20
> do_populate_sysroot[stamp-extra-info] =3D "" in native.bbclass.
>=20
> The above code will not work. For native recipes, what stored in the
> data cache was tagged with the "${MACHINE}" info.=20
>=20
> Is it because the cache data parsing is handled before the inherit of
> native bbclass?=20

Hi Richard,

It seems that the above issue I met before disappeared when translated the =
original stamp extra info logic against latest bitbake.=20
I will send out a v3 patchset after the test is passed.

Thanks,
Dongxiao

>=20
> Thanks,
> Dongxiao
>=20
>>=20
>> I appreciate the code in those areas has changed but the original
>> patch should translate relatively easily.
>>=20
>> Also note that re.compile is expensive so you'd do that at init
>> time, not for each stampfile.=20
>>=20
>> Cheers,
>>=20
>> Richard
>>=20
>>> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
>>> ---
>>>  bitbake/lib/bb/siggen.py |   14 +++++++++++++-
>>>  1 files changed, 13 insertions(+), 1 deletions(-)
>>>=20
>>> diff --git a/bitbake/lib/bb/siggen.py b/bitbake/lib/bb/siggen.py
>>> index 4dc09b3..6c5a227 100644 --- a/bitbake/lib/bb/siggen.py
>>> +++ b/bitbake/lib/bb/siggen.py
>>> @@ -43,7 +43,17 @@ class SignatureGenerator(object):          return
>>>=20
>>>      def stampfile(self, stampbase, file_name, taskname):
>>> -        return "%s.%s" % (stampbase, taskname)
>>> +        stamp_extra_info =3D (self.data.getVarFlag(taskname,
>>> + 'stamp-extra-info', True) or self.data.getVar('BB_STAMP_EXTRA', +
>>> True) or "") + +        if self.stampblacklist:
>>> +            self.sbl =3D re.compile(self.stampblacklist) +
>>> else: +            self.sbl =3D None
>>> +
>>> +        if self.sbl and self.sbl.search(file_name):
>>> +            return "%s.%s" % (stampbase, taskname) +
>>> +        return ("%s.%s.%s" % (stampbase, taskname,
>>> + stamp_extra_info)).rstrip('.')
>>>=20
>>>  class SignatureGeneratorBasic(SignatureGenerator):      """
>>> @@ -59,6 +69,8 @@ class SignatureGeneratorBasic(SignatureGenerator):
>>>          self.lookupcache =3D {}
>>>          self.basewhitelist =3D (data.getVar("BB_HASHBASE_WHITELIST",
>>>          True) or "").split() self.taskwhitelist =3D
>>> data.getVar("BB_HASHTASK_WHITELIST",
>>> True) or None
>>> +        self.stampblacklist =3D data.getVar("BB_STAMPTASK_BLACKLIST",
>>> True) or None +        self.data =3D data
>>>=20
>>>          if self.taskwhitelist:
>>>              self.twl =3D re.compile(self.taskwhitelist)


