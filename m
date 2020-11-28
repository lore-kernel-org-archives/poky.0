Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web10.29518.1606545262981318567
 for <poky@lists.yoctoproject.org>;
 Fri, 27 Nov 2020 22:34:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bitshift-dynamics-com.20150623.gappssmtp.com header.s=20150623 header.b=nxkDRnO6;
 spf=pass (domain: bitshift-dynamics.com, ip: 209.85.218.44, mailfrom: nassian@bitshift-dynamics.com)
Received: by mail-ej1-f44.google.com with SMTP id f9so8398273ejw.4
        for <poky@lists.yoctoproject.org>; Fri, 27 Nov 2020 22:34:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bitshift-dynamics-com.20150623.gappssmtp.com; s=20150623;
        h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
         :references;
        bh=PzyO/3Z4m/VBV7lUkHoXjD7dwt6qHYlXBcjM+kuDF3w=;
        b=nxkDRnO6wDVymyJb0Evtl74DFdLXtQ83HUa/QKbh0XMpP5n61CyeXCU4YX7oVRQ9Zq
         Et/I607VPV0NkE59Mn0/F7HIKycQvJrzRwzNMkE/dAfLyAQbsRrCqrXjNs7dt2QI0YG2
         fXiO4hoYDmLJbrVe+7+vVwZD68BIGMSz/U9ojSwAOehZhdIIJfDMHzE00nE2B9rp+4o3
         WOX/38KjxWy/FvQ5DNkzZmAZdNdDMHNSpTUgXRR89dIxKCLYe4UgBAmiVFzHb6oxuyrf
         ZpU6YWIlyHbX44VlDXbQysJI36tqswYcO3x8A5luUnFMfOjy4/K09PiXPAwRJ8aD4gk6
         AQvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:message-id:mime-version:subject:date
         :in-reply-to:cc:to:references;
        bh=PzyO/3Z4m/VBV7lUkHoXjD7dwt6qHYlXBcjM+kuDF3w=;
        b=VyLl43/yZSiBQOty9jbrijvFR5T9LN1GfGZ3eNpgDUPPIzivYkcsPmyAeYQ8H4YU3G
         mVeVCN23JLsu+v4nqmpMdPvFhpaHsUlIPZdkstamNen07jBFpHgZguxlF5LcRW8KMdAW
         XTs+jOQiVeF1Vao7aGceFMtV/bOrTjlB/oBKa5Dbl1OfYNvqOrfIWRAuUz+RaSiV0/pU
         rDYiZyWoqIEV0cew08YQthCsjoQsK2MhFqUp3/n2ExtvCdNw0rrd7iyEd5osyGR+HwDH
         81nml+DJzrNffyTraFBnscF4J6hBPZYYLBb+FK09oaUsv1cLp3HNufZ1ASTphc/1AhVc
         7ovA==
X-Gm-Message-State: AOAM532f+7/YnRbCD7hvPfE2WqKVtDrN3XvUwOMACV8+gtaOYJg/o66H
	Y380UTqMCt+Pjgo6ZtRvHJf663Aw3yZg2N3aR5fDPPo+UmTWNbkNigS5gqoWWshwdV4VWdIW9W9
	m3WwBnVVlK9HvFdb4
X-Google-Smtp-Source: ABdhPJyUKe0H6gOoyDhYLEATISvm/bbY8tWQ//KL3QP2PT7rseQqf8BICv0t66UWZF90SCCLgDNg5A==
X-Received: by 2002:a17:906:e086:: with SMTP id gh6mr746668ejb.95.1606545261151;
        Fri, 27 Nov 2020 22:34:21 -0800 (PST)
Return-Path: <nassian@bitshift-dynamics.com>
Received: from alexanders-air.localdomain (b2b-37-24-167-90.unitymedia.biz. [37.24.167.90])
        by smtp.gmail.com with ESMTPSA id qu21sm1884543ejb.95.2020.11.27.22.34.20
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Nov 2020 22:34:20 -0800 (PST)
From: "Alexander Nassian" <nassian@bitshift-dynamics.com>
Message-Id: <7969D9CA-F0CF-493A-BE80-59D3AB06009C@bitshift-dynamics.com>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.20.0.2.21\))
Subject: Re: [poky] Adding S3 as option for sstate
Date: Sat, 28 Nov 2020 07:34:19 +0100
In-Reply-To: <CAGgRHJovndgs_7zFTGuZv9eDBP60kT+hGpqRYY_o5tymx9k-Kw@mail.gmail.com>
Cc: poky@lists.yoctoproject.org
To: Matt Madison <matt@madison.systems>
References: <63DA0CC5-889D-4A42-BA28-31EEBD45BF07@bitshift-dynamics.com>
 <CAGgRHJovndgs_7zFTGuZv9eDBP60kT+hGpqRYY_o5tymx9k-Kw@mail.gmail.com>
