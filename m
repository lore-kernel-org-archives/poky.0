Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED38D1681D
	for <webhook@archiver.kernel.org>; Fri,  9 Jan 2026 11:57:47 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.8529.1767959857858655840
 for <poky@lists.yoctoproject.org>;
 Fri, 09 Jan 2026 03:57:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=TOxk0TPe;
 spf=pass (domain: smile.fr, ip: 209.85.221.41, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-432d256c2a9so1087874f8f.3
        for <poky@lists.yoctoproject.org>; Fri, 09 Jan 2026 03:57:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1767959856; x=1768564656; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WWSJ3QMgfJei7xWTtvbWfbry8o3Te6LT1XuOAouzU7M=;
        b=TOxk0TPe1HrCUHLOJnJBxBgpFUfhuF1thFjPMPx0Kyz7FnIl5Nox12MVRAUdX5P95Z
         FHMUnQ66CUTz3vOFxp7qDDG1M5YQpG6/+nePVPvKxR9goZq2fr9kmSFvEynclSoZuU7y
         zk+rqReFC0aQIJTEjoHjTiiU01PnI92S3mkHc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767959856; x=1768564656;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WWSJ3QMgfJei7xWTtvbWfbry8o3Te6LT1XuOAouzU7M=;
        b=ubb6h/WLElV6m5/QRWQLbwOvi4G4WSD2zuRsP7dUlYCSimsLYiNkOoGxoA4gwXvWp+
         3nyt/F5mHllNPy16JkxAOOWXZNStNq7uUarq3p6gxJEYcapo+R2WpAtuFyrIzuGk/WdG
         vP+0EslutSOfYvLsbpKOGw311wrSi+RCfMPz+P+2DHLK/gjFHzI5OyVrEKQUchJB46Uz
         KlQ2yCBlENheyQhC0MLhmUF4MAPMqq++noZAwaWYXdbj48kBCSz9r1hOay923+o9JuZs
         AgtA8tUjehc4+atbpzA5vMabNaoM0+bKOFpayTrW7cI5HwA4T1H5bHFgtO8LUpdFg4Fl
         +TVA==
X-Forwarded-Encrypted: i=1; AJvYcCVl507OfwGTVmbdMLZvLVttiNSa6fMPDfs+QznfXdog2wnNfxZ71fbSm0o5l30PUU1C4xZW@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwUGzqx8gIETPpb3LO6nIH2n7vhyekJ+0Dc8JkIqDL5mLAON0+1
	STxfgQ2BIz+SsgPl8svBfS5HSkeFy+xAvH1okJ7ELecZ+6WnhQNxzfQGUog3c9RV6t0NfDr2bcR
	/kwSe9X9jkWbBb9T8grNcmWkXgvrRigQx2Qmy2VLyIg==
X-Gm-Gg: AY/fxX6piju/ZWJTjx4iqjCBl8lJMcFJanglbOPiiiy8JSQOhvwtX5XnUYO9X6z2sru
	HyVgSBG50k0CwO6CYQYTKbEQQutKxfeb+rfccFvwpsELZ8JO+Y4k6yvgUNk6SJUFjgvQfdx0CU+
	CicLkDU4c4cppM3DrEU9aOjx4D7ZVLEPtyIlz+B1Wn8G9jtGewTsC0o5mLTNP5zI6LgtJ85mt/a
	DpovL8sHJvCcN0DrGA7yJfRGT79lMITS2bJMQ2wAnH4XDMD+2ruKDE9I0RDqvswmeFUqwhS2yD5
	tHD7B7Z2jjN1MVywQuTyi4L8SaGqygdry0fL3Ss5
X-Google-Smtp-Source: AGHT+IEBW8HY197YZcdewQiikh+f7IzLLh8CL7ND4uoeZidJGdWOI4qCfVzaAvGWgLVo6nVQU+IstSIeb9JjWuUkZxM=
X-Received: by 2002:a05:6000:2586:b0:432:84f9:9803 with SMTP id
 ffacd0b85a97d-432c374f253mr9976733f8f.3.1767959855978; Fri, 09 Jan 2026
 03:57:35 -0800 (PST)
MIME-Version: 1.0
References: <PA0P264MB68344306E6037E3237A1681CF685A@PA0P264MB6834.FRAP264.PROD.OUTLOOK.COM>
 <PA0P264MB683409224C7BAAD3FBF9A635F682A@PA0P264MB6834.FRAP264.PROD.OUTLOOK.COM>
 <CAMSfU+4ozq2hf-ma15+40Vx6pCh8X+hB_fezQUFOfjh-EoySRQ@mail.gmail.com> <DB5PR02MB102136715A2634AA71624F162EF82A@DB5PR02MB10213.eurprd02.prod.outlook.com>
In-Reply-To: <DB5PR02MB102136715A2634AA71624F162EF82A@DB5PR02MB10213.eurprd02.prod.outlook.com>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Fri, 9 Jan 2026 12:57:10 +0100
X-Gm-Features: AZwV_QitigWiOeUQL0-4NzEwWzcTae1cQmxuUwF8gLoBCGChZcrdv1yuUBZvGHY
Message-ID: <CAMSfU+5gt9x9CyiHy6eEkBjkP6dXriray-p4Q+ryFU9QHWzq=g@mail.gmail.com>
Subject: Re: [poky] Fw: Patch submission
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: "Karim.harouat@ekinops.com" <Karim.harouat@ekinops.com>, 
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003182690647f33bb3"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 09 Jan 2026 11:57:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13820

--0000000000003182690647f33bb3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le ven. 9 janv. 2026 =C3=A0 12:38, Peter Kjellerstedt <
peter.kjellerstedt@axis.com> a =C3=A9crit :

> The subject prefix should be set using --subject-prefix=3D"scarthgap][PAT=
CH"
> since this is for OE Core (meta), not meta-oe.
>
You are right, copied/pasted too quick.

Karim, your "git send-email" line should look like:
git send-email -M -1 --to openembedded-core@lists.openembedded.org
--subject-prefix=3D"scarthgap][PATCH"


>
>
> //Peter
>
>
>
> *From:* poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> *On
> Behalf Of *Yoann Congal via lists.yoctoproject.org
> *Sent:* den 9 januari 2026 08:54
> *To:* Karim.harouat@ekinops.com
> *Cc:* poky@lists.yoctoproject.org
> *Subject:* Re: [poky] Fw: Patch submission
>
>
>
> Le ven. 9 janv. 2026 =C3=A0 07:56, Karim Harouat via lists.yoctoproject.o=
rg
> <Karim.harouat=3Dekinops.com@lists.yoctoproject.org> a =C3=A9crit :
>
>
>
> Hello
>
>
>
> Hello,
>
>
>
> I'm resending the email.
>
>
>
> You need to follow the instructions at
> https://docs.yoctoproject.org/dev/contributor-guide/submit-changes.html#s=
ending-the-patches-via-email
> to send your patch as inline attachment.
>
>
>
> Also, you should send this patch to the correct mailing list : in this
> case openembedded-core@lists.openembedded.org (see
> https://docs.yoctoproject.org/dev/contributor-guide/submit-changes.html#f=
inding-a-suitable-mailing-list
> )
>
>
>
> And, finally, it looks like you are trying to target the scarthgap branch=
,
> so don't forget to add the [scarthgap] tag in the subject.
>
> Your git send email command should look like this :
>
> git send-email -M -1 --to openembedded-core@lists.openembedded.org
>  --subject-prefix=3D"meta-oe][scarthgap][PATCH"
>
>
>
> Regards,
>
>
>
> ------------------------------
>
> *From:* Karim Harouat
> *Sent:* Thursday, January 8, 2026 8:34 PM
> *To:* poky@lists.yoctoproject.org <poky@lists.yoctoproject.org>
> *Subject:* Patch submission
>
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
> This email may contain material and data that are confidential. Any revie=
w
> or forwarding without express permission is strictly prohibited. If you a=
re
> not the intended recipient, please delete all copies.
>
>
>
>
>
>
>
> --
>
> Yoann Congal
>
> Smile ECS
>


--=20
Yoann Congal
Smile ECS

--0000000000003182690647f33bb3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0ven. 9 =
janv. 2026 =C3=A0=C2=A012:38, Peter Kjellerstedt &lt;<a href=3D"mailto:pete=
r.kjellerstedt@axis.com">peter.kjellerstedt@axis.com</a>&gt; a =C3=A9crit=
=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div cla=
ss=3D"msg6665773495662802927">





<div lang=3D"SV" style=3D"overflow-wrap: break-word;">
<div class=3D"m_6665773495662802927WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:rgb(148,54,52)">The subject prefi=
x should be set using
</span><span lang=3D"EN-US" style=3D"font-size:11pt;font-family:Consolas;co=
lor:rgb(148,54,52)">--subject-prefix=3D&quot;scarthgap][PATCH&quot;</span><=
span lang=3D"EN-US" style=3D"font-size:11pt;font-family:&quot;Calibri&quot;=
,sans-serif;color:rgb(148,54,52)">
 since this is for OE Core (meta), not meta-oe.</span></p></div></div></div=
></blockquote><div>You are right, copied/pasted too quick.</div><div><br>Ka=
rim, your &quot;git send-email&quot; line should look like:=C2=A0<br>git se=
nd-email -M -1 --to <a href=3D"mailto:openembedded-core@lists.openembedded.=
org">openembedded-core@lists.openembedded.org</a> --subject-prefix=3D&quot;=
scarthgap][PATCH&quot;<br>=C2=A0</div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div class=3D"msg6665773495662802927"><div lang=3D"SV" style=
=3D"overflow-wrap: break-word;"><div class=3D"m_6665773495662802927WordSect=
ion1"><p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;f=
ont-family:&quot;Calibri&quot;,sans-serif;color:rgb(148,54,52)"><u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:rgb(148,54,52)"><u></u>=C2=A0<u><=
/u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:rgb(148,54,52)">//Peter<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:rgb(148,54,52)"><u></u>=C2=A0<u><=
/u></span></p>
<div style=3D"border-width:medium medium medium 1.5pt;border-style:none non=
e none solid;border-color:currentcolor currentcolor currentcolor blue;paddi=
ng:0cm 0cm 0cm 4pt">
<div>
<div style=3D"border-width:1pt medium medium;border-style:solid none none;b=
order-color:rgb(225,225,225) currentcolor currentcolor;padding:3pt 0cm 0cm"=
>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11pt;font=
-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span lang=3D"EN-US=
" style=3D"font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif"> <a h=
ref=3D"mailto:poky@lists.yoctoproject.org" target=3D"_blank">poky@lists.yoc=
toproject.org</a> &lt;<a href=3D"mailto:poky@lists.yoctoproject.org" target=
=3D"_blank">poky@lists.yoctoproject.org</a>&gt;
<b>On Behalf Of </b>Yoann Congal via <a href=3D"http://lists.yoctoproject.o=
rg" target=3D"_blank">lists.yoctoproject.org</a><br>
<b>Sent:</b> den 9 januari 2026 08:54<br>
<b>To:</b> <a href=3D"mailto:Karim.harouat@ekinops.com" target=3D"_blank">K=
arim.harouat@ekinops.com</a><br>
<b>Cc:</b> <a href=3D"mailto:poky@lists.yoctoproject.org" target=3D"_blank"=
>poky@lists.yoctoproject.org</a><br>
<b>Subject:</b> Re: [poky] Fw: Patch submission<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Le=C2=A0ven. 9 janv. 2026 =C3=A0=C2=A007:56, Karim H=
arouat via <a href=3D"http://lists.yoctoproject.org" target=3D"_blank">
lists.yoctoproject.org</a> &lt;Karim.harouat=3D<a href=3D"mailto:ekinops.co=
m@lists.yoctoproject.org" target=3D"_blank">ekinops.com@lists.yoctoproject.=
org</a>&gt; a =C3=A9crit=C2=A0:<u></u><u></u></p>
</div>
<div>
<blockquote style=3D"border-width:medium medium medium 1pt;border-style:non=
e none none solid;border-color:currentcolor currentcolor currentcolor rgb(2=
04,204,204);padding:0cm 0cm 0cm 6pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;inherit&quot;,serif=
;color:black">Hello<u></u><u></u></span></p>
</div>
</div>
</blockquote>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Hello,=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<blockquote style=3D"border-width:medium medium medium 1pt;border-style:non=
e none none solid;border-color:currentcolor currentcolor currentcolor rgb(2=
04,204,204);padding:0cm 0cm 0cm 6pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;inherit&quot;,serif=
;color:black">I&#39;m resending the email.<u></u><u></u></span></p>
</div>
</div>
</blockquote>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">You need to follow the instructions at=C2=A0<a href=
=3D"https://docs.yoctoproject.org/dev/contributor-guide/submit-changes.html=
#sending-the-patches-via-email" target=3D"_blank">https://docs.yoctoproject=
.org/dev/contributor-guide/submit-changes.html#sending-the-patches-via-emai=
l</a>
 to send your patch=C2=A0as inline attachment.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Also, you should send this patch to the correct mail=
ing=C2=A0list : in this case
<a href=3D"mailto:openembedded-core@lists.openembedded.org" target=3D"_blan=
k">openembedded-core@lists.openembedded.org</a> (see=C2=A0<a href=3D"https:=
//docs.yoctoproject.org/dev/contributor-guide/submit-changes.html#finding-a=
-suitable-mailing-list" target=3D"_blank">https://docs.yoctoproject.org/dev=
/contributor-guide/submit-changes.html#finding-a-suitable-mailing-list</a>)=
<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">And, finally, it looks like you are trying to target=
 the scarthgap branch, so don&#39;t forget to add the [scarthgap] tag in th=
e subject.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Your git send email command should look like this :<=
u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">git send-email -M -1 --to <a href=3D"mailto:openembe=
dded-core@lists.openembedded.org" target=3D"_blank">
openembedded-core@lists.openembedded.org</a>=C2=A0--subject-prefix=3D&quot;=
meta-oe][scarthgap][PATCH&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Regards,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<blockquote style=3D"border-width:medium medium medium 1pt;border-style:non=
e none none solid;border-color:currentcolor currentcolor currentcolor rgb(2=
04,204,204);padding:0cm 0cm 0cm 6pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
<div id=3D"m_6665773495662802927m_451593480593640652divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:&quot;C=
alibri&quot;,sans-serif;color:black">From:</span></b><span style=3D"font-si=
ze:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"> Karim Haro=
uat<br>
<b>Sent:</b> Thursday, January 8, 2026 8:34 PM<br>
<b>To:</b> <a href=3D"mailto:poky@lists.yoctoproject.org" target=3D"_blank"=
>poky@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:poky@lists.yoctoproj=
ect.org" target=3D"_blank">poky@lists.yoctoproject.org</a>&gt;<br>
<b>Subject:</b> Patch submission</span> <u></u><u></u></p>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
</div>
<div>
<div>
<p style=3D"margin:0cm"><span lang=3D"EN-US">Hello<u></u><u></u></span></p>
<p style=3D"margin:0cm"><span lang=3D"EN-US">=C2=A0<u></u><u></u></span></p=
>
<p style=3D"margin:0cm"><span lang=3D"EN-US">Happy new year<u></u><u></u></=
span></p>
<p style=3D"margin:0cm"><span lang=3D"EN-US">=C2=A0<u></u><u></u></span></p=
>
<p style=3D"margin:0cm"><span lang=3D"EN-US">I am suggesting a patch to app=
ly to lighttpd which is present in 1.4.80.<u></u><u></u></span></p>
<p style=3D"margin:0cm"><span lang=3D"EN-US">=C2=A0<u></u><u></u></span></p=
>
<p style=3D"margin:0cm"><span lang=3D"EN-US">Thank you<u></u><u></u></span>=
</p>
<p style=3D"margin:0cm"><span lang=3D"EN-US">=C2=A0<u></u><u></u></span></p=
>
<p style=3D"margin:0cm"><span lang=3D"EN-US">=C2=A0<u></u><u></u></span></p=
>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"480" style=
=3D"width:360pt">
<tbody>
<tr>
<td width=3D"334" valign=3D"top" style=3D"width:250.5pt;padding:0cm 0cm 15p=
t">
<p style=3D"margin-right:0cm;margin-bottom:12pt;margin-left:0cm">
<b><span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,sans-serif;c=
olor:rgb(51,94,121)">Karim Harouat</span></b><span style=3D"font-size:10pt;=
font-family:&quot;Arial&quot;,sans-serif;color:rgb(51,94,121)"><br>
Senior R&amp;D Engineer<br>
<a href=3D"mailto:karim.harouat@ekinops.com" target=3D"_blank"><span style=
=3D"color:rgb(51,94,121)">karim.harouat@ekinops.com</span></a>=C2=A0|=C2=A0=
</span><span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,sans-ser=
if;color:rgb(0,105,180)"><a href=3D"https://www.ekinops.com/" target=3D"_bl=
ank"><span style=3D"color:rgb(51,94,121)">www.ekinops.com</span></a></span>=
<span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,sans-serif;colo=
r:rgb(51,94,121)">=C2=A0</span><span style=3D"font-size:10pt;font-family:&q=
uot;Arial&quot;,sans-serif;color:rgb(61,60,63)"><br>
</span><span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,sans-ser=
if;color:rgb(51,94,121)">Phone:=C2=A0
</span><span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,sans-ser=
if;color:rgb(61,60,63)"><br>
<br>
</span><u></u><u></u></p>
</td>
</tr>
<tr>
<td width=3D"480" valign=3D"top" style=3D"width:360pt;padding:0cm 0cm 15pt"=
></td>
</tr>
<tr>
<td width=3D"480" valign=3D"top" style=3D"width:360pt;padding:0cm">
<p style=3D"margin:0cm"><span style=3D"font-size:8pt;font-family:&quot;Aria=
l&quot;,sans-serif">This email may contain material and data that are confi=
dential. Any review or forwarding without express permission is strictly pr=
ohibited. If you are not the intended recipient,
 please delete all copies.=C2=A0</span><u></u><u></u></p>
</td>
</tr>
</tbody>
</table>
<p style=3D"margin:0cm"><span lang=3D"EN-US">=C2=A0<u></u><u></u></span></p=
>
</div>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><br>
<br>
<u></u><u></u></p>
</blockquote>
</div>
<div>
<p class=3D"MsoNormal"><br clear=3D"all">
<u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><br>
<span class=3D"m_6665773495662802927gmailsignatureprefix">-- </span><u></u>=
<u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Raleway">Yoann Congal</sp=
an><u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:Raleway">Smile ECS</span>=
<u></u><u></u></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

</div></blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gm=
ail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signatu=
re"><div dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font><di=
v><font face=3D"Raleway, regular">Smile ECS</font></div></div></div></div>

--0000000000003182690647f33bb3--

