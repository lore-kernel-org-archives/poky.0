Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D7FDE4C80050
	for <poky@lists.pokylinux.org>; Mon, 21 Mar 2011 15:25:27 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2LKPQ6U022066;
	Mon, 21 Mar 2011 13:25:26 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 21 Mar 2011 13:25:26 -0700
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 21 Mar 2011 13:25:26 -0700
Message-ID: <4D87B434.1070404@windriver.com>
Date: Mon, 21 Mar 2011 16:25:24 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110208 Thunderbird/3.1.8 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D876DD3.5070106@mlbassoc.com>	<1300722848.30423.3751.camel@rex>	<4D877E6B.9000007@mlbassoc.com>
	<1300730269.30423.3975.camel@rex>	<4D879883.5010501@linux.intel.com>
	<4D879A14.7040104@mlbassoc.com>	<4D87AAF2.3010108@linux.intel.com>
	<4D87B30F.90802@mlbassoc.com>
In-Reply-To: <4D87B30F.90802@mlbassoc.com>
X-OriginalArrivalTime: 21 Mar 2011 20:25:26.0258 (UTC)
	FILETIME=[1CE79D20:01CBE806]
Cc: Poky <poky@lists.pokylinux.org>, Darren Hart <dvhart@linux.intel.com>
Subject: Re: Using RPM with Poky
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
X-List-Received-Date: Mon, 21 Mar 2011 20:25:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11-03-21 04:20 PM, Gary Thomas wrote:
> On 03/21/2011 01:45 PM, Darren Hart wrote:
>>
>>
>> On 03/21/2011 11:33 AM, Gary Thomas wrote:
>>> On 03/21/2011 12:27 PM, Darren Hart wrote:
>>>>
>>>>
>>>> On 03/21/2011 10:57 AM, Richard Purdie wrote:
>>>>> On Mon, 2011-03-21 at 10:35 -0600, Gary Thomas wrote:
>>>>>> On 03/21/2011 09:54 AM, Richard Purdie wrote:
>>>>>>> On Mon, 2011-03-21 at 09:25 -0600, Gary Thomas wrote:
>>>>>>>> I'm trying to do some testing with Poky on an atom-PC. I thought
>>>>>>>> I'd try with a minimal system and then add pieces I need. Sadly,
>>>>>>>> I've run aground doing this. I've built a couple of images with
>>>>>>>> varying results:
>>>>>>>> poky-image-minimal-live - boots on my box
>>>>>>>> poky-image-sato-live - boots, but fails to find X display, then
>>>>>>>> hangs (*)
>>>>>>>>
>>>>>>>> There seem to be no RPM tools on the minimal image. Did I miss
>>>>>>>> something?
>>>>>>>> On my old, ipk based system, I'd build up a minimal image then use
>>>>>>>> opkg
>>>>>>>> to install additional packages.
>>>>>>>
>>>>>>> Minimal images were never meant to ship with the package manager
>>>>>>> and now
>>>>>>> don't. You can obviously change the image definitions easily
>>>>>>> enough as
>>>>>>> needed.
>>>>>>>
>>>>>>>> How do I do that with the RPM based images?
>>>>>>>
>>>>>>> The same switch turns on/off the package manager data for rpm and
>>>>>>> opkg.
>>>>>>
>>>>>> I tried adding this to local.conf, but nothing changed when I build
>>>>>> minimal image:
>>>>>> IMAGE_FEATURES += " package-management ssh-server-dropbear "
>>>>>
>>>>> There is also this:
>>>>>
>>>>> # remove not needed ipkg informations
>>>>> ROOTFS_POSTPROCESS_COMMAND += "remove_packaging_data_files ; "
>>>>>
>>>>> in poky-image-minimal.bbclass which has been there for a long time and
>>>>> removes the package manager data files.
>>>>>
>>>>>
>>>>>> BTW, where is this documented? Not in the Poky handbook from what I
>>>>>> can tell.
>>>>>>
>>>>>> Also, is there documentation on how to use zypper, how to set up
>>>>>> repositories, etc?
>>>>>
>>>>> I think others have helped here. Please do send patches for the manual
>>>>> when people go to the trouble of finding information to help though!
>>>>>
>>>>>>>> I've checked the documentation and there's basically nothing
>>>>>>>> about this, unless I looked in the wrong place.
>>>>>>>>
>>>>>>>> Any ideas or pointers gladly accepted. Thanks
>>>>>>>>
>>>>>>>> (*) I had success with this in the past when I booted with
>>>>>>>> MACHINE=emenlow
>>>>>>>> but that hardware isn't in the primary list.
>>>>>>>
>>>>>>> I'm not sure why this isn't working or what the problem might be...
>>>>>>
>>>>>> It complains it can't find /dev/fb0. See the boot log at
>>>>>> http://www.mlbassoc.com/poky/boot_2011-03-21.log
>>>>>
>>>>> Does your board have Intel graphics or PVR/SGX? emenlow has PVR/SGX
>>>>> which might explain this...
>>>>
>>>> And if you need emenlow, that bsp is now part of the meta-intel layer:
>>>>
>>>> http://git.pokylinux.org/cgit.cgi/meta-intel/
>>>
>>> Do you have instructions/suggestions on how to add this to my extant
>>> Poky tree?
>>>
>>
>> It's just another layer, so you checkout it out somewhere and add the
>> meta-intel/meta-$MACHINE directory to your conf/bblayer.conf file.
>
> I did that, changed MACHINE=emenlow, but I got this error:
>
> | cc1: warnings being treated as errors
> | cc1: error: include location "/usr/local/include" is unsafe for
> cross-compilation
> | make: *** [util/scripting-engines/trace-event-perl.o] Error 1
> | make: Leaving directory
> `/home/local/pc_test/tmp/work/emenlow-poky-linux/linux-yocto-2.6.37+git2+29047c254624e0bd8a0ac6da92862f7c6357cb0b_1+c6299ae5bece8e3a6e1bc2c236862ae004629aae-r16/linux/tools/perf'
>
> | FATAL: oe_runmake failed
> | ERROR: Function 'do_compile_perf' failed (see
> /home/local/pc_test/tmp/work/emenlow-poky-linux/linux-yocto-2.6.37+git2+29047c254624e0bd8a0ac6da92862f7c6357cb0b_1+c6299ae5bece8e3a6e1bc2c236862ae004629aae-r16/temp/log.do_compile_perf.10359
> for further information)
>
> This from yesterday's master (aeaa356a5ee77b4596c479451a9db289381a4d16)
>
> I recall seeing similar errors recently, but not the solution. Is there
> an easy fix?

It means that the SRCREV for the branch doesn't have the
following commit covered:

----------

commit 2b412826bbeb4a16abe2ea74f2456ab880c6e3c1
Author: Bruce Ashfield <bruce.ashfield@windriver.com>
Date:   Fri Feb 25 13:18:51 2011 -0500

     perf: hard-code NO_LIBPERL/NO_LIBPYTHON

     ExtUtils::Embed ccopts is getting the host's -I/usr/local/include and
     using it to compile perf, which results in a compilation error that
     started appearing just recently.

     This turns the code that makes use of ExtUtils::Embed off and simply
     hard-codes NO_LIBPERL.

     It does the same for LIBPYTHON while we're at it, since it probably
     suffers from a similar underlying problem and just by chance hasn't
     broken anything yet.

     This will be re-enabled after I familiarize myself with the perf
     recipe and am able to create a proper fix.

     Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
     Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>

----------

The kernel repo has this, and I thought that the meta-intel
emenlow had an updated SRCREV .. but your build error indicates
otherwise.

Cheers,

Bruce


>


