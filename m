Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web08.10409.1628177373337190877
 for <poky@lists.yoctoproject.org>;
 Thu, 05 Aug 2021 08:29:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UTS0WLJj;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id x12so3118891qvo.12
        for <poky@lists.yoctoproject.org>; Thu, 05 Aug 2021 08:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uVWYmO/HC92qo1ttGKtGlqsPcfKPDDJpfFfp+wIF+uk=;
        b=UTS0WLJjTysaakLE4gr0hYbACp6RXe2MG7P02+s8tUxYa0v/sPpJk1/f5qed45YJq8
         +6LAgGqx2+8retEBi8n1DaonDsuBiUEGBE7Hoi933Px4k7pzD/XxTFBOYcsas43G2ZEa
         UiFIoce6TrS/JOwnMvF40JK/n9XVjcXbmk2cMQ8DC7e4bfQyEOCvFXRO85attqvEgAyi
         igEkQsQFtEdRHlIXCVSQkw801oj0uO+ZGUm/eMj8L0GrtvD7+nTXuCVV4zzHk/IiE7s1
         ljP4CLPZYFZ6F0LPxb+XjaOpVvzgt4RjQ+Y6ovs1HxkAvPo34IuEHri8+Md52IOJsAMi
         Pf2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uVWYmO/HC92qo1ttGKtGlqsPcfKPDDJpfFfp+wIF+uk=;
        b=DDzH0W+q9qs7M28SY+6FUXYD1If/ZocHQAuKOkDbF1aR7zr7DhaW9O8koGTcYgKd2S
         1nl9hZtB9Hjg8xzQU6uq82h0FeRIFeUwg5SetP2Gm/4u1EVGYWSbEqGMU1mUXOjAzeOG
         fDeCIg4sUt0hxLElgtUO+IKjle+gIHbw9TSwtf751AmdezIFV6Bls/i0KCu9XZ0O8QEr
         Y+bS948WW9efgbQExs/Jujctyrcr0djMm0aUuWkIBwCiSeJ64pTamJjKQYX0rhbUN0bv
         qd8T0EdhpRQzpkmYFRFGm5BQvSf23WPn5Uwd5U3edcbHfRUld12IoLdGTINZQSPqZJs2
         aqIw==
X-Gm-Message-State: AOAM530bOAyK+MI8U0kN11DzXBpqnYYXMOyaUj9cotgDMnrVeguE07eS
	bgt4tn/+6zviQb4+7rpNT0c2sTWXdzgXCOsxqVg=
X-Google-Smtp-Source: ABdhPJzxr2sdAlE/BhJbVqg0QdHy4lzzwyZ9Z0eEQjfQpZQEE1DTM2Y5d6lkXdzdrgw9ho7roGKgGxuXZwL5vQt7Axw=
X-Received: by 2002:a05:6214:b33:: with SMTP id w19mr5839711qvj.50.1628177372383;
 Thu, 05 Aug 2021 08:29:32 -0700 (PDT)
MIME-Version: 1.0
References: <AM0PR04MB4804A80F5E94384602603C60E2F29@AM0PR04MB4804.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB4804A80F5E94384602603C60E2F29@AM0PR04MB4804.eurprd04.prod.outlook.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 5 Aug 2021 08:29:06 -0700
Message-ID: <CAMKF1sqKeJOnUW2r+mhEwnA6=Hu3FSWGrTy_n0Jq3imKZ2qviw@mail.gmail.com>
Subject: Re: [poky] Backport to dunfell question
To: milan.stevanovic@se.com
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e98e8305c8d195a7"

--000000000000e98e8305c8d195a7
Content-Type: text/plain; charset="UTF-8"

On Thu, Aug 5, 2021 at 6:09 AM Milan STEVANOVIC via lists.yoctoproject.org
<milan.stevanovic=se.com@lists.yoctoproject.org> wrote:

>
>
> Hi all,
>
>
>
> I hope this isn't inappropriate for the list Current poky dunfell LTS is
> using systemd stable version 244.5.
>
> In same time, master is on 249.1 and hardknott on 247.6
>
>
>
> Is there a some plan to backport one of these two versions  of systemd to
> dunfell ?
>
>
Usually version bumps for core packages on releases are not in backport
policy, systemd
is a tricky piece to retrofit without major effort.


> We can create patch for backport to dunfell if this kind of version change
> is acceptable by dunfell LTS rules.
>
>
There still exists the concept of mixin layers, so perhaps you could try
checking if others in
community are interested as well.



