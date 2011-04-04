Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 67F664C8026D
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 11:06:19 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 04 Apr 2011 09:06:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,298,1299484800"; d="scan'208";a="728936278"
Received: from doubt.jf.intel.com (HELO [10.7.199.68]) ([10.7.199.68])
	by orsmga001.jf.intel.com with ESMTP; 04 Apr 2011 09:06:18 -0700
Message-ID: <4D99EC73.8060509@linux.intel.com>
Date: Mon, 04 Apr 2011 09:06:11 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D971BF9.7050707@intel.com>	<4D971D4C.60109@mlbassoc.com>	<4D972642.80400@intel.com>	<1301763560.2398.14.camel@scimitar>
	<4D97571C.8090701@mlbassoc.com>
In-Reply-To: <4D97571C.8090701@mlbassoc.com>
Cc: poky@yoctoproject.org
Subject: Re: How to append inc file
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
X-List-Received-Date: Mon, 04 Apr 2011 16:06:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 04/02/2011 10:04 AM, Gary Thomas wrote:
> On 04/02/2011 10:59 AM, Joshua Lock wrote:
>> On Sat, 2011-04-02 at 21:36 +0800, Yu Ke wrote:
>>> on 2011-4-2 20:57, Gary Thomas wrote:
>>>> On 04/02/2011 06:52 AM, Yu Ke wrote:
>>>>> Hi,
>>>>>
>>>>> bbappend file can be used to append content to bb file, and it is very
>>>>> useful in BSP meta data. Today I just find the *.inc file is also need
>>>>> to be appended, so I wonder if there
>>>>> is similar incappend file that can append content to inc file?
>>>>>
>>>>> I meet this requirement when trying to fix bug 896
>>>>> (http://bugzilla.yoctoproject.org/show_bug.cgi?id=896). To make
>>>>> poky-image-clutter build pass in n450, the clutter.inc need to be
>>>>> appended to change the COMPATIBLE_MACHINE.
>>>>
>>>> Why can't you just put the change in the .bbappend file (since it's
>>>> already recipe/target specific)?
>>>>
>>>
>>> currently there is clutter 1.4 and clutter 1.6 which both use the
>>> clutter.inc. and yes, It is also fine to use duplicate bbappend to
>>> append clutter 1.4 and clutter 1.6 respectively. But if clutter.inc can
>>> be appended, then it will reduce the duplicate code. Also inc file
>>> append has another benefit, when clutter 1.8 is out in the future, the
>>> BSP append code don't need any change.
>>
>> IIRC the common way to handle this now is to have shared code across
>> versions in clutter.inc then have inc files for the major releases that
>> require them (clutter-1.4.inc, clutter-1.6.inc, etc) and then have the
>> version inc file include the core inc file.
>> The recipes would then include the appropriate inc file for the major
>> version (1.6, etc) which they build.
>
> How does that solve the problem that the .inc file needs to have BSP
> specific changes (which I find pretty abhorrent BTW)

If the .inc needs to change for a BSP, then it is by definition NOT 
common code. Sounds like the solution is to move anything in the .inc 
that needs changing out of the .inc and into the .bb files.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

