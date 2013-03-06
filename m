Return-Path: <rjohnweber@gmail.com>
Received: from mail-vc0-f170.google.com (mail-vc0-f170.google.com
	[209.85.220.170]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 9CEDBE014F5;
	Wed,  6 Mar 2013 13:56:05 -0800 (PST)
Received: by mail-vc0-f170.google.com with SMTP id p16so5183493vcq.15
	for <multiple recipients>; Wed, 06 Mar 2013 13:56:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=zJhOz81Cr6Ob6r/XLk4dWoK1iGdeFoIo0+nqRZKFNZw=;
	b=II0J6LilMdET3EnGv4plKWcXxK3DAH+5R2bLAgNueZh/fmndZqkxn0xQFrQnYIA1BU
	kykZwu86rOYU4Wlglmvn1OzIUIPA/lPNzkH9wycj6x7wD9a2tL3GF1n6tPjO/OuzohcR
	3Rz5Maq1uQPRDL8S1dGoRwRiup5hzwYDlCFzDxx5gsgvviNo5vCZrWRkjDBnCAaGSjnK
	fzTGh0TtGqr/yDdPneDYAY4R0jGqPuC2NiFWhG5WqxyIFrXZyUClyitzXJk+DksJyYrp
	Jeq/yB5oU62U+zwRsMnJYpzxnBAKqE/teNm2fBxfvbx/FXXO6XH64ryIFZSoNASue9XG
	EASQ==
X-Received: by 10.58.205.179 with SMTP id lh19mr12214987vec.7.1362606964689;
	Wed, 06 Mar 2013 13:56:04 -0800 (PST)
Received: from goober.local ([75.76.228.60])
	by mx.google.com with ESMTPS id tp10sm6396668vec.1.2013.03.06.13.56.03
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 06 Mar 2013 13:56:04 -0800 (PST)
Message-ID: <5137BB73.2050607@gmail.com>
Date: Wed, 06 Mar 2013 15:56:03 -0600
From: John Weber <rjohnweber@gmail.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130216 Thunderbird/17.0.3
MIME-Version: 1.0
To: =?UTF-8?B?RXJpYyBCw6luYXJk?= <eric@eukrea.com>
References: <51375B7C.9010106@gmail.com> <20130306224808.6efe1351@e6520eb>
In-Reply-To: <20130306224808.6efe1351@e6520eb>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	poky@yoctoproject.org
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
X-List-Received-Date: Wed, 06 Mar 2013 21:56:05 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Eric,

On 3/6/13 3:48 PM, Eric Bénard wrote:
> Hi John,
>
> Le Wed, 06 Mar 2013 09:06:36 -0600,
> John Weber <rjohnweber@gmail.com> a écrit :
>
>> I'm attempting to configure Linux to load firmware for a Broadcom SDIO Wifi chip
>> (BCM4329) onto an i.MX6-based board.
>>
>> Here is my main question - How is firmware supposed to be loaded within the
>> paradigm of a Yocto/Poky-built system?  Any insight and guidance is appreciated.
>>
>> What I've done so far, and what I've discovered:
>>
>> I've incorporated the driver into the kernel (backported from an upstream kernel
>> rev), and removed the staging drivers present in 3.0.35.  It is built-in at the
>> moment (not a module) and this is the error that I'm getting when it times-out
>> loading firmware:
>>
>> brcmfmac: brcmf_sdbrcm_download_code_file: Fail to request firmware -2
>> brcmfmac: _brcmf_sdbrcm_download_firmware: dongle image file download failed
>> brcmfmac: brcmf_bus_start: brcmf_sdbrcm_bus_init failed -1
>>
>> The error code indicates that it cannot load firmware because it can't find the
>> firmware file.
>>
>> I've taken care to put the firmware in /lib/firmware/brcm (2 files).  The driver
>> hardcodes a relative path filename to the firmware files and I've made sure that
>> they are the same.
>>
>> I've researched the firmware request process for the kernel.  My understanding
>> is that the process looks like this:
>> 1) driver requests firmware file
>> 2) kernel opens up a special set of files in sysfs (/sys/class/firmware/xxx
>> where xxx is the device name)
>> 3) kernel signals udev to load firmware, giving it the filename and the device name
>> 4) udev, through its rules, locates the firmware file for the device and writes
>> it to the special file in sysfs
>>
> if the driver is in the kernel it may not have the ability to require
> the firmware from the file system as the file system may not yet be
> mounted which can explain why you get the timeout.
> You can check if you are in that case if you get the timeout log
> before getting the log saying the filesystem is mounted.
>
> To workaround that, you can integrate the firmware in the kernel image
> by setting CONFIG_EXTRA_FIRMWARE="path/to/your/firmware" in the kernel
> config, so that your driver can get its firmware (or you can compile
> your driver as a module and load it after the file system is mounted).
>
> Eric
>

Thanks for the help.  I've since broken the driver out of the kernel and 
modprobed it with the same results.  This allows me to start udevadm to see some 
debug output from udev, but it still fails.  I've manually created a firmware 
helper script as well, and that's not even being executed at the moment.

It just seems like this kind of thing is already being done as the i.MX6 vpu 
firmware is needed (not being loaded into the filesystem now, but that is a 
different issue), as well as other machines use atheros wifi modules.  This 
seems that I'm missing something.

John

