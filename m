Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web11.8909.1574873750035290297
 for <poky@lists.yoctoproject.org>;
 Wed, 27 Nov 2019 08:55:50 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: ross.burton@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Nov 2019 08:55:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,250,1571727600"; 
   d="scan'208";a="359553867"
Received: from xsanroma-mobl1.ger.corp.intel.com (HELO blackadder.local) ([10.249.34.24])
  by orsmga004.jf.intel.com with ESMTP; 27 Nov 2019 08:55:48 -0800
Subject: Re: [poky] [meta-yocto-bsp][PATCH] genericx86: wic wks do not hardcode loader
To: Lee Chee Yang <chee.yang.lee@intel.com>, poky@lists.yoctoproject.org
References: <1574823119-84851-1-git-send-email-chee.yang.lee@intel.com>
From: "Ross Burton" <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <fd976d8b-4a35-6617-a880-1b9f86366e8a@intel.com>
Date: Wed, 27 Nov 2019 16:55:45 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <1574823119-84851-1-git-send-email-chee.yang.lee@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 27/11/2019 02:51, Lee Chee Yang wrote:
> From: Chee Yang Lee <chee.yang.lee@intel.com>
> 
> replace .wks with .wks.in and refer loader to EFI_PROVIDER
> to enable different bootloader.

Fails on the autobuilder:

ERROR: core-image-minimal-initramfs-1.0-r0 do_image_wic: Execution of 
'/home/pokybuild/yocto-worker/genericx86/build/build/tmp/work/genericx86-poky-linux/core-image-minimal-initramfs/1.0-r0/temp/run.do_image_wic.24049' 
failed with exit code 1:
INFO: Creating image(s)...
ERROR: unrecognized bootimg-efi loader:
WARNING: exit code 1 from a shell command.
NOTE: recipe wpa-supplicant-2.9-r0: task do_package_write_ipk: Succeeded

Ross
