Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6815A4C80479
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 21:24:23 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2011 19:24:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,251,1297065600"; d="scan'208";a="715008344"
Received: from unknown (HELO [10.255.12.100]) ([10.255.12.100])
	by orsmga001.jf.intel.com with ESMTP; 01 Mar 2011 19:24:22 -0800
Message-ID: <4D6DB866.9020100@intel.com>
Date: Tue, 01 Mar 2011 19:24:22 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <cover.1298961777.git.xiaofeng.yan@windriver.com>	<201103011023.58911.paul.eggleton@linux.intel.com>	<34ADCD70-E17B-459F-88E7-D959B0DB4737@dominion.thruhere.net>	<201103011624.06798.paul.eggleton@linux.intel.com>	<4D6D9E1C.6010104@windriver.com>
	<4D6D9F1F.8020705@windriver.com> <4D6DB396.8020905@intel.com>
	<4D6DB5A3.2030404@windriver.com>
In-Reply-To: <4D6DB5A3.2030404@windriver.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/2] Add qt3 to poky
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
X-List-Received-Date: Wed, 02 Mar 2011 03:24:23 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 03/01/2011 07:12 PM, Mark Hatle wrote:
> On 3/1/11 9:03 PM, Saul Wold wrote:
>> On 03/01/2011 05:36 PM, Mark Hatle wrote:
>>> I think we should be sure to clearly label the Qt3 as only provided for LSB
>>> compatibility in the recipe, that way if someone tries to use it, they can
>>> understand why it was added/maintained.
>>>
>> Mark,
>>
>> I thought we talked about this before, I did not think we where going
>> for 100% compliant in core yocto, and if needed, this can be part of the
>> WR layer in order to complete compliance.  I don't think we want to
>> carry around a recipe that is purely for compatibility at that level.
>
> What I remember is we were not sure it would go into 1.0.  And we were not yet
> sure what we wanted to do with a QT compatibility library, if it would ever go
> into "meta", another layer, or...
>
> I think LSB compliance makes sense in the meta layer because of the new
> "poky-lsb" distro.  It shouldn't hurt to carry this forward and maintain it for
> compatibility sake as part of the poky-lsb work.  (But I won't complain if it
> doesn't make it into 1.0, and we delay a final decision on if it goes in at all
> until later -- I just want to make sure the code isn't lost though...)
>
I would like to hold off on this change at this point.

We can visit later.

Thanks
	Sau!

> --Mark
>
>> Sau!
>>
>>> --Mark
>>>
>>> On 3/1/11 7:32 PM, Xiaofeng Yan wrote:
>>>> On 2011年03月02日 00:24, Paul Eggleton wrote:
>>>>> On Tuesday 01 March 2011 10:33:08 you wrote:
>>>>>> And since there was never a qtopia for qt3 I highly doubt anyone is using
>>>>>> qt3/e.
>>>>> Well, you never know what people are doing behind closed doors. There was also
>>>>> once a version of SystemRescueCD that was using the then-current version of
>>>>> QtParted with Qt/Embedded 3.x to avoid including X.
>>>>>
>>>>> For our purposes though it's only for LSB at this stage, so embedded appears
>>>>> to be superfluous.
>>>>>
>>>>> Cheers,
>>>>> Paul
>>>>> _______________________________________________
>>>>> poky mailing list
>>>>> poky@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/poky
>>>>>
>>>> Hi All,
>>>>
>>>> Qt3 could be superfluous because qt4 can include qt3 functions. But the
>>>> most important is that our lsb-image must meet LSB's requirement.
>>>> Otherwise our yocto can't be permitted to use the LSB Certified
>>>> trademark. So qt3 is just for passing LSB test on lsb-image.
>>>>
>>>> Thanks
>>>> Yan
>>>> _______________________________________________
>>>> poky mailing list
>>>> poky@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/poky
>>>
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>
>


