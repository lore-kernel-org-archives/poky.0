Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9415B4C800A3
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 11:00:23 -0600 (CST)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1PkJaY-0000cl-T2 from Tom_Rini@mentor.com ;
	Tue, 01 Feb 2011 09:00:22 -0800
Received: from na2-mail.mgc.mentorg.com ([134.86.114.213]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Tue, 1 Feb 2011 09:00:22 -0800
Received: from [172.30.80.88] ([172.30.80.88]) by na2-mail.mgc.mentorg.com
	with Microsoft SMTPSVC(6.0.3790.3959); 
	Tue, 1 Feb 2011 10:00:21 -0700
Message-ID: <4D483C23.2070203@mentor.com>
Date: Tue, 01 Feb 2011 10:00:19 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
References: <1296248841-8015-1-git-send-email-tom_rini@mentor.com>	<4D47BC03.6010008@linux.intel.com>
	<4D481DD1.9050804@mentor.com> <4D4828EE.5000002@linux.intel.com>
	<9DA5872FEF993D41B7173F58FCF6BE9411BF170D@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9DA5872FEF993D41B7173F58FCF6BE9411BF170D@orsmsx504.amr.corp.intel.com>
X-OriginalArrivalTime: 01 Feb 2011 17:00:21.0773 (UTC)
	FILETIME=[830833D0:01CBC231]
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Tue, 01 Feb 2011 17:00:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/01/2011 09:57 AM, Kamble, Nitin A wrote:
>
>
>> -----Original Message-----
>> From: poky-bounces@yoctoproject.org [mailto:poky-
>> bounces@yoctoproject.org] On Behalf Of Darren Hart
>> Sent: Tuesday, February 01, 2011 7:38 AM
>> To: Tom Rini
>> Cc: poky@yoctoproject.org
>> Subject: Re: [poky] [PATCH] perl-native: Update for userelocatableinc
>> and non-shared libperl
>>
>> On 02/01/2011 06:50 AM, Tom Rini wrote:
>>> On 02/01/2011 12:53 AM, Darren Hart wrote:
>>>> On 01/28/2011 01:07 PM, Tom Rini wrote:
>>>>> Rather than using a wrapper switch to using upstreams support for
>>>>> relocation. While in here, bring in the mangling to use
>>>>> /usr/bin/env perl rather than /full/path/to in order to work
>>>>> in deep directory paths.
>>>>>
>>>>> Signed-off-by: Tom Rini<tom_rini@mentor.com>
>>>>
>>>> perl fails do_compile with this patch, reverting it resolves the
>>>> problem. The log.do_compile is available here (600k):
>>>>
>>>> http://bugzilla.pokylinux.org/show_bug.cgi?id=691
>>>
>>> Taken the bug. That'll teach me to short-circuit my testing when
>> double
>>> posting patches...
>>>
>>
>> I'll be happy to test patches to this as well as I am able to easily
>> reproduce it (I expect others can too - but haven't yet heard of
>> someone
>> else hitting the exact same problem).
>>
> I am able to reproduce this issue too. If needed I will be happy to help fix or test.

To give everyone a quick update, I've double checked and the way we 
configure perl 5.10.x (OE) and 5.12.x (poky) are the same, really.  So 
I'm double checking now which part of the changes are breaking and if 
perhaps we need to instead of using the relative paths that work in 
5.10.x using full paths and trusting userelocatableinc to work (and then 
verifying that it does work).

-- 
Tom Rini
Mentor Graphics Corporation

