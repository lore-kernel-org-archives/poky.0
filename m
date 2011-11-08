Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A56EE013B0
	for <poky@pokylinux.org>; Tue,  8 Nov 2011 11:24:48 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Nov 2011 11:24:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,478,1315206000"; d="scan'208";a="82533437"
Received: from unknown (HELO envy.home) ([10.255.12.17])
	by fmsmga001.fm.intel.com with ESMTP; 08 Nov 2011 11:24:47 -0800
Message-ID: <4EB981FF.7020403@linux.intel.com>
Date: Tue, 08 Nov 2011 11:24:47 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <j9172o$j0s$1@dough.gmane.org>
	<CADkTA4N=My0k31D2moYzK6gi70r2B9hL_-Bqw5T320pLqGGZ1g@mail.gmail.com>
	<1320683982.23708.24.camel@ted>
	<CADkTA4OJ5qFh50jJCKBDJiLHHhdaDdJ8_W8jpOhpWY4_zdg=0w@mail.gmail.com>
In-Reply-To: <CADkTA4OJ5qFh50jJCKBDJiLHHhdaDdJ8_W8jpOhpWY4_zdg=0w@mail.gmail.com>
X-Enigmail-Version: 1.3.2
Cc: gmane@reliableembeddedsystems.com, poky@pokylinux.org
Subject: Re: workflow - kernel config
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
X-List-Received-Date: Tue, 08 Nov 2011 19:24:48 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 11/07/2011 09:58 AM, Bruce Ashfield wrote:
> On Mon, Nov 7, 2011 at 11:39 AM, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
>> On Fri, 2011-11-04 at 15:15 -0400, Bruce Ashfield wrote:
>>> On Fri, Nov 4, 2011 at 1:23 PM, Robert Berger
>>> <gmane@reliableembeddedsystems.com> wrote:
>>>> Hi,
>>>>
>>>> I'm playing with poky-edison-6.0 and the default 2.6.37.6 kernel on a
>>>> beagle board with core-image-sato-sdk.
>>>>
>>>> Interestingly enough there is user space support e.g. for oprofile, but
>>>> oprofile is not configured in the kernel.
>>>>
>>>> The same for lacencytop and powertop,...
>>>
>>> We have feature descriptions for all of the above as components in the
>>> linux-yocto
>>> kernel repository, but they do need to be turned on and tested on a per board
>>> basis.
>>>
>>> We can trigger kernel options based on userspace packages being enabled or
>>> disabled, but that still wouldn't be a guarantee that they'd work. The
>>> options that
>>> are within the tree are a documentation of what has actually been tested.
>>>
>>> The 2.6.37 tree was a transition point,and we've continued standardizing the
>>> options and feature set in the later kernels. For yocto 1.2 we'll have a better
>>> defined and consistent set of feature blocks. It's a building process
>>> and we move
>>> forward.
>>>
>>> As others will point out there are other/deeper beagle board BSPs and layers
>>> (i.e. meta-texasinstruments) that likely already have support for these options\
>>> (but I haven't checked recently), so that's an avenue to explore as well.
>>>
>>>>
>>>> So I was wondering what's the preferred workflow to start with the
>>>> "yocto-default" kernel config and add kernel configuration options
>>>> afterwards.
>>>>
>>>> What's I've tried so far is:
>>>>
>>>> bitbake virtual/kernel -c clean
>>>> bitbake virtual/kernel -c configure
>>>> bitbake virtual/kernel -c menuconfig
>>>> bitbake virtual/kernel -c compile
>>>> bitbake virtual/kernel -c deploy
>>>
>>> This is one flow that will work to make changes to the default kernel, and
>>> test them on a board. I use something like:
>>>
>>>  bitbake -f -c configure linux-yocto
>>>  bitbake -f -c menuconfig
>>>  bitbake -c linux-yocto
>>
>> I suspect you mean:
>>
>> bitbake -f -c configure linux-yocto
>> bitbake -f -c menuconfig
>> bitbake linux-yocto
> 
> Heh. Indeed. Random use of -c does not produce the results that
> one is looking for.

Close. Still need the target for menuconfig as well. Details ;-)

$ bitbake linux-yocto -c configure -f
$ bitbake linux-yocto -c menuconfig -f
$ bitbake linux-yocto


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

