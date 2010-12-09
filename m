Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A3E734C81227
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 21:33:14 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Dec 2010 19:33:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,319,1288594800"; d="scan'208";a="581980109"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 08 Dec 2010 19:33:13 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 9 Dec 2010 11:32:55 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 9 Dec 2010 11:32:55 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Thu, 9 Dec 2010
	11:32:54 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Date: Thu, 9 Dec 2010 11:32:53 +0800
Thread-Topic: [poky] About the operator "??="
Thread-Index: AcuW5Y8tZ+5zUqC7SWSnffd4RmnlKQAXOySQ
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A314F2E1C@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A303B2EF0@shsmsx501.ccr.corp.intel.com>
	<1291804222.1554.256.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D515D0DC5@shsmsx502.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F2BAE@shsmsx501.ccr.corp.intel.com>
	<1291819067.1554.606.camel@rex>
In-Reply-To: <1291819067.1554.606.camel@rex>
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
X-List-Received-Date: Thu, 09 Dec 2010 03:33:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Richard Purdie wrote:
> On Wed, 2010-12-08 at 19:59 +0800, Xu, Dongxiao wrote:
>> Here I did a profile, see following results:
>>
>> Total time 39.296 secs
>> Here I ranked the result according to "cumtime" item.
>> See "finalize" (33.150 secs) and "finalise" (20.597 secs), there are
>> 13s difference. A lot of time is cost on the following code:
>>
>>     for lazykey in bb.data.getVar("__lazy_assigned", d) or ():
>>         if bb.data.getVar(lazykey, d) is None:
>>             val =3D bb.data.getVarFlag(lazykey, "defaultval", d)
>>             bb.data.setVar(lazykey, val, d)
>>
>>
>>    Ordered by: cumulative time
>>
>>    ncalls  tottime  percall  cumtime  percall
>>         filename:lineno(function) 1    0.020    0.020   39.419
>>      39.419
>>
>>
>>
>>
>>
>>
>>
>>  /home/dongxiao/poky/scripts/..//bitbake/lib/bb/ui/knotty.py:33(init)
>>  1689    0.003    0.000   39.374    0.023
>>
>>
>>
>>
>>
>>
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/server/none.py:95(waitEve=
nt)
>> 765    0.002    0.000   39.368    0.051
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/server/none.py:121(idle_c=
ommands)
>> 765    0.001    0.000   39.115    0.051
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/cooker.py:159(runCommands=
)
>>    765    0.002    0.000   39.114    0.051
>>
>>
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/command.py:78(runAsyncCom=
mand)
>> 765    0.002    0.000   39.110    0.051
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/cooker.py:766(updateCache=
)
>> 764    0.054    0.000   39.058    0.051
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/cooker.py:995(parse_next)
>> 764    0.007    0.000   38.166    0.050
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/cache.py:181(loadData)
>> 764    0.010    0.000   36.523    0.048
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/cache.py:462(load_bbfile)
>> 4302/764    0.016    0.000   36.435    0.048
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/parse/__init__.py:71(hand=
le)
>> 4306/764    0.068    0.000   36.429    0.048
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/parse/parse_py/BBHandler.=
py:109(handle)
>> 764    0.008    0.000   33.951    0.044
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/parse/ast.py:365(multi_fi=
nalize)
>> 957    0.308    0.000   33.150    0.035
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/parse/ast.py:303(finalize=
)
>> 923    0.086    0.000   20.597    0.022
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/siggen.py:92(finalise)
>> 923    1.310    0.001   19.847    0.022
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/siggen.py:60(_build_data)
>> 923    1.593    0.002   16.898    0.018
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data.py:299(generate_depe=
ndencies)
>> 287898    2.043    0.000   12.702    0.000
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data.py:271(build_depende=
ncies)
>> 928560/459862    1.961    0.000   11.680    0.000
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:86(expandWi=
thRefs)
>> 1517574/1198288    0.990    0.000   11.241    0.000
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:246(getVar)
>> 525304/269546    1.332    0.000   10.041    0.000 {built-in method
>> sub} 640662/347252    0.373    0.000    8.484    0.000
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:116(expand)
>> 523659/318900    0.838    0.000    7.917    0.000
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:51(var_sub)
>> 305565    1.620    0.000    7.658    0.000
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:212(setVar)
>> 3652690    2.389    0.000    6.970    0.000
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:285(getVarF=
lag)
>> 225169    0.129    0.000    6.047    0.000
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data.py:81(setVar)
>> 41959/34572    0.307    0.000    4.718    0.000
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:63(python_s=
ub)
>> 360953/338884    0.206    0.000    3.933    0.000
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data.py:86(getVar)
>>
>>
>>
>> If replace all the "??=3D" with "?=3D", and re-run the profile, the time
>> for finalize and finalise decrease a lot and the difference between
>> the two functions is about 6 secs.
>>
>> Total time: 32.708 secs. (20% time saving)
>>
>>    Ordered by: cumulative time
>>
>>    ncalls  tottime  percall  cumtime  percall
>>         filename:lineno(function) 1    0.019    0.019   32.828
>>      32.828
>>
>>
>>
>>
>>
>>
>>
>>  /home/dongxiao/poky/scripts/..//bitbake/lib/bb/ui/knotty.py:33(init)
>>  1689    0.003    0.000   32.785    0.019
>>
>>
>>
>>
>>
>>
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/server/none.py:95(waitEve=
nt)
>> 765    0.002    0.000   32.779    0.043
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/server/none.py:121(idle_c=
ommands)
>> 765    0.001    0.000   32.526    0.043
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/cooker.py:159(runCommands=
)
>>   765    0.002    0.000   32.525    0.043
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/command.py:78(runAsyncCom=
mand)
>> 765    0.002    0.000   32.522    0.043
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/cooker.py:766(updateCache=
)
>> 764    0.053    0.000   32.488    0.043
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/cooker.py:995(parse_next)
>> 764    0.007    0.000   31.610    0.041
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/cache.py:181(loadData)
>> 764    0.009    0.000   29.994    0.039
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/cache.py:462(load_bbfile)
>> 4302/764    0.015    0.000   29.907    0.039
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/parse/__init__.py:71(hand=
le)
>> 4306/764    0.066    0.000   29.901    0.039
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/parse/parse_py/BBHandler.=
py:109(handle)
>> 764    0.008    0.000   27.475    0.036
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/parse/ast.py:365(multi_fi=
nalize)
>> 957    0.056    0.000   26.675    0.028
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/parse/ast.py:303(finalize=
)
>> 923    0.085    0.000   20.561    0.022
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/siggen.py:92(finalise)
>> 923    1.290    0.001   19.810    0.021
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/siggen.py:60(_build_data)
>> 923    1.601    0.002   16.901    0.018
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data.py:299(generate_depe=
ndencies)
>> 287898    1.845    0.000   12.768    0.000
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data.py:271(build_depende=
ncies)
>> 928560/459862    1.913    0.000   11.589    0.000
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:86(expandWi=
thRefs)
>> 1358764/1039478    0.937    0.000   10.748    0.000
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:246(getVar)
>> 525304/269546    1.328    0.000    9.979    0.000 {built-in method
>> sub} 640662/347252    0.366    0.000    8.370    0.000
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:116(expand)
>> 523659/318900    0.833    0.000    7.802    0.000
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:51(var_sub)
>> 3337869    2.138    0.000    6.174    0.000
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:285(getVarF=
lag)
>> 41959/34572    0.271    0.000    4.643    0.000
>> /home/dongxiao/poky/scripts/..//bitbake/lib/bb/data_smart.py:63(python_s=
ub)
>
> Thanks, that is quite a significant difference.
>
> Could you try working out how often getVar returns a "None" value?
> I'm wondering if we should add something to getVar that if it is
> about to return None, it checks for the default value flag and
> returns that if set. Originally ??=3D wasn't implemented that way do to
> performance concerns but I think we need to recheck that!

