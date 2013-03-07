Return-Path: <rjohnweber@gmail.com>
Received: from mail-ye0-f181.google.com (mail-ye0-f181.google.com
	[209.85.213.181]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 0BDABE004FE;
	Thu,  7 Mar 2013 08:21:15 -0800 (PST)
Received: by mail-ye0-f181.google.com with SMTP id l2so85777yen.26
	for <multiple recipients>; Thu, 07 Mar 2013 08:21:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=fiJY/Ba+YzYmNQDLk+rRmgp5+VlosJjMoxu/iWJ379A=;
	b=Rxji3kuLc6GVV03rOxqB/r6ExR9P2gO5ZaEOXieDYVdHf53nx2wygaU3qPxudF0OVL
	pO/l+4nTMLzKgA9orWDzWfjQD35AYqkHaqwQojAecUE1LBy2oVOR3KmPS/w96vu4Tic3
	0dHIBHKL0+OkuADzsY2cftDCgN5IQdCGqWRBfBhRvb1BfiIRjAGnyFfduupwWSaDwiBU
	HQ6QG6/5y1DvTSm7SrGYA7vDlnmwJTCDVZFa5FGm9nYl2iAVh561SG4fAgu07y2x1iCC
	Q5DRuOR4k403hP6mp0hbkebGaXcH6hqsiAxKgy0krOkdMWU+yi3NTsDK2hKm4C2pcq79
	e5Mw==
X-Received: by 10.236.167.101 with SMTP id h65mr23818614yhl.146.1362673274856; 
	Thu, 07 Mar 2013 08:21:14 -0800 (PST)
Received: from goober.local ([75.76.228.60])
	by mx.google.com with ESMTPS id d80sm2699858yhg.4.2013.03.07.08.21.13
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 07 Mar 2013 08:21:14 -0800 (PST)
Message-ID: <5138BE79.7060106@gmail.com>
Date: Thu, 07 Mar 2013 10:21:13 -0600
From: John Weber <rjohnweber@gmail.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130216 Thunderbird/17.0.3
MIME-Version: 1.0
To: =?UTF-8?B?RXJpYyBCw6luYXJk?= <eric@eukrea.com>
References: <51375B7C.9010106@gmail.com> <20130306224808.6efe1351@e6520eb>
	<5137BB73.2050607@gmail.com> <20130306230451.228caae1@e6520eb>
In-Reply-To: <20130306230451.228caae1@e6520eb>
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
X-List-Received-Date: Thu, 07 Mar 2013 16:21:16 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Not at all - CONFIG_FW_LOADER=y is definitely in the kernel config.

I think the issue is tied to some major changes in udev related to firmware 
loading.  Udev 176 brought all of the firmware loading functionality into a 
built-in function, rather than launch an external firmware helper script. This 
could be the reason that Canonical still hasn't moved to udev 176 or later versions.

While I haven't been able to do thorough testing, the Broadcom (brcm80211) 
driver does attempt to request firmware during the probe.  I believe that udev 
182 does not permit this until after the module is loaded.  This has caused some 
consternation amongst the maintainers [1], resulting in Linus adding direct 
firmware loading from the filesystem into kernel 3.7 and later [2].  This would 
bypass udev entirely for firmware loading.  I personally like this because in my 
view, this whole process of going to userspace to load firmware is too complicated.

Since, I'm on kernel 3.0.35 (stuck in the dark ages with Freescale), it might 
mean that I might have a few options, none of which are great.

(A) Go back to udev 164 in Danny which supports using a rule to launch an 
external helper script to load firmware
(B) Backport the firmware loader from file functionality from an upstream kernel 
into 3.0.35
(C) Move to a mainline kernel, which isn't really an option because all of 
Freescale's multimedia functionality gets lost

Here is the dump of /var/log/messages related to udevd after I load the module 
using modprobe:

Mar  6 15:21:01 wandboard-dual daemon.info udevd[234]: validate module index
Mar  6 15:21:01 wandboard-dual daemon.info udevd[234]: seq 2119 queued, 'remove'
  'firmware'
Mar  6 15:21:01 wandboard-dual daemon.info udevd[234]: seq 2119 forked new worke
r [501]
Mar  6 15:21:01 wandboard-dual daemon.info udevd[234]: seq 2120 queued, 'add' 'd
rivers'
Mar  6 15:21:01 wandboard-dual daemon.info udevd[501]: seq 2119 running
Mar  6 15:21:01 wandboard-dual daemon.info udevd[234]: seq 2120 forked new worke
r [502]
Mar  6 15:21:01 wandboard-dual daemon.info udevd[501]: no db file to read /var/r
un/udev/data/+firmware:mmc1:0001:2: No such file or directory
Mar  6 15:21:01 wandboard-dual daemon.info udevd[501]: passed -1 bytes to netlin
k monitor 0x49c50
Mar  6 15:21:01 wandboard-dual daemon.info udevd[501]: seq 2119 processed with 0
Mar  6 15:21:01 wandboard-dual daemon.info udevd[234]: seq 2119 done with 0
Mar  6 15:21:01 wandboard-dual daemon.info udevd[502]: seq 2120 running
Mar  6 15:21:01 wandboard-dual daemon.info udevd[502]: device 0x36b70 has devpat
h '/bus/sdio/drivers/brcmfmac'
Mar  6 15:21:01 wandboard-dual daemon.info udevd[502]: no db file to read /var/r
un/udev/data/+drivers:brcmfmac: No such file or directory
Mar  6 15:21:01 wandboard-dual daemon.info udevd[502]: passed -1 bytes to netlin
k monitor 0x36dc8
Mar  6 15:21:01 wandboard-dual daemon.info udevd[234]: seq 2120 done with 0
Mar  6 15:21:01 wandboard-dual daemon.info udevd[502]: seq 2120 processed with 0


[1] http://lwn.net/Articles/518942/
[2] 
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=abb139e75c2cdbb955e840d6331cb5863e409d0e


On 3/6/13 4:04 PM, Eric Bénard wrote:
> Le Wed, 06 Mar 2013 15:56:03 -0600,
> John Weber <rjohnweber@gmail.com> a écrit :
>> Thanks for the help.  I've since broken the driver out of the kernel and
>> modprobed it with the same results.  This allows me to start udevadm to see some
>> debug output from udev, but it still fails.  I've manually created a firmware
>> helper script as well, and that's not even being executed at the moment.
>>
>> It just seems like this kind of thing is already being done as the i.MX6 vpu
>> firmware is needed (not being loaded into the filesystem now, but that is a
>> different issue), as well as other machines use atheros wifi modules.  This
>> seems that I'm missing something.
>>
> stupid question, but do you have
> CONFIG_FW_LOADER=y
> in your kernel config ?
>
> Maybe you can post the udev log also as it may contain some hints.
>
> Eric
>

