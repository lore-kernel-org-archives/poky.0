Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23AF6C46CCD
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 10:55:59 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
 by mx.groups.io with SMTP id smtpd.web11.48640.1703156153207744780
 for <poky@lists.yoctoproject.org>;
 Thu, 21 Dec 2023 02:55:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=b4F7/Vni;
 spf=pass (domain: bootlin.com, ip: 217.70.183.198, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 3567FC000C;
	Thu, 21 Dec 2023 10:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1703156151;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rHFVV9+NQIeh1EKKdxxiGCuxLfTWrBiXw2vVlQIgN/4=;
	b=b4F7/Vniy/cT+j7g5v7ywxuQYC5Wcun1pkRXmkJpS27+tu/nCcF4x01l2x38e5LLElcaQ6
	iIAsdKofDrg1T0D5yD6XZOFb8kD2WSBdH065mZ+PhjRVhSZ1rxoH0zSUfu+qEdkaUI2eER
	Uwmw+MZdPrNhdaKk3qHdO/ocj905GXS8ZtdDoJEofyOz+HFXbd99CWTwO5UTDN05a2ota4
	aIJomJFBm4dN6w8W0JN21/MNdZURd2fgp0rmt0hRCLeCHxpYVBy1eHGAbBqR2YEimIJi7e
	zED4wxUz4g8XIo/a2AKq0EeV4xpoXc6j2+UsHwnxhYGmcymV/JnruXbeLd2CIg==
Message-ID: <2263f4fd-40c8-4c29-bbbf-6c28b76c4947@bootlin.com>
Date: Thu, 21 Dec 2023 11:55:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] [kirkstone][PATCH] poky.conf: update SANITY_TESTED_DISTROS
 to match autobuilder
Content-Language: en-US
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <20231220152600.282677-1-michael.opdenacker@bootlin.com>
 <51481139d73c82715cfe808d20f9fec0073dba40.camel@linuxfoundation.org>
 <75e908d1-701f-4163-8001-0095aa8b8a0d@bootlin.com>
 <1b4ee6855ccefea5f128ab1ebcc9bca670b16f87.camel@linuxfoundation.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <1b4ee6855ccefea5f128ab1ebcc9bca670b16f87.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 21 Dec 2023 10:55:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13230


On 21.12.23 at 11:45, Richard Purdie wrote:
> On Thu, 2023-12-21 at 11:41 +0100, Michael Opdenacker wrote:
>> On 21.12.23 at 00:31, Richard Purdie wrote:
>>> On Wed, 2023-12-20 at 16:26 +0100, Michael Opdenacker via
>>> lists.yoctoproject.org wrote:
>>>> From: Michael Opdenacker <michael.opdenacker@bootlin.com>
>>>>
>>>>   From the intersection of the list of allowed workers
>>>> on https://git.yoctoproject.org/yocto-autobuilder2/tree/config.py
>>>> and the active workers on
>>>> https://autobuilder.yoctoproject.org/typhoon/#/workers
>>>>
>>>> Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
>>>> ---
>>>>    meta-poky/conf/distro/poky.conf | 3 +--
>>>>    1 file changed, 1 insertion(+), 2 deletions(-)
>>>>
>>>> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
>>>> index c179cbf..f5aff32 100644
>>>> --- a/meta-poky/conf/distro/poky.conf
>>>> +++ b/meta-poky/conf/distro/poky.conf
>>>> @@ -37,9 +37,8 @@ SANITY_TESTED_DISTROS ?= " \
>>>>                ubuntu-18.04 \n \
>>>>                ubuntu-20.04 \n \
>>>>                ubuntu-22.04 \n \
>>>> -            fedora-37 \n \
>>>> +            fedora-38 \n \
>>>>                debian-11 \n \
>>>> -            opensuseleap-15.3 \n \
>>>>                almalinux-8.8 \n \
>>>>                "
>>>>    # add poky sanity bbclass
>>> I believe the convention for older releases should be to leave releases
>>> we tested upon at the time of the original release but add new ones
>>> we've started testing.
>>>
>>> It is unlikely Fedora 37 would stop working with the LTS even if we no
>>> longer test there.
>> Understood and remembered now, thanks!
>> I'll update my patches then.
>>
>> However, my plan is to propose a documentation patch that removes Fedora
>> 37 from the distributions we support. Even if we can go on testing old
>> distributions for several reasons (such Ubuntu 16.04 for quite long
>> after it was EOLed), it's hard to support distributions for which we
>> don't receive updates yet.
> I'd prefer to keep the list including the list of things tested when we
> originally released even if they have passed EoL.
>
> The reason why is that people quite likely do keep some of these
> systems around and run the stable release updates on them. If they do,
> they're going to get a message saying it is no longer supported. That
> is true to some extent but things will continue to work and I'd rather
> not "panic" them like that. Whether they should build on EoL systems is
> a matter of debate and their choice, not ours.


This makes perfect sense. Actually, that's what we're actually doing but 
I forgot, not doing this frequently enough:
https://docs.yoctoproject.org/ref-manual/system-requirements.html#supported-linux-distributions

Apologies! That's why I should have more notes for such things.

Thanks
Michael.


-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