Hi Richard,

During the file parsing process, the getVar is called "1435156/1148654" tim=
es (actually I am still confused what "/" means...), and among them, 322121=
 times of getVar call return "None", thus about 1/3 or 1/4 of the total cal=
ls.

I tried to use the following patch to have a test. Also I paste a profile l=
og.
From the result we can see it has over 15% performance gain. (from 39.3 sec=
s to 33.7 secs).

In usermanual, the "??=3D" definition is:

Setting a default value (??=3D)
        A ??=3D "somevalue"
        A ??=3D "someothervalue"
If A is set before the above, it will retain that value.  If A is unset pri=
or to the above, A will be set to someothervalue.  This is a lazy version o=
f ?=3D, in that the assignment does not occur until the end of the parsing =
process, so that the last, rather than the first, ??=3D assignment to a giv=
en variable will be used.

Our patch logic isn't strickly following the "??=3D" definition, since the =
assignment doesn't occurs in end of parsing process...
Except this one, I think other behaviors for ??=3D do not change.

diff --git a/bitbake/lib/bb/data_smart.py b/bitbake/lib/bb/data_smart.py
index b9d9476..14ac305 100644
--- a/bitbake/lib/bb/data_smart.py
+++ b/bitbake/lib/bb/data_smart.py
@@ -246,6 +246,9 @@ class DataSmart:
     def getVar(self, var, exp):
         value =3D self.getVarFlag(var, "content")

