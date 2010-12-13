Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 264CA4C811A8;
	Sun, 12 Dec 2010 23:06:02 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBD55x1Y021514;
	Sun, 12 Dec 2010 21:05:59 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sun, 12 Dec 2010 21:05:59 -0800
Received: from bruce-ashfields-macbook.local ([128.224.143.3]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sun, 12 Dec 2010 21:05:58 -0800
Message-ID: <4D05A9B5.9060408@windriver.com>
Date: Mon, 13 Dec 2010 00:05:57 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Xu, Jiajun" <jiajun.xu@intel.com>
References: <4D03D481.4050104@linux.intel.com>	<D5AB6E638E5A3E4B8F4406B113A5A19A317D6F75@shsmsx501.ccr.corp.intel.com>	<AANLkTimmRm=o9L=L=TuQ58Pd4or4eeNZtOWr=Hq6Un_y@mail.gmail.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A317D70F3@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A317D70F3@shsmsx501.ccr.corp.intel.com>
X-OriginalArrivalTime: 13 Dec 2010 05:05:59.0138 (UTC)
	FILETIME=[6E41A420:01CB9A83]
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Milestone 2 Stabilization Branch Created (Resend)
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
X-List-Received-Date: Mon, 13 Dec 2010 05:06:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-12-13 12:03 AM, Xu, Jiajun wrote:
>> On Sun, Dec 12, 2010 at 9:10 PM, Xu, Jiajun<jiajun.xu@intel.com>  wrote:
>>>> [Resend with correct mailing lists]
>>>>
>>>>
>>>> Yocto / Poky Folks:
>>>>
>>>> Thanks to everyone's hard work, we are currently on working getting
>>>> the first build of M2 started and available for QA testing on Monday.
>>>>
>>>> I have pushed out the lastest commit that was pending in the
>>>> distro/master area to both master and create a builds/milestone
>>>> branch which is where bug fixes for M2 will go.
>>>>
>>>> There is currently an issue with the PPC Kernel build on this branch
>>>> and that is being worked, this may impact getting a PPC build
>>>> available by Monday.
>>>>
>>>> For the next week as we stabilize M2, please ensure that any patch
>>>> or pull requests indicate that this is for M2 or not.  By default
>>>> all commits will go to master regardless.
>>>>
>>>
>>> Hi Saul,
>>> Nightly build is near finished now. PPC and some non-x86 real
>>> hardware
>> target building failed. I begin downloading them now and will start QA testing.
>>
>> Is there somewhere I can check a log of the build errors ? We flipped
>> in the
>> 2.6.37 kernel and associated tools, but the any hardware targets
>> should still be building 2.6.34 and be unaffected.
>>
>> If it isn't a kernel that failed to build .. then I'm less help :)
>>
>
> For beagleboard, http://autobuilder.pokylinux.org:8010/builders/nightly-release/builds/146/steps/shell_46/logs/stdio/text.
> For mpc8315e-rdb, http://autobuilder.pokylinux.org:8010/builders/nightly-release/builds/146/steps/shell_49/logs/stdio/text.

Both those boards are building random kernels .. one is building
the omap-pm (which is broken) and the other built linux-dummy.

So something went wrong with the merge of the new kernel, and could
be related to the board compatibility .. I'll have a look.

Bruce

>
>> Cheers,
>>
>> Bruce
>>
>>>
>>>> Thanks
>>>>       Sau!
>>>> Saul Wold
>>>> Yocto Component Wrangler @ Intel
>>>> Yocto Project / Poky Build System
>>>>
>>>> _______________________________________________
>>>> poky mailing list
>>>> poky@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/poky
>>>
>>> Best Regards,
>>> Jiajun
>>>
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>>
>>
>>
>>
>
> Best Regards,
> Jiajun
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


