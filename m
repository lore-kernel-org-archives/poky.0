Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id E13B24C80044
	for <poky@yoctoproject.org>; Fri,  8 Apr 2011 23:36:59 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 08 Apr 2011 21:36:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,328,1299484800"; d="scan'208";a="677031058"
Received: from unknown (HELO [10.255.12.242]) ([10.255.12.242])
	by fmsmga002.fm.intel.com with ESMTP; 08 Apr 2011 21:36:59 -0700
Message-ID: <4D9FE26A.4050908@intel.com>
Date: Fri, 08 Apr 2011 21:36:58 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: raj.khem@gmail.com
References: <AANLkTikeUs9N=0-q_TPFr-xsQZTmAh5PORHYtrSMpf8u@mail.gmail.com>	<20110324031944.GC20796@sakrah.homelinux.org>	<AANLkTi=KnuGEbCL9SQFX6he5BU7v0+ygtAAL7HQwSDCT@mail.gmail.com>	<BANLkTimuR_V_bJtHw323iMgYmm71dsuvyA@mail.gmail.com>
	<1302307214.15056.9.camel@leto>
In-Reply-To: <1302307214.15056.9.camel@leto>
Cc: poky@yoctoproject.org
Subject: Re: [patch] autotools: Override do_compile to specify V=1 if project uses AM_V_GEN
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
X-List-Received-Date: Sat, 09 Apr 2011 04:37:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/08/2011 05:00 PM, Khem Raj wrote:
> On Fri, 2011-04-08 at 17:07 -0400, Colin Walters wrote:
>> On Fri, Mar 25, 2011 at 8:41 AM, Colin Walters<walters@verbum.org>  wrote:
>>> On Wed, Mar 23, 2011 at 11:19 PM, Khem Raj<raj.khem@gmail.com>  wrote:
>>>
>>>> usually package which use silent-rules they have --disable-silent-rules
>>>> Did you try to pass this option ? May be try it with EXTRA_OECONF and
>>>> see if that helps
>>>
>>> You're right, that's much better.  New patch attached:
>>
>> Any opinion on the new patch?
>
> Looks ok to me however it needs to be tested build atleast all packages
> that use autotools
>
I have integrated this patch locally and I am working on a full world 
build of a couple of Machines, looking good so far, will be pulled later
this weekend.

Sau!

> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


