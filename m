Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5FDBF4C8007E
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 08:51:01 -0600 (CST)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1PkHZM-0005MO-Sh from Tom_Rini@mentor.com ;
	Tue, 01 Feb 2011 06:51:00 -0800
Received: from na2-mail.mgc.mentorg.com ([134.86.114.213]) by
	svr-orw-fem-01.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Tue, 1 Feb 2011 06:51:00 -0800
Received: from [172.30.80.88] ([172.30.80.88]) by na2-mail.mgc.mentorg.com
	with Microsoft SMTPSVC(6.0.3790.3959); 
	Tue, 1 Feb 2011 07:50:59 -0700
Message-ID: <4D481DD1.9050804@mentor.com>
Date: Tue, 01 Feb 2011 07:50:57 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <1296248841-8015-1-git-send-email-tom_rini@mentor.com>
	<4D47BC03.6010008@linux.intel.com>
In-Reply-To: <4D47BC03.6010008@linux.intel.com>
X-OriginalArrivalTime: 01 Feb 2011 14:50:59.0821 (UTC)
	FILETIME=[708C51D0:01CBC21F]
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
X-List-Received-Date: Tue, 01 Feb 2011 14:51:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/01/2011 12:53 AM, Darren Hart wrote:
> On 01/28/2011 01:07 PM, Tom Rini wrote:
>> Rather than using a wrapper switch to using upstreams support for
>> relocation.  While in here, bring in the mangling to use
>> /usr/bin/env perl rather than /full/path/to in order to work
>> in deep directory paths.
>>
>> Signed-off-by: Tom Rini<tom_rini@mentor.com>
>
> perl fails do_compile with this patch, reverting it resolves the problem. The log.do_compile is available here (600k):
>
> http://bugzilla.pokylinux.org/show_bug.cgi?id=691

Taken the bug.  That'll teach me to short-circuit my testing when double 
posting patches...

-- 
Tom Rini
Mentor Graphics Corporation

