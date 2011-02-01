Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C399E4C8008C
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 09:38:22 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Feb 2011 07:38:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,410,1291622400"; d="scan'208";a="702856094"
Received: from unknown (HELO [10.255.14.170]) ([10.255.14.170])
	by orsmga001.jf.intel.com with ESMTP; 01 Feb 2011 07:38:22 -0800
Message-ID: <4D4828EE.5000002@linux.intel.com>
Date: Tue, 01 Feb 2011 07:38:22 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Tom Rini <tom_rini@mentor.com>
References: <1296248841-8015-1-git-send-email-tom_rini@mentor.com>
	<4D47BC03.6010008@linux.intel.com> <4D481DD1.9050804@mentor.com>
In-Reply-To: <4D481DD1.9050804@mentor.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] perl-native: Update for userelocatableinc and non-shared libperl
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
X-List-Received-Date: Tue, 01 Feb 2011 15:38:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/01/2011 06:50 AM, Tom Rini wrote:
> On 02/01/2011 12:53 AM, Darren Hart wrote:
>> On 01/28/2011 01:07 PM, Tom Rini wrote:
>>> Rather than using a wrapper switch to using upstreams support for
>>> relocation. While in here, bring in the mangling to use
>>> /usr/bin/env perl rather than /full/path/to in order to work
>>> in deep directory paths.
>>>
>>> Signed-off-by: Tom Rini<tom_rini@mentor.com>
>>
>> perl fails do_compile with this patch, reverting it resolves the
>> problem. The log.do_compile is available here (600k):
>>
>> http://bugzilla.pokylinux.org/show_bug.cgi?id=691
>
> Taken the bug. That'll teach me to short-circuit my testing when double
> posting patches...
>

I'll be happy to test patches to this as well as I am able to easily 
reproduce it (I expect others can too - but haven't yet heard of someone 
else hitting the exact same problem).


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

