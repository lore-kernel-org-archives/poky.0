Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03BD0C27C79
	for <webhook@archiver.kernel.org>; Mon, 17 Jun 2024 14:22:27 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by mx.groups.io with SMTP id smtpd.web11.57593.1718634144510597500
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Jun 2024 07:22:25 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: signature did not verify: crypto/rsa: verification error" header.i=star@gmx.li header.s=s31663417 header.b=hKZlBJwc;
 spf=pass (domain: gmx.li, ip: 212.227.15.18, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.li;
	s=s31663417; t=1718634143; x=1719238943; i=star@gmx.li;
	bh=Z2L7gPcYDGsqgtUqrwWPhULup74WC1N9KjpiWy6St5c=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=hKZlBJwclsF/0HYT8VKJl6gvIZ/xOvdZHZAPq8T2Le22W6v9u2q5yy3JpiciUomj
	 Mg1C1/OAPqiXL4ayiIiTuzCQpTbKWhj8IcUicJnlhoGXFsKwgoKa+5R4WgSwOe0PA
	 tOpq1a9IvtxKfrcjcIwK4sUjounatrJyVHK6R2I5HUXai2UtIKoqK/48royflo7qW
	 wxE8WY5opH28MsIZViJTsVs995gUvmLS+X28YVWAiGV1//h3IOUaqtCIcs0V656pH
	 gBWjDzykJ6nFrPDZYZM87klvZcqU1HvIm+n8hQXq56i6VFiCTwergBu0FHo0+WQMi
	 VoV1/mSesoO6TmErfA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([84.185.233.65]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MatVh-1sva0D48lf-00csyF for
 <poky@lists.yoctoproject.org>; Mon, 17 Jun 2024 16:22:23 +0200
Message-ID: <fa1a0f0e-93a5-4b27-9661-7431902a2d4c@gmx.li>
Date: Mon, 17 Jun 2024 16:22:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] apply a patch to a complete meta-xxx - before using it (in
 kas)?
To: poky@lists.yoctoproject.org
References: <58e1f839-e931-4c26-a143-67c06cd059d3@gmx.li>
 <20240617141926002dfbfd@mail.local>
Content-Language: en-US
From: star <star@gmx.li>
In-Reply-To: <20240617141926002dfbfd@mail.local>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:gkZ2ZXaH9W2FrULLhUY3a63sdQmlWrnloaSTlkRxmEbN1jDRL5j
 8NOi/rk8uDQOY+5r88RGoNcutq5765N5OWUqMzJ87BXzg63OBZNeu63rFC73huFurxdmlpg
 K4wjW7wwxzgpBiMJzd3v7DCE0VyX1029RafIm+mmvJibfxg9qiQbSkePrk30+oi4+UTReWj
 tipJqHOABr64g+39pQ2fw==
UI-OutboundReport: notjunk:1;M01:P0:ILqB8V0TSe4=;1HJEit1T5pF5R2A+qrb5zs/kYj9
 DO8KFyo4sH0KGCubHVrtbt9AAVLbgnN+A3ndew1tk8cibuiOzNDwtxRnNS06LiukZUcnCykqI
 nWI4aF5iDJkLV8fuQGAKxaZfoKCTKZBbPQ+TLwSeXmy4BCtK6zs0opUe/o77sglyenufqrR/Q
 yr/Ikqp6dPpYtcPm0mZ6e4jI+VY4OOXoHzJU57MHzwshNWBVbZvA0/WYzr9lN5rcyOydJK2nk
 iZSg/8HZbjVOvXJvPJLcDknaCtR14Q/JZkbetdYAIXWy52pDdHDrRj+73459VxudoDebxf2gW
 tq7Iv0Ctd0x3lHxnrQ03uB8Mac8x2w23UYPbcC6c69DrIiuB3bBwSUDOWc/LpQYtwaqoA35BC
 /aOY22H+prLmDA5mrFMRtutFFkVJh61oa/wiNehiEs0ApuodTWU+7ZIdKzHP2bUQLsz6sW+2H
 uAabk6TnTuFfeOBbuDggbH1mb1kUn2scEFhg7wWZMHP5kuVugcXilHt9X/Ldk5TCk5dW/fIMv
 GutTAxMg2gcd8DyiN7GOPMErw/SduvTJfJfgDQX5Jwin3craHl4IuPRr1f4PNI5n2uua4M8mp
 nMXLQszrO8deZdWvzer9SvRbUQlEB9umVsW+YVqOTUCvFm6b7rFiGcryVijF+Mnme2J5P1Kzd
 byc9knJOKHIfrlxhujtUtmBkAoCFRn9NWalY6rhTbcxW0geQm1HXIMzEllU2PCPAyv6mhAyNf
 0uzwFo+NKaGWaRGH1YF8WvvGxJhZLe1oafr2KVBcgpPN735terW9NwIKvD9ls1M7d8DuOCQmA
 hXQNYYpcP2wPsTFLUmiwnQ0Ow3feFwPIStJ/TZEyQn0j8=
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 17 Jun 2024 14:22:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13377

On 6/17/24 16:19, Alexandre Belloni via lists.yoctoproject.org wrote:
> On 17/06/2024 15:13:42+0200, Steve via lists.yoctoproject.org wrote:
>> I need a version of a meta-xxx repo that has new syntax ":" instead of
>> "_". Some other minor things have to be changed too (as compatibility
>> string)
>>
>> I check that meta-xxx out by help of kas tool.
>> Do I have a chance to apply a patch right there once the meta-xxx has
>> been cloned? The kas docu confuses me a lot.
>
> Yes, kas can do that with the patches property of any repo. I wouldn't
> recommend using it but this works.
>

Do you have an example maybe?
Kas complained about my attempts with (for me not) readable kind of
error message.

>> Guess I can't do it in Yocto, as my first bitbake command it will
>> complain about the syntax, so I can't "repair" that inside yocto.
>> Or am I wrong?
>>
>> Best regards
>
>>
>>
>>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13376): https://lists.yoctoproject.org/g/poky/messag=
e/13376
> Mute This Topic: https://lists.yoctoproject.org/mt/106720251/3618575
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [star@gmx.li]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


