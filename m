Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 985444C8120C
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 05:59:57 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Dec 2010 03:59:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,315,1288594800"; d="scan'208";a="865862419"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 08 Dec 2010 03:59:56 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 8 Dec 2010 19:59:55 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Wed, 8 Dec 2010
	19:59:54 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, Richard Purdie
	<rpurdie@linux.intel.com>
Date: Wed, 8 Dec 2010 19:59:53 +0800
Thread-Topic: [poky] About the operator "??="
Thread-Index: AcuWwvrDSdKYfTdKRRuU73KRtggVxQACGNOgAABy0DA=
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A314F2BAE@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A303B2EF0@shsmsx501.ccr.corp.intel.com>
	<1291804222.1554.256.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D515D0DC5@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D515D0DC5@shsmsx502.ccr.corp.intel.com>
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
X-List-Received-Date: Wed, 08 Dec 2010 11:59:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Tian, Kevin wrote:
>> From: Richard Purdie
>> Sent: Wednesday, December 08, 2010 6:30 PM
>>=20
>> Hi Dongxiao,
>>=20
>> On Wed, 2010-12-01 at 09:57 +0800, Xu, Dongxiao wrote:
>>> Recently when investigating the file parsing speed, I found the
>>> implementation of "??=3D" is another hot spot. This operator will not
>>> apply the default assignment until the end of the parse, which is
>>> different from "?=3D". According to current poky, the users for "??=3D"
>>> is mostly the scm revisions stored in poky-default-revisions.inc.
>>>=20
>>> Currently the final assignment logic for "??=3D" is added in
>>> finalize(), which costs about 20% parsing time.
>>=20
>> Can I take a look at the graph showing that? I'm a little surprised
>> it takes 20% of the time, that is a rather scary amount!

Hi Richard,

Here I did a profile, see following results:

Total time 39.296 secs
Here I ranked the result according to "cumtime" item.
See "finalize" (33.150 secs) and "finalise" (20.597 secs), there are 13s di=
fference. A lot of time is cost on the following code:

    for lazykey in bb.data.getVar("__lazy_assigned", d) or ():
        if bb.data.getVar(lazykey, d) is None:
            val =3D bb.data.getVarFlag(lazykey, "defaultval", d)
            bb.data.setVar(lazykey, val, d)


   Ordered by: cumulative time

   ncalls  tottime  percall  cumtime  percall filename:lineno(function)
        1    0.020    0.020   39.419   39.419 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/ui/knotty.py:33(init)
     1689    0.003    0.000   39.374    0.023 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/server/none.py:95(waitEvent)
      765    0.002    0.000   39.368    0.051 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/server/none.py:121(idle_commands)
      765    0.001    0.000   39.115    0.051 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/cooker.py:159(runCommands)
      765    0.002    0.000   39.114    0.051 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/command.py:78(runAsyncCommand)
      765    0.002    0.000   39.110    0.051 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/cooker.py:766(updateCache)
      764    0.054    0.000   39.058    0.051 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/cooker.py:995(parse_next)
      764    0.007    0.000   38.166    0.050 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/cache.py:181(loadData)
      764    0.010    0.000   36.523    0.048 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/cache.py:462(load_bbfile)
 4302/764    0.016    0.000   36.435    0.048 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/parse/__init__.py:71(handle)
 4306/764    0.068    0.000   36.429    0.048 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/parse/parse_py/BBHandler.py:109(handle)
      764    0.008    0.000   33.951    0.044 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/parse/ast.py:365(multi_finalize)
      957    0.308    0.000   33.150    0.035 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/parse/ast.py:303(finalize)
      923    0.086    0.000   20.597    0.022 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/siggen.py:92(finalise)
      923    1.310    0.001   19.847    0.022 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/siggen.py:60(_build_data)
      923    1.593    0.002   16.898    0.018 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/data.py:299(generate_dependencies)
   287898    2.043    0.000   12.702    0.000 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/data.py:271(build_dependencies)
