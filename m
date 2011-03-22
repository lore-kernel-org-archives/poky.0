Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 76EE94C80132
	for <poky@lists.pokylinux.org>; Mon, 21 Mar 2011 19:55:41 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 12AD2166023E; Mon, 21 Mar 2011 18:55:41 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 6DE9D1660234;
	Mon, 21 Mar 2011 18:55:37 -0600 (MDT)
Message-ID: <4D87F389.3070909@mlbassoc.com>
Date: Mon, 21 Mar 2011 18:55:37 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4D876DD3.5070106@mlbassoc.com>	
	<1300722848.30423.3751.camel@rex>	<4D877E6B.9000007@mlbassoc.com>	
	<1300730269.30423.3975.camel@rex>	<4D879883.5010501@linux.intel.com>	
	<4D879A14.7040104@mlbassoc.com>	<4D87AAF2.3010108@linux.intel.com>	
	<4D87B30F.90802@mlbassoc.com> <4D87B434.1070404@windriver.com>
	<1300741361.3049.18.camel@elmorro> <4D87D815.6090404@mlbassoc.com>
	<4D87DE46.9040401@linux.intel.com>
In-Reply-To: <4D87DE46.9040401@linux.intel.com>
Cc: Poky <poky@lists.pokylinux.org>
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
X-List-Received-Date: Tue, 22 Mar 2011 00:55:41 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/21/2011 05:24 PM, Darren Hart wrote:
>
>
> On 03/21/2011 03:58 PM, Gary Thomas wrote:
>> On 03/21/2011 03:02 PM, Tom Zanussi wrote:
>>> On Mon, 2011-03-21 at 13:25 -0700, Bruce Ashfield wrote:
>>>> On 11-03-21 04:20 PM, Gary Thomas wrote:
>>>>> On 03/21/2011 01:45 PM, Darren Hart wrote:
>>>>>>
>>>>>>
>>>>>> On 03/21/2011 11:33 AM, Gary Thomas wrote:
>>>>>>> On 03/21/2011 12:27 PM, Darren Hart wrote:
>>>>>>>>
>>>>>>>>
>>>>>>>> On 03/21/2011 10:57 AM, Richard Purdie wrote:
>>>>>>>>> On Mon, 2011-03-21 at 10:35 -0600, Gary Thomas wrote:
>>>>>>>>>> On 03/21/2011 09:54 AM, Richard Purdie wrote:
>>>>>>>>>>> On Mon, 2011-03-21 at 09:25 -0600, Gary Thomas wrote:
>>>>>>>>>>>> I'm trying to do some testing with Poky on an atom-PC. I thought
>>>>>>>>>>>> I'd try with a minimal system and then add pieces I need. Sadly,
>>>>>>>>>>>> I've run aground doing this. I've built a couple of images with
>>>>>>>>>>>> varying results:
>>>>>>>>>>>> poky-image-minimal-live - boots on my box
>>>>>>>>>>>> poky-image-sato-live - boots, but fails to find X display, then
>>>>>>>>>>>> hangs (*)
>>>>>>>>>>>>
>>>>>>>>>>>> There seem to be no RPM tools on the minimal image. Did I miss
>>>>>>>>>>>> something?
>>>>>>>>>>>> On my old, ipk based system, I'd build up a minimal image
>>>>>>>>>>>> then use
>>>>>>>>>>>> opkg
>>>>>>>>>>>> to install additional packages.
>>>>>>>>>>>
>>>>>>>>>>> Minimal images were never meant to ship with the package manager
>>>>>>>>>>> and now
>>>>>>>>>>> don't. You can obviously change the image definitions easily
>>>>>>>>>>> enough as
>>>>>>>>>>> needed.
>>>>>>>>>>>
>>>>>>>>>>>> How do I do that with the RPM based images?
>>>>>>>>>>>
>>>>>>>>>>> The same switch turns on/off the package manager data for rpm and
>>>>>>>>>>> opkg.
>>>>>>>>>>
>>>>>>>>>> I tried adding this to local.conf, but nothing changed when I
>>>>>>>>>> build
>>>>>>>>>> minimal image:
>>>>>>>>>> IMAGE_FEATURES += " package-management ssh-server-dropbear "
>>>>>>>>>
>>>>>>>>> There is also this:
>>>>>>>>>
>>>>>>>>> # remove not needed ipkg informations
>>>>>>>>> ROOTFS_POSTPROCESS_COMMAND += "remove_packaging_data_files ; "
>>>>>>>>>
>>>>>>>>> in poky-image-minimal.bbclass which has been there for a long
>>>>>>>>> time and
>>>>>>>>> removes the package manager data files.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>> BTW, where is this documented? Not in the Poky handbook from
>>>>>>>>>> what I
>>>>>>>>>> can tell.
>>>>>>>>>>
>>>>>>>>>> Also, is there documentation on how to use zypper, how to set up
>>>>>>>>>> repositories, etc?
>>>>>>>>>
>>>>>>>>> I think others have helped here. Please do send patches for the
>>>>>>>>> manual
>>>>>>>>> when people go to the trouble of finding information to help
>>>>>>>>> though!
>>>>>>>>>
>>>>>>>>>>>> I've checked the documentation and there's basically nothing
>>>>>>>>>>>> about this, unless I looked in the wrong place.
>>>>>>>>>>>>
>>>>>>>>>>>> Any ideas or pointers gladly accepted. Thanks
>>>>>>>>>>>>
>>>>>>>>>>>> (*) I had success with this in the past when I booted with
>>>>>>>>>>>> MACHINE=emenlow
>>>>>>>>>>>> but that hardware isn't in the primary list.
>>>>>>>>>>>
>>>>>>>>>>> I'm not sure why this isn't working or what the problem might
>>>>>>>>>>> be...
>>>>>>>>>>
>>>>>>>>>> It complains it can't find /dev/fb0. See the boot log at
>>>>>>>>>> http://www.mlbassoc.com/poky/boot_2011-03-21.log
>>>>>>>>>
>>>>>>>>> Does your board have Intel graphics or PVR/SGX? emenlow has PVR/SGX
>>>>>>>>> which might explain this...
>>>>>>>>
>>>>>>>> And if you need emenlow, that bsp is now part of the meta-intel
>>>>>>>> layer:
>>>>>>>>
>>>>>>>> http://git.pokylinux.org/cgit.cgi/meta-intel/
>>>>>>>
>>>>>>> Do you have instructions/suggestions on how to add this to my extant
>>>>>>> Poky tree?
>>>>>>>
>>>>>>
>>>>>> It's just another layer, so you checkout it out somewhere and add the
>>>>>> meta-intel/meta-$MACHINE directory to your conf/bblayer.conf file.
>>>>>
>>>>> I did that, changed MACHINE=emenlow, but I got this error:
>>>>>
>>>>> | cc1: warnings being treated as errors
>>>>> | cc1: error: include location "/usr/local/include" is unsafe for
>>>>> cross-compilation
>>>>> | make: *** [util/scripting-engines/trace-event-perl.o] Error 1
>>>>> | make: Leaving directory
>>>>> `/home/local/pc_test/tmp/work/emenlow-poky-linux/linux-yocto-2.6.37+git2+29047c254624e0bd8a0ac6da92862f7c6357cb0b_1+c6299ae5bece8e3a6e1bc2c236862ae004629aae-r16/linux/tools/perf'
>>>>>
>>>>>
>>>>> | FATAL: oe_runmake failed
>>>>> | ERROR: Function 'do_compile_perf' failed (see
>>>>> /home/local/pc_test/tmp/work/emenlow-poky-linux/linux-yocto-2.6.37+git2+29047c254624e0bd8a0ac6da92862f7c6357cb0b_1+c6299ae5bece8e3a6e1bc2c236862ae004629aae-r16/temp/log.do_compile_perf.10359
>>>>>
>>>>>
>>>>> for further information)
>>>>>
>>>>> This from yesterday's master (aeaa356a5ee77b4596c479451a9db289381a4d16)
>>>>>
>>>>> I recall seeing similar errors recently, but not the solution. Is there
>>>>> an easy fix?
>>>>
>>>> It means that the SRCREV for the branch doesn't have the
>>>> following commit covered:
>>>>
>>>> ----------
>>>>
>>>> commit 2b412826bbeb4a16abe2ea74f2456ab880c6e3c1
>>>> Author: Bruce Ashfield<bruce.ashfield@windriver.com>
>>>> Date: Fri Feb 25 13:18:51 2011 -0500
>>>>
>>>> perf: hard-code NO_LIBPERL/NO_LIBPYTHON
>>>>
>>>> ExtUtils::Embed ccopts is getting the host's -I/usr/local/include and
>>>> using it to compile perf, which results in a compilation error that
>>>> started appearing just recently.
>>>>
>>>> This turns the code that makes use of ExtUtils::Embed off and simply
>>>> hard-codes NO_LIBPERL.
>>>>
>>>> It does the same for LIBPYTHON while we're at it, since it probably
>>>> suffers from a similar underlying problem and just by chance hasn't
>>>> broken anything yet.
>>>>
>>>> This will be re-enabled after I familiarize myself with the perf
>>>> recipe and am able to create a proper fix.
>>>>
>>>> Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
>>>> Signed-off-by: Bruce Ashfield<bruce.ashfield@windriver.com>
>>>>
>>>> ----------
>>>>
>>>> The kernel repo has this, and I thought that the meta-intel
>>>> emenlow had an updated SRCREV .. but your build error indicates
>>>> otherwise.
>>>>
>>>
>>> Hmm, strange - the SRCREV does look like it needed to be updated but yet
>>> I nor the autobuilder have been seeing this.
>>>
>>> Anyway, I just updated the kernel SRCREVs in master, please try again...
>>
>> It work now, thanks. It also found my display and SATA devices. Sadly, when
>> it's running X, I can't use the mouse. It seems to be found, but doesn't
>> work.
>>
>> I get these messages during boot:
>> usb 1-1.2: USB disconnect, address 6
>> usb 1-1.2: new low speed USB device using ehci_hcd and address 7
>> input: Logitech USB-PS/2 Optical Mouse as
>> /devices/pci0000:00/0000:00:1d.7/usb1/1-1/1-1.2/1-1.2:1.0/input/input4
>> generic-usb 0003:046D:C03D.0005: input: USB HID v1.10 Mouse [Logitech
>> USB-PS/2 Optical Mouse] on usb-0000:00:1d.7-1.2/input0
>> And there is a device created:
>> root@emenlow:~# ls -l /dev/input/
>> drwxr-xr-x 2 root root 60 Mar 21 22:27 by-id
>> drwxr-xr-x 2 root root 60 Mar 21 22:27 by-path
>> crw-r----- 1 root root 13, 63 Mar 21 06:31 mice
>> crw-r----- 1 root root 13, 32 Mar 21 22:27 mouse0
>>
>> Ideas?
>
>
> By "doesn't work" do you mean that you don't see the cursor? Or do you see the cursor, but it doesn't move? Or it moves but clicking has no effect?
>
> If "I don't see a cursor" try looking at the formfactor file and check the value of "HAVE_TOUCHSCREEN":
>
> # grep -r TOUCHSCREEN /etc/formfactor/
> /etc/formfactor/config:if [ -z "$HAVE_TOUCHSCREEN" ]; then
> /etc/formfactor/config: HAVE_TOUCHSCREEN=0
> /etc/formfactor/machconfig:HAVE_TOUCHSCREEN=0
>
> You want that to be 0, if it's 1, then matchbox will hide the mouse. See /etc/matchbox/session

I had already checked that file - it's correct & I do see a cursor, it just doesn't move.

>>
>> Now, if I can just figure out how to make the [live] image larger...
>> (free space)
>> I can get on with the real testing I need to do.
>> Thanks for the help
>>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

