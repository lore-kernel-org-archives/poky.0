Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F769C71136
	for <webhook@archiver.kernel.org>; Tue, 17 Jun 2025 00:43:47 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web10.7222.1750121018240992768
 for <poky@lists.yoctoproject.org>;
 Mon, 16 Jun 2025 17:43:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MJRbrwkI;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-3138b2f0249so4646933a91.2
        for <poky@lists.yoctoproject.org>; Mon, 16 Jun 2025 17:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750121018; x=1750725818; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eIrI0MLhecUbPQVhzyfB8BhnGqK0YPxpjROZJxvcVU0=;
        b=MJRbrwkIOg3Hg+s8re7xTDjxbn2tU2tMSdj9iHiP8Ksb2lk+a/k2VKrcKXnVadfw64
         V8Y7U847lpYKhhYstEjKpN+xV/TeeiqCseKi3oYmKYmacWiCwrDWP3Jsi7PQlgRJKLLj
         EfYOtGF+lxsKK+S+QnVluw5P4qeXmkpZreW6sJ+ErqDPcAwsGDmEAbDDW08KHW4juRt/
         bzYDEYtkWWZraLB6LYgnakxF2cv+5YX+2Ud8XCKZfeXJmPSRHq9O3VPCqfyenxolEIhD
         LsnCTmRkCc2TcVxcoQ3PRoPd/naRKq/xIwM7mtGdUkFEgADHjW/xmTgTcwXZ/U7HoNrB
         5hLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750121018; x=1750725818;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eIrI0MLhecUbPQVhzyfB8BhnGqK0YPxpjROZJxvcVU0=;
        b=JIoOb4+xOWbJ/qy2gFBO06GXf48oSBdPZPs5X8tXqlLk+8m+Teh+bKPnK75E/LC7uW
         epX33vu1YVGgq7D6Ht+m594wZiWJTuZYzIm2CaFFa9pM85lJs3cEK5Mv9tlmK6W/37uY
         oInKGZnj/WDn8dqwXtsVZVeXFQcwUxTITHn5cdci8bd4Rs718+D4kE4OcdmIDgB3rEPg
         vgzmjba5jpQcUBh4v2DJUQ2o7lwr1iu7lalOZsMGaMoYYbi/evSNehGslX4i9ndQyfFN
         tRWcvO2FH8w6S0EkWkgurIRAeJrxwTSmRvQVjarwDPehQxR2OObNfgeSOkX306o0h8pN
         +ZJg==
X-Forwarded-Encrypted: i=1; AJvYcCV49xrP4hkRxvx25L2xVhp1IO3ivY14Nsm0XwQeKu0XL/6o5nV0OrgXn4h3yuiR4dpVf1w8@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyDRyLdE7aAVE/J8YAXa98t0LZuyTBzxnZd0uDaYHEX6ASg87Io
	pcq+rIlY019gaP/A2MIaqUmwnPUZlDFRZnLDXrszElwG/5QpJeKbfMg7sRwKZ7h6ZXrA+qEZjF5
	9Q5CH2i7xGu57waR75MoEt/UCZewc974=
X-Gm-Gg: ASbGncsAUu8XMzz0yRX+rWIho1xnHYBcs+q+w6/rA91we+pt5K22BY/yVirw78/mjlU
	bNpQL9yoTN3zfx/UXl5sRerfvg08RQshCuCKF73/Rm6a6vTyqvIXhGzWMeEmC4OOfChYzVDbGl+
	chn+9ZBfGRzN6GjphuSlFbWu2+zet19efkQkH1eCfAF6JzryOa34Jq0V0=
X-Google-Smtp-Source: AGHT+IFnFfq/4SnZLA22wuTTjEIOiVSf2y6HsY4oCpTnGG8z6v+fw/BVtG32yMBpTjUHC57RY1ZrqixDzyhDS9UuXUk=
X-Received: by 2002:a17:90a:ec8e:b0:311:baa0:89ca with SMTP id
 98e67ed59e1d1-313f1e3ce90mr14243076a91.34.1750121017486; Mon, 16 Jun 2025
 17:43:37 -0700 (PDT)
MIME-Version: 1.0
References: <20250616184607.92039-1-alexander.sowarka@linaro.org>
 <20250616184607.92039-2-alexander.sowarka@linaro.org> <958D0280-79D4-4421-A161-4D5451A4D035@arm.com>
 <CADkTA4NYLyCqC1uNq8HHnofv-T+2HRLAa5r+K3UbKrLyFf06vw@mail.gmail.com> <CAOx2fPhrn25xq0EUTqYNwD3spNUkK2qY43KA-x5N4CyaUpeyXw@mail.gmail.com>
