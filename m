Return-Path: <davepregan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90208CCFA05
	for <webhook@archiver.kernel.org>; Thu,  6 Nov 2025 11:18:07 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.12548.1762427885082423912
 for <poky@lists.yoctoproject.org>;
 Thu, 06 Nov 2025 03:18:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mR218DQc;
 spf=pass (domain: gmail.com, ip: 209.85.208.53, mailfrom: davepregan@gmail.com)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-6408f9cb1dcso1310370a12.3
        for <poky@lists.yoctoproject.org>; Thu, 06 Nov 2025 03:18:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762427883; x=1763032683; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PWqXj59pif6UbUEoSqCxaPRrdJ8JgR1dNg9JIyH0zHg=;
        b=mR218DQcnY4cKMp4fTjBt4utAVlAar2XFA6dyo+sGmP6eZ17ObCmjJX5XTkcFRpYoZ
         cXb5bUnCjWMXyweiUpS5Ld334AWk3SdOAFbNLSXsbYzHJ3iZmGZ5renecKpnhbAXi5pD
         bhlgRQVzaPXP0U0CuzfGH9LdlOsJyvEs2gQPz47zhrvf38xUJT0saLkrWtvn8beoMIeP
         cxcXu8N/+Mvw4fpwNk+xzSqVs27M8MnSMP40vh6SIQMAvZjNxSZ5bNPTOhnd0bbamygM
         0jKGy3/VSY3zkKJK+PtFhexcL4nnArwhJ+EC5Tu8oEsz3Hjvur1dhyoguJ8i1otYfuTU
         2iqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762427883; x=1763032683;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PWqXj59pif6UbUEoSqCxaPRrdJ8JgR1dNg9JIyH0zHg=;
        b=py9mTOB2TsTNYz/5rvqJpfvVz9SNP0Dy6JyFewRZRPxE79mPyr9GUJgRToqdeLOsRn
         BWN68WxXcHM3yzqpwsa/zZ7FboFutrhMVIOo3s1YaskTli2LuNajikUP4G+/hjlb4Mkw
         1qYk0RXn/i2Y5A96KshLQ+J1yfr/h+x5w81L1rb3fzIwS+DEJtP0I1mD+O6J9mMRqdrQ
         TuBqdIUDR7+6sPoyoe/4Q12WI82Asya4qF+cus0aMZeNJgMegEiiahW4HxxbBtfPpr/t
         NchPpb3e+eHcBLXINcYYe7iMI2KeMOfTpqOxCIMp/BH/YP6nA9o0L9Oewze6ihDYNSKU
         k1tg==
X-Gm-Message-State: AOJu0YwB5Vt5M6yYvFmyAAM14kMYWngwYpUeG9bh6Vo2hBydJtOus7U0
	K5uGJhA6jd36XVeRtFYwrJFOEpFc8KCsscHaGSG1zTACaTcheU/hl7/ZJjIUezSxCUEbXawkr0S
	v/8gW3px1DPTJODJ10lLH+U0YmzbbVlEPNfYH
X-Gm-Gg: ASbGncvQ/f+uOiDRvZ7r0JAUCcKIABUVfmow+xKZ38ftDdwDjI3bkNl7WYu8sfKrWqK
	B5xaVAbP2Ezdnf25/sj5MPNMhtPEeUXqgSdanEk5EslLTXo1XEYDW+Zo7v5sB0sqZK5MeG/3qKQ
	Z8ihSEbdUFrbk3Jp/h2grYlY9jlfAIFL4/qVNjZBz0vha31tXvhew9SJwjSaG6sDf0GasqaVPZQ
	bZjc5LD7rM6S6woRhIfSnMswfN5JT6HwNZ6wv8L4bmLIVsN3NBDfCwC9jq8xR01JWQp9+xZmi+h
	r6YH2j7w/IIFLDbWVpqDuML4VIrF
X-Google-Smtp-Source: AGHT+IFvpsyKYz1ZYGX3gI3qF24wP5MwkEAq2P3pv6WmP995pgv9w+/OOThEvxgqb3ZfuuBHd2ihcFs4xTjGqtqwbbc=
X-Received: by 2002:a05:6402:3507:b0:640:b3c4:c22 with SMTP id
 4fb4d7f45d1cf-64105a47acbmr5287589a12.18.1762427883004; Thu, 06 Nov 2025
 03:18:03 -0800 (PST)