>
>
> Thanks a lot
>
> Milan
>
>
>
> Milan Stevanovic
> OS/BSP Architect
> DIP - Device Intelligence Platform
> Technology
> Schneider Electric
>
> M +33 (0)6 73 26 20 85
> E  milan.stevanovic@se.com
>
> 160 Avenue des Martyrs
> 38000 Grenoble
> France
>
>
>
>
> <http://www.schneider-electric.com/b2b/en/campaign/innovation/overview.jsp#xtor=CS4-204-[Display]--->
>
>
>
> *Please consider the environment before printing this e-mail
>
> [image: Blog] <https://www.facebook.com/SchneiderElectric> [image: Blog]
> <https://www.linkedin.com/company/schneider-electric> [image: Blog]
> <http://blog.schneider-electric.com/> [image: Blog]
> <https://www.twitter.com/SchneiderElec> [image: Blog]
> <https://www.youtube.com/schneidercorporate> [image: Blog]
> <https://plus.google.com/+schneiderelectric> [image: Blog]
> <https://instagram.com/schneiderelectric>
>
>
>
>
>
> Internal
>
> 
>
>

--000000000000e98e8305c8d195a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:monospace,monospace"><br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 5, 2021 at 6:09 AM Mila=
n STEVANOVIC via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproje=
ct.org</a> &lt;milan.stevanovic=3D<a href=3D"mailto:se.com@lists.yoctoproje=
ct.org">se.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">





