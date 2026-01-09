Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 577BED232EC
	for <webhook@archiver.kernel.org>; Fri,  9 Jan 2026 07:54:56 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.5758.1767945294392273535
 for <poky@lists.yoctoproject.org>;
 Thu, 08 Jan 2026 23:54:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=d5L7SfKM;
 spf=pass (domain: smile.fr, ip: 209.85.221.43, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-432da746749so161280f8f.0
        for <poky@lists.yoctoproject.org>; Thu, 08 Jan 2026 23:54:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1767945293; x=1768550093; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bMQRJxNk+rlyBNUhS+EZMT9ArwMDFQSolnE6XqMBcjc=;
        b=d5L7SfKMG2t3TwHnyA0MHMnkkCouiic6e4n8maUZgt89Lg8pr/7tBKoe+E7WN97/NS
         /KkFUWzcD/BUXYY3JRWvKuQEwZPRQqpT2W9W11sZAPFUo5mLmmQPmnYYuDY6R9JkVaze
         Yqlk0RVEgkKf77hLTkGUYBKmB6LqB1yQzbgT8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767945293; x=1768550093;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bMQRJxNk+rlyBNUhS+EZMT9ArwMDFQSolnE6XqMBcjc=;
        b=mrxtg8W6KsOCCqmiJJKHczemjIH18GKNa9TUnMtB1gjn/P3d0FzsccMIs4AvhPffgy
         pT7l349gaeVzZORqQ+7RYqDd3LjufmY8pwQlmQ9uihj0ZDxjYMEU/fwk7iuO2wX8xzXi
         SYt6knbZzsT1cZPlKfpUCUJjqKYjm5cdm2d3uWtTrDb9uGoAZEIzP4t20VZG9lFdvsgG
         E7E4p7FM5dN9NNa2Q6fQSbbLSapPXek+tCWnrbShKPCUzQDxll3UAOq9zFAf0XhuiAZM
         WL7VN2diNSxB9YEYh8tjG2OfW6JNXXQYTDUssJv9JNm/vz36fqdc6Yq+ibcz379jJkHr
         lQqA==
X-Gm-Message-State: AOJu0YxbTj30FWOhoigrF4ZYyjJ74ZCJUB/Ztl4xgqUH9FtmS7Qh9Edi
	am6RuDgthX5zBhVrNnyD13JtsbbVSKFvoO6e58kbAwX2iH4SaR7e3mn25zYgh6QR8iZimqBVAy6
	wx/0ei5+HLnbIf4jb0hqTWkGF8QpA2D9+/IB+7oB89A==
X-Gm-Gg: AY/fxX5x2E//cxWIK86e44ZYSQ+OKKYI/XyLL2XTK0/tlLzkD8VuUiupsJQmnawUoT+
	IhIRMpTnTo5ejVIZ1z2+Q89O+nqmaKm0u+vXTpKpYiBe/567UVuc6/b9ZLtj0EIIOBVl4W0tRzJ
	Fm2nxqMyR5fA65VkRLYz+sgycMIzHCtRINw3FMucpSYMWewkQpHd4TkujPVVbzyVfvJnHma06v+
	evLMJ1PoefOXnpI1Eq2tCo84wosCIrCaNNEEIA3USLUHSLk6ll5oDo80jWQ+bjTQRdCuHTamBLV
	TiaeZ3nQhmvDLWhMfHQyf9CjYN+uQQ==
X-Google-Smtp-Source: AGHT+IG4Bbl106Eyk0Ax5u57+nN7DRwI3usfu+5AuK1AM14dVdYMZdIfMjxrxmcyB0cWLP1o5NfKK1AEEWWrDiqivRg=
X-Received: by 2002:a05:6000:2f87:b0:432:857d:e425 with SMTP id
 ffacd0b85a97d-432c374fcfbmr9525619f8f.30.1767945292635; Thu, 08 Jan 2026
 23:54:52 -0800 (PST)
MIME-Version: 1.0
References: <PA0P264MB68344306E6037E3237A1681CF685A@PA0P264MB6834.FRAP264.PROD.OUTLOOK.COM>
 <PA0P264MB683409224C7BAAD3FBF9A635F682A@PA0P264MB6834.FRAP264.PROD.OUTLOOK.COM>
In-Reply-To: <PA0P264MB683409224C7BAAD3FBF9A635F682A@PA0P264MB6834.FRAP264.PROD.OUTLOOK.COM>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Fri, 9 Jan 2026 08:54:26 +0100
X-Gm-Features: AZwV_QitG8t_9WLmwJPVJdQ5RqEhuQAQde2F_f0W1arVHuLseuOF8PS2Q5oM9ZY
Message-ID: <CAMSfU+4ozq2hf-ma15+40Vx6pCh8X+hB_fezQUFOfjh-EoySRQ@mail.gmail.com>
Subject: Re: [poky] Fw: Patch submission
To: Karim.harouat@ekinops.com
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002678110647efd77a"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 09 Jan 2026 07:54:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13818

--0000000000002678110647efd77a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le ven. 9 janv. 2026 =C3=A0 07:56, Karim Harouat via lists.yoctoproject.org
<Karim.harouat=3Dekinops.com@lists.yoctoproject.org> a =C3=A9crit :

>
> Hello
>

Hello,

I'm resending the email.
>

You need to follow the instructions at
https://docs.yoctoproject.org/dev/contributor-guide/submit-changes.html#sen=
ding-the-patches-via-email
to send your patch as inline attachment.

Also, you should send this patch to the correct mailing list : in this case
openembedded-core@lists.openembedded.org (see
https://docs.yoctoproject.org/dev/contributor-guide/submit-changes.html#fin=
ding-a-suitable-mailing-list
)

And, finally, it looks like you are trying to target the scarthgap branch,
so don't forget to add the [scarthgap] tag in the subject.
Your git send email command should look like this :
git send-email -M -1 --to openembedded-core@lists.openembedded.org
 --subject-prefix=3D"meta-oe][scarthgap][PATCH"

Regards,


> ------------------------------
> *From:* Karim Harouat
> *Sent:* Thursday, January 8, 2026 8:34 PM
> *To:* poky@lists.yoctoproject.org <poky@lists.yoctoproject.org>
> *Subject:* Patch submission
>
>
> Hello
>
>
>
> Happy new year
>
>
>
> I am suggesting a patch to apply to lighttpd which is present in 1.4.80.
>
>
>
> Thank you
>
>
>
>
>
> *Karim Harouat*
> Senior R&D Engineer
> karim.harouat@ekinops.com | www.ekinops.com
> Phone:
>
>
> This email may contain material and data that are confidential. Any revie=
w
> or forwarding without express permission is strictly prohibited. If you a=
re
> not the intended recipient, please delete all copies.
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13817):
> https://lists.yoctoproject.org/g/poky/message/13817
> Mute This Topic: https://lists.yoctoproject.org/mt/117171403/4316185
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Yoann Congal
Smile ECS

