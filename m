Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9F9DC4345F
	for <webhook@archiver.kernel.org>; Thu,  2 May 2024 14:18:16 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by mx.groups.io with SMTP id smtpd.web11.14754.1714659489454531711
 for <poky@lists.yoctoproject.org>;
 Thu, 02 May 2024 07:18:10 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: signature did not verify: crypto/rsa: verification error" header.i=star@gmx.li header.s=s31663417 header.b=BobAaRsj;
 spf=pass (domain: gmx.li, ip: 212.227.17.20, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.li;
	s=s31663417; t=1714659487; x=1715264287; i=star@gmx.li;
	bh=81pdE+Y+0rmqJVFdb61qou0cuiUiiIAJDZ0FX3XukrA=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=BobAaRsjzJUQu069FDidgc7cAkoar0VCGVSQxnPxJg9scxkNl8K66b8I4yIZeIEw
	 XsKijVeLPuNeOPr44X7D5DzZxSu1z1MsaI+dvdP2TQNypKML6lOh1h+nd2E1U9LOb
	 4EIhLvNA1FAf+/P8Hw8sgSo4PUdwYfsjk903qbYuWcCt9z8rM6UkBmM2xWoJ0CXsJ
	 eFk08Bah8U4N+dMF1gcPsaAR7RtjvbfAC8OU9t8z9MCKBcpfriLWTc/+5f0PiBk9X
	 E2/6a75QBI9TH2WxDEDsvRwxV+QxuwhdtSIIdBIBU7IC4U/nTbtkUu7v+VJb1yo3Y
	 2X5PSwxlDNuZBHObyg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([217.225.83.13]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MaJ81-1s7ojq33lV-00VdCN for
 <poky@lists.yoctoproject.org>; Thu, 02 May 2024 16:18:07 +0200
Message-ID: <1204f795-ca39-4d9f-a1ec-820b8c2d577e@gmx.li>
Date: Thu, 2 May 2024 16:18:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] avahi configuration (without d-bus/X11)
To: poky@lists.yoctoproject.org
References: <17995B12D8E7BA2D.25909@lists.yoctoproject.org>
 <55b9a7c9-3ac3-40f2-a3cb-44328a067499@gmx.li>
 <447234ef-efc0-4b35-b71c-b4988b34859f@gmx.li>
 <55CA67CE-8196-4E70-B2BD-D8C5BB95B0F9@arm.com>
Content-Language: en-US
From: star <star@gmx.li>
In-Reply-To: <55CA67CE-8196-4E70-B2BD-D8C5BB95B0F9@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:QnZU8sT1femABqMBsNc6GF6XYEwF20G7JCUq/y29+WpcuUcCu29
 adXtf1vif5fcISS9R8xbZXr2DBCTFXjEIsrS3Q3khkgBZ9+c2feBSK++wZkdTVC8R9IzzI2
 mFeuluMOJjmFMbH9UX9OXZh1rzKjHiab8XpPUcSTaCRFFy7NeQfkaTkBJOQDzRJjDzM7FuZ
 JCZpvovarx3JrumjyPY/Q==
UI-OutboundReport: notjunk:1;M01:P0:OKDo4qR+xuE=;XXhg6hgHZOmH77J1dDFwFpc0VNQ
 vnacNow+MdOW0v7T+swEH6vPxv0GTn1SigKRnPXJpvb28A4m+Ky27r0f9A7hls+nDBDTjtHV+
 munL7s1vMNSuQmh1HS9oh+7CHIL92ui0RVsBJkIgUCRwwrSQJsPB81k3ekJbC+UeRODzfaCtM
 rbMPjY5hzAo7ny3CRZSWyCKZiLLRMFAAJUWu/oLB+/VjNijduCMLwFmcXvyRVGgGnEu9j0A2X
 JNjgcN/LHve/Bzu4VRxAseInAwOYrfwWznrVUjzr2ySB1ofUHMv+9n//xGSuEpxBXaRDVQz2s
 mLwb/zMAyjsWniSFz5q0xtNSpwZLiD14ytAZEies8vVT2yIsZm06WhqEDOy+4irAznts7DHaB
 zd2No3bB51QfOGV+6MMIpBo9b3BTnmCJ3WXdF/Jgvuv/0GY0m1cz4v9iOFdXYzFztelviV10O
 IuGJRfcJ+/ZO3fJr9AlDRdZGJbx226/y4YCtl0M8caeIrakAplXlEr/4zZx0tKjZp+yQljf6R
 kOIBJV3MrTMS2L437fPmdPfz2V37OKKIlhX0BwCyvGKmhHSmm3hkg1OaEJX9YmMVlAIjZ0HzU
 soimkcC4VoNY8v8JvtUfYs5bEGERpAUR0ZQohwOuH6CTxzrjJ6laYEBuJ5obyQRYq+JxBXl1I
 HMysuhMKk3BqTRQSy+yV19q642NL/+E2pDDMtpivbGGWbKK/W1ZDogecdz1EoCOjGRowje3pF
 n239cBt4hkYQZnyHInuTg4aJoRT0A/djrFL3bQ7undq2lg7G0ElVIz/IBRXO/0zqPq3IMpBv4
 RRb/Bf04F75jH+/hjfd56aY95b1uJBT/fX6WOBhE9oa64=
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 02 May 2024 14:18:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13338

On 5/2/24 14:54, Ross Burton via lists.yoctoproject.org wrote:
> On 2 May 2024, at 13:00, Steve via lists.yoctoproject.org <star=3Dgmx.li=
@lists.yoctoproject.org> wrote:
>>
>> Hello,
>> I need the avahi to announce my embedded device to network and give it
>> an IP if DCHP is not working.
>> Over the normal "avahi-daemon.conf" I want to disable d-bus and ipv6.
>> That is working by do_install:append changing that file.
>>
>> But, adding to image the package "avahi-daemon" (avahi-autoipd is not a
>> problem) bloats my rootfs with dbus-daemon and libs and  libX11 libs. I
>> don't have an screen attached.
>>
>> So question: How to avoid that?
>>
>> In my avahi_%.bbappend I added:
>> EXTRA_OECONF +=3D " \
>>     --disable-dbus \
>>     --disable-gtk \
>>     --disable-gtk3 \
>>     --disable-libevent \
>>     --disable-qt5 \
>> "
>> But that doesn't seem to help.
>
> Have a look at the recipe, specifically the PACKAGECONFIG options.  You =
want to disable the dbus and gtk3 options.  Note that if you have a headle=
ss device so don=E2=80=99t need X11 at all, then remove x11 from DISTRO_FE=
ATURES and that will never be built.
>
> Ross

Well Ross, you made my day ... again! Thanks.
Yes, as above mentioned I already disabled dbus and gtk3. But it seems I
have to write also PACKAGECONFIG[dbus] =3D "--disable-dbus,
=2D-disable-dbus,dbus"
Frankly speaking I don't understand why this is to be configured twice
and why PACKAGECONFIG overrule that, but that helps to get rid of both
d-bus and libX11.

