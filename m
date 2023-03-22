Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web10.49394.1679504681335464017
 for <poky@lists.yoctoproject.org>;
 Wed, 22 Mar 2023 10:04:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=jb2u8Xmu;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 8CB3620004
	for <poky@lists.yoctoproject.org>; Wed, 22 Mar 2023 17:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1679504679;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+RvHwUGUWcRFthDmroc3Q/dCfAe9lYBGPvqvDAuTEZw=;
	b=jb2u8XmuTNPSC59Qf9shSSZhA4ciFLWk7Ug1AXEcK8q4PypiBDMtFNYN7HiaaO3HKXwELt
	PyFhP5VM4XCmbHXZeCjYkOtBg4jVQ0Him76/rmcBklVXHVhcGKc/X5y5b8VLL6vwLMg7HY
	1egiyQcvIlM5OT8O2URyJQxUYpDjNCA7iQ2nJ8L6l43DEFrLfxBzHqvkWLs3pbUnSbd652
	8WZnabWyC46dMI5X0Y1gx6z0qqs+W1XmhgOqFwok9pR4puETHp9iejhoTdzc1Hx8ykXV2d
	pbrh07kX1AL5m94I8qkY95Tucu0Q6HLvCxKlOArOi9Yl4wZLp60JH8f6fq5iBg==
Message-ID: <0906e105-210d-fb75-070c-d6f91efe377f@bootlin.com>
Date: Wed, 22 Mar 2023 18:04:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [poky] Is the "argp" distro feature still used?
To: poky@lists.yoctoproject.org
References: <c0eea124-5d1c-ce30-1142-8c3ef0dd8fcc@bootlin.com>
 <a3c3423e4a21b40e3ac05f04daace7dd1747554e.camel@linuxfoundation.org>
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <a3c3423e4a21b40e3ac05f04daace7dd1747554e.camel@linuxfoundation.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 22.03.23 at 17:41, Richard Purdie wrote:
> On Wed, 2023-03-22 at 17:34 +0100, Michael Opdenacker via
> lists.yoctoproject.org wrote:
>> Greetings,
>>
>> Following a question on
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=14515#c5, I'm
>> wondering whether "argp" is still in use.
>>
>> Yes, it's still defined in Poky:
>> meta/conf/distro/include/default-distrovars.inc:DISTRO_FEATURES_DEFAULT
>> ?= "acl alsa argp bluetooth debuginfod ext2 ipv4 ipv6 largefile pcmcia
>> usbgadget usbhost wifi xattr nfs zeroconf pci 3g nfc x11 vfat seccomp"
>>
>> ... but I see no recipe and no class referring to it (if I checked
>> correctly), neither in Poky nor in meta-oe.
> It is obsolete, we can remove it.

Thanks. Actually, I was checking the "kirkstone" branch instead of 
"master". So, it has already been removed.

Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