MIME-Version: 1.0
From: David Regan <davepregan@gmail.com>
Date: Thu, 6 Nov 2025 11:17:50 +0000
X-Gm-Features: AWmQ_bk6cUglPHUII1Z3d7lBs3R9XoqszY0t1bE3cJ1bXXayrDZNynonS4E48kM
Message-ID: <CAHzZjuM04xDPTVo2u4p4wDv+HEAzGSd4mp0gNSoLU_QrO6AYfw@mail.gmail.com>
Subject: Problem building poky
To: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e8a6ee0642eb3794"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 06 Nov 2025 11:18:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13779

--000000000000e8a6ee0642eb3794
Content-Type: text/plain; charset="UTF-8"

Hi
I am completely new to linux and so will make rookie mistakes. Apologies
for that.
I have set up my pc as a dual boot and am running ubunutu 24.04.3.

Due to limited hard disk size I have connected an external drive which has
been formatted as ext4 and have installed poky on it.

I have followed the Quick Build instructions for poky on scarthgap branch
using bitbake core-image-sato to build

After a while it errors. Here are the last few lines of the log. There are
quite a few undefined references reported.

/media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
/media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_64-linux/python3-native/3.12.12/build/../Python-3.12.12/Modules/pwdmodule.c:175:(.text+0x4b0):
undefined reference to `PyEval_RestoreThread'
/media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
/media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_64-linux/python3-native/3.12.12/build/../Python-3.12.12/Modules/pwdmodule.c:175:(.text+0x56a):
undefined reference to `PyEval_RestoreThread'
/media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
Modules/pwdmodule.o: in function `pwd_getpwnam_impl':
/media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_64-linux/python3-native/3.12.12/build/../Python-3.12.12/Modules/pwdmodule.c:219:(.text+0x5cd):
undefined reference to `PyUnicode_EncodeFSDefault'
/media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
/media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_64-linux/python3-native/3.12.12/build/../Python-3.12.12/Modules/pwdmodule.c:230:(.text+0x5f6):
undefined reference to `PyEval_SaveThread'
/media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
/media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_64-linux/python3-native/3.12.12/build/../Python-3.12.12/Modules/pwdmodule.c:258:(.text+0x687):
undefined reference to `PyEval_RestoreThread'
/media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
Modules/pwdmodule.o: in function `pwd_getpwnam':
/media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_64-linux/python3-native/3.12.12/build/../Python-3.12.12/Modules/clinic/pwdmodule.c.h:43:(.text+0x71c):
undefined reference to `_PyArg_BadArgument'
/media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
Modules/pwdmodule.o: in function `pwd_getpwnam_impl':
/media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_64-linux/python3-native/3.12.12/build/../Python-3.12.12/Modules/pwdmodule.c:258:(.text+0x751):
undefined reference to `PyEval_RestoreThread'
/media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
/media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_64-linux/python3-native/3.12.12/build/../Python-3.12.12/Modules/pwdmodule.c:258:(.text+0x7a2):
undefined reference to `PyEval_RestoreThread'
collect2: error: ld returned 1 exit status
make: *** [Makefile:1316: Programs/_freeze_module] Error 1
ERROR: oe_runmake failed
WARNING: exit code 1 from a shell command.

I would have expected this to build without any errors as I have not
modified anything. Part way through the build my session became
unresponsive (mouse not moving - I was using it to keep the terminal alive)
and the terminal stopped and returned me to the desktop.

Could somebody advise on how this can be resolved.

Kind regards
Dave Regan

--000000000000e8a6ee0642eb3794
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"border:0px;font-variant-numeric:inherit;font=
-variant-east-asian:inherit;font-variant-alternates:inherit;font-stretch:in=
herit;font-size:11pt;line-height:inherit;font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size-adjust:inheri=
t;font-kerning:inherit;font-feature-settings:inherit;margin:0px;padding:0px=
;vertical-align:baseline;color:rgb(0,0,0)">Hi=C2=A0<br>I am completely new =
to linux and so will make rookie mistakes. Apologies for that.</div><div st=
yle=3D"border:0px;font-variant-numeric:inherit;font-variant-east-asian:inhe=
rit;font-variant-alternates:inherit;font-stretch:inherit;font-size:11pt;lin=
e-height:inherit;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,C=
alibri,Helvetica,sans-serif;font-size-adjust:inherit;font-kerning:inherit;f=
ont-feature-settings:inherit;margin:0px;padding:0px;vertical-align:baseline=
;color:rgb(0,0,0)">I have set up my pc as a dual boot and am running ubunut=
u 24.04.3.=C2=A0</div><div style=3D"border:0px;font-variant-numeric:inherit=
;font-variant-east-asian:inherit;font-variant-alternates:inherit;font-stret=
ch:inherit;font-size:11pt;line-height:inherit;font-family:Aptos,Aptos_Embed=
dedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size-adjust:i=
nherit;font-kerning:inherit;font-feature-settings:inherit;margin:0px;paddin=
g:0px;vertical-align:baseline;color:rgb(0,0,0)"><br></div><div style=3D"bor=
der:0px;font-variant-numeric:inherit;font-variant-east-asian:inherit;font-v=
ariant-alternates:inherit;font-stretch:inherit;font-size:11pt;line-height:i=
nherit;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Hel=
vetica,sans-serif;font-size-adjust:inherit;font-kerning:inherit;font-featur=
e-settings:inherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb=
(0,0,0)">Due to limited hard disk size I have connected an external drive w=
hich has been formatted as ext4 and have installed poky on it.</div><div st=
yle=3D"border:0px;font-variant-numeric:inherit;font-variant-east-asian:inhe=
rit;font-variant-alternates:inherit;font-stretch:inherit;font-size:11pt;lin=
e-height:inherit;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,C=
alibri,Helvetica,sans-serif;font-size-adjust:inherit;font-kerning:inherit;f=
ont-feature-settings:inherit;margin:0px;padding:0px;vertical-align:baseline=
;color:rgb(0,0,0)"><br></div><div style=3D"border:0px;font-variant-numeric:=
inherit;font-variant-east-asian:inherit;font-variant-alternates:inherit;fon=
t-stretch:inherit;font-size:11pt;line-height:inherit;font-family:Aptos,Apto=
s_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size-a=
djust:inherit;font-kerning:inherit;font-feature-settings:inherit;margin:0px=
;padding:0px;vertical-align:baseline;color:rgb(0,0,0)">I have followed the =
Quick Build instructions for poky on scarthgap branch=C2=A0</div><div style=
=3D"border:0px;font-variant-numeric:inherit;font-variant-east-asian:inherit=
;font-variant-alternates:inherit;font-stretch:inherit;font-size:11pt;line-h=
eight:inherit;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size-adjust:inherit;font-kerning:inherit;font=
-feature-settings:inherit;margin:0px;padding:0px;vertical-align:baseline;co=
lor:rgb(0,0,0)">using bitbake core-image-sato to build</div><div style=3D"b=
order:0px;font-variant-numeric:inherit;font-variant-east-asian:inherit;font=
-variant-alternates:inherit;font-stretch:inherit;font-size:11pt;line-height=
:inherit;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,H=
elvetica,sans-serif;font-size-adjust:inherit;font-kerning:inherit;font-feat=
ure-settings:inherit;margin:0px;padding:0px;vertical-align:baseline;color:r=
gb(0,0,0)"><br></div><div style=3D"border:0px;font-variant-numeric:inherit;=
font-variant-east-asian:inherit;font-variant-alternates:inherit;font-stretc=
h:inherit;font-size:11pt;line-height:inherit;font-family:Aptos,Aptos_Embedd=
edFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size-adjust:in=
herit;font-kerning:inherit;font-feature-settings:inherit;margin:0px;padding=
:0px;vertical-align:baseline;color:rgb(0,0,0)">After a while it errors. Her=
e are the last few lines of the log. There are quite a few undefined refere=
nces reported.<br><br>/media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build/pok=
y/build/tmp/hosttools/ld: /media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build=
/poky/build/tmp/work/x86_64-linux/python3-native/3.12.12/build/../Python-3.=
12.12/Modules/pwdmodule.c:175:(.text+0x4b0): undefined reference to `PyEval=
_RestoreThread&#39;</div><div style=3D"border:0px;font-variant-numeric:inhe=
rit;font-variant-east-asian:inherit;font-variant-alternates:inherit;font-st=
retch:inherit;font-size:11pt;line-height:inherit;font-family:Aptos,Aptos_Em=
beddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size-adjus=
t:inherit;font-kerning:inherit;font-feature-settings:inherit;margin:0px;pad=
ding:0px;vertical-align:baseline;color:rgb(0,0,0)">/media/&lt;me&gt;/linux_=
extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld: /media/&lt;me&gt;/li=
nux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_64-linux/python3-nati=
ve/3.12.12/build/../Python-3.12.12/Modules/pwdmodule.c:175:(.text+0x56a): u=
ndefined reference to `PyEval_RestoreThread&#39;</div><div style=3D"border:=
0px;font-variant-numeric:inherit;font-variant-east-asian:inherit;font-varia=
nt-alternates:inherit;font-stretch:inherit;font-size:11pt;line-height:inher=
it;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helveti=
ca,sans-serif;font-size-adjust:inherit;font-kerning:inherit;font-feature-se=
ttings:inherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(0,0=
,0)">/media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hostt=
ools/ld: Modules/pwdmodule.o: in function `pwd_getpwnam_impl&#39;:</div><di=
v style=3D"border:0px;font-variant-numeric:inherit;font-variant-east-asian:=
inherit;font-variant-alternates:inherit;font-stretch:inherit;font-size:11pt=
;line-height:inherit;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServi=
ce,Calibri,Helvetica,sans-serif;font-size-adjust:inherit;font-kerning:inher=
it;font-feature-settings:inherit;margin:0px;padding:0px;vertical-align:base=
line;color:rgb(0,0,0)">/media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build/po=
ky/build/tmp/work/x86_64-linux/python3-native/3.12.12/build/../Python-3.12.=
12/Modules/pwdmodule.c:219:(.text+0x5cd): undefined reference to `PyUnicode=
_EncodeFSDefault&#39;</div><div style=3D"border:0px;font-variant-numeric:in=
herit;font-variant-east-asian:inherit;font-variant-alternates:inherit;font-=
stretch:inherit;font-size:11pt;line-height:inherit;font-family:Aptos,Aptos_=
EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size-adj=
ust:inherit;font-kerning:inherit;font-feature-settings:inherit;margin:0px;p=
adding:0px;vertical-align:baseline;color:rgb(0,0,0)">/media/&lt;me&gt;/linu=
x_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld: /media/&lt;me&gt;/=
linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_64-linux/python3-na=
tive/3.12.12/build/../Python-3.12.12/Modules/pwdmodule.c:230:(.text+0x5f6):=
 undefined reference to `PyEval_SaveThread&#39;</div><div style=3D"border:0=
