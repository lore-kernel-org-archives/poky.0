Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2A92E006D9
	for <poky@yoctoproject.org>; Fri, 29 Jun 2012 13:10:55 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 29 Jun 2012 13:10:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="162373617"
Received: from unknown (HELO envy.home) ([10.255.13.25])
	by azsmga001.ch.intel.com with ESMTP; 29 Jun 2012 13:10:54 -0700
Message-ID: <4FEE0B73.4090102@linux.intel.com>
Date: Fri, 29 Jun 2012 13:09:23 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <cover.1340998763.git.dvhart@linux.intel.com>
	<4263ffefaa6f3b0069bc41c0f7578d36717edcfc.1340998763.git.dvhart@linux.intel.com>
	<5d4f56f916e6ffdfcad97895dd3ba2ecd2ba4354.1340998763.git.dvhart@linux.intel.com>
	<CAMKF1sqbrVsp_Os9QKooSDcsQmB28fBu+K0W_cXK+BPXFKj28Q@mail.gmail.com>
In-Reply-To: <CAMKF1sqbrVsp_Os9QKooSDcsQmB28fBu+K0W_cXK+BPXFKj28Q@mail.gmail.com>
X-Enigmail-Version: 1.4.2
Cc: Poky <poky@yoctoproject.org>, Kishore Bodke <kishore.k.bodke@intel.com>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: [PATCH 3/5] kernel: Add kernel headers to kernel-dev package
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
X-List-Received-Date: Fri, 29 Jun 2012 20:10:55 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/29/2012 01:01 PM, Khem Raj wrote:

>> diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
>> index 9b26580..9f3abee 100644
>> --- a/meta/conf/bitbake.conf
>> +++ b/meta/conf/bitbake.conf
>> @@ -380,7 +380,7 @@ SDKPATHNATIVE = "${SDKPATH}/sysroots/${SDK_SYS}"
>>  ##################################################################
>>
>>  OLDEST_KERNEL = "2.6.16"
>> -STAGING_KERNEL_DIR = "${STAGING_DIR_HOST}/kernel"
>> +STAGING_KERNEL_DIR = "${STAGING_DIR_HOST}/usr/src/kernel-headers"
> 
> 
> This should be kernel instead of kernel-headers
>>


Well crap. Nice catch. Will send a V3 to account for this and the rebase
needed as the first 2 were already pulled in.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



