Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F3CCE013D6
	for <poky@yoctoproject.org>; Thu, 22 Mar 2012 23:06:14 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 Mar 2012 23:06:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="124166336"
Received: from unknown (HELO envy.home) ([10.255.15.182])
	by orsmga002.jf.intel.com with ESMTP; 22 Mar 2012 23:06:13 -0700
Message-ID: <4F6C12A8.7000905@linux.intel.com>
Date: Thu, 22 Mar 2012 23:05:28 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: "Zhai, Edwin" <edwin.zhai@intel.com>
References: <cover.1332466139.git.edwin.zhai@intel.com>
	<4F6BF2D1.8030606@linux.intel.com> <4F6BF742.4030701@intel.com>
In-Reply-To: <4F6BF742.4030701@intel.com>
X-Enigmail-Version: 1.4
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] choose right video driver for n450
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
X-List-Received-Date: Fri, 23 Mar 2012 06:06:14 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 03/22/2012 09:08 PM, Zhai, Edwin wrote:
> On 03/23/2012 11:49 AM, Darren Hart wrote:
>> Hi Edwin,
>>
>> Thanks for nailing this down!
>>
>> In the future, please submit meta-intel patches to the yocto list and
>> include a [meta-intel] tag in the cover letter subject.
> 
> I assume all patch should go into poky, while general discussion into yocto.
> 
> Maybe, I'm wrong:)
> 

It isn't quite so cut and dry unfortunately. See the MAINTAINERS file in
meta-intel:

"
Please submit any patches against meta-intel BSPs to the Yocto mailing
list (yocto@yoctoproject.org).
"

Thanks,

Darren

>>
>> --
>> Darren
>>
>> On 03/22/2012 06:36 PM, edwin.zhai@intel.com wrote:
>>> From: Zhai Edwin<edwin.zhai@intel.com>
>>>
>>> Tom,
>>> n450 should use i915 driver rather than i965. With this [YOCTO #1840] got fixed.
>>>
>>> Thanks,
>>> Edwin
>>>
>>> The following changes since commit 1ada91f40c9c7684ec0963c72de20c639c42ec70:
>>>
>>>    fri2: Add 3.2 kernel recipes (2012-03-20 11:19:28 -0700)
>>>
>>> are available in the git repository at:
>>>    git://git.pokylinux.org/poky-contrib gzhai/bsp
>>>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/bsp
>>>
>>> Zhai Edwin (1):
>>>    n450: fix wrong video driver
>>>
>>>   conf/machine/include/ia32-base.inc       |    4 ++++
>>>   meta-sugarbay/conf/machine/sugarbay.conf |    2 +-
>>>   2 files changed, 5 insertions(+), 1 deletions(-)
>>>
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