In-Reply-To: <CAOx2fPhrn25xq0EUTqYNwD3spNUkK2qY43KA-x5N4CyaUpeyXw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Mon, 16 Jun 2025 20:43:26 -0400
X-Gm-Features: AX0GCFt4U00G9jgAlNAM_zWaqk1EQeuZP61HgfYedNIVlTCCIU79Ko5vhPQBxps
Message-ID: <CADkTA4NDRn9CeEihk4M8-ck71Lwos6VXn16Xk=uBRz2EO4B0Yw@mail.gmail.com>
Subject: Re: [poky] [PATCH 1/1] linux-yocto: Use in-tree config for genericarm64
To: Alexander Sowarka <alexander.sowarka@linaro.org>
Cc: ross.burton@arm.com, 
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008fb0800637b9cdab"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 17 Jun 2025 00:43:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13654

--0000000000008fb0800637b9cdab
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 16, 2025 at 8:25=E2=80=AFPM Alexander Sowarka <
alexander.sowarka@linaro.org> wrote:

> Understood. I will talk with ARM internally how they would wish to handle
> it.
> I sadly do not think that board manufactures care to enable the
> genericarm64
> machine for their platform. ARM used the upstream kernel config in other
> places
> to create images that boot on most platforms. So I thought it would be
> useful.
> I will advise them to do something in their own layer if desired.
>

I get the push and pull on this! 14 years working at an OSV and working on
the
wrangling of configurations all that time (inside and outside of the
project) and then
continuing to have a different model (and view) from certain h/w companies
about
their reference/demo-ware configurations (I won't name names).

In fact, I maintain multiple parallel configurations with fragments versus
in-tree
deconfigs. I can help with tooling on this front if needed.

There's pros and cons to both.

We just chose to have a predictable base, and one that isn't targeted to
showing
all features, all the time .. just in case. That's what a lot of the
defconfigs do (and
I'm not claiming one way or the other here). But what we do have in that
base is
the foundation for keeping the configuration small/tight (when possible)
and one that
we know enables what we need for the autobuilder testing and then to layer
features
from higher level layers (i.e. meta-virt) or opt-in / dynamic features.

If all the references are using different defconfig bases, then we spend
our time
chasing a moving base and wondering why a runtime error is happening. Plus,
there
could be wildly different behaviour from the various platforms even on the
same
kernel version.  BUT, we do spend our time on the fragments. So time is
spent
no matter what (refer to my pros and cons statement :)

Anyway, you could definitely slap the defconfig on top, or replace in a
layer and
that's my suggestion if the fragments and enabling the h/w features that
are
required for a super wide / broad enablement just aren't working there.

Bruce



>
> Kind regards,
> Alexander Sowarka
>
>
> On Mon, 16 Jun 2025 at 20:49, Bruce Ashfield <bruce.ashfield@gmail.com>
> wrote:
>
>>
>>
>> On Mon, Jun 16, 2025 at 3:05=E2=80=AFPM Ross Burton via lists.yoctoproje=
ct.org
>> <ross.burton=3Darm.com@lists.yoctoproject.org> wrote:
>>
>>> On 16 Jun 2025, at 19:46, Alexander Sowarka via lists.yoctoproject.org
>>> <alexander.sowarka=3Dlinaro.org@lists.yoctoproject.org> wrote:
>>> >
>>> > The genericarm64 machine should run on most ARM SystemReady devices.
>>> > The arm64 configuration in the mainline kernel repository works stabl=
e
>>> > on a lot more devices then the poky internal one.
>>> > Switch to using the in-tree kernel config to run on more SystemReady
>>> > devices.
>>>
>>> This was almost by design: the initial target platform was the
>>> BeaglePlay, and then the Xilinx KV260.
>>>
>>> As the co-maintainer of this BSP I=E2=80=99d _much_ prefer to see the g=
aps fixed
>>> instead of upstream defconfig used blindly.  It=E2=80=99s an unusual up=
stream
>>> release where the defconfig doesn=E2=80=99t result in configuration war=
nings, and
>>> we have a general ethos that modular configurations are better than a
>>> single monolithic defconfig.
>>>
>>
>> And as one of our reference platforms, that's a hard NO from me (the in
>> tree defconfig).
>>
>> We do our references by the yocto policy, not the kitchen-sink in tree
>> defconfig.
>>
>> If there's issues with the fragments, fix them. Not this. There's
>> absolutely nothing by
>> accident about the way we do it currently.
>>
>> Bruce
>>
>>
>>
>>>
>>> Ross
>>>
>>>
>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>> Links: You receive all messages sent to this group.
>>> View/Reply Online (#13651):
>>> https://lists.yoctoproject.org/g/poky/message/13651
>>> Mute This Topic: https://lists.yoctoproject.org/mt/113676396/1050810
>>> Group Owner: poky+owner@lists.yoctoproject.org
>>> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
>>> bruce.ashfield@gmail.com]
>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>
>>>
>>
>> --
>> - Thou shalt not follow the NULL pointer, for chaos and madness await
>> thee at its end
>> - "Use the force Harry" - Gandalf, Star Trek II
>>
>>

--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--0000000000008fb0800637b9cdab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote gmail_quote_con=
tainer"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 16, 2025 at 8:25=
=E2=80=AFPM Alexander Sowarka &lt;<a href=3D"mailto:alexander.sowarka@linar=
o.org">alexander.sowarka@linaro.org</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Understood. I will=
 talk with ARM internally how they would wish to handle it.</div><div>I sad=
ly do not think that board manufactures care to enable the genericarm64</di=
v><div>machine for their platform. ARM used the upstream kernel config in o=
ther places</div><div>to create images that boot on most platforms. So I th=
ought it would be useful.</div><div>I will advise them to do something in t=
heir own layer if desired.</div></div></blockquote><div><br></div><div><div=
 class=3D"gmail_default" style=3D"font-size:small">I get the push and pull =
on this! 14 years working at an OSV and working on the</div><div class=3D"g=
mail_default" style=3D"font-size:small">wrangling of configurations all tha=
t time (inside and outside of the project) and then</div><div class=3D"gmai=
l_default" style=3D"font-size:small">continuing to have a different model (=
and view) from certain h/w companies about</div><div class=3D"gmail_default=
" style=3D"font-size:small">their reference/demo-ware configurations (I won=
&#39;t name names).</div><div class=3D"gmail_default" style=3D"font-size:sm=
all"><br></div><div class=3D"gmail_default" style=3D"font-size:small">In fa=
ct, I maintain multiple parallel configurations with fragments versus in-tr=
ee</div><div class=3D"gmail_default" style=3D"font-size:small">deconfigs. I=
 can help with tooling on this front if needed.</div><div class=3D"gmail_de=
