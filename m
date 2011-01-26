Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C9A214C8085F
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 12:28:32 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 26 Jan 2011 10:28:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,381,1291622400"; d="scan'208";a="881235760"
Received: from unknown (HELO [10.255.14.118]) ([10.255.14.118])
	by fmsmga001.fm.intel.com with ESMTP; 26 Jan 2011 10:28:32 -0800
Message-ID: <4D4067CF.3010505@linux.intel.com>
Date: Wed, 26 Jan 2011 10:28:31 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <1296063743-4676-1-git-send-email-aalonso@secretlab.ca>
	<4D406152.3010009@linux.intel.com>
In-Reply-To: <4D406152.3010009@linux.intel.com>
Cc: Adrian Alonso <aalonso@secretlab.ca>, poky@yoctoproject.org
Subject: Re: [PATCH 05/25][v3] u-boot: disable -Os option not supported by gcc
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
X-List-Received-Date: Wed, 26 Jan 2011 18:28:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/26/2011 10:00 AM, Darren Hart wrote:
> On 01/26/2011 09:42 AM, Adrian Alonso wrote:
>> * Disable -Os optspace option not supported by gcc use insted -O2
>> * v2 Remove Make file patch
>> * v3 use EXTRA_OEMAKE variable, override default OPTFLAGS settings
>> in u-boot.inc, Powerpc targets build only with -O1, -O2 optflags
>> Build failures are related to gcc bugs #44392 and #45052
>> * Bump PR
>>
>> Signed-off-by: Adrian Alonso<aalonso@secretlab.ca>
>
> Looks good for the -Os problem.
>
> Reviewed-by: Darren Hart<dvhart@linux.intel.com>
>
> I noticed that the SRCREV is defined in this file.
> Typically this should be in
> meta/conf/distro/include/poky-default-revisions.inc
>
If I remember this correctly, these are in a layer, so the 
default-revision.inc does not get updated.

Sau!

> --
> Darren
>
>
>> ---
>> recipes-bsp/uboot/u-boot-xilinx_git.bb | 6 ++++--
>> 1 files changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/recipes-bsp/uboot/u-boot-xilinx_git.bb
>> b/recipes-bsp/uboot/u-boot-xilinx_git.bb
>> index 50d99e3..a373428 100644
>> --- a/recipes-bsp/uboot/u-boot-xilinx_git.bb
>> +++ b/recipes-bsp/uboot/u-boot-xilinx_git.bb
>> @@ -1,9 +1,11 @@
>> require ../meta/recipes-bsp/uboot/u-boot.inc
>> -PR = "r2"
>> +PR = "r3"
>>
>> +EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX} OPTFLAGS='-O2'"
>> BRANCH="master"
>> TAG="e094f2479ea339d7f48b6826f06f0be4984d9a98"
>> -SRC_URI =
>> "git://git.xilinx.com/u-boot-xlnx.git;branch=${BRANCH};protocol=git"
>> +SRC_URI =
>> "git://git.xilinx.com/u-boot-xlnx.git;branch=${BRANCH};protocol=git \
>> + "
>> SRCREV = "${TAG}"
>>
>> inherit xilinx-boot
>
>


