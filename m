Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D0F094C8108C
	for <poky@yoctoproject.org>; Sun,  9 Jan 2011 21:09:01 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 Jan 2011 19:08:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,297,1291622400"; d="scan'208";a="645089163"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga002.fm.intel.com with ESMTP; 09 Jan 2011 19:08:30 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 10 Jan 2011 11:07:44 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Mon, 10 Jan 2011 11:07:44 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Mon, 10 Jan 2011 11:07:43 +0800
Thread-Topic: [poky] [PATCH 2/3] bitbake: Introduce stamp-extra-info into
	build stamp file
Thread-Index: AcuwTmyV4ZH4buL8QBu2hcp406ukWwAHwzuA
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A31B076C6@shsmsx501.ccr.corp.intel.com>
References: <cover.1294501386.git.dongxiao.xu@intel.com>
	<7798495f49f90ea669f2f396aacf3c5844f0dbed.1294501386.git.dongxiao.xu@intel.com>
	<1294612873.17519.33969.camel@rex>
In-Reply-To: <1294612873.17519.33969.camel@rex>
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
X-List-Received-Date: Mon, 10 Jan 2011 03:09:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Richard Purdie wrote:
> On Sat, 2011-01-08 at 23:53 +0800, Dongxiao Xu wrote:
>> For certain tasks, we need additional information in build stamp file
>> except the task name and file name. stamp-extra-info is introduced as
>> an flag adding to the end of stamp file name.
>>=20
>> We also implement a blacklist, in which extra stamp information will
>> not be added.
>=20
> To be honest I much preferred the original version of this patch. The
> problem with this approach is that the data dictionary you're storing
> in the siggen code is just the global config data dict. This means
> that if any recipe customises BB_STAMP_EXTRA or the stamp-extra-into
> flag, those changes will not be seen by this code. This is why your
> original of extracting the flag at parse time and caching it was
> better.     =20

Hi Richard,

I used the new method to handle stamp in bitbake because I could not avoid =
adding extra info for native stamps with previous implementation.

I noticed an strange issue with the previous code that, if I set:

do_populate_sysroot[stamp-extra-info] =3D "${MACHINE}" in staging.bbclass.

and set:

do_populate_sysroot[stamp-extra-info] =3D "" in native.bbclass.

The above code will not work. For native recipes, what stored in the data c=
ache was tagged with the "${MACHINE}" info.

Is it because the cache data parsing is handled before the inherit of nativ=
e bbclass?

Thanks,
Dongxiao

>=20
> I appreciate the code in those areas has changed but the original
> patch should translate relatively easily.=20
>=20
> Also note that re.compile is expensive so you'd do that at init time,
> not for each stampfile.=20
>=20
> Cheers,
>=20
> Richard
>=20
>> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
>> ---
>>  bitbake/lib/bb/siggen.py |   14 +++++++++++++-
>>  1 files changed, 13 insertions(+), 1 deletions(-)
>>=20
>> diff --git a/bitbake/lib/bb/siggen.py b/bitbake/lib/bb/siggen.py
>> index 4dc09b3..6c5a227 100644 --- a/bitbake/lib/bb/siggen.py
>> +++ b/bitbake/lib/bb/siggen.py
>> @@ -43,7 +43,17 @@ class SignatureGenerator(object):          return
>>=20
>>      def stampfile(self, stampbase, file_name, taskname):
>> -        return "%s.%s" % (stampbase, taskname)
>> +        stamp_extra_info =3D (self.data.getVarFlag(taskname,
>> + 'stamp-extra-info', True) or self.data.getVar('BB_STAMP_EXTRA', +
>> True) or "") +
>> +        if self.stampblacklist:
>> +            self.sbl =3D re.compile(self.stampblacklist) +      =20
>> else: +            self.sbl =3D None
>> +
>> +        if self.sbl and self.sbl.search(file_name):
>> +            return "%s.%s" % (stampbase, taskname) +
>> +        return ("%s.%s.%s" % (stampbase, taskname,
>> + stamp_extra_info)).rstrip('.')
>>=20
>>  class SignatureGeneratorBasic(SignatureGenerator):      """
>> @@ -59,6 +69,8 @@ class SignatureGeneratorBasic(SignatureGenerator):
>>          self.lookupcache =3D {}
>>          self.basewhitelist =3D (data.getVar("BB_HASHBASE_WHITELIST",
>>          True) or "").split() self.taskwhitelist =3D
>> data.getVar("BB_HASHTASK_WHITELIST",=20
>> True) or None
>> +        self.stampblacklist =3D data.getVar("BB_STAMPTASK_BLACKLIST",
>> True) or None +        self.data =3D data=20
>>=20
>>          if self.taskwhitelist:
>>              self.twl =3D re.compile(self.taskwhitelist)


