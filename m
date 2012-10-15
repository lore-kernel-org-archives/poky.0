Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE223E0027E
	for <poky@yoctoproject.org>; Mon, 15 Oct 2012 16:54:27 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 15 Oct 2012 16:54:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,590,1344236400"; d="scan'208";a="156511457"
Received: from unknown (HELO envy.home) ([10.255.14.97])
	by AZSMGA002.ch.intel.com with ESMTP; 15 Oct 2012 16:54:26 -0700
Message-ID: <507CA1FA.4060105@linux.intel.com>
Date: Mon, 15 Oct 2012 16:53:30 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <cover.1350070372.git.tom.zanussi@intel.com>
	<83af67a8e717a631355c0deed80cf64969b8ae99.1350070372.git.tom.zanussi@intel.com>
	<507CA199.2000509@linux.intel.com>
In-Reply-To: <507CA199.2000509@linux.intel.com>
X-Enigmail-Version: 1.4.4
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] packagegroup-core-tools-profile: replace 'legacy' lttng with lttng 2.0
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 15 Oct 2012 23:54:28 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 10/15/2012 04:51 PM, Saul Wold wrote:
> On 10/12/2012 12:53 PM, tom.zanussi@intel.com wrote:
>> From: Tom Zanussi <tom.zanussi@intel.com>
>>
>> packagegroup-core-tools-profile currently pulls in the 'legacy' lttng
>> packages, which are useless without legacy lttng support in the kernel.
>>
>> This makes packagegroup-core-tools-profile pull in the lttng 2.0
>> packages instead, which don't need any kernel modifications to work.
>>
>> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
>> ---
>>   .../packagegroups/packagegroup-core-tools-profile.bb             | 9 +++++----
>>   1 file changed, 5 insertions(+), 4 deletions(-)
>>
>> diff --git a/meta/recipes-core/packagegroups/packagegroup-core-tools-profile.bb b/meta/recipes-core/packagegroups/packagegroup-core-tools-profile.bb
>> index 1035036..bf6e16e 100644
>> --- a/meta/recipes-core/packagegroups/packagegroup-core-tools-profile.bb
>> +++ b/meta/recipes-core/packagegroups/packagegroup-core-tools-profile.bb
>> @@ -5,7 +5,7 @@
>>   SUMMARY = "Profiling tools"
>>   LICENSE = "MIT"
>>
>> -PR = "r1"
>> +PR = "r2"
>>
>>   inherit packagegroup
>>
>> @@ -29,8 +29,9 @@ PROFILETOOLS = "\
>>       oprofileui-server \
>>       powertop \
>>       latencytop \
>> -    lttng-control \
>> -    lttng-viewer"
>> +    lttng-tools \
>> +    lttng-modules \
>> +    babeltrace"
>>
> Not sure this will work since babeltrace is not buildable for mips machines.

I guess that means we just need a BABELTRACE and BABELTRACE_mips
definition? Or perhaps a set for LTTNG similar to those below for LTTNGUST ?

--
Darren

> 
> Sau!
> 
>>   # systemtap needs elfutils which is not fully buildable on uclibc
>>   # hence we exclude it from uclibc based builds
>> @@ -44,7 +45,7 @@ SYSTEMTAP_mips = ""
>>   # which means we can not use syscall() to call it. So we ignore
>>   # it for x86_64/uclibc
>>
>> -LTTNGUST = "lttng-ust"
>> +LTTNGUST = "lttng2-ust"
>>   LTTNGUST_libc-uclibc = ""
>>   LTTNGUST_mips = ""
>>
>>

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

