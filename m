Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E12474C8009D
	for <poky@yoctoproject.org>; Thu, 16 Jun 2011 16:06:42 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Jun 2011 14:06:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,377,1304319600"; d="scan'208";a="14469878"
Received: from doubt.jf.intel.com (HELO [10.7.199.51]) ([10.7.199.51])
	by orsmga002.jf.intel.com with ESMTP; 16 Jun 2011 14:06:42 -0700
Message-ID: <4DFA7060.6060408@linux.intel.com>
Date: Thu, 16 Jun 2011 14:06:40 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Jeff Mitchell <jmitchell@ll.mit.edu>
References: <4DF668B1.1060500@ll.mit.edu> <4DF6715D.3050703@linux.intel.com>	
	<4DF67631.9000702@intel.com> <4DF67B60.6050008@ll.mit.edu>	
	<4DF67C8D.4010907@intel.com> <1307999666.15712.286.camel@rex>
	<4DF67EAE.809@intel.com> <4DF7760F.9050106@ll.mit.edu>
In-Reply-To: <4DF7760F.9050106@ll.mit.edu>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	Saul Wold <saul.wold@intel.com>
Subject: Re: Git/perl build problems
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
X-List-Received-Date: Thu, 16 Jun 2011 21:06:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 06/14/2011 07:54 AM, Jeff Mitchell wrote:
> On 06/13/2011 05:18 PM, Saul Wold wrote:
>> On 06/13/2011 02:14 PM, Richard Purdie wrote:
>>> On Mon, 2011-06-13 at 14:09 -0700, Saul Wold wrote:
>>>> On 06/13/2011 02:04 PM, Jeff Mitchell wrote:
>>>>> On 06/13/2011 04:42 PM, Saul Wold wrote:
>>>>>> Understood, but not fixed yet!
>>>>>>
>>>>>> The workaround at this point is to
>>>>>>
>>>>>> "bitbake -c cleansstate autoconf-native automake-native"
>>>>>>
>>>>>> Thanks should resolve this issue.
>>>>>
>>>>> Running that now, seems to be working. Would a simple revision bump to
>>>>> those two packages fix the problem for any others?
>>>>>
>>>> That's my thought, but this issue is that it now uses the host perl, not
>>>> any perl built by poky, so I am concerned that it also really need to
>>>> inherit perlnative and I have not completely tested that yet.
>>>
>>> No, everything is fine and working as intended and they should not need
>>> perl-native. We should have bumped PR in hindsight and still could do
>>> so, that would be fine.
>>>
>> Thanks for that confirmation with all the perl machinations I was not
>> sure which perl those tools should really be using.  Given that, if you
>> have not already got a commit for that I will offer one up.
> 
> While cleaning and recompiling autoconf-native and automake-native 
> helped with the former issue, I've got two more failing packages: 
> librsvg and avahi.
> 
> The former is using
> /home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/glib-mkenums
> 
> with the result
> /home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/perl: bad 
> interpreter: No such file or directory


Hrm, I haven't seen this myself. Are you still blocked on this?

If so, have you tried a cleanall of autoconf and automake (not the
-native versions). Just a stab in the dark...

--
Darren

> 
> The latter is using (with the same result)
> /home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/intltool-update
> 
> The former at least looks like a clean/rebuild of glib-2.0 should work 
> -- but it didn't. What's the proper package that needs to be 
> cleaned/rebuilt?
> 
> Thanks,
> Jeff

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

