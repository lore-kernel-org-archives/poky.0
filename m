Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 13F524C800AF
	for <poky@yoctoproject.org>; Tue, 24 May 2011 09:38:31 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 24 May 2011 07:38:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,261,1304319600"; 
   d="scan'208";a="7810492"
Received: from unknown (HELO [10.255.12.131]) ([10.255.12.131])
	by fmsmga001.fm.intel.com with ESMTP; 24 May 2011 07:37:18 -0700
Message-ID: <4DDBC29D.1070407@linux.intel.com>
Date: Tue, 24 May 2011 07:37:17 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Yu Ke <ke.yu@intel.com>
References: <cover.1305508488.git.ke.yu@intel.com>	<95d6b08eb7982baacb334d6d774a204670b1ca1c.1305508488.git.ke.yu@intel.com>	<4DD6973B.4020708@gmail.com>
	<4DD7025D.10609@linux.intel.com> <4DDB4741.9000002@intel.com>
In-Reply-To: <4DDB4741.9000002@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] git fetcher: add support for rebaseable git repo
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
X-List-Received-Date: Tue, 24 May 2011 14:38:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/23/2011 10:50 PM, Yu Ke wrote:
> on 2011-5-21 8:07, Darren Hart wrote:
>>
>>
>> On 05/20/2011 09:30 AM, Khem Raj wrote:
>>> On 5/15/2011 6:16 PM, Yu Ke wrote:
>>>> From: Yu Ke<ke.yu@intel.com>
>>>>
>>>> Some upstream git repo may rebase in the future, which means current
>>>> revision may disappear from the upstream repo after the rebase.
>>>>
>>>> current git fetcher can not handle this case, because the git mirror
>>>> tar ball is per repo, and may also change in the rebase and lost the
>>>> current revision info.
>>>>
>>>> To fix this issue, this patch
>>>> - add rebaseable tag in the SRC_URI
>>>> - for rebaseable repo, make git mirror tar ball per revision, in this
>>>>     case, even upstream rebase, the git mirror still has the current
>>>>     revision info.
>>>> - for rebaseable repo, generate mirror tar ball by default, since the
>>>>     repo may change in the future.
>>>
>>> Do we have the options to SRC_URI documented somewhere ?
>>> if yes then this should be added there too.
>>
>> I was looking and didn't find them. At the very least these should be
>> documented in the fetch2/git.py file for reference when
>> reviewing/maintaining the source.
>>
> 
> This is good reminder, Thanks.
> 
> There are several places that hold this info:
> 
> - bitbake manual: http://bitbake.berlios.de/manual/ch03s07.html
> - openembedded manual: 
> http://docs.openembedded.org/usermanual/usermanual.html#id572539
> - poky reference manual: 
> http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html#ref-bitbake-fetchers
> 
> It looks the most appropriate place would be bitbake manual, which is 
> also refereed by poky reference manual. So does anyone know how can I 
> update this mannual?

I've provided a couple minor fixes to the manual. I just edited:

poky.git/bitbake/doc/manual/usermanual.xml

And sent the patch to the poky list. It might be preferable to develop
against the actual bitbake repository, but nobody has complained yet :-)

> 
> Also, it sounds good idea to add the SRC_URI options doc in the source, 
> I will cook a patch to add this info.

Great! Thanks Ke,

> 
> Regards
> Ke

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

