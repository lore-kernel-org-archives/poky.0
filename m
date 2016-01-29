Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D63CE009C5; Fri, 29 Jan 2016 10:22:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38A4BE0073D
	for <poky@yoctoproject.org>; Fri, 29 Jan 2016 10:22:30 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 29 Jan 2016 10:22:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,365,1449561600"; d="scan'208";a="736697515"
Received: from unknown (HELO [10.219.25.235]) ([10.219.25.235])
	by orsmga003.jf.intel.com with ESMTP; 29 Jan 2016 10:22:30 -0800
To: Richard Purdie <richard.purdie@linuxfoundation.org>, poky@yoctoproject.org
References: <1454088119-28286-1-git-send-email-alejandro.hernandez@linux.intel.com>
	<1454088947.10340.75.camel@linuxfoundation.org>
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
Message-ID: <56ABAE0F.8020306@linux.intel.com>
Date: Fri, 29 Jan 2016 12:23:11 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <1454088947.10340.75.camel@linuxfoundation.org>
Subject: Re: [PATCH] linux-yocto: Adds new genericx86 and genericx86-64 SRCREVs for kernel 4.4
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
X-List-Received-Date: Fri, 29 Jan 2016 18:22:35 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/29/2016 11:35 AM, Richard Purdie wrote:
> On Fri, 2016-01-29 at 17:21 +0000, Alejandro Hernandez wrote:
>> The only issue I found was on poky-lsb - genericx86-64 using kernel
>> 4.4 dmesg shows the following:
>>
>> [drm:gen8_irq_handler] *ERROR* The master control interrupt lied
>> (SDE)!
> If I merge this, am I going to start seeing autobuilder failures and QA
> reports about this?
>
> What do we plan to do about that?
This is supposed to be a minor bug, and will not cause any major 
problems, plus I went ahead and tested on poky-lsb, the error only shows 
up on lsb on the 64 bit NUC, and lsb wont use kernel 4.4 until later, so 
no AB or QA  failures as far as I know.
>
> Cheers,
>
> Richard


