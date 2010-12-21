Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 10E584C810E8
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 16:23:44 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 21 Dec 2010 14:23:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,209,1291622400"; d="scan'208";a="639006350"
Received: from unknown (HELO [10.255.14.74]) ([10.255.14.74])
	by fmsmga002.fm.intel.com with ESMTP; 21 Dec 2010 14:23:28 -0800
Message-ID: <4D1128E4.1030302@linux.intel.com>
Date: Tue, 21 Dec 2010 14:23:32 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <1292924367-19873-1-git-send-email-raj.khem@gmail.com>
	<4D1119EA.9010806@linux.intel.com>
	<AANLkTim9J_92mWgmrRW4_sSXm=AW1wfFwdZcArEbC20a@mail.gmail.com>
	<AANLkTi=Ypr+KkdnumWb9uwAC7trR5RYgAbbFjf9nbfpi@mail.gmail.com>
	<AANLkTiken51h6GtYZm1HY7kEStV=P1Bes9AkJDx82SDa@mail.gmail.com>
In-Reply-To: <AANLkTiken51h6GtYZm1HY7kEStV=P1Bes9AkJDx82SDa@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] scripts/send-pull-request: Use git send-mail instead of sendmail
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
X-List-Received-Date: Tue, 21 Dec 2010 22:23:44 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/21/2010 02:22 PM, Khem Raj wrote:
>> I don't see this as a one vs the other sort of thing. I've been sending
>> patches to the lists using Darren's front end, but then using git send-email
>> to actually transmit the patches (since I don't have sendmail on all
>> my boxes).
>>
>> So I'd suggest simply making the sending configurable, since clobbering
>> one with the other doesn't meet everyone's needs.
>
> yes that would be preferable.

Have a patch en-route.... some testing first... be a moment.

>
> -Khem


-- 
Darren Hart
Yocto Linux Kernel

