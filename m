Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
 by mx.groups.io with SMTP id smtpd.web08.8528.1628169168693727409
 for <poky@lists.yoctoproject.org>;
 Thu, 05 Aug 2021 06:12:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uugzHaML;
 spf=pass (domain: gmail.com, ip: 209.85.217.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f48.google.com with SMTP id bg4so3020000vsb.6
        for <poky@lists.yoctoproject.org>; Thu, 05 Aug 2021 06:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5nJ/ZG7QAschJKE5EBXirLAs+tB3zz12D6pj5peIDz4=;
        b=uugzHaMLmWvmU/BB45UjSitrOGXZYEqNeCQi8GQvf1Um/Lw6QUuUGd+xhTnLcsSHTi
         uT32yDB4UgNeTvYARon5wKSRKKH6TWfRY2EsxkS0SWdH+iz+QpFxKI4vUPfnFRUPmdu+
         q1bpngh5Mt4QQuB5XEs4sP3rR0kM4FiQtklFio943koO9YlRbHImBdYvkwZznLLZ/XdE
         vXyzzfHPv/U9oMbP03BRCvd1pFEdhva6yMMBFLPqXiN8Ufcn7Vm1QckPPGJSKDpoE1rg
         CkHHE0POP6yVEPCA50RViMPqRDcat4AxOJooeAZ1L9dvFMZpeTVtsM7cTha0RIpALQyE
         gzMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5nJ/ZG7QAschJKE5EBXirLAs+tB3zz12D6pj5peIDz4=;
        b=G8aINlwiVsJSAlIyB3GHDCeYe+VXpLMETEKGDKzdsB4Kt0bFTciVcT7ABb3ZtgIjme
         xCok/hxge+aJ0MmWmKN0Vzxvb/6I94qFG1ZmWAQvHQ6T8FFghHh7dvzKHkkAsKuGz24b
         dlTQ/aZF1OYhAvj97RVuwZdxiX8u6o7UtPcXex3+skDqeK8gEw0vz1e7Hx5CuZjGHgzV
         5i1/GoSENZBFgPdSydk/Whav+m+5pdSkvCf7UrSNKzyw+zKTk0w72UoXP69fTZVy545B
         EsueOtgzXZEAqv5aMsFvZtRI0R7F4cKeNkL3sTcu2Aw421S25ceKXFujhY586v1awEZ4
         G7/g==
X-Gm-Message-State: AOAM530mQVdEFeLCj3WSP1sypCwNzO3jJUvP0JpRQIK2F3XCNcqSZ1z6
	kwu2rvQpVd7TBLyBW5O1E9zmIQal7rSrx5i2h9E=
X-Google-Smtp-Source: ABdhPJyYu83qh1SN3bkOHZqX/nB6Ataw4wBQdNFObgpHT6vi4aBjd6cVE+P51Iwb52dJuCr7uDhOh1j55voZxgHS6DU=
X-Received: by 2002:a05:6102:3711:: with SMTP id s17mr4054757vst.51.1628169167865;
 Thu, 05 Aug 2021 06:12:47 -0700 (PDT)
MIME-Version: 1.0
References: <AM0PR04MB4804A80F5E94384602603C60E2F29@AM0PR04MB4804.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB4804A80F5E94384602603C60E2F29@AM0PR04MB4804.eurprd04.prod.outlook.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 5 Aug 2021 15:12:36 +0200
Message-ID: <CANNYZj8wdipE99dqVpDXG+De-AH-tKQ_7mgQerKZJO-YEaFDaQ@mail.gmail.com>
Subject: Re: [poky] Backport to dunfell question
To: milan.stevanovic@se.com
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e28d8a05c8cfaccb"

--000000000000e28d8a05c8cfaccb
Content-Type: text/plain; charset="UTF-8"

Yocto releases are very conservative regarding version updates, so if you
need a newer systemd for your specific product reasons, you need to do it
in a private layer.

Alex

On Thu, 5 Aug 2021 at 15:09, Milan STEVANOVIC via lists.yoctoproject.org
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
> We can create patch for backport to dunfell if this kind of version change
> is acceptable by dunfell LTS rules.
>
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

--000000000000e28d8a05c8cfaccb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yocto releases are very conservative regarding versio=
n updates, so if you need a newer systemd for your specific product reasons=
, you need to do it in a private layer.</div><div><br></div><div>Alex<br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Thu, 5 Aug 2021 at 15:09, Milan STEVANOVIC via <a href=3D"http://lis=
ts.yoctoproject.org">lists.yoctoproject.org</a> &lt;milan.stevanovic=3D<a h=
ref=3D"mailto:se.com@lists.yoctoproject.org">se.com@lists.yoctoproject.org<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div style=3D"overflow-wrap: break-word;" lang=3D"FR">
<div class=3D"gmail-m_6538793047482836571WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p=
>
<p class=3D"gmail-m_6538793047482836571MsoPlainText"><span lang=3D"EN-US">=
Hi all,<u></u><u></u></span></p>
<p class=3D"gmail-m_6538793047482836571MsoPlainText"><span lang=3D"EN-US">=
<u></u>=C2=A0<u></u></span></p>
<p class=3D"gmail-m_6538793047482836571MsoPlainText"><span lang=3D"EN-US">=
I hope this isn&#39;t inappropriate for the list Current poky dunfell LTS i=
s using systemd stable version 244.5.<u></u><u></u></span></p>
<p class=3D"gmail-m_6538793047482836571MsoPlainText"><span lang=3D"EN-US">=
In same time, master is on 249.1 and hardknott on 247.6<u></u><u></u></span=
></p>
<p class=3D"gmail-m_6538793047482836571MsoPlainText"><span lang=3D"EN-US">=
<u></u>=C2=A0<u></u></span></p>
<p class=3D"gmail-m_6538793047482836571MsoPlainText"><span lang=3D"EN-US">=
Is there a some plan to backport one of these two versions=C2=A0 of systemd=
 to dunfell ?<u></u><u></u></span></p>
<p class=3D"gmail-m_6538793047482836571MsoPlainText"><span lang=3D"EN-US">=
We can create patch for backport to dunfell if this kind of version change =
is acceptable by dunfell LTS rules.<u></u><u></u></span></p>
<p class=3D"gmail-m_6538793047482836571MsoPlainText"><span lang=3D"EN-US">=
<u></u>=C2=A0<u></u></span></p>
<p class=3D"gmail-m_6538793047482836571MsoPlainText"><span lang=3D"EN-US">=
Thanks a lot<u></u><u></u></span></p>
<p class=3D"gmail-m_6538793047482836571MsoPlainText"><span lang=3D"EN-US">=
Milan<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p=
>
<table cellspacing=3D"3" cellpadding=3D"0" border=3D"0">
<tbody>
<tr>
<td style=3D"width:195pt;padding:0.75pt" width=3D"260" valign=3D"bottom">
<p class=3D"MsoNormal" style=3D"margin-top:7.5pt"><span style=3D"font-size=
:10.5pt;font-family:Consolas;color:rgb(87,176,105)" lang=3D"EN-GB">Milan St=
evanovic</span><span style=3D"font-size:8pt;font-family:Consolas" lang=3D"E=
N-GB"><br>
<span style=3D"color:rgb(98,100,105)">OS/BSP Architect </span><br>
<span style=3D"color:rgb(98,100,105)">DIP - Device Intelligence Platform <=
/span><br>
<span style=3D"color:rgb(98,100,105)">Technology</span><br>
<span style=3D"color:rgb(98,100,105)">Schneider Electric</span><u></u><u><=
/u></span></p>
</td>
<td style=3D"width:195pt;padding:0.75pt" width=3D"260" valign=3D"bottom">
<p class=3D"MsoNormal" style=3D"margin-top:7.5pt"><span style=3D"font-size=
:8pt;font-family:Consolas;color:rgb(87,176,105)" lang=3D"EN-GB">M=C2=A0+33 =
(0)6 73 26 20 85</span><span style=3D"font-size:8pt;font-family:Consolas" l=
ang=3D"EN-GB">
<br>
<span style=3D"color:rgb(87,176,105)">E=C2=A0=C2=A0</span></span><span sty=
le=3D"font-size:8pt;font-family:Consolas;color:rgb(98,100,105)"><a href=3D"=
mailto:milan.stevanovic@se.com" target=3D"_blank"><span style=3D"color:blue=
" lang=3D"EN-GB">milan.stevanovic@se.com</span></a></span><span style=3D"fo=
nt-size:8pt;font-family:Consolas" lang=3D"EN-GB"><u></u><u></u></span></p>
</td>
<td style=3D"width:135pt;padding:0.75pt" width=3D"180" valign=3D"bottom">
<p class=3D"MsoNormal" style=3D"margin-top:7.5pt;text-align:right" align=
=3D"right"><span style=3D"font-size:8pt;font-family:Consolas;color:rgb(98,=
100,105)">160 Avenue des Martyrs</span><span style=3D"font-size:8pt;font-fa=
mily:Consolas;color:rgb(98,100,105)"><br>
38000 Grenoble<br>
France</span><span style=3D"font-size:8pt;font-family:Consolas"><u></u><u>=
</u></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-s=
erif;display:none" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<table cellspacing=3D"3" cellpadding=3D"0" border=3D"0">
<tbody>
<tr>
<td style=3D"padding:0.75pt">
<p class=3D"MsoNormal" style=3D"margin-top:3.75pt"><span><a href=3D"http:/=
/www.schneider-electric.com/b2b/en/campaign/innovation/overview.jsp#xtor=3D=
CS4-204-[Display]---" target=3D"_blank"><span style=3D"font-size:10.5pt;fon=
t-family:Consolas;color:blue;text-decoration:none"><img style=3D"width: 7.2=
916in; height: 0.8333in;" id=3D"gmail-m_6538793047482836571_x0000_i1032" sr=
c=3D"http://www.apcmedia.com/EmailSignature/images/Banners700x80/Misc/Schne=
ider_innovation_at_every_level_signature_banner_700x80_ok.jpg" width=3D"700=
" height=3D"80" border=3D"0"></span></a></span><span style=3D"font-size:10.=
5pt"><u></u><u></u></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-s=
erif;display:none" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<table cellspacing=3D"3" cellpadding=3D"0" border=3D"0">
<tbody>
<tr>
<td style=3D"width:50%;padding:0.75pt" width=3D"50%" valign=3D"top">
<p class=3D"MsoNormal" style=3D"margin-top:3.75pt"><span style=3D"font-siz=
e:7pt;font-family:&quot;Arial&quot;,sans-serif;color:rgb(98,100,105)" lang=
=3D"EN-GB">*Please consider the environment before printing this e-mail</s=
pan><span style=3D"font-size:10.5pt;font-family:Consolas;color:rgb(98,100,1=
05)" lang=3D"EN-GB">
</span><span style=3D"font-size:10.5pt;color:rgb(98,100,105)" lang=3D"EN-G=
B"><u></u><u></u></span></p>
</td>
<td style=3D"width:50%;padding:0.75pt" width=3D"50%" valign=3D"top">
<p class=3D"MsoNormal" style=3D"margin-top:3.75pt;text-align:right" align=
=3D"right"><span><a href=3D"https://www.facebook.com/SchneiderElectric" ta=
rget=3D"_blank"><span style=3D"font-size:10.5pt;font-family:Consolas;color:=
blue;text-decoration:none"><img style=3D"width: 0.2583in; height: 0.2583in;=
" id=3D"gmail-m_6538793047482836571_x0000_i1031" src=3D"http://www.apcmedia=
.com/emailsignature/images/CEO_facebook.png" alt=3D"Blog" width=3D"25" heig=
ht=3D"25" border=3D"0"></span></a></span><span style=3D"font-size:10.5pt;fo=
nt-family:Consolas;color:rgb(98,100,105)">=C2=A0</span><span><a href=3D"htt=
ps://www.linkedin.com/company/schneider-electric" target=3D"_blank"><span s=
tyle=3D"font-size:10.5pt;font-family:Consolas;color:blue;text-decoration:no=
ne"><img style=3D"width: 0.2583in; height: 0.2583in;" id=3D"gmail-m_6538793=
047482836571_x0000_i1030" src=3D"http://www.apcmedia.com/emailsignature/ima=
ges/CEO_linked-in.png" alt=3D"Blog" width=3D"25" height=3D"25" border=3D"0"=
></span></a></span><span style=3D"font-size:10.5pt;font-family:Consolas;col=
or:rgb(98,100,105)">=C2=A0</span><span><a href=3D"http://blog.schneider-ele=
ctric.com/" target=3D"_blank"><span style=3D"font-size:10.5pt;font-family:C=
onsolas;color:blue;text-decoration:none"><img style=3D"width: 0.2583in; hei=
ght: 0.2583in;" id=3D"gmail-m_6538793047482836571_x0000_i1029" src=3D"http:=
//www.apcmedia.com/emailsignature/images/CEO_Blog.png" alt=3D"Blog" width=
=3D"25" height=3D"25" border=3D"0"></span></a></span><span style=3D"font-s=
ize:10.5pt;font-family:Consolas;color:rgb(98,100,105)">=C2=A0</span><span><=
a href=3D"https://www.twitter.com/SchneiderElec" target=3D"_blank"><span st=
yle=3D"font-size:10.5pt;font-family:Consolas;color:blue;text-decoration:non=
e"><img style=3D"width: 0.2583in; height: 0.2583in;" id=3D"gmail-m_65387930=
47482836571_x0000_i1028" src=3D"http://www.apcmedia.com/emailsignature/imag=
es/CEO_twitter.png" alt=3D"Blog" width=3D"25" height=3D"25" border=3D"0"></=
span></a></span><span style=3D"font-size:10.5pt;font-family:Consolas;color:=
rgb(98,100,105)">=C2=A0</span><span><a href=3D"https://www.youtube.com/schn=
eidercorporate" target=3D"_blank"><span style=3D"font-size:10.5pt;font-fami=
ly:Consolas;color:blue;text-decoration:none"><img style=3D"width: 0.2583in;=
 height: 0.2583in;" id=3D"gmail-m_6538793047482836571_x0000_i1027" src=3D"h=
