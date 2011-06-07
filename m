Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E7BD4C80186
	for <poky@yoctoproject.org>; Tue,  7 Jun 2011 11:05:48 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 07 Jun 2011 09:05:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,333,1304319600"; d="scan'208";a="15037200"
Received: from unknown (HELO [10.255.13.104]) ([10.255.13.104])
	by fmsmga001.fm.intel.com with ESMTP; 07 Jun 2011 09:05:47 -0700
Message-ID: <4DEE4C5B.7030804@linux.intel.com>
Date: Tue, 07 Jun 2011 09:05:47 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <cover.1307436402.git.dongxiao.xu@intel.com>	<9e80fcf7db2a25b1caa913c61764a9f36c1abcaf.1307436402.git.dongxiao.xu@intel.com>
	<BANLkTikQH8oxMmMWzrrBjPd_PN_200PUsQ@mail.gmail.com>
In-Reply-To: <BANLkTikQH8oxMmMWzrrBjPd_PN_200PUsQ@mail.gmail.com>
Cc: y@pokylinux.org, poky@yoctoproject.org
Subject: Re: [PATCH 1/5] kernel.bbclass: Auto load cdc-acm and cdc-wdm
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
X-List-Received-Date: Tue, 07 Jun 2011 16:05:48 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/07/2011 05:58 AM, Bruce Ashfield wrote:
> On Tue, Jun 7, 2011 at 4:52 AM,  <y@pokylinux.org> wrote:
>> From: Dongxiao Xu <dongxiao.xu@intel.com>
>>
>> Automatically load cdc-acm.ko and cdc-wdm.ko to support 3G module.
>>
>> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
>> ---
>>  meta/classes/kernel.bbclass |    2 ++
>>  1 files changed, 2 insertions(+), 0 deletions(-)
>>
>> diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
>> index 1bb69f5..1b50b38 100644
>> --- a/meta/classes/kernel.bbclass
>> +++ b/meta/classes/kernel.bbclass
>> @@ -264,6 +264,8 @@ module_autoload_rfcomm = "rfcomm"
>>  module_autoload_sa1100-rtc = "sa1100-rtc"
>>  # sa1100-rtc was renamed in 2.6.23 onwards
>>  module_autoload_rtc-sa1100 = "rtc-sa1100"
>> +module_autoload_cdc-acm = "cdc-acm"
>> +module_autoload_cdc-wdm = "cdc-wdm"
> 
> Hi Dongxiao,
> 
> This patch should go to oe-core, since we are talking about
> meta/classes/kernel.bbclass.
> 
> But seeing this looks like it doesn't belong in kernel.bbclass at all (neither
> do the existing autoloads), but would be better defined in either a BSP or
> distro layer.

Agreed.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

