Return-Path: <scott.a.garman@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B62B14C800A0
	for <poky@yoctoproject.org>; Fri,  1 Apr 2011 13:49:20 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 Apr 2011 11:49:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,283,1299484800"; d="scan'208";a="674274358"
Received: from unknown (HELO [10.255.12.170]) ([10.255.12.170])
	by fmsmga002.fm.intel.com with ESMTP; 01 Apr 2011 11:49:14 -0700
Message-ID: <4D961E29.4070807@intel.com>
Date: Fri, 01 Apr 2011 11:49:13 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D951B0B.3010503@intel.com> <1301657460.24596.281.camel@rex>	
	<4D95EDFD.30603@intel.com> <1301679250.24596.293.camel@rex>
In-Reply-To: <1301679250.24596.293.camel@rex>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Broken dependency behavior in master?
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
X-List-Received-Date: Fri, 01 Apr 2011 18:49:21 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/01/2011 10:34 AM, Richard Purdie wrote:
> On Fri, 2011-04-01 at 08:23 -0700, Scott Garman wrote:
>> On 04/01/2011 04:31 AM, Richard Purdie wrote:
>>>> This makes me think something could be seriously broken in master when
>>>> it comes to handling build dependencies.
>>>>
>>>> I've verified that sgml-common-native is showing up as a build
>>>> dependency properly in the dependency explorer.
>>>
>>> I'm not convinced as its clear above that sgml-common-native is being
>>> built before docbook-dsssl-stylesheets-native do_configure runs.
>>
>> That was the case on the autobuilder. On my local development system, I
>> proved to myself without a doubt that sgml-common-native only got as far
>> as do_configure before the docbook-sgml-dtd-3.1-native error was
>> encountered.
>
> With or without sstate involvement?

I've reproduced this now, multiple times, using builds from scratch, 
including the fact that reverting that commit fixes the the problem for me.

> This looks like some kind of sstate issue but without logs this is near
> impossible to comment on. The logs you've pointed at don't show the
> problem you're describing.

Please grab what you need to from here:

http://www.zenlinux.com/dropbox/

> I don't think the problem is as simple as you're suggesting it is though
> as the core dependency resolution appears to be working (and has not
> changed in a long time). What perhaps isn't in something in the sstate
> task acceleration.

Sure, I'm not insisting that this is the cause - it was just my initial 
hunch. And your intuition is clearly better than mine when it comes to 
this, so I trust it.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

