Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 26A434C80B73
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 06:42:24 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oATCgL4V032531;
	Mon, 29 Nov 2010 12:42:21 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 32419-02; Mon, 29 Nov 2010 12:42:17 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oATCgBjK032525
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 29 Nov 2010 12:42:14 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A30346BE1@shsmsx501.ccr.corp.intel.com>
References: <cover.1290405852.git.dongxiao.xu@intel.com>
	<1290954465.27143.226.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A30346BE1@shsmsx501.ccr.corp.intel.com>
Date: Mon, 29 Nov 2010 04:41:56 -0800
Message-ID: <1291034516.14277.966.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
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
X-List-Received-Date: Mon, 29 Nov 2010 12:42:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-11-29 at 13:45 +0800, Xu, Dongxiao wrote:
> Richard Purdie wrote:
> > I'm going to take the patch but I'd like to be clear where the speed
> > gains come from with this change. I suspect some are due to a smaller
> > number of keys but I also suspect the smaller number of tasks
> > involved helps too!   
>
> I did a profiling for the parsing time w/ and w/o the patch.
> 
> Here a piece of the profiling result:
>
> W/ PATCH:
> 
> Mon Nov 29 13:23:42 2010    profile.log
> 
>          32756805 function calls (31268348 primitive calls) in 60.195 CPU seconds
> 
>    Ordered by: internal time
> 
>    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
>   3572737    4.950    0.000   12.849    0.000 /sda1/yocto/scripts/..//bitbake/lib/bb/data_smart.py:285(getVarFlag)
>   3917977    4.464    0.000    4.464    0.000 /sda1/yocto/scripts/..//bitbake/lib/bb/data_smart.py:191(_findVar)
> 873129/431998    3.040    0.000   16.824    0.000 /sda1/yocto/scripts/..//bitbake/lib/bb/data_smart.py:86(expandWithRefs)
>   1745340    3.007    0.000    4.555    0.000 /usr/lib/python2.6/copy.py:65(copy)
>    286785    2.570    0.000   20.051    0.000 /sda1/yocto/scripts/..//bitbake/lib/bb/data.py:271(build_dependencies)
>    565710    2.532    0.000    5.015    0.000 /sda1/yocto/scripts/..//bitbake/lib/bb/COW.py:97(__getitem__)
>       917    2.394    0.003   27.726    0.030 /sda1/yocto/scripts/..//bitbake/lib/bb/data.py:299(generate_dependencies)
>    288439    2.350    0.000   11.607    0.000 /sda1/yocto/scripts/..//bitbake/lib/bb/data_smart.py:212(setVar)
> 1428066/1144003    1.882    0.000   16.762    0.000 /sda1/yocto/scripts/..//bitbake/lib/bb/data_smart.py:246(getVar)
> ...
>      2389    0.004    0.000    2.528    0.001 /sda1/yocto/scripts/..//bitbake/lib/bb/data.py:267(update_data)
> 
> 
> W/O PATCH:
> 
> Mon Nov 29 13:28:36 2010    profile.log
> 
>          49110091 function calls (47618793 primitive calls) in 75.338 CPU seconds
> 
>    Ordered by: internal time
> 
>    ncalls  tottime  percall  cumtime  percall filename:lineno(function)
>   7547331    8.230    0.000   19.467    0.000 /sda1/yocto/scripts/..//bitbake/lib/bb/data_smart.py:285(getVarFlag)
>   7908236    8.113    0.000    8.113    0.000 /sda1/yocto/scripts/..//bitbake/lib/bb/data_smart.py:191(_findVar)
>       917    3.987    0.004   43.045    0.047 /sda1/yocto/scripts/..//bitbake/lib/bb/data.py:299(generate_dependencies)
>   5061763    3.812    0.000    5.633    0.000 /sda1/yocto/scripts/..//bitbake/lib/bb/data.py:301(<genexpr>)
>     84656    3.318    0.000   13.475    0.000 /sda1/yocto/scripts/..//bitbake/lib/bb/data.py:302(<genexpr>)
> 897804/450300    2.838    0.000   15.801    0.000 /sda1/yocto/scripts/..//bitbake/lib/bb/data_smart.py:86(expandWithRefs)
>    294083    2.777    0.000   18.854    0.000 /sda1/yocto/scripts/..//bitbake/lib/bb/data.py:271(build_dependencies)
>   1783941    2.740    0.000    4.154    0.000 /usr/lib/python2.6/copy.py:65(copy)
>    592115    2.432    0.000    5.179    0.000 /sda1/yocto/scripts/..//bitbake/lib/bb/COW.py:97(__getitem__)
> ...
>      2389    0.004    0.000    2.656    0.001 /sda1/yocto/scripts/..//bitbake/lib/bb/data.py:267(update_data)
> 
> From the profiling result we can see that, generate_dependencies()
> time reduces from 43 seconds to 27 seconds, while build_dependencies()
> mostly keeps unchanged (From 20 seconds to 18.8 seconds). Therefore
> the biggest overhead reduced by the patch should be the two lines of
> code to parsing keys in generate_dependencies() function.
> 
> > 
> > Also, a lot of those keys are override keys so perhaps its speeding up
> > update_data() calls and some of the gain is from there too?
> 
> Update_data() has some gains but not much, see the above profile result.

Looks good, thanks.

Interestingly looking at the profile overall, we dropped from 49 million
function calls to 32 million function calls which is always a good way
to speed things up.

getVarFlag and _findVar each dropped by 3 million calls each (which is
from the construction of the keys() list).

So a very valid speedup :). I still think we might be able to speed this
area up further though such as if we directly keep an index of exported
variables.

Cheers,

Richard


