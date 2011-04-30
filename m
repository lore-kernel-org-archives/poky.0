Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4336C4C800B6
	for <poky@yoctoproject.org>; Sat, 30 Apr 2011 01:32:50 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 29 Apr 2011 23:32:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,292,1301900400"; d="scan'208";a="686287128"
Received: from unknown (HELO [10.255.13.18]) ([10.255.13.18])
	by fmsmga002.fm.intel.com with ESMTP; 29 Apr 2011 23:32:48 -0700
Message-ID: <4DBBAD0F.6010700@intel.com>
Date: Fri, 29 Apr 2011 23:32:47 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Xu, Jiajun" <jiajun.xu@intel.com>
References: <cover.1304004540.git.jiajun.xu@intel.com>
	<5b319e5682fdbf8fd0c431b59d8f9d946e325bfe.1304004540.git.jiajun.xu@intel.com>
	<4DBA4831.6020906@intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A51F2C729@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A51F2C729@shsmsx501.ccr.corp.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] qemuimagetest: Enable toolchain automation tests	in qemuimagetest
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
X-List-Received-Date: Sat, 30 Apr 2011 06:32:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/28/2011 11:19 PM, Xu, Jiajun wrote:
>>> diff --git a/meta/classes/populate_sdk.bbclass
>>> b/meta/classes/populate_sdk.bbclass
>>> index 413eb52..70670ba 100644
>>> --- a/meta/classes/populate_sdk.bbclass
>>> +++ b/meta/classes/populate_sdk.bbclass
>>> @@ -1,6 +1,9 @@
>>>    inherit meta toolchain-scripts
>>>    inherit populate_sdk_${IMAGE_PKGTYPE}
>>> +IMAGETEST ?= "dummy"
>>> +inherit imagetest-${IMAGETEST}
>>> +
>> Why does this need to be added here?
>>
>> I understand that when IMAGETEST is set to qemu in the local.conf file
>> that it will be pulled in, but why to populate_sdk?
>>
>
> Hi Saul,
> Do you mean IMAGETEST should not be inherited in populate_sdk? Do you think it OK to inherit IMAGETEST in meta-toolchain.bb?
>
Jiajun,

No, I am trying to understand where the connection of having the inherit 
here at all?  I don't see where the imagetest is used, maybe I am not 
seeing the whole picture currectly.

Sau!

> diff --git a/meta/recipes-core/meta/meta-toolchain.bb b/meta/recipes-core/meta/meta-toolchain.bb
> index 94c8a91..ab98bf9 100644
> --- a/meta/recipes-core/meta/meta-toolchain.bb
> +++ b/meta/recipes-core/meta/meta-toolchain.bb
> @@ -6,6 +6,7 @@ PR = "r4"
>   LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
>                       file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>
> -inherit populate_sdk
> +IMAGETEST ?= "dummy"
> +inherit populate_sdk imagetest-${IMAGETEST}
>
>
>> Sau!
>
> Best Regards,
> Jiajun
>
>
>