px;font-variant-numeric:inherit;font-variant-east-asian:inherit;font-varian=
t-alternates:inherit;font-stretch:inherit;font-size:11pt;line-height:inheri=
t;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetic=
a,sans-serif;font-size-adjust:inherit;font-kerning:inherit;font-feature-set=
tings:inherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(0,0,=
0)">/media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hostto=
ols/ld: /media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/wo=
rk/x86_64-linux/python3-native/3.12.12/build/../Python-3.12.12/Modules/pwdm=
odule.c:258:(.text+0x687): undefined reference to `PyEval_RestoreThread&#39=
;</div><div style=3D"border:0px;font-variant-numeric:inherit;font-variant-e=
ast-asian:inherit;font-variant-alternates:inherit;font-stretch:inherit;font=
-size:11pt;line-height:inherit;font-family:Aptos,Aptos_EmbeddedFont,Aptos_M=
SFontService,Calibri,Helvetica,sans-serif;font-size-adjust:inherit;font-ker=
ning:inherit;font-feature-settings:inherit;margin:0px;padding:0px;vertical-=
align:baseline;color:rgb(0,0,0)">/media/&lt;me&gt;/linux_extdsk/dr_ext/yoct=
o_build/poky/build/tmp/hosttools/ld: Modules/pwdmodule.o: in function `pwd_=
getpwnam&#39;:</div><div style=3D"border:0px;font-variant-numeric:inherit;f=
ont-variant-east-asian:inherit;font-variant-alternates:inherit;font-stretch=
:inherit;font-size:11pt;line-height:inherit;font-family:Aptos,Aptos_Embedde=
dFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size-adjust:inh=
erit;font-kerning:inherit;font-feature-settings:inherit;margin:0px;padding:=
0px;vertical-align:baseline;color:rgb(0,0,0)">/media/&lt;me&gt;/linux_extds=
k/dr_ext/yocto_build/poky/build/tmp/work/x86_64-linux/python3-native/3.12.1=
2/build/../Python-3.12.12/Modules/clinic/pwdmodule.c.h:43:(.text+0x71c): un=
defined reference to `_PyArg_BadArgument&#39;</div><div style=3D"border:0px=
;font-variant-numeric:inherit;font-variant-east-asian:inherit;font-variant-=
alternates:inherit;font-stretch:inherit;font-size:11pt;line-height:inherit;=
font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,=
sans-serif;font-size-adjust:inherit;font-kerning:inherit;font-feature-setti=
ngs:inherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(0,0,0)=
">/media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttool=
s/ld: Modules/pwdmodule.o: in function `pwd_getpwnam_impl&#39;:</div><div s=
tyle=3D"border:0px;font-variant-numeric:inherit;font-variant-east-asian:inh=
erit;font-variant-alternates:inherit;font-stretch:inherit;font-size:11pt;li=
ne-height:inherit;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size-adjust:inherit;font-kerning:inherit;=
font-feature-settings:inherit;margin:0px;padding:0px;vertical-align:baselin=
e;color:rgb(0,0,0)">/media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build/poky/=
build/tmp/work/x86_64-linux/python3-native/3.12.12/build/../Python-3.12.12/=
Modules/pwdmodule.c:258:(.text+0x751): undefined reference to `PyEval_Resto=
reThread&#39;</div><div style=3D"border:0px;font-variant-numeric:inherit;fo=
nt-variant-east-asian:inherit;font-variant-alternates:inherit;font-stretch:=
inherit;font-size:11pt;line-height:inherit;font-family:Aptos,Aptos_Embedded=
Font,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size-adjust:inhe=
rit;font-kerning:inherit;font-feature-settings:inherit;margin:0px;padding:0=
px;vertical-align:baseline;color:rgb(0,0,0)">/media/&lt;me&gt;/linux_extdsk=
/dr_ext/yocto_build/poky/build/tmp/hosttools/ld: /media/&lt;me&gt;/linux_ex=
tdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_64-linux/python3-native/3.1=
2.12/build/../Python-3.12.12/Modules/pwdmodule.c:258:(.text+0x7a2): undefin=
ed reference to `PyEval_RestoreThread&#39;</div><div style=3D"border:0px;fo=
nt-variant-numeric:inherit;font-variant-east-asian:inherit;font-variant-alt=
ernates:inherit;font-stretch:inherit;font-size:11pt;line-height:inherit;fon=
t-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,san=
s-serif;font-size-adjust:inherit;font-kerning:inherit;font-feature-settings=
:inherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(0,0,0)">c=
ollect2: error: ld returned 1 exit status</div><div style=3D"border:0px;fon=
t-variant-numeric:inherit;font-variant-east-asian:inherit;font-variant-alte=
rnates:inherit;font-stretch:inherit;font-size:11pt;line-height:inherit;font=
-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans=
-serif;font-size-adjust:inherit;font-kerning:inherit;font-feature-settings:=
inherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(0,0,0)">ma=
ke: *** [Makefile:1316: Programs/_freeze_module] Error 1</div><div style=3D=
"border:0px;font-variant-numeric:inherit;font-variant-east-asian:inherit;fo=
nt-variant-alternates:inherit;font-stretch:inherit;font-size:11pt;line-heig=
ht:inherit;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri=
,Helvetica,sans-serif;font-size-adjust:inherit;font-kerning:inherit;font-fe=
ature-settings:inherit;margin:0px;padding:0px;vertical-align:baseline;color=
:rgb(0,0,0)">ERROR: oe_runmake failed</div><div style=3D"border:0px;font-va=
riant-numeric:inherit;font-variant-east-asian:inherit;font-variant-alternat=
es:inherit;font-stretch:inherit;font-size:11pt;line-height:inherit;font-fam=
ily:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-ser=
if;font-size-adjust:inherit;font-kerning:inherit;font-feature-settings:inhe=
rit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(0,0,0)">WARNIN=
G: exit code 1 from a shell command.</div><div style=3D"border:0px;font-var=
iant-numeric:inherit;font-variant-east-asian:inherit;font-variant-alternate=
s:inherit;font-stretch:inherit;font-size:11pt;line-height:inherit;font-fami=
ly:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-seri=
f;font-size-adjust:inherit;font-kerning:inherit;font-feature-settings:inher=
it;margin:0px;padding:0px;vertical-align:baseline;color:rgb(0,0,0)"><br></d=
iv><div style=3D"border:0px;font-variant-numeric:inherit;font-variant-east-=
asian:inherit;font-variant-alternates:inherit;font-stretch:inherit;font-siz=
e:11pt;line-height:inherit;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFon=
tService,Calibri,Helvetica,sans-serif;font-size-adjust:inherit;font-kerning=
:inherit;font-feature-settings:inherit;margin:0px;padding:0px;vertical-alig=
n:baseline;color:rgb(0,0,0)">I would have expected this to build without an=
y errors as I have not modified anything. Part way through the build my ses=
sion became unresponsive (mouse not moving - I was using it to keep the ter=
minal alive) and the terminal stopped and returned me to the desktop.</div>=
<div style=3D"border:0px;font-variant-numeric:inherit;font-variant-east-asi=
an:inherit;font-variant-alternates:inherit;font-stretch:inherit;font-size:1=
1pt;line-height:inherit;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontSe=
rvice,Calibri,Helvetica,sans-serif;font-size-adjust:inherit;font-kerning:in=
herit;font-feature-settings:inherit;margin:0px;padding:0px;vertical-align:b=
aseline;color:rgb(0,0,0)"><br></div><div style=3D"border:0px;font-variant-n=
umeric:inherit;font-variant-east-asian:inherit;font-variant-alternates:inhe=
rit;font-stretch:inherit;font-size:11pt;line-height:inherit;font-family:Apt=
os,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font=
-size-adjust:inherit;font-kerning:inherit;font-feature-settings:inherit;mar=
gin:0px;padding:0px;vertical-align:baseline;color:rgb(0,0,0)">Could somebod=
y advise on how this can be resolved.</div><div style=3D"border:0px;font-va=
riant-numeric:inherit;font-variant-east-asian:inherit;font-variant-alternat=
es:inherit;font-stretch:inherit;font-size:11pt;line-height:inherit;font-fam=
ily:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-ser=
if;font-size-adjust:inherit;font-kerning:inherit;font-feature-settings:inhe=
rit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(0,0,0)"><br></=
div><div style=3D"border:0px;font-variant-numeric:inherit;font-variant-east=
-asian:inherit;font-variant-alternates:inherit;font-stretch:inherit;font-si=
ze:11pt;line-height:inherit;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size-adjust:inherit;font-kernin=
g:inherit;font-feature-settings:inherit;margin:0px;padding:0px;vertical-ali=
gn:baseline;color:rgb(0,0,0)">Kind regards</div><div style=3D"border:0px;fo=
nt-variant-numeric:inherit;font-variant-east-asian:inherit;font-variant-alt=
ernates:inherit;font-stretch:inherit;font-size:11pt;line-height:inherit;fon=
t-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,san=
s-serif;font-size-adjust:inherit;font-kerning:inherit;font-feature-settings=
:inherit;margin:0px;padding:0px;vertical-align:baseline;color:rgb(0,0,0)">D=
ave Regan</div></div>

--000000000000e8a6ee0642eb3794--