928560/459862    1.961    0.000   11.680    0.000 /home/dongxiao/poky/scrip=
ts/..//bitbake/lib/bb/data_smart.py:86(expandWithRefs)
1517574/1198288    0.990    0.000   11.241    0.000 /home/dongxiao/poky/scr=
ipts/..//bitbake/lib/bb/data_smart.py:246(getVar)
525304/269546    1.332    0.000   10.041    0.000 {built-in method sub}
640662/347252    0.373    0.000    8.484    0.000 /home/dongxiao/poky/scrip=
ts/..//bitbake/lib/bb/data_smart.py:116(expand)
523659/318900    0.838    0.000    7.917    0.000 /home/dongxiao/poky/scrip=
ts/..//bitbake/lib/bb/data_smart.py:51(var_sub)
   305565    1.620    0.000    7.658    0.000 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/data_smart.py:212(setVar)
  3652690    2.389    0.000    6.970    0.000 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/data_smart.py:285(getVarFlag)
   225169    0.129    0.000    6.047    0.000 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/data.py:81(setVar)
41959/34572    0.307    0.000    4.718    0.000 /home/dongxiao/poky/scripts=
/..//bitbake/lib/bb/data_smart.py:63(python_sub)
360953/338884    0.206    0.000    3.933    0.000 /home/dongxiao/poky/scrip=
ts/..//bitbake/lib/bb/data.py:86(getVar)



If replace all the "??=3D" with "?=3D", and re-run the profile, the time fo=
r finalize and finalise decrease a lot and the difference between the two f=
unctions is about 6 secs.

Total time: 32.708 secs. (20% time saving)

   Ordered by: cumulative time

   ncalls  tottime  percall  cumtime  percall filename:lineno(function)
        1    0.019    0.019   32.828   32.828 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/ui/knotty.py:33(init)
     1689    0.003    0.000   32.785    0.019 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/server/none.py:95(waitEvent)
      765    0.002    0.000   32.779    0.043 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/server/none.py:121(idle_commands)
      765    0.001    0.000   32.526    0.043 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/cooker.py:159(runCommands)
      765    0.002    0.000   32.525    0.043 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/command.py:78(runAsyncCommand)
      765    0.002    0.000   32.522    0.043 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/cooker.py:766(updateCache)
      764    0.053    0.000   32.488    0.043 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/cooker.py:995(parse_next)
      764    0.007    0.000   31.610    0.041 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/cache.py:181(loadData)
      764    0.009    0.000   29.994    0.039 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/cache.py:462(load_bbfile)
 4302/764    0.015    0.000   29.907    0.039 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/parse/__init__.py:71(handle)
 4306/764    0.066    0.000   29.901    0.039 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/parse/parse_py/BBHandler.py:109(handle)
      764    0.008    0.000   27.475    0.036 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/parse/ast.py:365(multi_finalize)
      957    0.056    0.000   26.675    0.028 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/parse/ast.py:303(finalize)
      923    0.085    0.000   20.561    0.022 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/siggen.py:92(finalise)
      923    1.290    0.001   19.810    0.021 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/siggen.py:60(_build_data)
      923    1.601    0.002   16.901    0.018 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/data.py:299(generate_dependencies)
   287898    1.845    0.000   12.768    0.000 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/data.py:271(build_dependencies)
928560/459862    1.913    0.000   11.589    0.000 /home/dongxiao/poky/scrip=
ts/..//bitbake/lib/bb/data_smart.py:86(expandWithRefs)
1358764/1039478    0.937    0.000   10.748    0.000 /home/dongxiao/poky/scr=
ipts/..//bitbake/lib/bb/data_smart.py:246(getVar)
525304/269546    1.328    0.000    9.979    0.000 {built-in method sub}
640662/347252    0.366    0.000    8.370    0.000 /home/dongxiao/poky/scrip=
ts/..//bitbake/lib/bb/data_smart.py:116(expand)
523659/318900    0.833    0.000    7.802    0.000 /home/dongxiao/poky/scrip=
ts/..//bitbake/lib/bb/data_smart.py:51(var_sub)
  3337869    2.138    0.000    6.174    0.000 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/data_smart.py:285(getVarFlag)
41959/34572    0.271    0.000    4.643    0.000 /home/dongxiao/poky/scripts=
/..//bitbake/lib/bb/data_smart.py:63(python_sub)


Thanks,
Dongxiao

>>=20
>=20
> I don't have the graph, but did do a simple test by printing the lazy
> value list in finalize(). There're 166 items in total. Regarding
> finalize() may be invoked multiple times for same recipe and we have
> over 700 recipes scanned in a fresh run, it may contribute obvious
> overhead just like what Dongxiao previously optimized for distro
> tracking fields.    =20
>=20
> I think we could remove the lazy key from the list after grabbing it
> as the default value, and is now testing it...=20
>=20
> Thanks
> Kevin


