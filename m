Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6E5E34C81118
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 07:44:46 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 30A1716603ED; Tue, 18 Jan 2011 06:44:46 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1065A1660432;
	Tue, 18 Jan 2011 06:44:45 -0700 (MST)
Message-ID: <4D35994D.6050703@mlbassoc.com>
Date: Tue, 18 Jan 2011 06:44:45 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Joshua Lock <josh@openedhand.com>
References: <4D32E4D2.5030002@mlbassoc.com>	 <1295256226.2321.1.camel@scimitar>
	<4D343BB7.4050404@mlbassoc.com>	 <1295269851.6501.2.camel@scimitar>
	<4D3443FC.5060201@mlbassoc.com>	
	<4D34731A.2090304@mlbassoc.com> <4D357B4B.30607@mlbassoc.com>
	<1295356953.2642.16.camel@scimitar>
In-Reply-To: <1295356953.2642.16.camel@scimitar>
Cc: poky@yoctoproject.org
Subject: Re: Kernel firmware?
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
X-List-Received-Date: Tue, 18 Jan 2011 13:44:46 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/18/2011 06:22 AM, Joshua Lock wrote:
> On Tue, 2011-01-18 at 04:36 -0700, Gary Thomas wrote:
>> On 01/17/2011 09:49 AM, Gary Thomas wrote:
>>> On 01/17/2011 06:28 AM, Gary Thomas wrote:
>>>> On 01/17/2011 06:10 AM, Joshua Lock wrote:
>>>>> On Mon, 2011-01-17 at 05:53 -0700, Gary Thomas wrote:
>>>>>> On 01/17/2011 02:23 AM, Joshua Lock wrote:
>>>>>>> Hi Gary,
>>>>>>>
>>>>>>> On Sun, 2011-01-16 at 05:30 -0700, Gary Thomas wrote:
>>>>>>>> I'm trying to get various USB WiFi dongles working on my
>>>>>>>> BeagleBoard (or look-alike). Many of these require runtime
>>>>>>>> downloads of firmware. However, these files don't seem to
>>>>>>>> be installed in Poky:
>>>>>>>> phy1 ->  rt2x00lib_request_firmware: Info - Loading firmware file 'rt73.bin'.
>>>>>>>> rt73usb 2-1.2.4:1.0: firmware: requesting rt73.bin
>>>>>>>> phy1 ->  rt2x00lib_request_firmware: Error - Failed to request Firmware.
>>>>>>>>
>>>>>>>> Is there some way to enable this?
>>>>>>>
>>>>>>> There's a linux-firmware recipe
>>>>>>> (meta/recipes-kernel/linux-firmware/linux-firmware_git.bb) which you'll
>>>>>>> have to modify to package the required firmware (at the moment we only
>>>>>>> package firmware for the Libertas sd8686) and ensure that the packages
>>>>>>> are included in your images.
>>>>>>
>>>>>> I don't see anywhere that linux-firmware-sd8686 is included in
>>>>>> an image. Am I missing something?
>>>>>
>>>>> You need to have something pull in the required linux-firmware, for
>>>>> example the igep0020 and igep0030 machines add linux-firmware-sd8686 to
>>>>> the MACHINE_EXTRA_RRECOMMENDS.
>>>>
>>>> Thanks. Doing it this way wasn't totally clear from "ensure that the
>>>> packages are included in your images."
>>>>
>>>> It's working now.
>>>
>>> My exuberance was a bit premature. Indeed, I rebuilt my install
>>> image, but the firmware package wasn't installed. On my target,
>>> I see:
>>> root@cobra3530p60:~# opkg list-installed linux*
>>> root@cobra3530p60:~# opkg list linux*
>>> linux-firmware-rt73 - 0.0+git0+40c0f950be7040614dc45df54e25e54d00e3b73b-r0 - Firmware files for use with Linux kernel
>>> Firmware files for use with Linux kernel
>>> linux-firmware-sd8686 - 0.0+git0+40c0f950be7040614dc45df54e25e54d00e3b73b-r0 - Firmware files for use with Linux kernel
>>> Firmware files for use with Linux kernel
>>> linux-libc-headers-dbg - 2.6.36-r0 - Debugging files for linux-libc-headers
>>> Debugging files for linux-libc-headers
>>> linux-libc-headers-dev - 2.6.36-r0 - Development files for linux-libc-headers
>>> Development files for linux-libc-headers
>>>
>>> To be clear, all I did was add "linux-firmware-rt73" to MACHINE_EXTRA_RRECOMMENDS
>>> in my<MACHINE>.conf file, then rebuild the image using:
>>> % bitbake poky-image-sato
>>> This was from a previously built tree, etc. Did I need to do anything
>>> else to get the package actually installed at build time?
>>>
>>> Note: If I 'opkg install linux-firmware-rt73' on my target, I get
>>> the correct files. I'd just like to understand how to make it happen
>>> in the "image"
>>
>> I don't see any kernel modules get installed in one of Poky's
>> "supported" platforms either.  I just tried
>>     MACHINE=igep0030 bitbake poky-image-minimal
>> in a clean tree.  No kernel modules:
>>
>> [gthomas@titan igep_test]$ ls tmp/work/igep0030-poky-linux-gnueabi/poky-image-minimal-1.0-r0/rootfs/lib
>> ld-2.12.1.so               libattr.so.1.1.0    libgcc_s.so.1            libnss_dns-2.12.1.so    librt-2.12.1.so
>> ld-linux.so.3              libc-2.12.1.so      libgudev-1.0.so.0        libnss_dns.so.2         librt.so.1
>> libBrokenLocale-2.12.1.so  libc.so.6           libgudev-1.0.so.0.0.1    libnss_files-2.12.1.so  libudev.so.0
>> libBrokenLocale.so.1       libcidn-2.12.1.so   libm-2.12.1.so           libnss_files.so.2       libudev.so.0.9.3
>> libacl.so.1                libcidn.so.1        libm.so.6                libproc-3.2.8.so        libutil-2.12.1.so
>> libacl.so.1.1.0            libcrypt-2.12.1.so  libnsl-2.12.1.so         libpthread-2.12.1.so    libutil.so.1
>> libanl-2.12.1.so           libcrypt.so.1       libnsl.so.1              libpthread.so.0         modules
>> libanl.so.1                libdl-2.12.1.so     libnss_compat-2.12.1.so  libresolv-2.12.1.so     udev
>> libattr.so.1               libdl.so.2          libnss_compat.so.2       libresolv.so.2
>>
>> Am I missing something?  Should I file a bug?
>>
>
> Yes, please file a bug.

Done, bug #660

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

