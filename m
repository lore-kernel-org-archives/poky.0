Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id CED514C8123C
	for <poky@lists.pokylinux.org>; Thu, 27 Jan 2011 16:23:57 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 2ACF31660510; Thu, 27 Jan 2011 15:23:57 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 0AF2116603EE;
	Thu, 27 Jan 2011 15:23:56 -0700 (MST)
Message-ID: <4D41F07B.6060008@mlbassoc.com>
Date: Thu, 27 Jan 2011 15:23:55 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4D40251F.5070906@mlbassoc.com>
	<4D40919E.6010802@linux.intel.com>	<4D409B30.9070000@mlbassoc.com>
	<4D40B5FA.5000005@linux.intel.com>	<4D40B8A1.2000406@mlbassoc.com>
	<4D40E6D9.5000709@linux.intel.com> <4D41694B.5070002@mlbassoc.com>
In-Reply-To: <4D41694B.5070002@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: No joy on "standard" PC
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
X-List-Received-Date: Thu, 27 Jan 2011 22:23:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/27/2011 05:47 AM, Gary Thomas wrote:
> On 01/26/2011 08:30 PM, Darren Hart wrote:
>> On 01/26/2011 04:13 PM, Gary Thomas wrote:
>>> On 01/26/2011 05:02 PM, Darren Hart wrote:
>>>> On 01/26/2011 02:07 PM, Gary Thomas wrote:
>>>>> On 01/26/2011 02:26 PM, Darren Hart wrote:
>>>>>> On 01/26/2011 05:43 AM, Gary Thomas wrote:
>>>>>>> I finally got Poky to build for a standard PC (actually atom-pc
>>>>>>> so I could build a live/bootable image). Sadly, that's all I
>>>>>>> have is an image as I can't get it to run anywhere :-(
>>>>>>>
>>>>>>> * On my laptop (the point of this exercise) which is an older
>>>>>>> Pentium-III machine, the kernel crashes almost immediately.
>>>>>>
>>>>>> Can you capture the output and provide some details on the hardware?
>>>>>
>>>>> Hard to do - I took pictures of the screen with my camera, the results
>>>>> may help, but won't win me a Pulitzer :-)
>>>>>
>>>>> On the AMD/2800+
>>>>> http://www.mlbassoc.com/poky/BootFailures/P1000630.JPG
>>>>> On the old Pentium-III laptop
>>>>> http://www.mlbassoc.com/poky/BootFailures/P1000631.JPG
>>>>
>>>> Failing to mount the root partition either due to missing drivers for
>>>> the block device or the filesystem. You said this was MACHINE=atom-pc
>>>> and poky-image-sato-live? And you're
>>>> booting using the .iso image burned to a CD?
>>>
>>> Correct.
>>>
>>>>
>>>>> http://www.mlbassoc.com/poky/BootFailures/P1000632.JPG
>>>>
>>>> Too late, missed the good bits. I suspect the two above are adequate.
>>>>
>>>>>>
>>>>>>>
>>>>>>> * On my brand new laptop (Core-i3), I couldn't get it to even
>>>>>>> try...
>>>>>>
>>>>>> What happened? Some bios are very particular about usb layout, see
>>>>>> README.hardware under atom-pc. Some (including my netbook) require
>>>>>> that it be in USB-ZIP format, so you can't just dd the image to
>>>>>> the stick in some cases (unfortunately).
>>>>>
>>>>> My boot medium is a CD-RW with the ISO image.
>>>>> Not sure why it didn't want to boot before, but when I just retried
>>>>> it, it hung in yet a different way.
>>>>> http://www.mlbassoc.com/poky/BootFailures/P1000629.JPG
>>>>
>>>> If I'm reading this one correctly, it's failing to boot from the USB
>>>> device and later detects another drive (My Passport) which has
>>>> something other than a standard ext[23]
>>>> filesystem on the first partition.
>>>
>>> Same boot CD as above - I'm not sure what it's up to at this point.
>>
>> Check the .config in the linux-yocto build directory, does it have
>> CONFIG_ISO9660_FS set?
>
> Nope :-(
> $ grep ISO9660
> tmp/work/atom-pc-poky-linux/linux-yocto-stable-2.6.34+git0+e1f85a470934a0cf6abde5d95533e74501822c6b_0+72ca49ab08b8eb475cec82a10049503602325791-r1/linux-atom-pc-standard-build/.config
> # CONFIG_ISO9660_FS is not set
>
> I'll try forcing this and rebuild to test.

I've tried this, but I didn't see any change.  Perhaps I didn't
do it correctly.   Since all I wanted was to update the kernel
with a different configuration, here are the steps I executed:
   ... adjust config using makeconfig
   % rm -f sstate-cache/sstate-linux-yocto-stable-atom-pc*
   % bitbake virtual/kernel -f -c compile
   % bitbake poky-image-minimal-live

Any other ideas?

>>
>> I'll have a look in the morning as well.
>>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

