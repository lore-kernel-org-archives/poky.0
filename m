Return-Path: <ke.yu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id B9EBB4C8043A
	for <poky@yoctoproject.org>; Tue, 24 May 2011 00:50:59 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 23 May 2011 22:50:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,260,1304319600"; 
   d="scan'208";a="371117"
Received: from kyu3-desk.ccr.corp.intel.com (HELO [10.238.154.142])
	([10.238.154.142])
	by azsmga001.ch.intel.com with ESMTP; 23 May 2011 22:50:58 -0700
Message-ID: <4DDB4741.9000002@intel.com>
Date: Tue, 24 May 2011 13:50:57 +0800
From: Yu Ke <ke.yu@intel.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1305508488.git.ke.yu@intel.com>	<95d6b08eb7982baacb334d6d774a204670b1ca1c.1305508488.git.ke.yu@intel.com>	<4DD6973B.4020708@gmail.com>
	<4DD7025D.10609@linux.intel.com>
In-Reply-To: <4DD7025D.10609@linux.intel.com>
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
X-List-Received-Date: Tue, 24 May 2011 05:51:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

on 2011-5-21 8:07, Darren Hart wrote:
>
>
> On 05/20/2011 09:30 AM, Khem Raj wrote:
>> On 5/15/2011 6:16 PM, Yu Ke wrote:
>>> From: Yu Ke<ke.yu@intel.com>
>>>
>>> Some upstream git repo may rebase in the future, which means current
>>> revision may disappear from the upstream repo after the rebase.
>>>
>>> current git fetcher can not handle this case, because the git mirror
>>> tar ball is per repo, and may also change in the rebase and lost the
>>> current revision info.
>>>
>>> To fix this issue, this patch
>>> - add rebaseable tag in the SRC_URI
>>> - for rebaseable repo, make git mirror tar ball per revision, in this
>>>     case, even upstream rebase, the git mirror still has the current
>>>     revision info.
>>> - for rebaseable repo, generate mirror tar ball by default, since the
>>>     repo may change in the future.
>>
>> Do we have the options to SRC_URI documented somewhere ?
>> if yes then this should be added there too.
>
> I was looking and didn't find them. At the very least these should be
> documented in the fetch2/git.py file for reference when
> reviewing/maintaining the source.
>

This is good reminder, Thanks.

There are several places that hold this info:

- bitbake manual: http://bitbake.berlios.de/manual/ch03s07.html
- openembedded manual: 
http://docs.openembedded.org/usermanual/usermanual.html#id572539
- poky reference manual: 
http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html#ref-bitbake-fetchers

It looks the most appropriate place would be bitbake manual, which is 
also refereed by poky reference manual. So does anyone know how can I 
update this mannual?

Also, it sounds good idea to add the SRC_URI options doc in the source, 
I will cook a patch to add this info.

Regards
Ke

