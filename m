Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web12.375.1637075702411470469
 for <poky@lists.yoctoproject.org>;
 Tue, 16 Nov 2021 07:15:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HK3GrOyp;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: quaresma.jose@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id bi37so49176679lfb.5
        for <poky@lists.yoctoproject.org>; Tue, 16 Nov 2021 07:15:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xOtnQuHuOFJAbOfD13UN7MUKImaBTxjSe9dt253dteo=;
        b=HK3GrOypXNng2BGhthCA1GFsKjBqqNuxOdD8mouGBB11Rjuuf1KUClDrqnoUdSWnrg
         8RB+cGR/PelLyf3IDcHUkcVTElA2KB73UailExSFvKQ+sh0/Ys+nondLx1awVg4IPydL
         tTrslCp9dfJQF/CIu0DflEu34WBw6jq7C+gEG4s8nwhAY8zOoNi1r5Q451dD8ibrrAWP
         Nq3pIlz324AWqvQCdE7Rag9ebcPE+Ne8CBtyw/hiaH0ZQq4a8mwmIzZu1vALfTv6Gfsc
         RsKggIG4DCfbZ6JqWD+xqdfXJJR+JY5bsNblmKY/TJ7KObOkmEWHp/FpXVtDMu2nT3fP
         TGog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xOtnQuHuOFJAbOfD13UN7MUKImaBTxjSe9dt253dteo=;
        b=o0vA/50yYKcQFiGAFkSyiRpk6gYbiWSADwVY9vwwEDWnqaYt96YyKKnUzlVLgQZYou
         hOn0Me5KhnR5j5+2NS+4ZBTHZG21spdgMRT+vEwupw9JBbK+0zNryH4MFDb+/d+8lsoO
         PCKeXMtqzNOpLYxDzmiX7+vRxTvd+PDUyng6gD6FLtH8iMVEXfEb9HbYj8I4/b/35Hmm
         hdXexUznr3RTKUk4J7oAF16ulZVcjz+o5tzxWhsXcVPhT9xWix5lVu3IndWIdRIkp8R2
         cqi00yE773YDEUswXnGOMSV90jH5u24KtkrcCYIKh65VIu8rDzGA1szUGEVEknIFyYB8
         Tddg==
X-Gm-Message-State: AOAM530xG7zKUkNRRdsMURHo1QiY+KicEd26sRuxYgc/1j89AyxgqxdB
	i3ASAZS9nCIXUzjACIgAt89R/+CEjZoTiFoEi5k=
X-Google-Smtp-Source: ABdhPJypeuwJvOkGzeTr7AUyeG7KV7Zi1i1Kv4+jpBvsYCuN6qFREm01tlLL2mhI3DhPb9nJr4Vb4VzKdVKo0mQjHKs=
X-Received: by 2002:a19:c154:: with SMTP id r81mr7209794lff.95.1637075700464;
 Tue, 16 Nov 2021 07:15:00 -0800 (PST)
MIME-Version: 1.0
References: <XU7M.1637073652072348550.thFj@lists.yoctoproject.org>
In-Reply-To: <XU7M.1637073652072348550.thFj@lists.yoctoproject.org>
From: "Jose Quaresma" <quaresma.jose@gmail.com>
Date: Tue, 16 Nov 2021 15:14:49 +0000
Message-ID: <CANPvuRmt4MtdJyaVBCfCQWX+FcpQ3v-wxWZTiuAtCFBsgZ0ikQ@mail.gmail.com>
Subject: Re: [poky] Initial pointer to start with new BSP for Yocto 3.1 with ARM-V8.2 Cortex-A55
To: Ashishx88 <ashish.emailaddress@gmail.com>
Cc: poky <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000098be8c05d0e963a3"

--00000000000098be8c05d0e963a3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ashish,

Nvidia Jetson Xavier NX uses an ARMv8.2 CPU
https://elinux.org/Jetson_Xavier_NX

You can look in meta-tegra layer how is it done:

https://github.com/OE4T/meta-tegra/blob/master/conf/machine/jetson-xavier-n=
x-devkit.conf
https://github.com/OE4T/meta-tegra/blob/master/conf/machine/include/xavier-=
nx.inc
https://github.com/OE4T/meta-tegra/blob/master/conf/machine/include/tegra19=
4.inc

require conf/machine/include/arm/arch-armv8-2a.inc


That uses yocto tunning from
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/conf/machine/incl=
ude/arm/arch-armv8-2a.inc

Jose

Ashishx88 <ashish.emailaddress@gmail.com> escreveu no dia ter=C3=A7a, 16/11=
/2021
=C3=A0(s) 14:40:

