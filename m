Return-Path: <msundius@sundius.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0255E00345
	for <poky@yoctoproject.org>; Wed, 11 Jul 2012 12:05:53 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so1838269ghb.35
	for <poky@yoctoproject.org>; Wed, 11 Jul 2012 12:05:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=5KLTfXyoOUszgAGmj3DBzvmKTGcrhg/Bm1SBS+iVgYQ=;
	b=MiN6pDQytR+CnIMWFvie759id7cy8x8YEjmsNmdNHSKd4CtHn7a6ClxQnJ1Xt0S4ha
	H4LeKfuHXVAfqTZEswfQ8EHoD+RZmZOklke8YdAFcB8CESCXtsjKwH6yJnM1ekfNugeQ
	ddolzowF015GZVRUZbtDGT5NJ3xA1zteSPK134rPbcj6A/6fcaCUjxgwxrd8EiUucZYP
	wLSxlcqfru94net6Mt/L5rh3qeGg9khQTbwPN3hpMxvlsMHhl+WNotdSnKx1dEUetZGr
	jFGOmoL0a08ar6Z/dOOexk8hDSUdY1VrdxMY333RTCkCPfesjafXTF1wi+Kd5uZ1ACx5
	wMUg==
MIME-Version: 1.0
Received: by 10.60.24.7 with SMTP id q7mr20028069oef.54.1342033552796; Wed, 11
	Jul 2012 12:05:52 -0700 (PDT)
Received: by 10.76.85.65 with HTTP; Wed, 11 Jul 2012 12:05:52 -0700 (PDT)
Date: Wed, 11 Jul 2012 15:05:52 -0400
Message-ID: <CAGVhguGdhhqx=XqUFfaXYA8Ne2Yq2NFLbRLYYk0_yZ8HHSP4KQ@mail.gmail.com>
From: C Michael Sundius <msundius@sundius.com>
To: poky@yoctoproject.org
X-Gm-Message-State: ALoCoQni20V72zM3kfL8jVPBIzRrpF5D+6/EZjNRgkY0M0lvhjKTrAQBF1sdAkBTQIbcp05iKzCt
Subject: conga-b945 bsp support
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 Jul 2012 19:05:54 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1c4e630ecde04c4928981

--e89a8ff1c4e630ecde04c4928981
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I'm working on a project that is using a conga-b945 com express module.
This board has:

an intel core duo t7400 (2.16 GHz, 4 MB L2 Cache, 34 W)
an intel GME 82945 graphics and memory controller
Hub: Intel=AE 82801GBM (ICH7-M) I/O Controller: Winbond 83627HG Ethernet PH=
Y:
Intel=AE 82562

is there a BSP definition for this board or one like it out there?

thanks
Mike

--e89a8ff1c4e630ecde04c4928981
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I&#39;m working on a project that is using a conga-b945 com express module.=
 This board has:<div><span style=3D"background-color:rgb(255,255,255);color=
:rgb(51,51,51);font-family:Arial,&#39;Helvetica Neue&#39;,Helvetica,sans-se=
rif;font-size:12px;line-height:18px;text-align:left"><br>
</span></div><div style=3D"text-align:-webkit-auto"><span style=3D"backgrou=
nd-color:rgb(255,255,255);text-align:left">an intel core duo t7400</span><s=
pan style=3D"background-color:rgb(255,255,255);color:rgb(51,51,51);font-fam=
ily:Arial,&#39;Helvetica Neue&#39;,Helvetica,sans-serif;font-size:12px;line=
-height:18px;text-align:left">=A0</span><span style=3D"background-color:rgb=
(255,255,255);color:rgb(51,51,51);font-family:Arial,&#39;Helvetica Neue&#39=
;,Helvetica,sans-serif;font-size:12px;line-height:18px;text-align:left">(2.=
16 GHz, 4 MB L2 Cache, 34 W)</span></div>
<div style=3D"text-align:-webkit-auto"><span style=3D"background-color:rgb(=
255,255,255);color:rgb(51,51,51);font-family:Arial,&#39;Helvetica Neue&#39;=
,Helvetica,sans-serif;font-size:12px;line-height:18px;text-align:left">an i=
ntel GME 82945 graphics and memory controller</span></div>
<div style=3D"text-align:-webkit-auto"><span style=3D"color:rgb(51,51,51);f=
ont-family:Arial,&#39;Helvetica Neue&#39;,Helvetica,sans-serif;font-size:12=
px;line-height:18px;text-align:left;background-color:rgb(255,255,255)">Hub:=
 Intel=AE 82801GBM (ICH7-M) I/O Controller: Winbond 83627HG Ethernet PHY: I=
ntel=AE 82562</span></div>
<div style=3D"text-align:-webkit-auto"><span style=3D"background-color:rgb(=
255,255,255);color:rgb(51,51,51);font-family:Arial,&#39;Helvetica Neue&#39;=
,Helvetica,sans-serif;font-size:12px;line-height:18px;text-align:left"><br>
</span></div><div style=3D"text-align:left"><font color=3D"#333333" face=3D=
"Arial, Helvetica Neue, Helvetica, sans-serif"><span style=3D"font-size:12p=
x;line-height:18px">is there a BSP definition for this board or one like it=
 out there?</span></font></div>
<div style=3D"text-align:left"><font color=3D"#333333" face=3D"Arial, Helve=
tica Neue, Helvetica, sans-serif"><span style=3D"font-size:12px;line-height=
:18px"><br></span></font></div><div style=3D"text-align:left"><font color=
=3D"#333333" face=3D"Arial, Helvetica Neue, Helvetica, sans-serif"><span st=
yle=3D"font-size:12px;line-height:18px">thanks</span></font></div>
<div style=3D"text-align:left"><font color=3D"#333333" face=3D"Arial, Helve=
tica Neue, Helvetica, sans-serif"><span style=3D"font-size:12px;line-height=
:18px">Mike</span></font></div><div style=3D"text-align:left"><font color=
=3D"#333333" face=3D"Arial, Helvetica Neue, Helvetica, sans-serif"><span st=
yle=3D"font-size:12px;line-height:18px"><br>
</span></font></div>

--e89a8ff1c4e630ecde04c4928981--
