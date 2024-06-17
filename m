Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A860C27C79
	for <webhook@archiver.kernel.org>; Mon, 17 Jun 2024 13:24:36 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by mx.groups.io with SMTP id smtpd.web10.56657.1718630668002941350
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Jun 2024 06:24:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: signature did not verify: crypto/rsa: verification error" header.i=star@gmx.li header.s=s31663417 header.b=aT3kzF4B;
 spf=pass (domain: gmx.li, ip: 212.227.15.18, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.li;
	s=s31663417; t=1718630666; x=1719235466; i=star@gmx.li;
	bh=lHOuyPm9z404T6oeleXy3iqqNSxzeedPDRvqUv783ZA=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=aT3kzF4BbRZthiJDmXDlbbJ7hI37rcDBtWGx94/+4Fgc027aRq/5os07FkrHdkpc
	 5hR5hMffTlGvoiEbNGjyGKM6EJctOY4lK4xgIPc9VaDjxIAuifgEFdyALZfwKCP5M
	 Xocy/JPDSzM+F0zVb5HnYZDjhha7R3Li2nVax4SnsRon4BXhT92sNNF/ooNvAmDAf
	 qKh2+DYMDKruTfxPA2Ce3r/z2Dtp6T8Zdz2vHPUhKmV/qFcDsuMTlDmt0QvfHsoue
	 7IEt8wdiZDDi8bUSYMY3ylWIB5wSduo1lUam2yT5Qmpi8LZwYDguNBHlmY0MxqUce
	 C7jah1UdnJeET+SFjQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([84.185.233.65]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1My36T-1sai050j0h-00xjax for
 <poky@lists.yoctoproject.org>; Mon, 17 Jun 2024 15:24:26 +0200
Message-ID: <e54dd9f1-683f-435f-b191-a4dde9161f1d@gmx.li>
Date: Mon, 17 Jun 2024 15:24:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] apply a patch to a complete meta-xxx - before using it (in
 kas)?
To: poky@lists.yoctoproject.org
References: <58e1f839-e931-4c26-a143-67c06cd059d3@gmx.li>
 <CANNYZj-5jqZtOJZjfMZyR1agbj+-d_3=-sC=buNt4jJ58eDuWg@mail.gmail.com>
Content-Language: en-US
From: star <star@gmx.li>
In-Reply-To: <CANNYZj-5jqZtOJZjfMZyR1agbj+-d_3=-sC=buNt4jJ58eDuWg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:xjjwc94NM0bEOntO3dSBDHTm7cUUNIGzCnswaheupIihSD3x2en
 Sa0oidM2DEH/YafN+rnFVLtdDpUm4a6bkWL0jwkSa4CM/GVa09K58AbkAbvQl/AwRufh+Wr
 Vv22x0jQ45N8QAzN4PFaOhAF/XpT2zvgYt0P08XgqHybmKm68LHEeZgDw/T2ws0JzKmQrKk
 dgT7jrTmwGp0GCAWsC+aw==
UI-OutboundReport: notjunk:1;M01:P0:tqUxKq2oehQ=;cuMrCVrYiJG7+VfGlv8mPxmWReI
 Hyo78zatwz4oqH1tNG6O8jlGamxv8PIUpCkPNWCSILJ28CyLGnzdAQnY0vvafFd+iJGAz21hv
 rH2ZHYQs4AWWmTdh4U11euGuU3xs6xXMOJRNkXat/7EHX/4djOTIhY7IC97xf93sqJXou8kHT
 CYgA6/UCgfSU8GXVbtZijl5PoDJCYBpktADjzZqB7o8Y359ofySIYkNoyRAXPC/VHlH5DuKgZ
 PkGmBrxR3hoE/KnI3iVZeSai+YdNcQsNVOvfDUTH14P86JKFvNdtSpzcdl/tOaMG88o93Fp2B
 H1FCoUdcmP+jtQpU3GxXk3gOc35Jqw8LizBpxz7458X90dKmLNu72FGnaaZOyayzFGFN0f6N+
 RFj2OKJ69rh+uCqL13mfMPHPp7QUAFBSkJ2rYSOvVXAy+oPlg0t/l4fpUBcnuRef3Jg83ykpe
 K5D0+eLN6cccNIuAzexDIKMkaEoZzHZcspujAW0e9ysStcHff6ajQvWdEibzI5vB3oUelL+nS
 Hz5G6bGGD0ffe6/S7KV3g86byIWWcrHSES/+TcjEBxgrEKGG73p9KQT3MRUtp8NUvoYLCUNZL
 I+Xku8qCZEb7f/4WhMO93c2Yw9GNmpBmxVWJtH33fxSVAcQh66qkLGCE/H+KBL1p5HXvNV5fc
 SUyGeuxAsPjiYbF6q5HUsn6SnLY/BNnJGsAiL9wDQujKVlOpxEQv7lMSrmGxp0LewJewDoBHG
 e802fVKXoMvB7cXEuf9lbmrlkUCl9+34qS/BKzHAa71z3pKxbc4+JnqZE4wi5JVkWF4W5roRa
 nWlg1gyQFWsnTyKIKhxQzECv0WdcvVmZ5GmbSd+dsyEww=
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 17 Jun 2024 13:24:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13373

That is something I can do, sure. Thanks for hint, Alex.
But in fact it's the other way around, the repo I refer to is newer, and
I need that in an older Yocto3.0 build.
So just in case someone knows how this works. But yes - forking a layer
is possible too, but far massive than apply a slim patch.

- Steve

On 6/17/24 15:16, Alexander Kanavin via lists.yoctoproject.org wrote:
> I'd suggest you fork the layer into a private repo and add the needed
> changes on top as proper commits. Given that the layer doesn't have
> the new syntax, it's almost certainly abandoned, and you won't lose
> any changes because they will never happen.
>
> Alex
>
> On Mon, 17 Jun 2024 at 15:13, Steve via lists.yoctoproject.org
> <star=3Dgmx.li@lists.yoctoproject.org> wrote:
>>
>> I need a version of a meta-xxx repo that has new syntax ":" instead of
>> "_". Some other minor things have to be changed too (as compatibility
>> string)
>>
>> I check that meta-xxx out by help of kas tool.
>> Do I have a chance to apply a patch right there once the meta-xxx has
>> been cloned? The kas docu confuses me a lot.
>> Guess I can't do it in Yocto, as my first bitbake command it will
>> complain about the syntax, so I can't "repair" that inside yocto.
>> Or am I wrong?
>>
>> Best regards
>>
>>
>>
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#13372): https://lists.yoctoproject.org/g/poky/messa=
ge/13372
>> Mute This Topic: https://lists.yoctoproject.org/mt/106720251/3618575
>> Group Owner: poky+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [star@gmx.li]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>