> Hi Team ,
>
> I have an kernel code base wich we want to add to our existing Yocto BSP =
.
> we have Yocto 3.1 BSP for x86-64 architecture .
>
> We have an ARM board for which we use to compile using traditional way
>
> Any pointer as to how to approach creation of new BSP for ARM-V8.2
> Cortex-A55 , 64bit little endian
> - Like is there any existing sample Yocto ARM-V8.2 BSP which i can look .
> - Pointer to add new architecture to existing Yocto BSP
> - Any other suggestion will be helpful
>
> So basically i want to add Kernel for ARMV-8.2 to our Yocto BSP ( which w=
e
> have checked for x86-64 )
>
> Thanks ,
> Ashish
>
>=20
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--00000000000098be8c05d0e963a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0<span style=3D"color:rgb(0,0,0)">Ashish,</span><di=
v><span style=3D"color:rgb(0,0,0)"><br></span></div><div>Nvidia Jetson Xavi=
er NX uses an ARMv8.2 CPU<span style=3D"color:rgb(0,0,0)"><br></span></div>=
<div><a href=3D"https://elinux.org/Jetson_Xavier_NX">https://elinux.org/Jet=
son_Xavier_NX</a><span style=3D"color:rgb(0,0,0)"><br></span></div><div><br=
></div><div><span style=3D"color:rgb(0,0,0)">You can look in meta-tegra lay=
er=C2=A0</span>how is it done<span style=3D"color:rgb(0,0,0)">:</span></div=
><div><span style=3D"color:rgb(0,0,0)"><br></span></div><div><a href=3D"htt=
ps://github.com/OE4T/meta-tegra/blob/master/conf/machine/jetson-xavier-nx-d=
evkit.conf">https://github.com/OE4T/meta-tegra/blob/master/conf/machine/jet=
son-xavier-nx-devkit.conf</a><span style=3D"color:rgb(0,0,0)"><br></span></=
div><div><a href=3D"https://github.com/OE4T/meta-tegra/blob/master/conf/mac=
hine/include/xavier-nx.inc">https://github.com/OE4T/meta-tegra/blob/master/=
conf/machine/include/xavier-nx.inc</a><br></div><div><a href=3D"https://git=
hub.com/OE4T/meta-tegra/blob/master/conf/machine/include/tegra194.inc">http=
s://github.com/OE4T/meta-tegra/blob/master/conf/machine/include/tegra194.in=
c</a><br></div><div><br></div><div><table class=3D"gmail-highlight gmail-ta=
b-size gmail-js-file-line-container" style=3D"border-spacing:0px;border-col=
lapse:collapse;color:rgb(36,41,47);font-family:-apple-system,BlinkMacSystem=
Font,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoj=
i&quot;,&quot;Segoe UI Emoji&quot;;font-size:14px"><tbody style=3D"box-sizi=
ng:border-box"><tr style=3D"box-sizing:border-box;background-color:transpar=
ent"></tr><tr style=3D"box-sizing:border-box"><td id=3D"gmail-LC7" class=3D=
"gmail-blob-code gmail-blob-code-inner gmail-js-file-line" style=3D"box-siz=
ing:border-box;padding:0px 10px;line-height:20px;vertical-align:top;overflo=
w:visible;font-family:ui-monospace,SFMono-Regular,&quot;SF Mono&quot;,Menlo=
,Consolas,&quot;Liberation Mono&quot;,monospace;font-size:12px;white-space:=
pre">require<span class=3D"gmail-pl-k" style=3D"box-sizing:border-box"> </s=
pan>conf/machine/<span class=3D"gmail-pl-k" style=3D"box-sizing:border-box"=
>include</span>/arm/arch-armv8-2a.inc</td></tr><tr style=3D"box-sizing:bord=
er-box;background-color:transparent"><td id=3D"gmail-L8" class=3D"gmail-blo=
b-num gmail-js-line-number" style=3D"box-sizing:border-box;padding:0px 10px=
;width:50px;min-width:50px;font-family:ui-monospace,SFMono-Regular,&quot;SF=
 Mono&quot;,Menlo,Consolas,&quot;Liberation Mono&quot;,monospace;font-size:=
12px;line-height:20px;text-align:right;white-space:nowrap;vertical-align:to=
p"></td></tr></tbody></table><div><br></div><div>That uses yocto tunning fr=
om <a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/con=
f/machine/include/arm/arch-armv8-2a.inc">https://git.yoctoproject.org/cgit/=
cgit.cgi/poky/tree/meta/conf/machine/include/arm/arch-armv8-2a.inc</a></div=
><div><br></div></div><div>Jose</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">Ashishx88 &lt;<a href=3D"mailto:ashish=
.emailaddress@gmail.com">ashish.emailaddress@gmail.com</a>&gt; escreveu no =
dia ter=C3=A7a, 16/11/2021 =C3=A0(s) 14:40:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><p>Hi Team ,=C2=A0<br><br>I have an kernel code=
 base wich we want to add to our existing Yocto BSP .<br>we have Yocto 3.1 =
BSP for x86-64 architecture .<br><br>We have an ARM board for which we use =
to compile using traditional way=C2=A0<br><br><span style=3D"color:rgb(0,0,=
0);font-family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;font-size:13px=
">Any pointer as to how to approach creation of new BSP for=C2=A0</span><sp=
an style=3D"color:rgb(0,0,0);font-family:Roboto,RobotoDraft,Helvetica,Arial=
,sans-serif"><span style=3D"font-size:13px">ARM-V8.2 Cortex-A55 , 64bit lit=
tle endian</span></span><br><span style=3D"color:rgb(0,0,0);font-family:Rob=
oto,RobotoDraft,Helvetica,Arial,sans-serif"><span style=3D"font-size:13px">=
- Like is there any existing sample Yocto ARM-V8.2 BSP which i can look .</=
span></span><br><span style=3D"color:rgb(0,0,0);font-family:Roboto,RobotoDr=
aft,Helvetica,Arial,sans-serif"><span style=3D"font-size:13px">- Pointer to=
 add new architecture to existing Yocto BSP=C2=A0<br></span></span>- Any ot=
her suggestion will be helpful=C2=A0<br><br>So basically i want to add Kern=
el for ARMV-8.2 to our Yocto BSP ( which we have checked for x86-64 )=C2=A0=
<br><br>Thanks ,<br>Ashish=C2=A0</p>
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Best regards,<div><br>Jos=C3=A9=
 Quaresma</div></div></div>

--00000000000098be8c05d0e963a3--
