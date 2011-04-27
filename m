Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id EC93D4C804D4
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 18:09:23 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 27 Apr 2011 16:09:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,277,1301900400"; d="scan'208";a="684990301"
Received: from unknown (HELO [10.255.13.11]) ([10.255.13.11])
	by fmsmga002.fm.intel.com with ESMTP; 27 Apr 2011 16:09:23 -0700
Message-ID: <4DB8A220.6040806@linux.intel.com>
Date: Wed, 27 Apr 2011 16:09:20 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1303257574.git.dvhart@linux.intel.com>
	<1303262313.5518.295.camel@rex>
In-Reply-To: <1303262313.5518.295.camel@rex>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] kernel-rt: fix build issues
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
X-List-Received-Date: Wed, 27 Apr 2011 23:09:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/19/2011 06:18 PM, Richard Purdie wrote:
> On Tue, 2011-04-19 at 17:02 -0700, Darren Hart wrote:
>> From: Darren Hart <dvhart@linux.intel.com>
>>
>> The linux-yocto-rt recipe wasn't building in master or bernard. This brings the
>> recipe up to date with the linux-yocto* recipes and corrects the build failures.
>> This patch should be applied to both bernard and master.
>>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>   Branch: dvhart/bernard/rt
>>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/bernard/rt
>>
>> Thanks,
>>     Darren Hart <dvhart@linux.intel.com>
>> ---
>>
>>
>> Darren Hart (1):
>>   kernel-rt: use correct branch names and new git SRC_REV format
> 
> Merged to master, thanks.

Can we also merge to Bernard please? Without it, meta-rt will not build.

--
Darren

> 
> Richard
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

