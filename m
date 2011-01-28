Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f172.google.com (mail-iw0-f172.google.com
	[209.85.214.172])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7A0064C8123F
	for <poky@lists.pokylinux.org>; Fri, 28 Jan 2011 08:43:38 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn40 with SMTP id 40so3347222iwn.3
	for <poky@lists.pokylinux.org>; Fri, 28 Jan 2011 06:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=m02RjA0r9f9X3wzQ06EWB2sRYjmVDAxBut45jLrxUuk=;
	b=lDlD6yprrLUj2jawYeeZuEwX6RZkfg6iTrrQAuRIYYQ/V2uOj6TLRyBshseSzMa4X7
	7LTegNp7cSBB0m9GrJbns29ETUCSoPtwpbTZoD71w+KqH02ToP9P+PEGf05N0hSuLlkl
	LG6KPFqKehNfQ+ySe182umYxPIV/vPoM1nwYg=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=ufxxPoGA6IJeljUgh/8DDd5JmHqFvDonx61CXntdqp8nRblhGhvQEcHDDFj34tyK3b
	7/lcqUv0rg7TiOGwJrvXxyoo3SUwUewNtivPG046VG45i7idfhf7UaLwgNxgJ+5KPrsz
	JEk4xsjxLipgwhoHEzCqjs9RbLckK7zpmFvFE=
MIME-Version: 1.0
Received: by 10.231.34.9 with SMTP id j9mr2689732ibd.137.1296225818073; Fri,
	28 Jan 2011 06:43:38 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Fri, 28 Jan 2011 06:43:37 -0800 (PST)
In-Reply-To: <4D42D32C.20605@mlbassoc.com>
References: <4D40251F.5070906@mlbassoc.com> <4D40919E.6010802@linux.intel.com>
	<4D409B30.9070000@mlbassoc.com> <4D40B5FA.5000005@linux.intel.com>
	<4D40B8A1.2000406@mlbassoc.com> <4D40E6D9.5000709@linux.intel.com>
	<4D41694B.5070002@mlbassoc.com> <4D41F07B.6060008@mlbassoc.com>
	<4D42D283.20600@mlbassoc.com> <4D42D32C.20605@mlbassoc.com>
