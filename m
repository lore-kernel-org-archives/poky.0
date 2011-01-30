Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 859944C8006D
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 15:20:19 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Jan 2011 13:20:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,401,1291622400"; d="scan'208";a="652648020"
Received: from unknown (HELO [10.255.14.130]) ([10.255.14.130])
	by fmsmga002.fm.intel.com with ESMTP; 30 Jan 2011 13:20:18 -0800
Message-ID: <4D45D611.1040606@intel.com>
Date: Sun, 30 Jan 2011 13:20:17 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <cover.1296372804.git.jingdong.lu@windriver.com>	<a598a01bc519ea080e73605f4ff70b499bcab645.1296372804.git.jingdong.lu@windriver.com>
	<B32A4CB7-E47B-43F2-A71C-912D5C2D1334@dominion.thruhere.net>
In-Reply-To: <B32A4CB7-E47B-43F2-A71C-912D5C2D1334@dominion.thruhere.net>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/5] cups: add cups 1.4.6
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
X-List-Received-Date: Sun, 30 Jan 2011 21:20:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/30/2011 08:01 AM, Koen Kooi wrote:
>
> Op 30 jan 2011, om 08:36 heeft Jingdong Lu het volgende geschreven:
>
>> From: Jingdong Lu<jingdong.lu@windriver.com>
>>
>> This package has been added from Open Embedded.
>> Changes from the Open Embedded version:
>> * Update to version 1.4.6
>> * Add SUMMARY, LIC_FILES_CHKSUM, checksum of source
>> * Remove skip_tools.patch
>
> The skip_tools patch is needed for cross-compiling, without it it will try to run genstrings and the ppd generator. I cleaned up the cups in meta-oe and that builds cleanly for armv7a now. You can steal the updated skip_tools patch from there.
>
Thanks for pointing this out.

Jingdong: can you please respin this one again with the input from Koen. 
(Thanks).

> I also updated the license to GPLv2 and LGPLv2, but I'm not sure how to add the apple and ssl exception is lists in LICENSE.txt.
>
Koen,

Is seems we should also the mention KSC (Kerberos Support Code) since it 
has it's own copyright and license.  As for the Apple and SSL 
exceptions, I am not sure they apply in this case since the cups work in 
this case targets a Linux based operating system, not an Apple one.

Remember this is an engineer's opinion, I am not a Lawyer, nor to I play 
one on TV!  We can consult the lawyers if needed.

Sau!


> regards,
>
> Koen
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


