Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D6A954C80A74
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 07:14:31 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Nov 2010 05:14:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,222,1288594800"; d="scan'208";a="679098488"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 19 Nov 2010 05:14:16 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 19 Nov 2010 21:14:15 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 19 Nov 2010 21:14:14 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Date: Fri, 19 Nov 2010 21:14:13 +0800
Thread-Topic: [poky] [PATCH 1/1] bitbake: optimize file parsing speed
Thread-Index: AcuH1G9dwp82QEYKSkeZjlgbw1mlsgAFObhQ
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A302832E5@shsmsx501.ccr.corp.intel.com>
References: <cover.1289969353.git.dongxiao.xu@intel.com>
	<fa09979bfc38e15dc4b9ab199c11302284583a18.1289969353.git.dongxiao.xu@intel.com>
	<1290162452.1272.12090.camel@rex>
In-Reply-To: <1290162452.1272.12090.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] bitbake: optimize file parsing speed
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
X-List-Received-Date: Fri, 19 Nov 2010 13:14:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Richard Purdie wrote:
> On Wed, 2010-11-17 at 12:10 +0800, Dongxiao Xu wrote:
>> build some data cache for generate_dependencies() on hand, and later
>> each time when parsing the bb file, we do not need to build them
>> again=20
>> and again.
>>=20
>> This optimization could get about 50% speed gain when parsing all
>> ~800=20
>> bb files.
>>=20
>> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
>> ---
>>  bitbake/lib/bb/cooker.py |    2 ++
>>  bitbake/lib/bb/data.py   |   11 ++++++-----
>>  2 files changed, 8 insertions(+), 5 deletions(-)
>>=20
>> diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
>> index 33eb65e..05e6c16 100644 --- a/bitbake/lib/bb/cooker.py
>> +++ b/bitbake/lib/bb/cooker.py
>> @@ -76,6 +76,8 @@ class BBCooker:
>>=20
>>          self.configuration.data =3D bb.data.init()
>>=20
>> +        bb.data.init_data_cache(self.configuration.data) +
>>          if not server:
>>              bb.data.setVar("BB_WORKERCONTEXT", "1",
>> self.configuration.data)
>>=20
>> diff --git a/bitbake/lib/bb/data.py b/bitbake/lib/bb/data.py index
>> fee10cc..a9e539f 100644
>> --- a/bitbake/lib/bb/data.py
>> +++ b/bitbake/lib/bb/data.py
>> @@ -296,17 +296,18 @@ def build_dependencies(key, keys, shelldeps,
>>      d): #bb.note("Variable %s references %s and calls %s" % (key,
>>      str(deps), str(execs))) #d.setVarFlag(key, "vardeps", deps)
>>=20
>> -def generate_dependencies(d):
>> +def init_data_cache(d):
>> +    bb.data.keylist =3D set(key for key in d.keys() if not
>> key.startswith("__")) +    bb.data.shelldeps =3D set(key for key in
>> bb.data.keylist if +d.getVarFlag(key, "export") and not
>> d.getVarFlag(key, "unexport"))=20
>>=20
>> -    keys =3D set(key for key in d.keys() if not key.startswith("__"))
>> -    shelldeps =3D set(key for key in keys if d.getVarFlag(key,
>> "export") and not d.getVarFlag(key, "unexport")) +def
>> generate_dependencies(d):=20
>>=20
>>      deps =3D {}
>>      taskdeps =3D {}
>>=20
>>      tasklist =3D bb.data.getVar('__BBTASKS', d) or []      for task
>> in tasklist: -        deps[task] =3D build_dependencies(task, keys,
>> shelldeps, d) +        deps[task] =3D build_dependencies(task,
>> bb.data.keylist, + bb.data.shelldeps, d)=20
>>=20
>>          newdeps =3D deps[task]
>>          seen =3D set()
>> @@ -316,7 +317,7 @@ def generate_dependencies(d):
>>              newdeps =3D set()
>>              for dep in nextdeps:
>>                  if dep not in deps:
>> -                    deps[dep] =3D build_dependencies(dep, keys,
>> shelldeps, d) +                    deps[dep] =3D
>> build_dependencies(dep, + bb.data.keylist, bb.data.shelldeps, d)
>>                  newdeps |=3D  deps[dep]
>>              newdeps -=3D seen
>>          taskdeps[task] =3D seen | newdeps
>=20
>=20
> I'm afraid this isn't going to be quite this simple although this
> does prove those lines of code are a big hotspot in parsing.=20
>=20
> Why? You're creating the key and export lists for the base
> configuration data whereas the original code creates these lists for
> the *total* parsed metadata. There will therefore be differences in
> the values held by the two caches :(.  =20
>=20
> As an example, if you set:
>=20
> FOO =3D "bar" in a .bb file, 'FOO' will not appear in your keywords
> cache.=20
>=20
> Cheers,
>=20
> Richard

Richard,

Yes, you are right, thanks for pointing it out.

Now I am trying to solve this parse time issue in another way.=20

We saw that the following two lines cost a lot of cycles.

    keys =3D set(key for key in d.keys() if not key.startswith("__"))
    shelldeps =3D set(key for key in keys if d.getVarFlag(key, "export") an=
d not d.getVarFlag(key, "unexport"))

After dump out the d.keys(), I found most of the items (>90%) are variables=
 in distro_tracking_fields.inc, actually they are not used in normal build =
process.

I checked the code, some functions in utility-tasks.bbclass (related with u=
pstream version check) will need information in distro_tracking_fields.inc,=
 and so that poky.conf includes this file. And utility-tasks.bbclass is inh=
erited in base.bbclass, which is somewhat fundamental to poky.

I am thinking of moving those distro checking related code from utility-tas=
ks.bbclass to distrodata.bbclass, in order not to involve such big database=
 (distro_tracking_fields.inc) in normal parsing process. Does it make sense=
?

I did some simple tests, and this could save about 20% file parsing time.

For the repeated parsing hot spot, I will continue to investigate to see wh=
ether there is optimization point.=20

Thanks,
Dongxiao=