X-Mailer: Apple Mail (2.3654.20.0.2.21)
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_55D1553B-E02D-4FD3-8232-454B6017A50E"

--Apple-Mail=_55D1553B-E02D-4FD3-8232-454B6017A50E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Thank you very much for your feedback and sharing your solution! I will def=
inetly have a look into it, but had a very busy online training week.

If I see it right your class enables pulling sstate packages from S3 but no=
t uploading them on the go like the filesystem module, right?

Beste Gr=C3=BC=C3=9Fe / Best regards,

Alexander Nassian, Gesch=C3=A4ftsf=C3=BChrer / CEO
nassian@bitshift-dynamics.com

> Am 14.11.2020 um 15:30 schrieb Matt Madison <matt@madison.systems>:
>=20
> On Fri, Nov 13, 2020 at 11:50 PM Alexander Nassian
> <nassian@bitshift-dynamics.com> wrote:
>>=20
>> Hi together,
>>=20
>> We would like to extend poky to be able to write and read sstate package=
s not only from HTTP and FILE but also S3 buckets which would fit our CI se=
tup much better than our current =E2=80=9Ezip everything and upload to S3=
=E2=80=9C in terms of incremental speed up builds. I already did some resea=
rch if there is something read-to-use but didn=E2=80=99t find anything.
>>=20
>> My two questions are:
>> 1. Do you have any hint where to hook into? I already went through runqu=
eue.py but I=E2=80=99m just a extensive user of poky, never worked on itsel=
f.
>> 2. Would that change have any chance to be accepted upstream, or is this=
 something too special for the project?
>=20
> I have a CI setup that I host in EC2 using an S3 bucket for mirroring
> and have implemented some hooks that make it work better for me.  The
> basic parts consist of a replacement for the built-in S3 fetcher and a
> bbclass to assist with populating the S3-hosted mirror.  I have a
> writeup on it at
> https://github.com/madisongh/tegra-test-distro/wiki/Using-AWS-S3-for-ssta=
te-and-downloads-mirrors
> if you're interested.  It may not be the right answer for you, but it
> may give you some ideas.
>=20
> Regards,
> -Matt


--=20










=E2=80=94


bitshift dynamics GmbH
Neudorfer Str. 1, 79541 L=C3=B6rrach
Registergericht: Amtsgericht Freiburg i. Breisgau,=C2=A0HRB 713747
Gesch=C3=A4ftsf=C3=BChrer: Alexander Nassian,=C2=A0Markus Pfaffinger


https://bitshift-dynamics.com <https://bitshift-dynamics.com>

Phone: +49=20
762158673 - 0
General support:=C2=A0info@bitshift-dynamics.com=20
<mailto:info@bitshift-dynamics.com>
Technical support:=C2=A0
support@bitshift-dynamics.com <mailto:support@bitshift-dynamics.com>
Accounting: invoice@bitshift-dynamics.com=20
<mailto:invoice@bitshift-dynamics.com>

--Apple-Mail=_55D1553B-E02D-4FD3-8232-454B6017A50E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; line-break: after-white-space;" class=3D"">Thank you very much for yo=
ur feedback and sharing your solution! I will definetly have a look into it=
, but had a very busy online training week.<div class=3D""><br class=3D""><=
/div><div class=3D"">If I see it right your class enables pulling sstate pa=
ckages from S3 but not uploading them on the go like the filesystem module,=
 right?<br class=3D""><div class=3D""><div style=3D"color: rgb(0, 0, 0); le=
tter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; t=
ext-transform: none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; -webkit-nbsp-mode: s=
pace; -webkit-line-break: after-white-space;" class=3D""><div style=3D"colo=
r: rgb(0, 0, 0); letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; word-wrap: break-word; -=
webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" class=3D""=
><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: nor=
mal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; word-=
wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white=
-space;" class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: norm=
al; orphans: auto; text-align: start; text-indent: 0px; text-transform: non=
e; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-strok=
e-width: 0px; word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line=
-break: after-white-space;" class=3D""><div style=3D"color: rgb(0, 0, 0); f=
ont-family: Helvetica; font-size: 12px; font-style: normal; font-variant-li=
gatures: normal; font-variant-position: normal; font-variant-caps: normal; =
font-variant-numeric: normal; font-variant-alternates: normal; font-variant=
-east-asian: normal; font-weight: normal; letter-spacing: normal; orphans: =
auto; text-align: start; text-indent: 0px; text-transform: none; white-spac=
e: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;=
 word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after=
