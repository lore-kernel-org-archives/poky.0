Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 17CAC4C8109B
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 22:21:57 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Jan 2011 20:21:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,348,1291622400"; d="scan'208";a="649054658"
Received: from unknown (HELO [10.255.14.134]) ([10.255.14.134])
	by fmsmga002.fm.intel.com with ESMTP; 19 Jan 2011 20:21:56 -0800
Message-ID: <4D37B85B.4010203@linux.intel.com>
Date: Wed, 19 Jan 2011 20:21:47 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <cover.1295472579.git.dvhart@linux.intel.com>
	<AANLkTinSWeERqMOXuR1ckzz=Ri8k2mwgrW79Y3Wd=OYi@mail.gmail.com>
In-Reply-To: <AANLkTinSWeERqMOXuR1ckzz=Ri8k2mwgrW79Y3Wd=OYi@mail.gmail.com>
Cc: poky@yoctoproject.org, robert.karl.berger@gmail.com
Subject: Re: [PATCH 0/6] Beagleboard xM support
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
X-List-Received-Date: Thu, 20 Jan 2011 04:21:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/19/2011 07:21 PM, Bruce Ashfield wrote:
> On Wed, Jan 19, 2011 at 4:30 PM, Darren Hart<dvhart@linux.intel.com>  wrote:
>> The following patches provide initial support for the Beagleboard. They update
>> the x-load and u-boot recipes, modify the beagleboard machine config, and add
>> README.hardware documentation for the Beagleboard.
>>
>> The kernel config still needs to be updated to support the onboard NIC of the
>> xM. Graphics and audio have not been tested. With the basic functionality in
>> place, hopefully others will be encouraged to participate in fleshing out
>> Beagleboard support in Poky.
>
> Darren,
>
> Looks good. So just so I'm clear, you'll be following up with a kernel
> config fragment and/or a BSP branch ? Or am I somehow just
> not seeing it in your series ?

Right, I thought it was worth getting this all in now while it was hot 
and still in sync with master. I'm hoping to get time this week to get 
the necessary kernel changes for Ethernet support knocked out (should be 
trivial... but... you know).

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

