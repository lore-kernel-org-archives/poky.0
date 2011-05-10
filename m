Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id F30E84C800FB
	for <poky@yoctoproject.org>; Tue, 10 May 2011 13:18:26 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 May 2011 11:18:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,347,1301900400"; d="scan'208";a="640784669"
Received: from unknown (HELO [10.255.12.75]) ([10.255.12.75])
	by orsmga002.jf.intel.com with ESMTP; 10 May 2011 11:18:26 -0700
Message-ID: <4DC98171.1090508@linux.intel.com>
Date: Tue, 10 May 2011 11:18:25 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1304710036.git.dvhart@linux.intel.com>
	<59d2c786f63843c31a236080fbd1b7e5402cc111.1304710036.git.dvhart@linux.intel.com>
	<4DC95AAB.5090202@linux.intel.com>
In-Reply-To: <4DC95AAB.5090202@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] atom-pc: use linux-yocto (2.6.37) kernel
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
X-List-Received-Date: Tue, 10 May 2011 18:18:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/10/2011 08:32 AM, Darren Hart wrote:
> Now that Bruce's patches moving machines into meta-yocto are in, this
> one is ready to pull.
>
> --
> Darren
>
> On 05/06/2011 12:28 PM, Darren Hart wrote:
>> From: Darren Hart<dvhart@linux.intel.com>
>>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>    Branch: dvhart/atom-pc
>>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/atom-pc
>>
>> Thanks,
>>      Darren Hart<dvhart@linux.intel.com>
>> ---
>>
>>
>> Darren Hart (1):
>>    atom-pc: use linux-yocto (2.6.37) kernel
>>
>>   meta-yocto/conf/machine/atom-pc.conf               |    2 +-
>>   .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
>>   2 files changed, 2 insertions(+), 2 deletions(-)
>>
>>
>> Tested boot, network, sato desktop, amixer, and audio playback on a Toshiba
>> NB305 netbook.
>>
>> Depends on "linux-yocto: move non-core machines to meta-yocto" from
>> Bruce Ashfield to the yocto list:
>> Message-Id:<a258388e5b8d134009bb37cfc9f6b1c1dd8ba94e.1304707341.git.bruce.ashfield@windriver.com>
>>
>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>> ---
>>   meta-yocto/conf/machine/atom-pc.conf               |    2 +-
>>   .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 +-
>>   2 files changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/meta-yocto/conf/machine/atom-pc.conf b/meta-yocto/conf/machine/atom-pc.conf
>> index b94deb2..5220efe 100644
>> --- a/meta-yocto/conf/machine/atom-pc.conf
>> +++ b/meta-yocto/conf/machine/atom-pc.conf
>> @@ -12,7 +12,7 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 wifi \
>>
>>   KERNEL_IMAGETYPE = "bzImage"
>>
>> -PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-stable"
>> +PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>>   #PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
>>   PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
>>   PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
>> diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend
>> index e4aa7fd..3f2d795 100644
>> --- a/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend
>> +++ b/meta-yocto/recipes-kernel/linux/linux-yocto_git.bbappend
>> @@ -9,4 +9,4 @@ SRCREV_machine_routerstationpro = "95ca94d2e71ca2db6822a37a7f575fa79c3d05d0"
>>   SRCREV_machine_mpc8315e-rdb = "53c800c244e73d81d2832f6da306eeae3b09e5dc"
>>   SRCREV_machine_beagleboard = "b906f358fd404a1e74a961f25079274e0d933ee1"
>>
>> -COMPATIBLE_MACHINE = "(mpc8315e-rdb|routerstationpro|beagleboard)"
>> +COMPATIBLE_MACHINE = "(mpc8315e-rdb|routerstationpro|beagleboard|atom-pc)"
>
Richard pulled a modified version into poky/master

Thanks
	Sau!