-white-space;" class=3D""><br class=3D"">Beste Gr=C3=BC=C3=9Fe / Best regar=
ds,<br class=3D""><br class=3D"">Alexander Nassian, Gesch=C3=A4ftsf=C3=BChr=
er / CEO<br class=3D""><a href=3D"mailto:nassian@bitshift-dynamics.com" cla=
ss=3D"">nassian@bitshift-dynamics.com</a></div></div></div></div></div>
</div>
<div><br class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">Am=
 14.11.2020 um 15:30 schrieb Matt Madison &lt;<a href=3D"mailto:matt@madiso=
n.systems" class=3D"">matt@madison.systems</a>&gt;:</div><br class=3D"Apple=
-interchange-newline"><div class=3D""><div class=3D"">On Fri, Nov 13, 2020 =
at 11:50 PM Alexander Nassian<br class=3D"">&lt;<a href=3D"mailto:nassian@b=
itshift-dynamics.com" class=3D"">nassian@bitshift-dynamics.com</a>&gt; wrot=
e:<br class=3D""><blockquote type=3D"cite" class=3D""><br class=3D"">Hi tog=
ether,<br class=3D""><br class=3D"">We would like to extend poky to be able=
 to write and read sstate packages not only from HTTP and FILE but also S3 =
buckets which would fit our CI setup much better than our current =E2=80=9E=
zip everything and upload to S3=E2=80=9C in terms of incremental speed up b=
uilds. I already did some research if there is something read-to-use but di=
dn=E2=80=99t find anything.<br class=3D""><br class=3D"">My two questions a=
re:<br class=3D"">1. Do you have any hint where to hook into? I already wen=
t through runqueue.py but I=E2=80=99m just a extensive user of poky, never =
worked on itself.<br class=3D"">2. Would that change have any chance to be =
accepted upstream, or is this something too special for the project?<br cla=
ss=3D""></blockquote><br class=3D"">I have a CI setup that I host in EC2 us=
ing an S3 bucket for mirroring<br class=3D"">and have implemented some hook=
s that make it work better for me. &nbsp;The<br class=3D"">basic parts cons=
ist of a replacement for the built-in S3 fetcher and a<br class=3D"">bbclas=
s to assist with populating the S3-hosted mirror. &nbsp;I have a<br class=
=3D"">writeup on it at<br class=3D""><a href=3D"https://github.com/madisong=
h/tegra-test-distro/wiki/Using-AWS-S3-for-sstate-and-downloads-mirrors" cla=
ss=3D"">https://github.com/madisongh/tegra-test-distro/wiki/Using-AWS-S3-fo=
r-sstate-and-downloads-mirrors</a><br class=3D"">if you're interested. &nbs=
p;It may not be the right answer for you, but it<br class=3D"">may give you=
 some ideas.<br class=3D""><br class=3D"">Regards,<br class=3D"">-Matt<br c=
lass=3D""></div></div></blockquote></div><br class=3D""></div></body></html=
>
<br>








<p><font size=3D"2">=E2=80=94</font></p>
<p><font size=3D"2">bitshift dynamics GmbH<br>Neudorfer Str. 1, 79541 L=C3=
=B6rrach<br>Registergericht: Amtsgericht Freiburg i. Breisgau,=C2=A0HRB 713=
747<br>Gesch=C3=A4ftsf=C3=BChrer: Alexander Nassian,=C2=A0Markus Pfaffinger=
</font></p>
<p><font size=3D"2"><a href=3D"https://bitshift-dynamics.com" target=3D"_bl=
ank">https://bitshift-dynamics.com</a></font></p><p><font size=3D"2">Phone:=
 +49 762158673 - 0<br>General support:=C2=A0<a href=3D"mailto:info@bitshift=
-dynamics.com" target=3D"_blank">info@bitshift-<wbr>dynamics.com</a><br>Tec=
hnical support:=C2=A0<a href=3D"mailto:support@bitshift-dynamics.com" targe=
t=3D"_blank">support@bitshift-<wbr>dynamics.com</a><br>Accounting: <a href=
=3D"mailto:invoice@bitshift-dynamics.com" target=3D"_blank">invoice@bitshif=
t-dynamics.com</a></font></p>

--Apple-Mail=_55D1553B-E02D-4FD3-8232-454B6017A50E--
