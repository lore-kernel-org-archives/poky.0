Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7DC3E4C80BD4
	for <poky@pokylinux.org>; Thu, 20 Jan 2011 11:35:24 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Jan 2011 09:35:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,352,1291622400"; d="scan'208";a="698852058"
Received: from unknown (HELO [10.255.14.114]) ([10.255.14.114])
	by orsmga001.jf.intel.com with ESMTP; 20 Jan 2011 09:35:23 -0800
Message-ID: <4D38725A.9050300@intel.com>
Date: Thu, 20 Jan 2011 09:35:22 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Ilya Yanok <yanok@emcraft.com>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>	<1295296178-18590-3-git-send-email-aalonso@secretlab.ca>	<loom.20110118T004536-689@post.gmane.org>	<AANLkTimNTDXpOG74pw6SotCqmB=N4nxwLZ+2Y+hjbsCX@mail.gmail.com>
	<4D3799C1.7000108@emcraft.com>
In-Reply-To: <4D3799C1.7000108@emcraft.com>
Cc: poky@pokylinux.org
Subject: Re: [PATCH 03/25] gcc: crosssdk unset TARGET_FPU
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
X-List-Received-Date: Thu, 20 Jan 2011 17:35:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/19/2011 06:11 PM, Ilya Yanok wrote:
> Hi Adrian,
>
> I'm sorry, I was wrong in my previous postings.
> I was confused by the gcc-crosssdk recipe name.
> Now I think your solution is perfectly legal, but I still think that
> comment is misleading:
> it's not powerpc arch that does not sipport --with-float=soft, it's
> x86_64 (in my case)!
>
> I think we should just reset TARGET_FPU from crosssdk.bbclass, what do
> you think about it?
>
Adrian,

Will you please re-publish the patch based on Ilya's feedback or let me 
know if you want to go with your orignal patch.

Thanks
    Sau!

> Regards, Ilya.
>
> On 18.01.2011 03:59, Adrian Alonso wrote:
>> Hi Ilya,
>>
>> I will also look for the proper solution,
>> However un-setting TARGET_FPU only affects the target machines
>> in meta-xilinx layer bsp, so other Powerpc targets are not been affected
>> with this patch.
>>
>> Regards
>>
>> On Mon, Jan 17, 2011 at 5:55 PM, Ilya Yanok <yanok@emcraft.com
>> <mailto:yanok@emcraft.com>> wrote:
>>
>>     Hi Adrian,
>>
>>     Adrian Alonso <aalonso@...> writes:
>>
>>     >
>>     > * Configure fails due that --with-float=soft
>>     > flag isn't supportted by powerpc arch
>>
>>     That's not true. PowerPC support soft-float (and we actually need
>>     this for
>>     MPC8308 which has e300c3 core without FPU).
>>
>>     For me, configure fails with the same message but that's not
>>     because PowerPC
>>     lacks support for soft-float but cause gcc-crosssdk recipe passes
>>     wrong
>>     --target= option to the configure script (for me it's
>>     x86_86-pokysdk-linux, I'm
>>     building on the x86_64 host).
>>
>>     > * Unsetting TARGET_FPU this flag to not try to use
>>     > this flag
>>
>>     So please do NOT unset TARGET_FPU, some targets really need it.
>>     I'm looking
>>     forward to see a correct solution for this issue.
>>
>>     Regards, Ilya.
>>
>>
>>     _______________________________________________
>>     poky mailing list
>>     poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>>     https://lists.yoctoproject.org/listinfo/poky
>>
>>
>>
>>
>> --
>> Saludos
>> Adrian Alonso
>> http://aalonso.wordpress.com
>>
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


