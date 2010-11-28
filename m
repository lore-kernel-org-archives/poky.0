Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id BC5DC4C80052
	for <poky@yoctoproject.org>; Sun, 28 Nov 2010 17:21:21 -0600 (CST)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1PMqYb-0003J6-6l from Tom_Rini@mentor.com ;
	Sun, 28 Nov 2010 15:21:21 -0800
Received: from na2-mail.mgc.mentorg.com ([134.86.114.213]) by
	svr-orw-fem-01.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Sun, 28 Nov 2010 15:21:20 -0800
Received: from [172.30.80.63] ([172.30.80.63]) by na2-mail.mgc.mentorg.com
	with Microsoft SMTPSVC(6.0.3790.3959); 
	Sun, 28 Nov 2010 16:21:20 -0700
Message-ID: <4CF2E3E7.60809@mentor.com>
Date: Sun, 28 Nov 2010 16:21:11 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.15) Gecko/20101027 Lightning/1.0b1 Thunderbird/3.0.10
MIME-Version: 1.0
To: Richard Purdie <rpurdie@linux.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D31419AED@shsmsx502.ccr.corp.intel.com>	
	<1290004124.2518.4.camel@scimitar>
	<4CE3E72E.6070904@mentor.com>	 <1290946854.27143.65.camel@rex>
	<4CF2D3CE.1010108@mentor.com> <1290985562.14277.117.camel@rex>
In-Reply-To: <1290985562.14277.117.camel@rex>
X-OriginalArrivalTime: 28 Nov 2010 23:21:20.0187 (UTC)
	FILETIME=[F6DBA0B0:01CB8F52]
Cc: poky@yoctoproject.org
Subject: Re: a new problem with sstate
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
X-List-Received-Date: Sun, 28 Nov 2010 23:21:22 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/28/2010 04:06 PM, Richard Purdie wrote:
> On Sun, 2010-11-28 at 15:12 -0700, Tom Rini wrote:
>> On 11/28/2010 05:20 AM, Richard Purdie wrote:
>>> On Wed, 2010-11-17 at 07:31 -0700, Tom Rini wrote:
>>>> With old style packaged-staging we workaround this by doing:
>>>>
>>>> # We want to be certain that the scene is set for us only after it's set for
>>>> # our dependencies, to avoid problems with pstage package install order.
>>>> do_setscene[deptask] = "do_setscene"
>>>>
>>>> Can something similar be done for the sstate way of the world?
>>>
>>> Unfortunately not. sstate differs as the code tries to be clever about
>>> the dependencies and reverse walks the dependency tree. This means that
>>> if:
>>>
>>> A =>   B =>   C =>   D =>   E
>>>
>>> where "=>" means "depends on" then sstate will try and install a sstate
>>> package for A, then B, then C and *stop* once it finds a match.
>>>
>>> This fixes one of the annoyances of packaged-staging where if you're
>>> building an image and have all the ipks installed, it would still
>>> install the cross toolchain.
>>
>> Er, so you're saying sstate has a 3 steps back limit?  Or am I just
>> misunderstanding the example?
>
> You're misunderstanding it :/. It could stop at any point it finds a
> match, I just happened to pick three steps.

Figured.

> Putting it a different way, my point was that there is a "setscene" per
> task but the setscene dependencies represent those of the "parent" task,
> but are searched backwards compared to the normal logic. So setscene
> tasks don't have dependencies in their own right, its linked to the
> parent task the represent.

Right.  So, to restate the problem, in pstaging we have the problem of 
the gcc/glibc dance not forcing themselves to be run forward in the 
correct order, but we can fix that with some manual deps.  But in the 
sstate of the world the problem is that we might find the wrong thing to 
provide what we want and pick the wrong gcc or glibc sstate (and get a 
-initial rather than finial)?

-- 
Tom Rini
Mentor Graphics Corporation

