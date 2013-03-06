Return-Path: <rjohnweber@gmail.com>
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id DDF56E014DD;
	Wed,  6 Mar 2013 13:50:55 -0800 (PST)
Received: by mail-vc0-f172.google.com with SMTP id l6so5127993vcl.31
	for <multiple recipients>; Wed, 06 Mar 2013 13:50:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=evvafLISKJydowwAfHz1MxXLH0/239T9PjI6T04d66o=;
	b=NoaberrjvwB353ECyHmbbD/X/LsCCa4taCfxZ3Rn/Xcv4qBNPXFeFiXuQ+LxK4vSak
	75MyqQFA5NoJW6b4qmjZzeB5DT66CDBMs9+2BQExwM5mCbGleyu9wCCaPONNbHcQERO2
	uMjOxOzIsT41Wmo7FervA04PxW055Lli3vNFg4HwQAIncL7GJM0vqwGMZi23eE/qIeXd
	4qv0O04jw2j29jCgBDGtHV121f0vQ7YEGzq8MI3FqiI9uWhffQzR01SUjoZ/f/yu5Yb1
	L5PMymYCK1TXdkvbDFRlGQdG+c2fWMI+LgmGl56u3hOKOclfKwGI+GaN3P1HKyRbd66+
	+1bA==
X-Received: by 10.220.153.69 with SMTP id j5mr11802104vcw.35.1362606654921;
	Wed, 06 Mar 2013 13:50:54 -0800 (PST)
Received: from goober.local ([75.76.228.60])
	by mx.google.com with ESMTPS id a19sm6708570vdh.9.2013.03.06.13.50.53
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 06 Mar 2013 13:50:54 -0800 (PST)
Message-ID: <5137BA3D.1050008@gmail.com>
Date: Wed, 06 Mar 2013 15:50:53 -0600
From: John Weber <rjohnweber@gmail.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130216 Thunderbird/17.0.3
MIME-Version: 1.0
References: <51375B7C.9010106@gmail.com>
	<CAP9ODKppqgZkcgcmyTQy4WNyXZrwcvdCDBrc06S=k_hbjSBidA@mail.gmail.com>
In-Reply-To: <CAP9ODKppqgZkcgcmyTQy4WNyXZrwcvdCDBrc06S=k_hbjSBidA@mail.gmail.com>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [meta-freescale] Firmware loading
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 06 Mar 2013 21:50:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 3/6/13 3:18 PM, Otavio Salvador wrote:
> On Wed, Mar 6, 2013 at 12:06 PM, John Weber <rjohnweber@gmail.com> wrote:
>> I'm attempting to configure Linux to load firmware for a Broadcom SDIO Wifi
>> chip (BCM4329) onto an i.MX6-based board.
>>
>> Here is my main question - How is firmware supposed to be loaded within the
>> paradigm of a Yocto/Poky-built system?  Any insight and guidance is
>> appreciated.
>>
>> What I've done so far, and what I've discovered:
>>
>> I've incorporated the driver into the kernel (backported from an upstream
>> kernel rev), and removed the staging drivers present in 3.0.35.  It is
>> built-in at the moment (not a module) and this is the error that I'm getting
>> when it times-out loading firmware:
>>
>> brcmfmac: brcmf_sdbrcm_download_code_file: Fail to request firmware -2
>> brcmfmac: _brcmf_sdbrcm_download_firmware: dongle image file download failed
>> brcmfmac: brcmf_bus_start: brcmf_sdbrcm_bus_init failed -1
>>
>> The error code indicates that it cannot load firmware because it can't find
>> the firmware file.
>>
>> I've taken care to put the firmware in /lib/firmware/brcm (2 files).  The
>> driver hardcodes a relative path filename to the firmware files and I've
>> made sure that they are the same.
>>
>> I've researched the firmware request process for the kernel.  My
>> understanding is that the process looks like this:
>> 1) driver requests firmware file
>> 2) kernel opens up a special set of files in sysfs (/sys/class/firmware/xxx
>> where xxx is the device name)
>> 3) kernel signals udev to load firmware, giving it the filename and the
>> device name
>> 4) udev, through its rules, locates the firmware file for the device and
>> writes it to the special file in sysfs
>>
>> So, here is where I'm starting to get confused.  The default udev rules that
>> are created in /lib/udev/rules.d/50-udev-default.rules show the following
>> rule for firmware:
>>
>> SUBSYSTEM=="firmware", ACTION=="add", IMPORT{builtin}="firmware"
>>
>> I'm guessing that this is for cases where the firmware file is built-in to
>> the kernel image.  I can see the necessity for doing this in some cases, but
>> that is not what I'm doing at the moment, I'm trying to load the firmware
>> from a file in the filesystem.  That requires udev to run a program or
>> script that will read the file and write it to the appropriate file in
>> sysfs.
>>
>> The files in the poky udev recipe offers a clue, but for some reason that I
>> don't understand, this file does not make it into the filesystem:
>>
>> poky/meta/recipes-core/udev/udev/udev.rules:
>>
>> # Firmware Helper
>> ACTION=="add", SUBSYSTEM=="firmware", RUN+="/lib/udev/firmware.sh"
>>
>> This rule expects that there is a firmware helper script "firmware.sh"
>> somewhere in the filesystem.  Other than this file, I can't file any
>> reference to a "firmware.sh" file anywhere in the metadata, which could
>> explain why this line doesn't make it into the installed filesystem.  I
>> could only find references to files named this on the net.
>
> This is danny or master? For danny, please check the version of udev
> being included as the udev maintained in meta-oe has some bugs but it
> is used by default.
>

I'm using master at the moment.  The version of udev is 182 in poky.



