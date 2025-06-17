Return-Path: <alexander.sowarka@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58686C71159
	for <webhook@archiver.kernel.org>; Tue, 17 Jun 2025 00:25:37 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web11.6954.1750119934012810614
 for <poky@lists.yoctoproject.org>;
 Mon, 16 Jun 2025 17:25:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=sxDiu8+u;
 spf=pass (domain: linaro.org, ip: 209.85.208.41, mailfrom: alexander.sowarka@linaro.org)
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-6071ac9dc3eso8961621a12.1
        for <poky@lists.yoctoproject.org>; Mon, 16 Jun 2025 17:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750119932; x=1750724732; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lPRm2sEj8AoQBuwkH6ldV3v0npyo3ftjchRxQ6KVVRw=;
        b=sxDiu8+uJRD7DagARqdyfcLyJR5MReDgCFGcQbcxpgP2kMoRbHTLOutkbL0xP2KFew
         otdTrpgfwrMa+VfM05PJUsbFxtBTkexFWKh7AGHc5XQ8tS7eZWxikj5oT2TWkDQ2ln3n
         DkFJljO/BiuEOoGvZT+pxpOfAxOQF21gHP7uD+ZltuBfEptteOnHxmO0mooBHetGbDzm
         0lGlspfFuM7W/jeNhuTqiqXo/T/nM+357XfB7pYssBR5g8dAtkGs7qmw+bnX4KxLKLdG
         tUBuWqyG7TcCZU1lARY0Aph6jeWPkici4ZWU0K202D4aUYxntZoavOGVcsTNI/b2tSLW
         zwCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750119932; x=1750724732;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lPRm2sEj8AoQBuwkH6ldV3v0npyo3ftjchRxQ6KVVRw=;
        b=RTzKzg2px9iFnM7Rn+Z4ZGQYntoG+KEHTIVt705Hz+dXE+CL2N70WV8+YgpbyDTOuQ
         lPGcpNqz2nCUnIcVlA4P9FWUMVaGDw/VNT3t5pMCXxee1mx3na8SHJmug2zWPuwB0G8G
         e321DQVo1xsoy5Qx0r/9kTzQP6A3wNvWc07mMvNewhrO8nabgO/X5racF6Xpbi3npPAn
         h4lkzZ2E0HxxM5zdP09u9GSMv75PGQjrToAuF9vtOe7o9Jwetgb8Hr3Icm4N5hxum2LY
         +mAn3XX1Yy5oR/zdXsdM/hT+JTcvwyPVrH+8xM9nZwy+IkmMOzT+c5XbH5n9qP38r/Wp
         coiQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2zmBxhyzrp1oCyFnUMWtLDNWKslxeYlPnyM0ljktgzY24E5oDDkNTWG1JCiIrhwCBQHhM@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yw8jMOjEv8nKK0Ip0UkUnIEhgs4SkBiwiCSY/U/BSAvZhd8U4y7
	wq1hus2CetLP1X5KRJvnB9KdGpdDI0HNc9gLl2F7h3ucZdUBiMmi7cuK5fejmbLw1ar62dR/ykk
	1zlCKq0AEbZhSOAupYdL/6RxbkVht1cVi0/RP5cS1zg==
X-Gm-Gg: ASbGncs0AD488IrdHYxZcoGdLa4dl9humeZpICsNNoNWOjSvPAlXSnqt8wuovlcJJjd
	3S3fezKQg29vrjiMhNbkV5knhsu39lEEPVgs04rKpeHBHYBdMOh6ZRNWKVsWpyZLeTxV8EA2JHQ
	P4KRBtZMskXKvB6hl3OVkTcDcs913JtMBRfvVoBSKQkCOr2aEsdive6BctQyuAmRSuLc8=
X-Google-Smtp-Source: AGHT+IGnJ3K1a8CJbzazErTvHoSyz/eCpfMdQeTDOlD9JexEUUpq1ili3BGJrBpaIpDE4Q7uy3rQVP8Lg1qi9IQqAuY=
X-Received: by 2002:a05:6402:84c:b0:607:f513:480a with SMTP id
 4fb4d7f45d1cf-608d083810emr9421849a12.5.1750119932233; Mon, 16 Jun 2025
 17:25:32 -0700 (PDT)
MIME-Version: 1.0
References: <20250616184607.92039-1-alexander.sowarka@linaro.org>
 <20250616184607.92039-2-alexander.sowarka@linaro.org> <958D0280-79D4-4421-A161-4D5451A4D035@arm.com>
 <CADkTA4NYLyCqC1uNq8HHnofv-T+2HRLAa5r+K3UbKrLyFf06vw@mail.gmail.com>
In-Reply-To: <CADkTA4NYLyCqC1uNq8HHnofv-T+2HRLAa5r+K3UbKrLyFf06vw@mail.gmail.com>
From: Alexander Sowarka <alexander.sowarka@linaro.org>
Date: Mon, 16 Jun 2025 21:25:21 -0300
X-Gm-Features: AX0GCFs-MNP2r_yzEqPCTq58CGGa2jABe2WUOFDcX-ZKcw4nnDoRsb0vmTe0his
Message-ID: <CAOx2fPhrn25xq0EUTqYNwD3spNUkK2qY43KA-x5N4CyaUpeyXw@mail.gmail.com>
Subject: Re: [poky] [PATCH 1/1] linux-yocto: Use in-tree config for genericarm64
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: ross.burton@arm.com, 
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e01cbe0637b98c0e"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 17 Jun 2025 00:25:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13653

