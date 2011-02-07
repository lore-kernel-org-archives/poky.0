Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 327FE4C800A4
	for <poky@yoctoproject.org>; Mon,  7 Feb 2011 12:23:39 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Feb 2011 10:23:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,438,1291622400"; d="scan'208";a="600263422"
Received: from doubt.jf.intel.com (HELO [10.7.199.72]) ([10.7.199.72])
	by orsmga002.jf.intel.com with ESMTP; 07 Feb 2011 10:23:38 -0800
Message-ID: <4D50388A.4030707@linux.intel.com>
Date: Mon, 07 Feb 2011 10:23:06 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: "embedded.yogesh" <embedded.yogesh@gmail.com>
References: <AANLkTinobVPqACVbGb5VjmuROL9-74r1E1B1Ux5xXvVo@mail.gmail.com>	<4D4FE267.5080907@mlbassoc.com>
	<4D4FEAD4.50200@gmail.com>
In-Reply-To: <4D4FEAD4.50200@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: chromium browser
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
X-List-Received-Date: Mon, 07 Feb 2011 18:23:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/07/2011 04:51 AM, embedded.yogesh wrote:
> On Monday 07 February 2011 05:45 PM, Gary Thomas wrote:
>> On 02/06/2011 09:52 PM, yogesh lal wrote:
>>> Hi,
>>>
>>> I am new to poky, so don't know it will make any sense or not, but
>>> can we build chromium browser using Poky ?
>>
>> What's your target architecture? Last I checked, only x86 and ARM
>> are supported.
>>
>> It can be done, but it's certainly not for the faint of heart :-)
>>
>
> I am working on X86 platform. Can you give some initial start up where I
> have to look ?

Find and download the Chromium source, then have a look at the Poky 
Reference Guide for how to create an appropriate recipe, using recipes 
for projects with similar source layouts as examples.

http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html

--
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