--0000000000002678110647efd77a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Le=C2=A0ven. 9 janv. 2026 =C3=A0=C2=A007:=
56, Karim Harouat via <a href=3D"http://lists.yoctoproject.org">lists.yocto=
project.org</a> &lt;Karim.harouat=3D<a href=3D"mailto:ekinops.com@lists.yoc=
toproject.org">ekinops.com@lists.yoctoproject.org</a>&gt; a =C3=A9crit=C2=
=A0:</div><div class=3D"gmail_quote gmail_quote_container"><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">



<div>
<div><br>
</div>
<div style=3D"font-family:inherit;font-size:inherit;color:rgb(0,0,0)">Hello=
</div>
<div style=3D"font-family:inherit;font-size:inherit;color:rgb(0,0,0)"></div=
></div></blockquote><div><br></div><div>Hello,=C2=A0</div><div><br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div><div style=3D"font-fam=
ily:inherit;font-size:inherit;color:rgb(0,0,0)">I&#39;m resending the email=
.</div></div></blockquote><div><br></div><div>You need to follow the instru=
ctions at=C2=A0<a href=3D"https://docs.yoctoproject.org/dev/contributor-gui=
de/submit-changes.html#sending-the-patches-via-email">https://docs.yoctopro=
ject.org/dev/contributor-guide/submit-changes.html#sending-the-patches-via-=
email</a> to send your patch=C2=A0as inline attachment.</div><div><br></div=
><div>Also, you should send this patch to the correct mailing=C2=A0list : i=
n this case <a href=3D"mailto:openembedded-core@lists.openembedded.org">ope=
nembedded-core@lists.openembedded.org</a> (see=C2=A0<a href=3D"https://docs=
.yoctoproject.org/dev/contributor-guide/submit-changes.html#finding-a-suita=
ble-mailing-list">https://docs.yoctoproject.org/dev/contributor-guide/submi=
t-changes.html#finding-a-suitable-mailing-list</a>)</div><div><br></div><di=
v>And, finally, it looks like you are trying to target the scarthgap branch=
, so don&#39;t forget to add the [scarthgap] tag in the subject.</div><div>=
Your git send email command should look like this :</div><div>git send-emai=
l -M -1 --to <a href=3D"mailto:openembedded-core@lists.openembedded.org">op=
enembedded-core@lists.openembedded.org</a>=C2=A0--subject-prefix=3D&quot;me=
ta-oe][scarthgap][PATCH&quot;</div><div><br></div><div>Regards,</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>
<div></div>
<hr style=3D"display:inline-block;width:98%">
<div dir=3D"ltr" id=3D"m_451593480593640652divRplyFwdMsg"><font color=3D"#0=
00000" style=3D"font-size:11pt" face=3D"Calibri, sans-serif"><b>From:</b> K=
arim Harouat<br>
<b>Sent:</b> Thursday, January 8, 2026 8:34 PM<br>
<b>To:</b> <a href=3D"mailto:poky@lists.yoctoproject.org" target=3D"_blank"=
>poky@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:poky@lists.yoctoproj=
ect.org" target=3D"_blank">poky@lists.yoctoproject.org</a>&gt;<br>
<b>Subject:</b> Patch submission</font>
<div>=C2=A0</div>
</div>
<div style=3D"overflow-wrap: break-word;" lang=3D"EN-US">
<div>
<p style=3D"margin:0cm;font-size:12pt;font-family:&quot;Aptos&quot;,sans-se=
rif">
Hello</p>
<p style=3D"margin:0cm;font-size:12pt;font-family:&quot;Aptos&quot;,sans-se=
rif">
=C2=A0</p>
<p style=3D"margin:0cm;font-size:12pt;font-family:&quot;Aptos&quot;,sans-se=
rif">
Happy new year</p>
<p style=3D"margin:0cm;font-size:12pt;font-family:&quot;Aptos&quot;,sans-se=
rif">
=C2=A0</p>
<p style=3D"margin:0cm;font-size:12pt;font-family:&quot;Aptos&quot;,sans-se=
rif">
I am suggesting a patch to apply to lighttpd which is present in 1.4.80.</p=
>
<p style=3D"margin:0cm;font-size:12pt;font-family:&quot;Aptos&quot;,sans-se=
rif">
=C2=A0</p>
<p style=3D"margin:0cm;font-size:12pt;font-family:&quot;Aptos&quot;,sans-se=
rif">
Thank you</p>
<p style=3D"margin:0cm;font-size:12pt;font-family:&quot;Aptos&quot;,sans-se=
rif">
=C2=A0</p>
<p style=3D"margin:0cm;font-size:12pt;font-family:&quot;Aptos&quot;,sans-se=
rif">
=C2=A0</p>
<table style=3D"width:360pt" width=3D"480" cellpadding=3D"0" cellspacing=3D=
"0" border=3D"0">
<tbody>
<tr>
<td style=3D"width:250.5pt;padding:0cm 0cm 15pt" valign=3D"top" width=3D"33=
4">
<p style=3D"margin:0cm;font-size:12pt;font-family:&quot;Aptos&quot;,sans-se=
rif">
<b><span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,sans-serif;c=
olor:rgb(51,94,121)">Karim Harouat</span></b><span style=3D"font-size:10pt;=
font-family:&quot;Arial&quot;,sans-serif;color:rgb(51,94,121)"><br>
</span><span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,sans-ser=
if;color:rgb(51,94,121)">Senior R&amp;D Engineer</span><span style=3D"font-=
size:10pt;font-family:&quot;Arial&quot;,sans-serif;color:rgb(51,94,121)"><b=
r>
<a href=3D"mailto:karim.harouat@ekinops.com" target=3D"_blank"><span style=
=3D"color:rgb(51,94,121)">karim.harouat@ekinops.com</span></a></span><span =
style=3D"font-size:10pt;font-family:&quot;Arial&quot;,sans-serif;color:rgb(=
51,94,121)">=C2=A0|=C2=A0</span><span style=3D"font-size:10pt;font-family:&=
quot;Arial&quot;,sans-serif;color:rgb(0,105,180)"><a href=3D"https://www.ek=
inops.com/" target=3D"_blank"><span style=3D"color:rgb(51,94,121)">www.ekin=
ops.com</span></a></span><span style=3D"font-size:10pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:rgb(51,94,121)">=C2=A0</span><span style=3D"font=
-size:10pt;font-family:&quot;Arial&quot;,sans-serif;color:rgb(61,60,63)"><b=
r>
</span><span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,sans-ser=
if;color:rgb(51,94,121)">Phone:=C2=A0</span><span style=3D"font-size:10pt;f=
ont-family:&quot;Arial&quot;,sans-serif;color:rgb(51,94,121)">
</span><span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,sans-ser=
if;color:rgb(61,60,63)"><br>
<br>
<br>
<span></span></span></p>
</td>
</tr>
<tr>
<td style=3D"width:360pt;padding:0cm 0cm 15pt" valign=3D"top" width=3D"480"=
></td>
</tr>
<tr>
<td style=3D"width:360pt;padding:0cm" valign=3D"top" width=3D"480">
<p style=3D"margin:0cm;font-size:12pt;font-family:&quot;Aptos&quot;,sans-se=
rif">
<span style=3D"font-size:8pt;font-family:&quot;Arial&quot;,sans-serif">This=
 email may contain material and data that are confidential. Any review or f=
orwarding without express permission is strictly prohibited. If you are not=
 the intended recipient, please delete
 all copies.=C2=A0</span><span style=3D"font-size:8pt;font-family:&quot;Ari=
al&quot;,sans-serif"></span></p>
</td>
</tr>
</tbody>
</table>
<p style=3D"margin:0cm;font-size:12pt;font-family:&quot;Aptos&quot;,sans-se=
rif">
=C2=A0</p>
</div>
</div>
</div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13817): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13817" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13817</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/117171403/431=
6185" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/117171403/4316185</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:yoann.congal@smile.fr" target=3D"_blank">yoann.conga=
l@smile.fr</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font><div><fon=
t face=3D"Raleway, regular">Smile ECS</font></div></div></div></div>

--0000000000002678110647efd77a--