<div lang=3D"FR" style=3D"overflow-wrap: break-word;">
<div class=3D"gmail-m_-4133464001664500629WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p=
>
<p class=3D"gmail-m_-4133464001664500629MsoPlainText"><span lang=3D"EN-US"=
>Hi all,<u></u><u></u></span></p>
<p class=3D"gmail-m_-4133464001664500629MsoPlainText"><span lang=3D"EN-US"=
><u></u>=C2=A0<u></u></span></p>
<p class=3D"gmail-m_-4133464001664500629MsoPlainText"><span lang=3D"EN-US"=
>I hope this isn&#39;t inappropriate for the list Current poky dunfell LTS =
is using systemd stable version 244.5.<u></u><u></u></span></p>
<p class=3D"gmail-m_-4133464001664500629MsoPlainText"><span lang=3D"EN-US"=
>In same time, master is on 249.1 and hardknott on 247.6<u></u><u></u></spa=
n></p>
<p class=3D"gmail-m_-4133464001664500629MsoPlainText"><span lang=3D"EN-US"=
><u></u>=C2=A0<u></u></span></p>
<p class=3D"gmail-m_-4133464001664500629MsoPlainText"><span lang=3D"EN-US"=
>Is there a some plan to backport one of these two versions=C2=A0 of system=
d to dunfell ?<u></u><u></u></span></p>
<p class=3D"gmail-m_-4133464001664500629MsoPlainText"><span lang=3D"EN-US"=
></span></p></div></div></blockquote><div><span class=3D"gmail_default" sty=
le=3D"font-family:monospace,monospace"><br></span></div><div><span class=3D=
"gmail_default" style=3D"font-family:monospace,monospace">Usually version b=
umps for core packages on releases are not in backport policy, systemd</spa=
n></div><div><span class=3D"gmail_default" style=3D"font-family:monospace,m=
onospace">is a tricky piece to retrofit without major effort.</span></div><=
div><span class=3D"gmail_default" style=3D"font-family:monospace,monospace"=
></span>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
lang=3D"FR" style=3D"overflow-wrap: break-word;"><div class=3D"gmail-m_-413=
3464001664500629WordSection1"><p class=3D"gmail-m_-4133464001664500629MsoPl=
ainText"><span lang=3D"EN-US">We can create patch for backport to dunfell i=
f this kind of version change is acceptable by dunfell LTS rules.<u></u><u>=
</u></span></p>
<p class=3D"gmail-m_-4133464001664500629MsoPlainText"><span lang=3D"EN-US"=
><u></u></span></p></div></div></blockquote><div><br></div><div><div class=
=3D"gmail_default" style=3D"font-family:monospace,monospace">There still e=
xists the concept of mixin layers, so perhaps you could try checking if oth=
ers in</div><div class=3D"gmail_default" style=3D"font-family:monospace,mon=
ospace">community are interested as well. </div><br></div><div>=C2=A0</div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div lang=3D"FR" style=3D=
"overflow-wrap: break-word;"><div class=3D"gmail-m_-4133464001664500629Word=
Section1"><p class=3D"gmail-m_-4133464001664500629MsoPlainText"><span lang=
=3D"EN-US">=C2=A0<u></u></span></p>
<p class=3D"gmail-m_-4133464001664500629MsoPlainText"><span lang=3D"EN-US"=
>Thanks a lot<u></u><u></u></span></p>
<p class=3D"gmail-m_-4133464001664500629MsoPlainText"><span lang=3D"EN-US"=
>Milan<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p=
>
<table border=3D"0" cellspacing=3D"3" cellpadding=3D"0">
<tbody>
<tr>
<td width=3D"260" valign=3D"bottom" style=3D"width:195pt;padding:0.75pt">
<p class=3D"MsoNormal" style=3D"margin-top:7.5pt"><span lang=3D"EN-GB" sty=
le=3D"font-size:10.5pt;font-family:Consolas;color:rgb(87,176,105)">Milan St=
evanovic</span><span lang=3D"EN-GB" style=3D"font-size:8pt;font-family:Cons=
olas"><br>
<span style=3D"color:rgb(98,100,105)">OS/BSP Architect </span><br>
<span style=3D"color:rgb(98,100,105)">DIP - Device Intelligence Platform <=
/span><br>
<span style=3D"color:rgb(98,100,105)">Technology</span><br>
<span style=3D"color:rgb(98,100,105)">Schneider Electric</span><u></u><u><=
/u></span></p>
</td>
<td width=3D"260" valign=3D"bottom" style=3D"width:195pt;padding:0.75pt">
<p class=3D"MsoNormal" style=3D"margin-top:7.5pt"><span lang=3D"EN-GB" sty=
le=3D"font-size:8pt;font-family:Consolas;color:rgb(87,176,105)">M=C2=A0+33 =
(0)6 73 26 20 85</span><span lang=3D"EN-GB" style=3D"font-size:8pt;font-fam=
ily:Consolas">
<br>
<span style=3D"color:rgb(87,176,105)">E=C2=A0=C2=A0</span></span><span sty=
le=3D"font-size:8pt;font-family:Consolas;color:rgb(98,100,105)"><a href=3D"=
mailto:milan.stevanovic@se.com" target=3D"_blank"><span lang=3D"EN-GB" styl=
e=3D"color:blue">milan.stevanovic@se.com</span></a></span><span lang=3D"EN-=
GB" style=3D"font-size:8pt;font-family:Consolas"><u></u><u></u></span></p>
</td>
<td width=3D"180" valign=3D"bottom" style=3D"width:135pt;padding:0.75pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"margin-top:7.5pt;text-alig=
n:right"><span style=3D"font-size:8pt;font-family:Consolas;color:rgb(98,100=
,105)">160 Avenue des Martyrs</span><span style=3D"font-size:8pt;font-famil=
y:Consolas;color:rgb(98,100,105)"><br>
38000 Grenoble<br>
France</span><span style=3D"font-size:8pt;font-family:Consolas"><u></u><u>=
</u></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:Arial,san=
s-serif;display:none"><u></u>=C2=A0<u></u></span></p>
<table border=3D"0" cellspacing=3D"3" cellpadding=3D"0">
<tbody>
<tr>
<td style=3D"padding:0.75pt">
<p class=3D"MsoNormal" style=3D"margin-top:3.75pt"><span><a href=3D"http:/=
/www.schneider-electric.com/b2b/en/campaign/innovation/overview.jsp#xtor=3D=
CS4-204-[Display]---" target=3D"_blank"><span style=3D"font-size:10.5pt;fon=
t-family:Consolas;color:blue;text-decoration:none"><img border=3D"0" width=
=3D"700" height=3D"80" style=3D"width: 7.2916in; height: 0.8333in;" id=3D"=
gmail-m_-4133464001664500629_x0000_i1032"></span></a></span><span style=3D"=
font-size:10.5pt"><u></u><u></u></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:Arial,san=
s-serif;display:none"><u></u>=C2=A0<u></u></span></p>
<table border=3D"0" cellspacing=3D"3" cellpadding=3D"0">
<tbody>
<tr>
<td width=3D"50%" valign=3D"top" style=3D"width:50%;padding:0.75pt">
<p class=3D"MsoNormal" style=3D"margin-top:3.75pt"><span lang=3D"EN-GB" st=
yle=3D"font-size:7pt;font-family:Arial,sans-serif;color:rgb(98,100,105)">*P=
lease consider the environment before printing this e-mail</span><span lang=
=
=3D"EN-GB" style=3D"font-size:10.5pt;font-family:Consolas;color:rgb(98,100=
,105)">
</span><span lang=3D"EN-GB" style=3D"font-size:10.5pt;color:rgb(98,100,105=
)"><u></u><u></u></span></p>
</td>
<td width=3D"50%" valign=3D"top" style=3D"width:50%;padding:0.75pt">
<p class=3D"MsoNormal" align=3D"right" style=3D"margin-top:3.75pt;text-ali=
gn:right"><span><a href=3D"https://www.facebook.com/SchneiderElectric" targ=
et=3D"_blank"><span style=3D"font-size:10.5pt;font-family:Consolas;color:bl=
ue;text-decoration:none"><img border=3D"0" width=3D"25" height=3D"25" style=
=
=3D"width: 0.2583in; height: 0.2583in;" id=3D"gmail-m_-4133464001664500629=
_x0000_i1031" alt=3D"Blog"></span></a></span><span style=3D"font-size:10.5p=
t;font-family:Consolas;color:rgb(98,100,105)">=C2=A0</span><span><a href=3D=
"https://www.linkedin.com/company/schneider-electric" target=3D"_blank"><sp=
an style=3D"font-size:10.5pt;font-family:Consolas;color:blue;text-decoratio=
n:none"><img border=3D"0" width=3D"25" height=3D"25" style=3D"width: 0.2583=
in; height: 0.2583in;" id=3D"gmail-m_-4133464001664500629_x0000_i1030" alt=
=3D"Blog"></span></a></span><span style=3D"font-size:10.5pt;font-family:Co=
nsolas;color:rgb(98,100,105)">=C2=A0</span><span><a href=3D"http://blog.sch=
neider-electric.com/" target=3D"_blank"><span style=3D"font-size:10.5pt;fon=
t-family:Consolas;color:blue;text-decoration:none"><img border=3D"0" width=
=3D"25" height=3D"25" style=3D"width: 0.2583in; height: 0.2583in;" id=3D"g=
mail-m_-4133464001664500629_x0000_i1029" alt=3D"Blog"></span></a></span><sp=
an style=3D"font-size:10.5pt;font-family:Consolas;color:rgb(98,100,105)">=
=C2=A0</span><span><a href=3D"https://www.twitter.com/SchneiderElec" targe=
t=3D"_blank"><span style=3D"font-size:10.5pt;font-family:Consolas;color:blu=
e;text-decoration:none"><img border=3D"0" width=3D"25" height=3D"25" style=
=3D"width: 0.2583in; height: 0.2583in;" id=3D"gmail-m_-4133464001664500629=
_x0000_i1028" alt=3D"Blog"></span></a></span><span style=3D"font-size:10.5p=
t;font-family:Consolas;color:rgb(98,100,105)">=C2=A0</span><span><a href=3D=
"https://www.youtube.com/schneidercorporate" target=3D"_blank"><span style=
=3D"font-size:10.5pt;font-family:Consolas;color:blue;text-decoration:none"=
><img border=3D"0" width=3D"25" height=3D"25" style=3D"width: 0.2583in; hei=
ght: 0.2583in;" id=3D"gmail-m_-4133464001664500629_x0000_i1027" alt=3D"Blog=
"></span></a></span><span style=3D"font-size:10.5pt;font-family:Consolas;co=
lor:rgb(98,100,105)">=C2=A0</span><span><a href=3D"https://plus.google.com/=
+schneiderelectric" target=3D"_blank"><span style=3D"font-size:10.5pt;font-=
family:Consolas;color:blue;text-decoration:none"><img border=3D"0" width=3D=
"25" height=3D"25" style=3D"width: 0.2583in; height: 0.2583in;" id=3D"gmail=
-m_-4133464001664500629_x0000_i1026" alt=3D"Blog"></span></a></span><span s=
tyle=3D"font-size:10.5pt;font-family:Consolas;color:rgb(98,100,105)">=C2=A0=
</span><span><a href=3D"https://instagram.com/schneiderelectric" target=3D"=
_blank"><span style=3D"font-size:10.5pt;font-family:Consolas;color:blue;tex=
t-decoration:none"><img border=3D"0" width=3D"25" height=3D"25" style=3D"wi=
dth: 0.2583in; height: 0.2583in;" id=3D"gmail-m_-4133464001664500629_x0000_=
i1025" alt=3D"Blog"></span></a></span><span style=3D"font-size:10.5pt;font-=
family:Consolas;color:rgb(98,100,105)">=C2=A0
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:rgb(98,1=
00,105)"><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" valign=3D"bottom" style=3D"padding:0.75pt"></td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p=
>
<br>
<p align=3D"Center" style=3D"margin:0px"><span style=3D"font-size:6pt;font=
-family:Arial;color:rgb(98,100,105)">Internal</span></p>
</div>
</div>

<br>
<br>
<br>
</blockquote></div></div>

--000000000000e98e8305c8d195a7--
