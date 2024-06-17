Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3535CC27C79
	for <webhook@archiver.kernel.org>; Mon, 17 Jun 2024 15:21:07 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by mx.groups.io with SMTP id smtpd.web11.59133.1718637660070912025
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Jun 2024 08:21:00 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: signature did not verify: crypto/rsa: verification error" header.i=star@gmx.li header.s=s31663417 header.b=ss0+QRVJ;
 spf=pass (domain: gmx.li, ip: 212.227.15.19, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.li;
	s=s31663417; t=1718637658; x=1719242458; i=star@gmx.li;
	bh=sfEFkQ57FhhqrdcLpm91Fwgun6npdmi4btkASwJLg3E=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=ss0+QRVJAnPiO+47qrlkVmMlwUURmaOCSGwKmzhjqrCAFP936HpUGkm7bIwGWBLw
	 LKsRoxka7SL6yUKlGHf2JwcjDAvjDCicRyHyjivy9PLUyHJKY/O1itLmjJ1IADFi9
	 rMcXnFkqNSZ7TK22380VvzmePkGKu2BxPfiXcvXyBAKcZitBLp3H0LZNcQPy5Zsoc
	 Bfz7TrlQ6iq7hFqLlbiOZ/64xgpZp7GxNhPcMBuvtvPY5552JlXXlCD3bYI5F5ula
	 xIEqDxOpVwvE2TtfIvrRw/XWAo27ekowRXAjHSydVy6ZzianY2T/Oa34J4Uz+F0sT
	 G9CUtxmiS1TGdk7Obg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([84.185.233.65]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MKKZ3-1s5gxB0qlT-00KG3P for
 <poky@lists.yoctoproject.org>; Mon, 17 Jun 2024 17:20:58 +0200
Message-ID: <a5390387-0743-47a1-a144-38b04f7c19f3@gmx.li>
Date: Mon, 17 Jun 2024 17:20:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] apply a patch to a complete meta-xxx - before using it (in
 kas)?
To: poky@lists.yoctoproject.org
References: <58e1f839-e931-4c26-a143-67c06cd059d3@gmx.li>
 <20240617141926002dfbfd@mail.local>
 <fa1a0f0e-93a5-4b27-9661-7431902a2d4c@gmx.li>
 <F97F4F85-AAB4-4C8A-93CD-5218C675F729@arm.com>
Content-Language: en-US
From: star <star@gmx.li>
In-Reply-To: <F97F4F85-AAB4-4C8A-93CD-5218C675F729@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:8F92OqSSPo9evf9rbOqU4iw6Zr839TsJUOk+gEIuD7E+/HkUMZj
 s/LyXK6eOLgv3w54Z41M4Yc+7ajc3M5Y9UjbtUq77wYHH1ViD2dGmvFBSS2dwgb7k21AHQ3
 CmfEn44ODfjDacrQvj2tMOWQ53NJO3T1fuEvsunzXbJXI24Ywgjkd7Qm27mlCbnZahjLpxc
 PfvzAFk8JIsud9i+6xSbQ==
UI-OutboundReport: notjunk:1;M01:P0:adgqWbajL8o=;j1zaV4WTC4pjBi+fj6AxNBq1NUr
 KyBBnLz242k+MocrAN4yjGnuDafaI5oH7vz6ujFG+MkUb8v7wZnlG6v8UUF8OErmbXLjlo61Q
 XnHYHhDUqQGZ9tup7tN5DheI5/YGSXfJDRLGNddc9OB7kdn4rkPzEPhHMJzas9xv1QiNEWH2z
 ogGnyqLcJzQ6IVnl13xhPxSWksBaucGUjrX5awi5u5TaGfsl43F1wYK6QX3ipK+j5bqA3LJ7V
 0TUsFywvRR0li1qimPwXj1+Omp02cwd9GZ5OEYLUAqj78Roh4ebgvfwbnyyvjOCIadJj9UQsQ
 +T69WM3MDHTliUWrvOlWv9qsaGq5kiMP0fv5ha+L2N6M/Jwc/ZVTyehxObC9QI10KO2276McC
 9sfltQqplcN/Uxy89QZ7LsKPS6kAbdJwo1Y8tp5RIiCgTP4SCsUOQ5o03Mt1UhZYAV1tOwpAj
 hA1oaWSLAKOr3LNEvz+mWhyBRPKcCagCkuzQ2fKICBbaUsTaQialTewZNhD6VZsikhiVXuqRC
 SD3dahimDtTxSageM8rF9OdVHade12A6WOgR6c3gxnFONt45beOO3D4k7M2QoAvY+Kejj4rev
 +yjWzVF/jczCN9oN5BsalXnB2KhC2/CMBn1ya6MqerYD5g4Y8OchMKJX5X0q+qLZH4ZWajQRJ
 uYaW/HgWHQJQcFw7E8cpAveek+eJsXuNfTUgERlsQzZwCPejdfFfB+FsfcCsVJJbRWdA0xzpw
 I4bnfKcNFnnW51H44V2lMi/ymb19HbE7A1U9QIVoK0leBG8spFGAS7mLQ2wJ/yaw/2QukjEHk
 wcRNoUK8I4iCSWPcChrmj1SafSZer5wiy6fctWJITXQXQ=
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 17 Jun 2024 15:21:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13379

On 6/17/24 16:59, Ross Burton via lists.yoctoproject.org wrote:
>
>
>> On 17 Jun 2024, at 15:22, Steve via lists.yoctoproject.org <star=3Dgmx.=
li@lists.yoctoproject.org> wrote:
>>
>> On 6/17/24 16:19, Alexandre Belloni via lists.yoctoproject.org wrote:
>>> On 17/06/2024 15:13:42+0200, Steve via lists.yoctoproject.org wrote:
>>>> I need a version of a meta-xxx repo that has new syntax ":" instead o=
f
>>>> "_". Some other minor things have to be changed too (as compatibility
>>>> string)
>>>>
>>>> I check that meta-xxx out by help of kas tool.
>>>> Do I have a chance to apply a patch right there once the meta-xxx has
>>>> been cloned? The kas docu confuses me a lot.
>>>
>>> Yes, kas can do that with the patches property of any repo. I wouldn't
>>> recommend using it but this works.
>>>
>>
>> Do you have an example maybe?
>> Kas complained about my attempts with (for me not) readable kind of
>> error message.
>
> As a tiny example,
> https://git.yoctoproject.org/meta-arm/commit/?id=3Dfef5eafc0858b790df22b=
7e4025f8efcde1d84b2 is where we added a patch to meta-arm=E2=80=99s kas fi=
les to patch poky.
>
> Ross
>

Thanks Ross,
can't test it right now, but I see my mistake. I located the patch
inside the layer structure. But why this procps entry?
There isn't any procps structure that could be addressed in meta-arm,
isn't it?
I read your example as: There is a patch 0001...patch that has to be
applied to meta-arm repo (in general).

- Steve

>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13378): https://lists.yoctoproject.org/g/poky/messag=
e/13378
> Mute This Topic: https://lists.yoctoproject.org/mt/106720251/3618575
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [star@gmx.li]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


