Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 925D64C8009A
	for <poky@yoctoproject.org>; Sat, 12 Mar 2011 01:45:28 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 Mar 2011 23:45:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,307,1297065600"; d="scan'208";a="612133242"
Received: from unknown (HELO [10.255.12.198]) ([10.255.12.198])
	by orsmga002.jf.intel.com with ESMTP; 11 Mar 2011 23:45:27 -0800
Message-ID: <4D7B2492.9000403@linux.intel.com>
Date: Fri, 11 Mar 2011 23:45:22 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Koen Kooi <koen@beagleboard.org>
References: <4D7AF731.30508@linux.intel.com>
	<83D5A5C2-F470-425F-84BE-F726CD652759@beagleboard.org>
In-Reply-To: <83D5A5C2-F470-425F-84BE-F726CD652759@beagleboard.org>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: MACHINE_EXTRA_RRECOMMENDS not working?
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
X-List-Received-Date: Sat, 12 Mar 2011 07:45:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 03/11/2011 11:00 PM, Koen Kooi wrote:
>
>
> Op 12 mrt. 2011 om 05:31 heeft Darren Hart<dvhart@linux.intel.com>  het volgende geschreven:
>
>> I'm working to get a certain package installed for a specific machine.
>> In particular, I wrote a simple init.d script called n450-audio which
>> sets the mixer for the n450 dev board to unmute the FRONT channel and
>> set the volume to 70% or so - as it is muted if left untouched.
>
> Wouldn't alsa-state be a better place for that?

It would be, yes. Turns out we don't have alsa-state in poky yet, and 
adding it now would be a lot of last minute churn - so opted to fix this 
particular recipe now (n450-audio already existed in some form) and look 
into a more appropriate general purpose solution as a follow-up.

I wasn't aware of the alsa-state recipe in OE, had a look, and it looks 
very similar to what I had in mind. Thanks for the pointer.

Thanks,

Darren
>
> regards,
>
> koen
>
>
>
>
>
>> For now,
>> I just want to make this board work, so I want to make this package get
>> installed if it's dependencies are met (if amixer is installed).
>>
>> As I understand it, the best way to do this is with something like the
>> following in the machine/n450.conf file:
>>
>> MACHINE_EXTRA_RRECOMMENDS += " n450-audio "
>>
>> And that recipe in turn defines:
>>
>> RDEPENDS = "alsa-utils-amixer"
>>
>> I then:
>>
>> $ bitbake -c cleanall task-base poky-image-sato-live n450-audio
>>
>> followed by:
>>
>> $ bitbake poky-image-sato-live
>>
>> The n450-audio recipe is built, but it does not appear in the generated
>> image (nor in the ext3 image).
>>
>> I checked the dependency chain and task-base does depend on n450-audio:
>>
>> $ bitbake -g -u depexp poky-image-sato-live
>>
>>
>> I then tried using the following variables in place of
>> MACHINE_EXTRA_RRECOMMENDS with the same result:
>>
>> MACHINE_EXTRA_RDEPENDS
>> MACHINE_ESSENTIAL_RRECOMMENDS
>> MACHINE_ESSENTIAL_RDEPENDS
>>
>> Finally, I added the following to my local.conf and the image built as
>> expected:
>>
>> POKY_EXTRA_INSTALL = " n450-audio "
>>
>> Am I completely off in the weeds here? If this isn't what these
>> directives are for - what are they for?
>>
>> I took a look at what they are used for elsewhere and found:
>>
>> $ cat ~/.bashrc | grep bb
>>     alias bb='bitbake'
>>     alias bbdeps='bitbake -g -u depexp'
>> dvhart@rage:poky.git$ git grep MACHINE_EXTRA_RRECOMMENDS
>> documentation/poky-ref-manual/ref-variables.xml:<glossentry id='var-MACHINE_EXTRA_RRECOMMENDS'><glossterm>MACHINE_
>> documentation/poky-ref-manual/ref-varlocality.xml:<para><glossterm linkend='var-MACHINE_EXTRA_RRECOMMENDS'>
>> meta/conf/bitbake.conf:MACHINE_EXTRA_RRECOMMENDS ?= ""
>> meta/conf/machine/atom-pc.conf:MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
>> meta/conf/machine/beagleboard.conf:MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
>> meta/conf/machine/qemumips.conf:MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
>> meta/conf/machine/routerstationpro.conf:MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
>> meta/recipes-core/tasks/task-base.bb:RRECOMMENDS_task-machine-base = "${MACHINE_EXTRA_RRECOMMENDS}"
>>
>> Only two other recipes are referenced with these variables:
>> kernel-modules and eee-acpi-scripts. I had an atom-pc build so I mounted
>> the rootfs and dug around - not a trace of the eee-acpi-scripts to found
>> anywhere. I checked for modules under
>> /lib/modules/2.6.34.7-yocto-standard/ and found several *.*map files,
>> but nothing else (certainly no *.ko files). So this mechanism certainly
>> doesn't do what I thought it did.
>>
>> Is it supposed to? If not, what does it do. It does cause the package
>> listed to be built, perhaps that is it's only purpose? The user can
>> install the package manually if they want it?
>>
>> And, more to the point, if this isn't the right mechanism to cause a
>> package to be added (if deps are met) to any image for a specific
>> machine, what is?
>>
>> If you want to see the branch in question, it's here:
>> http://git.pokylinux.org/cgit/cgit.cgi/meta-intel/log/?h=dvhart/n450-audio
>>
>> (Yes, the init script is terrible - working on that.)
>>
>> Thanks,
>>
>> --
>> Darren Hart
>> Intel Open Source Technology Center
>> Yocto Project - Linux Kernel
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

