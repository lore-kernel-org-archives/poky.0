Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id ACDB84C8007E;
	Tue,  1 Feb 2011 14:01:06 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 01 Feb 2011 12:01:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,411,1291622400"; d="scan'208";a="883327839"
Received: from unknown (HELO [10.255.14.170]) ([10.255.14.170])
	by fmsmga001.fm.intel.com with ESMTP; 01 Feb 2011 12:01:06 -0800
Message-ID: <4D486681.9030605@linux.intel.com>
Date: Tue, 01 Feb 2011 12:01:05 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <cover.1296580694.git.bruce.ashfield@windriver.com>	<368409054248933ffd777fbd600a29670feeaa16.1296580694.git.bruce.ashfield@windriver.com>	<4D485554.1030209@linux.intel.com>
	<AANLkTink7v3PP=N6fXfvMFGzwOJXY-KX10UtfrCkd0Ei@mail.gmail.com>
In-Reply-To: <AANLkTink7v3PP=N6fXfvMFGzwOJXY-KX10UtfrCkd0Ei@mail.gmail.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 2/2] linux-yocto: export kernel configuration audit to the console
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
X-List-Received-Date: Tue, 01 Feb 2011 20:01:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/01/2011 11:09 AM, Bruce Ashfield wrote:
> On Tue, Feb 1, 2011 at 1:47 PM, Darren Hart<dvhart@linux.intel.com>  wrote:
>> On 02/01/2011 09:25 AM, Bruce Ashfield wrote:
>>>
>>> Fixes [BUGID #692]
>>>
>>> Previously the information dumped by the kernel configuration audit
>>> scripts was only placed in log files. This isn't as useful as it
>>> could be, since they are rarely checked. This change takes the
>>> output from kconf_check and explicitly displays it to the user.
>>>
>>> Signed-off-by: Bruce Ashfield<bruce.ashfield@windriver.com>
>>
>>> diff --git a/meta/conf/distro/include/poky-default-revisions.inc
>>> b/meta/conf/distro/include/poky-default-revisions.inc
>>> index 0c3aa9a..ac0de6a 100644
>>> --- a/meta/conf/distro/include/poky-default-revisions.inc
>>> +++ b/meta/conf/distro/include/poky-default-revisions.inc
>>
>>> -SRCREV_meta_pn-linux-yocto ?= "8a49ef6f1a43dabbce34a9ee9a1be08b26fc511c"
>>> +SRCREV_meta_pn-linux-yocto ?= "e8b8c1ae44932835f4f79e77180d3ce5e4b1ec99"
>>
>> Was this an intentional change? It wasn't clear to me above which bits
>> necessitated a linux-yocto-2.6.37/meta SRCREV change.
>
> Good catch, and typically that would have been a mistake. That's
> me updating the captured scripts to have the updated kconf_check
> (among others), so it was intentional, but I did for get to mention it
> in the submission email.

Ah right, of course. Thanks!

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

