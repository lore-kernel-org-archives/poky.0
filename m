Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 176F94C81223
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 08:38:11 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB8Ec8nd021713;
	Wed, 8 Dec 2010 14:38:08 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 21368-06; Wed,  8 Dec 2010 14:38:00 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB8EbuEj021695
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 8 Dec 2010 14:37:57 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A314F2BAE@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A303B2EF0@shsmsx501.ccr.corp.intel.com>
	<1291804222.1554.256.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D515D0DC5@shsmsx502.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F2BAE@shsmsx501.ccr.corp.intel.com>
Date: Wed, 08 Dec 2010 14:37:47 +0000
Message-ID: <1291819067.1554.606.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
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
X-List-Received-Date: Wed, 08 Dec 2010 14:38:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-08 at 19:59 +0800, Xu, Dongxiao wrote:
> Here I did a profile, see following results:
> 
> Total time 39.296 secs
> Here I ranked the result according to "cumtime" item.
> See "finalize" (33.150 secs) and "finalise" (20.597 secs), there are 13s difference. A lot of time is cost on the following code:
> 
>     for lazykey in bb.data.getVar("__lazy_assigned", d) or ():
>         if bb.data.getVar(lazykey, d) is None:
>             val = bb.data.getVarFlag(lazykey, "defaultval", d)
>             bb.data.setVar(lazykey, val, d)
> 
> 
>    Ordered by: cumulative time
> 
>    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
>         1    0.020    0.020   39.419   39.419 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/ui/knotty.py:33(init)
>      1689    0.003    0.000   39.374    0.023 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/server/none.py:95(waitEvent)
>       765    0.002    0.000   39.368    0.051 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/server/none.py:121(idle_commands)
>       765    0.001    0.000   39.115    0.051 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/cooker.py:159(runCommands)
>       765    0.002    0.000   39.114    0.051 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/command.py:78(runAsyncCommand)
>       765    0.002    0.000   39.110    0.051 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/cooker.py:766(updateCache)
>       764    0.054    0.000   39.058    0.051 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/cooker.py:995(parse_next)
>       764    0.007    0.000   38.166    0.050 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/cache.py:181(loadData)
>       764    0.010    0.000   36.523    0.048 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/cache.py:462(load_bbfile)
>  4302/764    0.016    0.000   36.435    0.048 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/parse/__init__.py:71(handle)
>  4306/764    0.068    0.000   36.429    0.048 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/parse/parse_py/BBHandler.py:109(handle)
>       764    0.008    0.000   33.951    0.044 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/parse/ast.py:365(multi_finalize)
>       957    0.308    0.000   33.150    0.035 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/parse/ast.py:303(finalize)
>       923    0.086    0.000   20.597    0.022 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/siggen.py:92(finalise)
>       923    1.310    0.001   19.847    0.022 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/siggen.py:60(_build_data)
>       923    1.593    0.002   16.898    0.018 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data.py:299(generate_dependencies)
>    287898    2.043    0.000   12.702    0.000 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data.py:271(build_dependencies)
> 928560/459862    1.961    0.000   11.680    0.000 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:86(expandWithRefs)
> 1517574/1198288    0.990    0.000   11.241    0.000 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:246(getVar)
> 525304/269546    1.332    0.000   10.041    0.000 {built-in method sub}
> 640662/347252    0.373    0.000    8.484    0.000 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:116(expand)
> 523659/318900    0.838    0.000    7.917    0.000 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:51(var_sub)
>    305565    1.620    0.000    7.658    0.000 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:212(setVar)
>   3652690    2.389    0.000    6.970    0.000 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:285(getVarFlag)
>    225169    0.129    0.000    6.047    0.000 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data.py:81(setVar)
> 41959/34572    0.307    0.000    4.718    0.000 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:63(python_sub)
> 360953/338884    0.206    0.000    3.933    0.000 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data.py:86(getVar)
> 
> 
> 
> If replace all the "??=" with "?=", and re-run the profile, the time for finalize and finalise decrease a lot and the difference between the two functions is about 6 secs.
> 
> Total time: 32.708 secs. (20% time saving)
> 
>    Ordered by: cumulative time
> 
>    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
>         1    0.019    0.019   32.828   32.828 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/ui/knotty.py:33(init)
>      1689    0.003    0.000   32.785    0.019 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/server/none.py:95(waitEvent)
>       765    0.002    0.000   32.779    0.043 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/server/none.py:121(idle_commands)
>       765    0.001    0.000   32.526    0.043 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/cooker.py:159(runCommands)
>       765    0.002    0.000   32.525    0.043 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/command.py:78(runAsyncCommand)
>       765    0.002    0.000   32.522    0.043 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/cooker.py:766(updateCache)
>       764    0.053    0.000   32.488    0.043 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/cooker.py:995(parse_next)
>       764    0.007    0.000   31.610    0.041 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/cache.py:181(loadData)
>       764    0.009    0.000   29.994    0.039 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/cache.py:462(load_bbfile)
>  4302/764    0.015    0.000   29.907    0.039 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/parse/__init__.py:71(handle)
>  4306/764    0.066    0.000   29.901    0.039 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/parse/parse_py/BBHandler.py:109(handle)
>       764    0.008    0.000   27.475    0.036 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/parse/ast.py:365(multi_finalize)
>       957    0.056    0.000   26.675    0.028 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/parse/ast.py:303(finalize)
>       923    0.085    0.000   20.561    0.022 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/siggen.py:92(finalise)
>       923    1.290    0.001   19.810    0.021 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/siggen.py:60(_build_data)
>       923    1.601    0.002   16.901    0.018 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data.py:299(generate_dependencies)
>    287898    1.845    0.000   12.768    0.000 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data.py:271(build_dependencies)
> 928560/459862    1.913    0.000   11.589    0.000 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:86(expandWithRefs)
> 1358764/1039478    0.937    0.000   10.748    0.000 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:246(getVar)
> 525304/269546    1.328    0.000    9.979    0.000 {built-in method sub}
> 640662/347252    0.366    0.000    8.370    0.000 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:116(expand)
> 523659/318900    0.833    0.000    7.802    0.000 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:51(var_sub)
>   3337869    2.138    0.000    6.174    0.000 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:285(getVarFlag)
> 41959/34572    0.271    0.000    4.643    0.000 /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:63(python_sub)

Thanks, that is quite a significant difference.

Could you try working out how often getVar returns a "None" value? I'm
wondering if we should add something to getVar that if it is about to
return None, it checks for the default value flag and returns that if
set. Originally ??= wasn't implemented that way do to performance
concerns but I think we need to recheck that!

Cheers,

Richard


