Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E42D94C806F9
	for <poky@yoctoproject.org>; Tue, 31 May 2011 10:07:33 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 31 May 2011 08:07:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,297,1304319600"; 
   d="scan'208";a="7272684"
Received: from unknown (HELO [10.255.12.168]) ([10.255.12.168])
	by orsmga001.jf.intel.com with ESMTP; 31 May 2011 08:07:32 -0700
Message-ID: <4DE50434.3090200@linux.intel.com>
Date: Tue, 31 May 2011 08:07:32 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <BANLkTik3e_YZfJrwb7xkM264HhCbbHg5cg@mail.gmail.com>	<4DDAEBA4.5090601@linux.intel.com>
	<22F82A9E-907B-47F6-8F82-9A27721782A0@dominion.thruhere.net>
In-Reply-To: <22F82A9E-907B-47F6-8F82-9A27721782A0@dominion.thruhere.net>
Cc: "poky@yoctoproject.org Project" <poky@yoctoproject.org>
Subject: Re: How to Enable OMAP3 SGX MODULES on BEAGLEBOARD
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
X-List-Received-Date: Tue, 31 May 2011 15:07:34 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/29/2011 11:32 PM, Koen Kooi wrote:
> 
> Op 24 mei 2011, om 01:20 heeft Darren Hart het volgende geschreven:
> 
>>
>>
>> On 05/23/2011 05:15 AM, Akshat Saha wrote:
>>> Hi,
>>>
>>> Can anyone guide me, how to enable powervr drivers on beagleboard. 
>>
>> I am currently working on a Beagleboard refresh for the oe-core and
>> meta-yocto layers. I'm starting with u-boot, then the kernel, and will
>> see what follows from there. Until that is complete, the best bet for
>> full Beagleboard support is the angstrom layer.
> 
> You mean the meta-texasinstruments layer, right?

Sorry, yes.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