+        if value =3D=3D None:
+            value =3D self.getVarFlag(var, "defaultval")
+
         if exp and value:
             return self.expand(value, var)
         return value
diff --git a/bitbake/lib/bb/parse/ast.py b/bitbake/lib/bb/parse/ast.py
index 870ae65..1ccda82 100644
--- a/bitbake/lib/bb/parse/ast.py
+++ b/bitbake/lib/bb/parse/ast.py
@@ -109,10 +109,8 @@ class DataNode(AstNode):
         if 'flag' in groupd and groupd['flag'] !=3D None:
             bb.data.setVarFlag(key, groupd['flag'], val, data)
         elif groupd["lazyques"]:
-            assigned =3D bb.data.getVar("__lazy_assigned", data) or []
-            assigned.append(key)
-            bb.data.setVar("__lazy_assigned", assigned, data)
             bb.data.setVarFlag(key, "defaultval", val, data)
+            bb.data.setVar(key, None, data)
         else:
             bb.data.setVar(key, val, data)

@@ -301,10 +299,6 @@ def handleInherit(statements, m):
     statements.append(InheritNode(m.group(1)))

 def finalize(fn, d, variant =3D None):
-    for lazykey in bb.data.getVar("__lazy_assigned", d) or ():
-        if bb.data.getVar(lazykey, d) is None:
-            val =3D bb.data.getVarFlag(lazykey, "defaultval", d)
-            bb.data.setVar(lazykey, val, d)

     bb.data.expandKeys(d)
     bb.data.update_data(d)




Thu Dec  9 11:20:53 2010    profile.log

         30227175 function calls (28578863 primitive calls) in 33.762 CPU s=
econds

   Ordered by: cumulative time

   ncalls  tottime  percall  cumtime  percall filename:lineno(function)
        1    0.019    0.019   33.883   33.883 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/ui/knotty.py:33(init)
     1689    0.003    0.000   33.839    0.020 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/server/none.py:95(waitEvent)
      765    0.002    0.000   33.833    0.044 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/server/none.py:121(idle_commands)
      765    0.001    0.000   33.580    0.044 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/cooker.py:159(runCommands)
      765    0.002    0.000   33.579    0.044 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/command.py:78(runAsyncCommand)
      765    0.002    0.000   33.576    0.044 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/cooker.py:766(updateCache)
      764    0.054    0.000   33.543    0.044 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/cooker.py:995(parse_next)
      764    0.007    0.000   32.654    0.043 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/cache.py:181(loadData)
      764    0.010    0.000   30.933    0.040 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/cache.py:462(load_bbfile)
 4302/764    0.016    0.000   30.845    0.040 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/parse/__init__.py:71(handle)
 4306/764    0.066    0.000   30.838    0.040 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/parse/parse_py/BBHandler.py:109(handle)
      764    0.008    0.000   28.353    0.037 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/parse/ast.py:359(multi_finalize)
      957    0.056    0.000   27.526    0.029 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/parse/ast.py:301(finalize)
      923    0.087    0.000   21.212    0.023 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/siggen.py:92(finalise)
      923    1.387    0.002   20.451    0.022 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/siggen.py:60(_build_data)
      923    1.598    0.002   17.359    0.019 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/data.py:299(generate_dependencies)
   287898    2.104    0.000   13.220    0.000 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/data.py:271(build_dependencies)
