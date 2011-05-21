Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5A7114C80228
	for <poky@yoctoproject.org>; Fri, 20 May 2011 19:08:00 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 20 May 2011 17:07:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,244,1304319600"; 
   d="scan'208";a="5515561"
Received: from unknown (HELO [10.255.12.76]) ([10.255.12.76])
	by fmsmga001.fm.intel.com with ESMTP; 20 May 2011 17:07:59 -0700
Message-ID: <4DD7025D.10609@linux.intel.com>
Date: Fri, 20 May 2011 17:07:57 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <cover.1305508488.git.ke.yu@intel.com>	<95d6b08eb7982baacb334d6d774a204670b1ca1c.1305508488.git.ke.yu@intel.com>
	<4DD6973B.4020708@gmail.com>
In-Reply-To: <4DD6973B.4020708@gmail.com>
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
X-List-Received-Date: Sat, 21 May 2011 00:08:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/20/2011 09:30 AM, Khem Raj wrote:
> On 5/15/2011 6:16 PM, Yu Ke wrote:
>> From: Yu Ke<ke.yu@intel.com>
>>
>> Some upstream git repo may rebase in the future, which means current
>> revision may disappear from the upstream repo after the rebase.
>>
>> current git fetcher can not handle this case, because the git mirror
>> tar ball is per repo, and may also change in the rebase and lost the
>> current revision info.
>>
>> To fix this issue, this patch
>> - add rebaseable tag in the SRC_URI
>> - for rebaseable repo, make git mirror tar ball per revision, in this
>>    case, even upstream rebase, the git mirror still has the current
>>    revision info.
>> - for rebaseable repo, generate mirror tar ball by default, since the
>>    repo may change in the future.
> 
> Do we have the options to SRC_URI documented somewhere ?
> if yes then this should be added there too.

I was looking and didn't find them. At the very least these should be
documented in the fetch2/git.py file for reference when
reviewing/maintaining the source.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