ttp://www.apcmedia.com/emailsignature/images/CEO_YouTube.png" alt=3D"Blog" =
width=3D"25" height=3D"25" border=3D"0"></span></a></span><span style=3D"fo=
nt-size:10.5pt;font-family:Consolas;color:rgb(98,100,105)">=C2=A0</span><sp=
an><a href=3D"https://plus.google.com/+schneiderelectric" target=3D"_blank"=
><span style=3D"font-size:10.5pt;font-family:Consolas;color:blue;text-decor=
ation:none"><img style=3D"width: 0.2583in; height: 0.2583in;" id=3D"gmail-m=
_6538793047482836571_x0000_i1026" src=3D"http://www.apcmedia.com/emailsigna=
ture/images/CEO_Google.png" alt=3D"Blog" width=3D"25" height=3D"25" border=
=3D"0"></span></a></span><span style=3D"font-size:10.5pt;font-family:Conso=
las;color:rgb(98,100,105)">=C2=A0</span><span><a href=3D"https://instagram.=
com/schneiderelectric" target=3D"_blank"><span style=3D"font-size:10.5pt;fo=
nt-family:Consolas;color:blue;text-decoration:none"><img style=3D"width: 0.=
2583in; height: 0.2583in;" id=3D"gmail-m_6538793047482836571_x0000_i1025" s=
rc=3D"http://www.apcmedia.com/emailsignature/images/CEO_Instagram.png" alt=
=3D"Blog" width=3D"25" height=3D"25" border=3D"0"></span></a></span><span =
style=3D"font-size:10.5pt;font-family:Consolas;color:rgb(98,100,105)">=C2=
=A0
</span><span style=3D"font-size:10.5pt;font-family:Consolas;color:rgb(98,1=
00,105)"><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td colspan=3D"2" style=3D"padding:0.75pt" valign=3D"bottom"></td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p=
>
<br>
<p style=3D"margin:0px" align=3D"Center"><span style=3D"font-size:6pt;font=
-family:Arial;color:rgb(98,100,105)">Internal</span></p>
</div>
</div>

<br>
<br>
<br>
</blockquote></div>

--000000000000e28d8a05c8cfaccb--