Date: Fri, 28 Jan 2011 09:43:37 -0500
Message-ID: <AANLkTimhHmH0LKGnsEKu47gD6tJs4enLtSYuzAt2+Wgv@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
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
X-List-Received-Date: Fri, 28 Jan 2011 14:43:38 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 28, 2011 at 9:31 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 01/28/2011 07:28 AM, Gary Thomas wrote:
>>
>> On 01/27/2011 03:23 PM, Gary Thomas wrote:
>>>
>>> On 01/27/2011 05:47 AM, Gary Thomas wrote:
>>>>
>>>> On 01/26/2011 08:30 PM, Darren Hart wrote:
>>>>>
>>>>> On 01/26/2011 04:13 PM, Gary Thomas wrote:
>>>>>>
>>>>>> On 01/26/2011 05:02 PM, Darren Hart wrote:
>>>>>>>
>>>>>>> On 01/26/2011 02:07 PM, Gary Thomas wrote:
>>>>>>>>
>>>>>>>> On 01/26/2011 02:26 PM, Darren Hart wrote:
>>>>>>>>>
>>>>>>>>> On 01/26/2011 05:43 AM, Gary Thomas wrote:
>>>>>>>>>>
>>>>>>>>>> I finally got Poky to build for a standard PC (actually atom-pc
>>>>>>>>>> so I could build a live/bootable image). Sadly, that's all I
>>>>>>>>>> have is an image as I can't get it to run anywhere :-(
>>>>>>>>>>
>>>>>>>>>> * On my laptop (the point of this exercise) which is an older
>>>>>>>>>> Pentium-III machine, the kernel crashes almost immediately.
>>>>>>>>>
>>>>>>>>> Can you capture the output and provide some details on the
>>>>>>>>> hardware?
>>>>>>>>
>>>>>>>> Hard to do - I took pictures of the screen with my camera, the
>>>>>>>> results
>>>>>>>> may help, but won't win me a Pulitzer :-)
>>>>>>>>
>>>>>>>> On the AMD/2800+
>>>>>>>> http://www.mlbassoc.com/poky/BootFailures/P1000630.JPG
>>>>>>>> On the old Pentium-III laptop
>>>>>>>> http://www.mlbassoc.com/poky/BootFailures/P1000631.JPG
>>>>>>>
>>>>>>> Failing to mount the root partition either due to missing drivers f=
or
>>>>>>> the block device or the filesystem. You said this was MACHINE=3Dato=
m-pc
>>>>>>> and poky-image-sato-live? And you're
>>>>>>> booting using the .iso image burned to a CD?
>>>>>>
>>>>>> Correct.
>>>>>>
>>>>>>>
>>>>>>>> http://www.mlbassoc.com/poky/BootFailures/P1000632.JPG
>>>>>>>
>>>>>>> Too late, missed the good bits. I suspect the two above are adequat=
e.
>>>>>>>
>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> * On my brand new laptop (Core-i3), I couldn't get it to even
>>>>>>>>>> try...
>>>>>>>>>
>>>>>>>>> What happened? Some bios are very particular about usb layout, se=
e
>>>>>>>>> README.hardware under atom-pc. Some (including my netbook) requir=
e
>>>>>>>>> that it be in USB-ZIP format, so you can't just dd the image to
>>>>>>>>> the stick in some cases (unfortunately).
>>>>>>>>
>>>>>>>> My boot medium is a CD-RW with the ISO image.
>>>>>>>> Not sure why it didn't want to boot before, but when I just retrie=
d
>>>>>>>> it, it hung in yet a different way.
>>>>>>>> http://www.mlbassoc.com/poky/BootFailures/P1000629.JPG
>>>>>>>
>>>>>>> If I'm reading this one correctly, it's failing to boot from the US=
B
>>>>>>> device and later detects another drive (My Passport) which has
>>>>>>> something other than a standard ext[23]
>>>>>>> filesystem on the first partition.
>>>>>>
>>>>>> Same boot CD as above - I'm not sure what it's up to at this point.
>>>>>
>>>>> Check the .config in the linux-yocto build directory, does it have
>>>>> CONFIG_ISO9660_FS set?
>>>>
>>>> Nope :-(
>>>> $ grep ISO9660
>>>>
>>>> tmp/work/atom-pc-poky-linux/linux-yocto-stable-2.6.34+git0+e1f85a47093=
4a0cf6abde5d95533e74501822c6b_0+72ca49ab08b8eb475cec82a10049503602325791-r1=
/linux-atom-pc-standard-build/.config
>>>>
>>>>
>>>> # CONFIG_ISO9660_FS is not set
>>>>
>>>> I'll try forcing this and rebuild to test.
>>>
>>> I've tried this, but I didn't see any change. Perhaps I didn't
>>> do it correctly. Since all I wanted was to update the kernel
>>> with a different configuration, here are the steps I executed:
>>> ... adjust config using makeconfig
>>> % rm -f sstate-cache/sstate-linux-yocto-stable-atom-pc*
>>> % bitbake virtual/kernel -f -c compile
>>> % bitbake poky-image-minimal-live
>>>
>>> Any other ideas?
>>
>> Still no joy booting from CD. I did boot the HDD image on
>> multiple systems and it runs just fine. The exact same ISO
>> on those hardware still fails.
>>
>
> BTW, the kernel config file I used (after running menuconfig)
> is attached.
>
> How/what can I diff to send a patch, once I get a working
> kernel configuration?

The location differs between the 2.6.34 and 2.6.37 kernel (since things
are being generalized).

You'll find the base configuration for the atom-pc in 2.6.34 in your
'linux-yocto-stable-2.6.34+git0+e1f85a470934a0cf6abde5d95533e74501822c6b_0+=
72ca49ab08b8eb475cec82a10049503602325791-r1/linux'
(that's a mouthful) directory.  On the wrs_meta branch.

Then you'll find: wrs/cfg/kernel-cache/bsp/atom-pc/boot-live.cfg

If you send a diff against that, we can merge and make the change
permanent (assuming it is suitable for general use).

Cheers,

Bruce

>
> --
> ------------------------------------------------------------
> Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the
> MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world
> ------------------------------------------------------------
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

