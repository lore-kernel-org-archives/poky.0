Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB39FC35274
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 09:23:28 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web11.47737.1703150600507495558
 for <poky@lists.yoctoproject.org>;
 Thu, 21 Dec 2023 01:23:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=Au364nP3;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 75D74E0005;
	Thu, 21 Dec 2023 09:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1703150598;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xhyfcxt4+Y2Ey8Q0U7a+1xwNtODrche5HskTBMcWyWc=;
	b=Au364nP34CJW3tqlHIyWJ1ZMEQR0JSQOxiUBLlJenp3rkRyq4F4E4s1ammRnXQcBCtG+Jz
	6kjsjCkhVygSKsFd2u5WHire4xC0OpyRiphlhTX6iFbAOfU2ylq2ECk57o3wFzZWVGtRaW
	C1s5g8BYTPXANSiMlPrWm+xJ/dfCZvRFkxqmfHeX7m5BJ13FS8xUCj6UwC8i51HaT6ZuL/
	bkbPI6ofTKC//Yns3G6O7Cq09whD71flV7DHNZwXFtQSK+wjUP6vF9ep8rOsuDJAGINyFE
	uV3rB+v2OGpicbEgITUX8qANgYBW1/gwq4p+D3OgHTuqm2jMFBzVRTj4gdHB9A==
Message-ID: <4fd92d9a-1a05-45bf-ada3-23bd1e81fefc@bootlin.com>
Date: Thu, 21 Dec 2023 10:23:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] Add a new OpenSuse Leap 15.5 worker?
Content-Language: en-US
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Michael Halstead <mhalstead@linuxfoundation.org>
References: <cd61b01b-32e1-4edc-bf05-d9e5bb31dc1b@bootlin.com>
 <200bb2ba062142fe0bb75bbeddd6cfae1290ecd3.camel@linuxfoundation.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <200bb2ba062142fe0bb75bbeddd6cfae1290ecd3.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 21 Dec 2023 09:23:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13224

Hi Richard,

On 21.12.23 at 00:28, Richard Purdie wrote:
> On Wed, 2023-12-20 at 16:13 +0100, Michael Opdenacker via
> lists.yoctoproject.org wrote:
>> Checking our workers, I see that we just have an "opensuse154" worker,
>> but OpenSuse Leap 15.4 reaches end of life soon, at the end of this year
>> (see https://en.wikipedia.org/wiki/OpenSUSE)
>>
>> To go on supporting OpenSuse in 2024, could we have a new 15.5 worker?
> I believe that is already in progress.

Thanks for the good news. I was asking because I wasn't seeing such a 
work on https://autobuilder.yoctoproject.org/typhoon/#/workers yet.
Any way to see which new workers are being tested, like a test 
autobuilder instance? This way I can check by myself and not bother 
others unnecessarily.
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