--000000000000e01cbe0637b98c0e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Understood. I will talk with ARM internally how they would wish to handle
it.
I sadly do not think that board manufactures care to enable the genericarm6=
4
machine for their platform. ARM used the upstream kernel config in other
places
to create images that boot on most platforms. So I thought it would be
useful.
I will advise them to do something in their own layer if desired.

Kind regards,
Alexander Sowarka


On Mon, 16 Jun 2025 at 20:49, Bruce Ashfield <bruce.ashfield@gmail.com>
wrote:

>
>
> On Mon, Jun 16, 2025 at 3:05=E2=80=AFPM Ross Burton via lists.yoctoprojec=
t.org
> <ross.burton=3Darm.com@lists.yoctoproject.org> wrote:
>
>> On 16 Jun 2025, at 19:46, Alexander Sowarka via lists.yoctoproject.org
>> <alexander.sowarka=3Dlinaro.org@lists.yoctoproject.org> wrote:
>> >
>> > The genericarm64 machine should run on most ARM SystemReady devices.
>> > The arm64 configuration in the mainline kernel repository works stable
>> > on a lot more devices then the poky internal one.
>> > Switch to using the in-tree kernel config to run on more SystemReady
>> > devices.
>>
>> This was almost by design: the initial target platform was the
>> BeaglePlay, and then the Xilinx KV260.
>>
>> As the co-maintainer of this BSP I=E2=80=99d _much_ prefer to see the ga=
ps fixed
>> instead of upstream defconfig used blindly.  It=E2=80=99s an unusual ups=
tream
>> release where the defconfig doesn=E2=80=99t result in configuration warn=
ings, and
>> we have a general ethos that modular configurations are better than a
>> single monolithic defconfig.
>>
>
> And as one of our reference platforms, that's a hard NO from me (the in
> tree defconfig).
>
> We do our references by the yocto policy, not the kitchen-sink in tree
> defconfig.
>
> If there's issues with the fragments, fix them. Not this. There's
> absolutely nothing by
> accident about the way we do it currently.
>
> Bruce
>
>
>
>>
>> Ross
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#13651):
>> https://lists.yoctoproject.org/g/poky/message/13651
>> Mute This Topic: https://lists.yoctoproject.org/mt/113676396/1050810
>> Group Owner: poky+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
>> bruce.ashfield@gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await the=
e
> at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>
>

--000000000000e01cbe0637b98c0e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Understood. I will talk with ARM internally how they =
would wish to handle it.</div><div>I sadly do not think that board manufact=
ures care to enable the genericarm64</div><div>machine for their platform. =
ARM used the upstream kernel config in other places</div><div>to create ima=
ges that boot on most platforms. So I thought it would be useful.</div><div=
>I will advise them to do something in their own layer if desired.</div><di=
v><br></div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr">Kind regards,<div>Alexander Sowarka</=
div></div></div></div><br></div><br><div class=3D"gmail_quote gmail_quote_c=
ontainer"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 16 Jun 2025 at 20:4=
9, Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@gmail.com">bruce.ash=
field@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_defaul=
t" style=3D"font-size:small"><br></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 16, 2025 at 3:05=E2=80=
=AFPM Ross Burton via <a href=3D"http://lists.yoctoproject.org" target=3D"_=
blank">lists.yoctoproject.org</a> &lt;ross.burton=3D<a href=3D"mailto:arm.c=
om@lists.yoctoproject.org" target=3D"_blank">arm.com@lists.yoctoproject.org=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On 16 Jun 2025, at 19:46, Alexander Sowarka via <a href=3D"http://lists.yoc=
toproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org<=
/a> &lt;alexander.sowarka=3D<a href=3D"mailto:linaro.org@lists.yoctoproject=
.org" target=3D"_blank">linaro.org@lists.yoctoproject.org</a>&gt; wrote:<br=
>
&gt; <br>
&gt; The genericarm64 machine should run on most ARM SystemReady devices.<b=
r>
&gt; The arm64 configuration in the mainline kernel repository works stable=
<br>
&gt; on a lot more devices then the poky internal one.<br>
&gt; Switch to using the in-tree kernel config to run on more SystemReady<b=
r>
&gt; devices.<br>
<br>
This was almost by design: the initial target platform was the BeaglePlay, =
and then the Xilinx KV260.<br>
<br>
As the co-maintainer of this BSP I=E2=80=99d _much_ prefer to see the gaps =
fixed instead of upstream defconfig used blindly.=C2=A0 It=E2=80=99s an unu=
sual upstream release where the defconfig doesn=E2=80=99t result in configu=
ration warnings, and we have a general ethos that modular configurations ar=
e better than a single monolithic defconfig.<br></blockquote><div><br></div=
><div><div class=3D"gmail_default" style=3D"font-size:small">And as one of =
our reference platforms, that&#39;s a hard NO from me (the in tree defconfi=
g).</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><=
div class=3D"gmail_default" style=3D"font-size:small">We do our references =
by the yocto policy, not the kitchen-sink in tree defconfig.</div><div clas=
s=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail=
_default" style=3D"font-size:small">If there&#39;s issues with the fragment=
s, fix them. Not this. There&#39;s absolutely nothing by</div><div class=3D=
"gmail_default" style=3D"font-size:small">accident about the way we do it c=
urrently.</div><div class=3D"gmail_default" style=3D"font-size:small"><br><=
/div><div class=3D"gmail_default" style=3D"font-size:small">Bruce</div><br>=
</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Ross<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13651): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13651" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13651</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/113676396/105=
0810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/113676396/1050810</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.as=
hfield@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature">- Thou shalt not follow the NULL pointer, for chaos and madness a=
wait thee at its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star T=
rek II<br><br></div></div>
</blockquote></div>

--000000000000e01cbe0637b98c0e--

