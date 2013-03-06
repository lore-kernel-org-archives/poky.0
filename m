Return-Path: <rjohnweber@gmail.com>
Received: from mail-ye0-f171.google.com (mail-ye0-f171.google.com
	[209.85.213.171]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 2FF1DE014E3;
	Wed,  6 Mar 2013 07:06:40 -0800 (PST)
Received: by mail-ye0-f171.google.com with SMTP id m13so1194019yen.2
	for <multiple recipients>; Wed, 06 Mar 2013 07:06:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=pG73XnWyuWWuGAKpF/h1ola67YKq3E1pOT4DX768fes=;
	b=ywhJssX/Wur6WzDBIVgdX/UNXf0niaK1Sf5ZVbn4q7VAhucv8QpUyBwg9rnzZaDfIi
	azjmfRe0oO97qy29XqnQ6QhBAnP06k+pZV6AQuQlpiYXn+FxN0ZMFSWNp5EMbEhR6cwp
	NdDy8rrIYtDPnxCobmxClttAwrn7/lDh2+y5juvXpyCTj9W6TAaBmwKxNgTGbr9B+0lJ
	06Yacr5SkBsIN1a8/wkIcA4qJ2Ta2tEo8FUCUlTOg9/F1cRd5q85Rvg8i455DMeS9u7+
	kDQQO9HHh1IvbOgLi0Ghv99dQ73xmNVoLdTWG+aiFPk0hp9A3PEJnNBgxRrskYjgl9xn
	K5Hw==
X-Received: by 10.236.134.163 with SMTP id s23mr20678084yhi.54.1362582399044; 
	Wed, 06 Mar 2013 07:06:39 -0800 (PST)
Received: from goober.local ([75.76.228.60])
	by mx.google.com with ESMTPS id k2sm12860527yhn.26.2013.03.06.07.06.37
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 06 Mar 2013 07:06:37 -0800 (PST)
Message-ID: <51375B7C.9010106@gmail.com>
Date: Wed, 06 Mar 2013 09:06:36 -0600
From: John Weber <rjohnweber@gmail.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130216 Thunderbird/17.0.3
MIME-Version: 1.0
To: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>, 
	poky@yoctoproject.org
Subject: Firmware loading
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
X-List-Received-Date: Wed, 06 Mar 2013 15:06:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm attempting to configure Linux to load firmware for a Broadcom SDIO Wifi chip 
(BCM4329) onto an i.MX6-based board.

Here is my main question - How is firmware supposed to be loaded within the 
paradigm of a Yocto/Poky-built system?  Any insight and guidance is appreciated.

What I've done so far, and what I've discovered:

I've incorporated the driver into the kernel (backported from an upstream kernel 
rev), and removed the staging drivers present in 3.0.35.  It is built-in at the 
moment (not a module) and this is the error that I'm getting when it times-out 
loading firmware:

brcmfmac: brcmf_sdbrcm_download_code_file: Fail to request firmware -2
brcmfmac: _brcmf_sdbrcm_download_firmware: dongle image file download failed
brcmfmac: brcmf_bus_start: brcmf_sdbrcm_bus_init failed -1

The error code indicates that it cannot load firmware because it can't find the 
firmware file.

I've taken care to put the firmware in /lib/firmware/brcm (2 files).  The driver 
hardcodes a relative path filename to the firmware files and I've made sure that 
they are the same.

I've researched the firmware request process for the kernel.  My understanding 
is that the process looks like this:
1) driver requests firmware file
2) kernel opens up a special set of files in sysfs (/sys/class/firmware/xxx 
where xxx is the device name)
3) kernel signals udev to load firmware, giving it the filename and the device name
4) udev, through its rules, locates the firmware file for the device and writes 
it to the special file in sysfs

So, here is where I'm starting to get confused.  The default udev rules that are 
created in /lib/udev/rules.d/50-udev-default.rules show the following rule for 
firmware:

SUBSYSTEM=="firmware", ACTION=="add", IMPORT{builtin}="firmware"

I'm guessing that this is for cases where the firmware file is built-in to the 
kernel image.  I can see the necessity for doing this in some cases, but that is 
not what I'm doing at the moment, I'm trying to load the firmware from a file in 
the filesystem.  That requires udev to run a program or script that will read 
the file and write it to the appropriate file in sysfs.

The files in the poky udev recipe offers a clue, but for some reason that I 
don't understand, this file does not make it into the filesystem:

poky/meta/recipes-core/udev/udev/udev.rules:

# Firmware Helper
ACTION=="add", SUBSYSTEM=="firmware", RUN+="/lib/udev/firmware.sh"

This rule expects that there is a firmware helper script "firmware.sh" somewhere 
in the filesystem.  Other than this file, I can't file any reference to a 
"firmware.sh" file anywhere in the metadata, which could explain why this line 
doesn't make it into the installed filesystem.  I could only find references to 
files named this on the net.









