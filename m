Return-Path: <edwin.zhai@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82A3FE013D9
	for <poky@yoctoproject.org>; Thu, 22 Mar 2012 21:06:40 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Mar 2012 21:06:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="120755215"
Received: from edwin-gen.sh.intel.com (HELO [10.239.36.17]) ([10.239.36.17])
	by orsmga001.jf.intel.com with ESMTP; 22 Mar 2012 21:06:39 -0700
Message-ID: <4F6BF742.4030701@intel.com>
Date: Fri, 23 Mar 2012 12:08:34 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1332466139.git.edwin.zhai@intel.com>
	<4F6BF2D1.8030606@linux.intel.com>
In-Reply-To: <4F6BF2D1.8030606@linux.intel.com>
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
X-List-Received-Date: Fri, 23 Mar 2012 04:06:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/23/2012 11:49 AM, Darren Hart wrote:
> Hi Edwin,
>
> Thanks for nailing this down!
>
> In the future, please submit meta-intel patches to the yocto list and
> include a [meta-intel] tag in the cover letter subject.

I assume all patch should go into poky, while general discussion into yocto.

Maybe, I'm wrong:)

>
> --
> Darren
>
> On 03/22/2012 06:36 PM, edwin.zhai@intel.com wrote:
>> From: Zhai Edwin<edwin.zhai@intel.com>
>>
>> Tom,
>> n450 should use i915 driver rather than i965. With this [YOCTO #1840] got fixed.
>>
>> Thanks,
>> Edwin
>>
>> The following changes since commit 1ada91f40c9c7684ec0963c72de20c639c42ec70:
>>
>>    fri2: Add 3.2 kernel recipes (2012-03-20 11:19:28 -0700)
>>
>> are available in the git repository at:
>>    git://git.pokylinux.org/poky-contrib gzhai/bsp
>>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/bsp
>>
>> Zhai Edwin (1):
>>    n450: fix wrong video driver
>>
>>   conf/machine/include/ia32-base.inc       |    4 ++++
>>   meta-sugarbay/conf/machine/sugarbay.conf |    2 +-
>>   2 files changed, 5 insertions(+), 1 deletions(-)
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>