fault" style=3D"font-size:small"><br></div><div class=3D"gmail_default" sty=
le=3D"font-size:small">There&#39;s pros and cons to both.</div><div class=
=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail_=
default" style=3D"font-size:small">We just chose to have a predictable base=
, and one that isn&#39;t targeted to showing</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small">all features, all the time .. just in case. T=
hat&#39;s what a lot of the defconfigs do (and</div><div class=3D"gmail_def=
ault" style=3D"font-size:small">I&#39;m not claiming one way or the other h=
ere). But what we do have in that base is</div><div class=3D"gmail_default"=
 style=3D"font-size:small">the foundation for keeping the configuration sma=
ll/tight (when possible) and one that</div><div class=3D"gmail_default" sty=
le=3D"font-size:small">we know enables what we need for the autobuilder tes=
ting and then to layer features</div><div class=3D"gmail_default" style=3D"=
font-size:small">from higher level layers (i.e. meta-virt) or opt-in / dyna=
mic features.</div><div class=3D"gmail_default" style=3D"font-size:small"><=
br></div><div class=3D"gmail_default" style=3D"font-size:small">If all the =
references are using different defconfig bases, then we spend our time</div=
><div class=3D"gmail_default" style=3D"font-size:small">chasing a moving ba=
se and wondering why a runtime error is happening. Plus, there</div><div cl=
ass=3D"gmail_default" style=3D"font-size:small">could be wildly different b=
ehaviour from the various platforms even on the same</div><div class=3D"gma=
il_default" style=3D"font-size:small">kernel version.=C2=A0 BUT, we do spen=
d our time on the fragments. So time is spent=C2=A0</div><div class=3D"gmai=
l_default" style=3D"font-size:small">no matter what (refer to my pros and c=
ons statement :)</div><div class=3D"gmail_default" style=3D"font-size:small=
"><br></div><div class=3D"gmail_default" style=3D"font-size:small">Anyway, =
you could definitely slap the defconfig on top, or replace in a layer and</=
div><div class=3D"gmail_default" style=3D"font-size:small">that&#39;s my su=
ggestion if the fragments and enabling the h/w features that are=C2=A0</div=
><div class=3D"gmail_default" style=3D"font-size:small">required for a supe=
r wide / broad enablement just aren&#39;t working there.</div><div class=3D=
"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail_def=
ault" style=3D"font-size:small">Bruce</div><br></div><div>=C2=A0</div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><br></di=
v><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr">Kind reg=
ards,<div>Alexander Sowarka</div></div></div></div><br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 16 Jun 2025 =
at 20:49, Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@gmail.com" ta=
rget=3D"_blank">bruce.ashfield@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><=
div style=3D"font-size:small"><br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 16, 2025 at 3:05=E2=80=
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
><div><div style=3D"font-size:small">And as one of our reference platforms,=
 that&#39;s a hard NO from me (the in tree defconfig).</div><div style=3D"f=
ont-size:small"><br></div><div style=3D"font-size:small">We do our referenc=
es by the yocto policy, not the kitchen-sink in tree defconfig.</div><div s=
tyle=3D"font-size:small"><br></div><div style=3D"font-size:small">If there&=
#39;s issues with the fragments, fix them. Not this. There&#39;s absolutely=
 nothing by</div><div style=3D"font-size:small">accident about the way we d=
o it currently.</div><div style=3D"font-size:small"><br></div><div style=3D=
"font-size:small">Bruce</div><br></div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
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
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature">- Thou shalt not follow the NULL pointer, for chaos and madness a=
wait thee at its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star T=
rek II<br><br></div></div>

--0000000000008fb0800637b9cdab--

