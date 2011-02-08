Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7941C4C800A4
	for <poky@yoctoproject.org>; Tue,  8 Feb 2011 16:03:46 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 08 Feb 2011 14:03:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,443,1291622400"; d="scan'208";a="705513260"
Received: from unknown (HELO [10.255.14.215]) ([10.255.14.215])
	by orsmga001.jf.intel.com with ESMTP; 08 Feb 2011 14:03:45 -0800
Message-ID: <4D51BDB9.2030508@linux.intel.com>
Date: Tue, 08 Feb 2011 14:03:37 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D51B86E.7060709@linux.intel.com> <4D51BA63.3020606@mlbassoc.com>
In-Reply-To: <4D51BA63.3020606@mlbassoc.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: History and intentions of linux.inc ?
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
X-List-Received-Date: Tue, 08 Feb 2011 22:03:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/08/2011 01:49 PM, Gary Thomas wrote:
> On 02/08/2011 02:41 PM, Darren Hart wrote:
>> I've stumbled over a couple of interesting bits in the existing
>> recipes-kernel/linux/linux.inc, for example (but not limited to):
>>
>>> do_install_prepend() {
>>> if test -e arch/${ARCH}/boot/Image ; then
>>> ln -f arch/${ARCH}/boot/Image arch/${ARCH}/boot/uImage
>>> fi
>>
>> On a recent kernel, the above will overwrite a valid uImage with Image,
>> resulting in a non-bootable set of files in deploy/images.
>>
>>>
>>> if test -e arch/${ARCH}/boot/images/uImage ; then
>>> ln -f arch/${ARCH}/boot/images/uImage arch/${ARCH}/boot/uImage
>>> fi
>>
>> The arch/arm/boot/images directory does not exist on a current kernel
>> (2.6.35-linaro anyway).
>>
>>
>> Does anyone know the historical significance and/or intent of this code?
>> Are there architectures for which this does something sane? After
>> reading through linux.inc, I'm inclined to avoid using it for the
>> meta-linaro kernel, and then going after it with chainsaw.
>>
>> Anyone have anything to add before I start cutting?
>>
>
> I also found the same odd behaviour. My [simple] solution was
> to use my own linux.inc, much like there is a linux-yocto.inc,
> which totally removes do_install_prepend()
>
> I'm sure this is safe to do in the mainline meta/recipes-kernel;
> as I said the yocto kernel already has done away with the whole
> file.
>

Right, which was prompting me to start looking into whether or not 
linux.inc should continue to exist in it's current form.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

