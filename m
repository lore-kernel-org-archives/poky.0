Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web12.4598.1574933062643829920
 for <poky@lists.yoctoproject.org>;
 Thu, 28 Nov 2019 01:24:22 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: ross.burton@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Nov 2019 01:24:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,253,1571727600"; 
   d="scan'208";a="261250726"
Received: from xsanroma-mobl1.ger.corp.intel.com (HELO blackadder.local) ([10.249.34.24])
  by FMSMGA003.fm.intel.com with ESMTP; 28 Nov 2019 01:24:21 -0800
Subject: Re: [poky] [meta-yocto-bsp][PATCH] genericx86: wic wks do not hardcode loader
From: "Ross Burton" <ross.burton@intel.com>
To: Lee Chee Yang <chee.yang.lee@intel.com>, poky@lists.yoctoproject.org
References: <1574823119-84851-1-git-send-email-chee.yang.lee@intel.com>
 <15DB1354FEFB0232.19458@lists.yoctoproject.org>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <7c99f3e7-89cc-428b-890c-85a76e72200e@intel.com>
Date: Thu, 28 Nov 2019 09:24:20 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <15DB1354FEFB0232.19458@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 27/11/2019 16:55, Ross Burton wrote:
> On 27/11/2019 02:51, Lee Chee Yang wrote:
>> From: Chee Yang Lee <chee.yang.lee@intel.com>
>>
>> replace .wks with .wks.in and refer loader to EFI_PROVIDER
>> to enable different bootloader.
> 
> Fails on the autobuilder:
> 
> ERROR: core-image-minimal-initramfs-1.0-r0 do_image_wic: Execution of 
> '/home/pokybuild/yocto-worker/genericx86/build/build/tmp/work/genericx86-poky-linux/core-image-minimal-initramfs/1.0-r0/temp/run.do_image_wic.24049' 
> failed with exit code 1:
> INFO: Creating image(s)...
> ERROR: unrecognized bootimg-efi loader:
> WARNING: exit code 1 from a shell command.
> NOTE: recipe wpa-supplicant-2.9-r0: task do_package_write_ipk: Succeeded

Far to vague, sorry.

Build run was 
https://autobuilder.yoctoproject.org/typhoon/#/builders/37/builds/1295

MACHINE=genericx86-64, full logs in step1b.

Ross
