Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916E8C2BA15
	for <webhook@archiver.kernel.org>; Mon, 17 Jun 2024 13:44:26 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by mx.groups.io with SMTP id smtpd.web11.56588.1718631861571792927
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Jun 2024 06:44:22 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: signature did not verify: crypto/rsa: verification error" header.i=star@gmx.li header.s=s31663417 header.b=TKf1HX+i;
 spf=pass (domain: gmx.li, ip: 212.227.15.19, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.li;
	s=s31663417; t=1718631859; x=1719236659; i=star@gmx.li;
	bh=RJvC9qO7BPTdxH3NjsKc7YpMnIOfqmSBbW5c9Ra2AjE=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=TKf1HX+ihSRAx3S/7l2TkjuGDWSBFo/nefAnn+HXaRM3boiFlQ8efNW7p/49iRVC
	 UOoMlYZx9+aXktl8kZC5XvUxIwl8rw4NUumMUKMWsrHTSZcK//qbgC/aRW2UDrHG9
	 9XSzsOBOD0AJt6mvxAMROxiStbXvPSlJV9dbchCMeHhIDylHk5lNvvY75aUxZTAu6
	 19J8wk0PFN8Sa6IDv34yXJDVjjSEgi1b7QlXb1ficZ5DtLCpGcjH8mKJhxaH5L3Wp
	 AmeL00K9BBkEbS2l/qO8bdMY5iw23CPaDu833VjWpxtfzRLgXijsALwOoflEKBNgY
	 qR7/RFgSlEuZRGuYNA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([84.185.233.65]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1N63Ra-1sPwrL2f1c-017sGq for
 <poky@lists.yoctoproject.org>; Mon, 17 Jun 2024 15:44:19 +0200
Message-ID: <da9bedda-52e2-4a64-aa07-a5daf750d625@gmx.li>
Date: Mon, 17 Jun 2024 15:44:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] apply a patch to a complete meta-xxx - before using it (in
 kas)?
To: poky@lists.yoctoproject.org
References: <58e1f839-e931-4c26-a143-67c06cd059d3@gmx.li>
 <CANNYZj-5jqZtOJZjfMZyR1agbj+-d_3=-sC=buNt4jJ58eDuWg@mail.gmail.com>
 <e54dd9f1-683f-435f-b191-a4dde9161f1d@gmx.li>
 <CANNYZj-G5+TOZafqyyE4G+1S2ELRdr+nck8w=XdpEXURjiwS8g@mail.gmail.com>
Content-Language: en-US
From: star <star@gmx.li>
In-Reply-To: <CANNYZj-G5+TOZafqyyE4G+1S2ELRdr+nck8w=XdpEXURjiwS8g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:wva/Up66/wMWhLa56i4scv+IKPfxpiWJOhk6tLgSHSsvthOtGLK
 IL1D6uLK/CeS4XvriXY5gy7InqmOnXA85wjbvRP//AV8cUdVLiFauSn6xa0jIKsf626+iAG
 tmxLmnF4mqQH8pdf07QHvHSPdDvs10WfXWUES/fFs01uqdVUtYdBqY7EOP73sBLgYKbKCPx
 Ra4pZB0qCM/pT8umk23sg==
UI-OutboundReport: notjunk:1;M01:P0:gGKamq7aY8Y=;q+lscRlDaKqUB+wPUNfF29b7nHb
 n7PR3s3DZFj0f0Oyjkhs3/Zv5J3lUoskQEtPa9Es408apQktof9ITN7S2K9FKh5LfXsz0Vn94
 Ccf4rpicHdbXCpq8ozIRop5kEd4zffBs6LlMATkJvxMIkZ4qo2pBlaQBHQyCfQ5EL+djlczcf
 Um87bOtzd5UiaLy8tPsG7qsPn6It8BwQZ/Bq+BkxHZ3at4vlHV8OsgopFeQ+AAPH7dU5sOLN5
 sEfUZxCyB1O7DjW1NXmYLTLWtLVMWT6Q+3W/lSCHyOhmPf1lrZETD6kg1tfSOL6D8G2llzOjY
 0oFA0zpV9I+/ZvJLmMcrX/Sve5QF3kSLXtj3ihlzsEDlj8Xk6O6fNaks67m8UyTF5k1s/E7Iv
 j7ocMwY/YAOILDJleb2l0q49EAliuWgPWU4vofLeVg9+cVgxu0K7hA8d6n3ws5wyX1EzYxLf1
 djeQ/N2zm37e67+2k+l34q9tTiJHgkxqWdJvoEwMY9iLuFFLPxIo5Eh6UPYNuCGtgNCEAqWrY
 RDQ1iqXm4mdAGn1wszWTHZ8xSLEAYYHkpiqIwLDwq3SafTYBN21R418NiuQOKnJIpNFgo2u06
 iica/WmhOpa2DFV5s6gPTV4johtaH65yT4aennxC0udc0f2H0IF7B1p9on4QuqDEdYa8mNY/U
 KP3Mb3XfOOyTCdasEzusZhZ/2YbI3zuThGMMHhFmi6JMdMj9xFsrE4qrIUZ9BkKsGtjIzlS5q
 WiYnuXAakxSAHz6+mS4geHPOTG9ZllNYnkuvSdTujkke9MC/LQ7YWZHXEAGPqPgXOtxsZsLsc
 qjHJVoeUg8OqpukexzkjhI7yi46XzepMkQn64+AQgdd8A=
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 17 Jun 2024 13:44:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13375

I know, I know - customer request! Need to fix something in an older
project (nothing else should be changed) - but didn't managed these
patch to meta-xxx so far. I just want to improve that.

- Steve

On 6/17/24 15:27, Alexander Kanavin via lists.yoctoproject.org wrote:
> Yocto 3.0 is ancient and isn't supported. Is there a reason you can't
> migrate to scarthgap?
>
> Alex
>
> On Mon, 17 Jun 2024 at 15:24, Steve via lists.yoctoproject.org
> <star=3Dgmx.li@lists.yoctoproject.org> wrote:
>>
>> That is something I can do, sure. Thanks for hint, Alex.
>> But in fact it's the other way around, the repo I refer to is newer, an=
d
>> I need that in an older Yocto3.0 build.
>> So just in case someone knows how this works. But yes - forking a layer
>> is possible too, but far massive than apply a slim patch.
>>
>> - Steve
>>
>> On 6/17/24 15:16, Alexander Kanavin via lists.yoctoproject.org wrote:
>>> I'd suggest you fork the layer into a private repo and add the needed
>>> changes on top as proper commits. Given that the layer doesn't have
>>> the new syntax, it's almost certainly abandoned, and you won't lose
>>> any changes because they will never happen.
>>>
>>> Alex
>>>
>>> On Mon, 17 Jun 2024 at 15:13, Steve via lists.yoctoproject.org
>>> <star=3Dgmx.li@lists.yoctoproject.org> wrote:
>>>>
>>>> I need a version of a meta-xxx repo that has new syntax ":" instead o=
f
>>>> "_". Some other minor things have to be changed too (as compatibility
>>>> string)
>>>>
>>>> I check that meta-xxx out by help of kas tool.
>>>> Do I have a chance to apply a patch right there once the meta-xxx has
>>>> been cloned? The kas docu confuses me a lot.
>>>> Guess I can't do it in Yocto, as my first bitbake command it will
>>>> complain about the syntax, so I can't "repair" that inside yocto.
>>>> Or am I wrong?
>>>>
>>>> Best regards
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>
>>
>>
>>
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#13374): https://lists.yoctoproject.org/g/poky/messa=
ge/13374
>> Mute This Topic: https://lists.yoctoproject.org/mt/106720251/3618575
>> Group Owner: poky+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [star@gmx.li]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>


