Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id CE4124C80578
	for <poky@yoctoproject.org>; Thu, 28 Apr 2011 10:24:00 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 28 Apr 2011 08:24:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,281,1301900400"; d="scan'208";a="427165978"
Received: from unknown (HELO [10.255.13.11]) ([10.255.13.11])
	by azsmga001.ch.intel.com with ESMTP; 28 Apr 2011 08:23:59 -0700
Message-ID: <4DB98687.9000606@linux.intel.com>
Date: Thu, 28 Apr 2011 08:23:51 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1303929862.git.bruce.ashfield@windriver.com>
	<1303983830.21461.57.camel@rex>
In-Reply-To: <1303983830.21461.57.camel@rex>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 0/1] linux-yocto: create SMP config fragement
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
X-List-Received-Date: Thu, 28 Apr 2011 15:24:01 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 04/28/2011 02:43 AM, Richard Purdie wrote:
> On Wed, 2011-04-27 at 14:46 -0400, Bruce Ashfield wrote:
>> Please pull this SRCREV update, the patch pretty much says 
>> it all. We are adding a SMP config fragement so that BSPs
>> can re-use and optionally enable this (for BSPs that may
>> or may not want to always be SMP).
>>
>> cc: Darren Hart <dvhart@linux.intel.com>
>>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>   Branch: zedd/smp
>>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/smp
>>
>> Thanks,
>>     Bruce Ashfield <bruce.ashfield@windriver.com>
>> ---
>>
>>
>> Bruce Ashfield (1):
>>   linux-yocto: create SMP config fragment
> 
> Merged to master as I happened to look at this.

This is also a fix for a point release bug, 1010, can we please apply to
bernard as well?


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

