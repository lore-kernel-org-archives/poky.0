Return-Path: <edwin.zhai@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE9C5E013D6
	for <poky@yoctoproject.org>; Thu, 22 Mar 2012 21:13:17 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 22 Mar 2012 21:13:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="80704817"
Received: from edwin-gen.sh.intel.com (HELO [10.239.36.17]) ([10.239.36.17])
	by AZSMGA002.ch.intel.com with ESMTP; 22 Mar 2012 21:13:16 -0700
Message-ID: <4F6BF8CF.6040801@intel.com>
Date: Fri, 23 Mar 2012 12:15:11 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1332466139.git.edwin.zhai@intel.com>
	<99b3a94a7298427e306aaced77694bdc047d30b2.1332466139.git.edwin.zhai@intel.com>
	<4F6BF3B8.20502@linux.intel.com>
In-Reply-To: <4F6BF3B8.20502@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] n450: fix wrong video driver
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
X-List-Received-Date: Fri, 23 Mar 2012 04:13:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/23/2012 11:53 AM, Darren Hart wrote:
>> >  diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
>> >  index 776089e..a44f918 100644
>> >  --- a/meta-sugarbay/conf/machine/sugarbay.conf
>> >  +++ b/meta-sugarbay/conf/machine/sugarbay.conf
>> >  @@ -11,5 +11,5 @@ require conf/machine/include/ia32-base.inc
>> >
>> >    XSERVER ?= "${XSERVER_IA32_BASE} \
>> >               ${XSERVER_IA32_EXT} \
>> >  -           ${XSERVER_IA32_I915} \
>> >  +           ${XSERVER_IA32_I965} \
>> >               "
> Tom, this one is your call - I presume this is right? Will leave to you
> to pull in, I'm good with the common i915 definition.

There are some commits in history to show:
6f65f6
2061bb
9e0325

>
> Thanks,
>