928560/459862    1.928    0.000   11.910    0.000 /home/dongxiao/poky/scrip=
ts/..//bitbake/lib/bb/data_smart.py:86(expandWithRefs)
1357786/1038500    1.121    0.000   11.223    0.000 /home/dongxiao/poky/scr=
ipts/..//bitbake/lib/bb/data_smart.py:246(getVar)
525304/269546    1.376    0.000   10.207    0.000 {built-in method sub}
640662/347252    0.373    0.000    8.488    0.000 /home/dongxiao/poky/scrip=
ts/..//bitbake/lib/bb/data_smart.py:116(expand)
523659/318900    0.849    0.000    8.010    0.000 /home/dongxiao/poky/scrip=
ts/..//bitbake/lib/bb/data_smart.py:51(var_sub)
  3503560    2.258    0.000    6.529    0.000 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/data_smart.py:288(getVarFlag)
41959/34572    0.300    0.000    4.656    0.000 /home/dongxiao/poky/scripts=
/..//bitbake/lib/bb/data_smart.py:63(python_sub)
201090/179021    0.114    0.000    3.494    0.000 /home/dongxiao/poky/scrip=
ts/..//bitbake/lib/bb/data.py:86(getVar)
47023/39636    0.026    0.000    3.206    0.000 /home/dongxiao/poky/scripts=
/..//bitbake/lib/bb/utils.py:372(better_eval)
47023/39636    0.240    0.000    3.185    0.000 {eval}
   149629    0.751    0.000    3.060    0.000 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/data_smart.py:212(setVar)
 4306/961    0.045    0.000    2.973    0.003 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/parse/ast.py:35(eval)
  3710376    2.861    0.000    2.861    0.000 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/data_smart.py:191(_findVar)
3538/1163    0.043    0.000    2.810    0.002 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/parse/parse_py/ConfHandler.py:46(include)
 2405/926    0.034    0.000    2.477    0.003 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/parse/parse_py/BBHandler.py:69(inherit)
      958    0.130    0.000    2.376    0.002 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/data.py:141(expandKeys)
116442/116213    0.063    0.000    1.913    0.000 /home/dongxiao/poky/scrip=
ts/..//bitbake/lib/bb/data.py:137(expand)
    84281    0.415    0.000    1.876    0.000 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/data.py:302(<genexpr>)
 2212/867    0.004    0.000    1.812    0.002 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/parse/ast.py:260(eval)
     2571    0.003    0.000    1.760    0.001 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/data.py:267(update_data)
     2571    0.123    0.000    1.757    0.001 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/data_smart.py:120(finalize)
  1506127    1.232    0.000    1.715    0.000 /usr/lib/python2.6/copy.py:65=
(copy)
     6021    0.055    0.000    1.707    0.000 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/utils.py:369(simple_exec)
      923    0.097    0.000    1.675    0.002 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/cache.py:354(handle_data)
    60485    0.099    0.000    1.587    0.000 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/cache.py:96(getVar)
    37601    0.114    0.000    1.520    0.000 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/parse/ast.py:85(eval)
   275813    0.772    0.000    1.507    0.000 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/COW.py:97(__getitem__)
    42029    1.376    0.000    1.376    0.000 {compile}
    69158    0.043    0.000    1.329    0.000 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/data.py:81(setVar)
  599/412    0.004    0.000    1.315    0.003 /home/dongxiao/poky/scripts/.=
.//bitbake/lib/bb/parse/ast.py:49(eval)


Thanks,
Dongxiao


>
> Cheers,
>
> Richard


