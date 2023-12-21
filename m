Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14DD2C35274
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 10:25:39 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web11.48364.1703154337919426214
 for <poky@lists.yoctoproject.org>;
 Thu, 21 Dec 2023 02:25:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=G2A9/vyJ;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id CA3C3E0008;
	Thu, 21 Dec 2023 10:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1703154335;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iaJWoZipOtGjN3KNMT+43/Ha2k1I4PqJVYQic7vTu+w=;
	b=G2A9/vyJVjyj0rdI4WRyRvC9bhwQkhZvTqaqy7o5EyzZG1Gg6fk7/jjrHrljJ2niQq2ZkR
	yrxyHRX3aP9gKFrMsHDs3GdQzmiieALz2NHibUV9A8/MEgxzmfiKNwwkGfYTfLi0bi3kn1
	wTa+yW2FIXmRC07D3hIn8ZnC6B6fW5mKyuoRrqqT/3eUMdEPaYPU/fNcotpsmI9kCFxusR
	GGY01eEbaxszPhZjJ/NRfMhnPLGiRt6Vdj6ZUyScCdMhg06TF5qBwJGIEthU/3CuT8ZUhp
	FOT0DxMlOp/M1xZSXLHrgQ0fzJXJAJsXZ3EBXE1KDw9SlxTP/1YHVU2oqSbuaQ==
Message-ID: <0a61857d-2f2f-4ab4-a1e3-f20dfd40b9b3@bootlin.com>
Date: Thu, 21 Dec 2023 11:25:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] Add a new OpenSuse Leap 15.5 worker?
Content-Language: en-US
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Michael Halstead <mhalstead@linuxfoundation.org>
References: <cd61b01b-32e1-4edc-bf05-d9e5bb31dc1b@bootlin.com>
 <200bb2ba062142fe0bb75bbeddd6cfae1290ecd3.camel@linuxfoundation.org>
 <4fd92d9a-1a05-45bf-ada3-23bd1e81fefc@bootlin.com>
 <1aecfabe198d4d76dbd975e8e38533012be32814.camel@linuxfoundation.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <1aecfabe198d4d76dbd975e8e38533012be32814.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 21 Dec 2023 10:25:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13226


On 21.12.23 at 10:47, Richard Purdie wrote:
> On Thu, 2023-12-21 at 10:23 +0100, Michael Opdenacker wrote:
>> Hi Richard,
>>
>> On 21.12.23 at 00:28, Richard Purdie wrote:
>>> On Wed, 2023-12-20 at 16:13 +0100, Michael Opdenacker via
>>> lists.yoctoproject.org wrote:
>>>> Checking our workers, I see that we just have an "opensuse154" worker,
>>>> but OpenSuse Leap 15.4 reaches end of life soon, at the end of this year
>>>> (see https://en.wikipedia.org/wiki/OpenSUSE)
>>>>
>>>> To go on supporting OpenSuse in 2024, could we have a new 15.5 worker?
>>> I believe that is already in progress.
>> Thanks for the good news. I was asking because I wasn't seeing such a
>> work on https://autobuilder.yoctoproject.org/typhoon/#/workers yet.
> You mean https://autobuilder.yoctoproject.org/typhoon/#/workers/79 ?


Oops, I missed it, sorry, having the wrong impression that all inactive 
workers were old ones.
Thanks for your help, I updated my notes and I'll remember it next time!
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


